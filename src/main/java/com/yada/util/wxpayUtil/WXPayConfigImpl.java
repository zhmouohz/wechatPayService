package com.yada.util.wxpayUtil;

import com.github.wxpay.sdk.IWXPayDomain;
import com.github.wxpay.sdk.WXPayConfig;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

public class WXPayConfigImpl extends WXPayConfig {
    private byte[] certData;
    private String wxAppId;
    private String wxKey;
    private String mchId;
    private String certPath;

    public WXPayConfigImpl(String wxAppId,String wxKey,String mchId,String certPath)  throws Exception {
        this.wxAppId = wxAppId;
        this.wxKey = wxKey;
        this.mchId = mchId;
        this.certPath = certPath;
        File file = new File(this.certPath);
        InputStream certStream = new FileInputStream(file);
        this.certData = new byte[(int) file.length()];
        certStream.read(this.certData);
        certStream.close();
    }

//    public WXPayConfigImpl() throws Exception {
//        File file = new File(certPath);
//        InputStream certStream = new FileInputStream(file);
//        this.certData = new byte[(int) file.length()];
//        certStream.read(this.certData);
//        certStream.close();
//    }

    public String getAppID() {
        return wxAppId;
    }

    public String getMchID() {
        return mchId;
    }

    public String getKey() {
        return wxKey;
    }

    public InputStream getCertStream() {
        ByteArrayInputStream certBis = new ByteArrayInputStream(this.certData);
        return certBis;
    }

    public int getHttpConnectTimeoutMs() {
        return 8000;
    }

    public int getHttpReadTimeoutMs() {
        return 10000;
    }

    @Override
    public IWXPayDomain getWXPayDomain() {
        return new WxPayDomainImpl();
    }

    @Override
    public boolean shouldAutoReport() {
        return true;
    }

    @Override
    public int getReportWorkerNum() {
        return 6;
    }

    @Override
    public int getReportQueueMaxSize() {
        return 10000;
    }

    @Override
    public int getReportBatchSize() {
        return 10;
    }

}
