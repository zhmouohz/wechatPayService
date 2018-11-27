package com.yada.wechatPayService.model;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.HashMap;
import java.util.Map;

@Entity
@Data
public class RefundInfo {

    @Id
    private String payId;

    @Column(length = 64)
    private String out_refund_no;

    @Column(length = 32)
    private String out_trade_no;

    private int total_fee;

    private int refund_fee;

    @Column(length = 8)
    private String refund_fee_type;

    @Column(length = 80)
    private String refund_desc;

    @Column(length = 30)
    private String refund_account;

    @Column(length = 256)
    private String notify_url;

    public Map<String, String> getRefundInfoMap() {
        Map<String, String> data = new HashMap<String, String>();
        data.put("out_refund_no", this.out_refund_no);
        data.put("out_trade_no", this.out_trade_no);
        data.put("refund_desc", this.refund_desc);
        data.put("refund_account", this.refund_account);
        if (this.notify_url != null && !this.notify_url.isEmpty()) {
            data.put("notify_url", this.notify_url);
        }
        data.put("refund_fee_type", this.refund_fee_type);
        data.put("out_trade_no", this.out_trade_no);
        data.put("total_fee", String.valueOf(this.total_fee));
        data.put("refund_fee", String.valueOf(this.refund_fee));
        return data;
    }

}
