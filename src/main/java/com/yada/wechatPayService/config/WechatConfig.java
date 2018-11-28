package com.yada.wechatPayService.config;

import com.github.wxpay.sdk.WXPay;
import com.yada.util.wxpayUtil.WXPayConfigImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration

public class WechatConfig {
    private static final Logger logger = LoggerFactory.getLogger(WechatConfig.class);
    @Value("${wxpay.appId}")
    private String appId;
    @Value("${wxpay.key}")
    private String key;
    @Value("${wxpay.certPath}")
    private String certPath;
    @Value("${wxpay.mchId}")
    private String mchId;
    private WXPay wxpay;
    private WXPayConfigImpl config;

    @Bean
    public WXPay getWxpay() {
        if (wxpay != null) {
            return wxpay;
        }
        try {
            if (config == null) {

                config = new WXPayConfigImpl(appId, key, mchId, certPath);
            }

            wxpay = new WXPay(config);
        } catch (Exception e) {
            logger.error("初始化错误");
        }
        return wxpay;
    }

    @Bean
    public WXPayConfigImpl getConfig() {
        if (config == null) {
            try {
                config = new WXPayConfigImpl(appId, key, mchId, certPath);
            } catch (Exception e) {
                logger.error("初始化错误");
            }
        }
        return config;
    }
}
