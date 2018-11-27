package com.yada.wechatPayService.model;

import javax.persistence.*;

import lombok.Getter;
import lombok.Setter;

import java.util.Map;
import java.util.HashMap;

@Entity
public class PayInfo {
    @Getter
    @Setter
    @Id
    private String payId;
    @Getter
    @Setter
    @Column(length = 16)
    private String appid;
    @Getter
    @Setter
    @Column(length = 32)
    private String mch_id;
    @Getter
    @Setter
    @Column(length = 32)
    private String device_info;
    @Getter
    @Setter
    @Column(length = 32)
    private String nonce_str;
    @Getter
    @Setter
    @Column(length = 32)
    private String sign_type;
    @Getter
    @Setter
    @Column(length = 32)
    private String sign;
    @Getter
    @Setter
    @Column(length = 128)
    private String body;
    @Getter
    @Setter
    @Column(length = 6000)
    private String detail;
    @Getter
    @Setter
    @Column(length = 127)
    private String attach;
    @Getter
    @Setter
    @Column(length = 32)
    private String out_trade_no;
    @Getter
    @Setter
    private int total_fee;
    @Getter
    @Setter
    @Column(length = 16)
    private String fee_type;
    @Getter
    @Setter
    @Column(length = 16)
    private String spbill_create_ip;
    @Getter
    @Setter
    @Column(length = 32)
    private String goods_tag;
    @Getter
    @Setter
    @Column(length = 32)
    private String limit_pay;

    @Getter
    @Setter
    @Column(length = 14)
    private String time_start;

    @Getter
    @Setter
    @Column(length = 14)
    private String time_expire;
    @Getter
    @Setter
    @Column(length = 128)
    private String auth_code;
    @Getter
    @Setter
    @Column(length = 256)
    private String scene_info;
    @Getter
    @Setter
    @Column(length = 16)
    private String trade_type;
    @Getter
    @Setter
    @Column(length = 16)
    private String sub_mch_id;

    public Map<String, String> getPayInfoMap() {
        Map<String, String> data = new HashMap<String, String>();
        if (this.attach != null)
            data.put("attach", this.attach);
        if (this.auth_code != null)
            data.put("auth_code", this.auth_code);
        if (this.body != null)
            data.put("body", this.body);
        if (this.detail != null)
            data.put("detail", this.detail);
        if (this.device_info != null)
            data.put("device_info", this.device_info);
        if (this.fee_type != null)
            data.put("fee_type", this.fee_type);
        if (this.goods_tag != null)
            data.put("goods_tag", this.goods_tag);
        if (this.limit_pay != null)
            data.put("limit_pay", this.limit_pay);
        if (this.out_trade_no != null)
            data.put("out_trade_no", this.out_trade_no);
        if (this.scene_info != null)
            data.put("scene_info", this.scene_info);
        if (this.sign_type != null)
            data.put("sign_type", this.sign_type);
        if (this.spbill_create_ip != null)
            data.put("spbill_create_ip", this.spbill_create_ip);
        if (this.time_expire != null)
            data.put("time_expire", this.time_expire);
        if (this.time_start != null)
            data.put("time_start", this.time_start);
        data.put("total_fee", String.valueOf(this.total_fee));
        if (this.trade_type != null)
            data.put("trade_type", this.trade_type);
        if (this.sub_mch_id != null)
            data.put("sub_mch_id", this.sub_mch_id);
        return data;
    }

}
