package com.yada.wechatPayService.model;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.HashMap;
import java.util.Map;

@Entity
@Data
public class PayInfo {

    @Id
    private String payId;

    @Column(length = 16)
    private String appid;

    @Column(length = 32)
    private String mch_id;

    @Column(length = 32)
    private String device_info;

    @Column(length = 32)
    private String nonce_str;

    @Column(length = 32)
    private String sign_type;

    @Column(length = 32)
    private String sign;

    @Column(length = 128)
    private String body;

    @Column(length = 6000)
    private String detail;

    @Column(length = 127)
    private String attach;

    @Column(length = 32)
    private String out_trade_no;

    private int total_fee;

    @Column(length = 16)
    private String fee_type;

    @Column(length = 16)
    private String spbill_create_ip;

    @Column(length = 32)
    private String goods_tag;

    @Column(length = 32)
    private String limit_pay;


    @Column(length = 14)
    private String time_start;

    @Column(length = 14)
    private String time_expire;

    @Column(length = 128)
    private String auth_code;

    @Column(length = 256)
    private String scene_info;

    @Column(length = 16)
    private String trade_type;

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
