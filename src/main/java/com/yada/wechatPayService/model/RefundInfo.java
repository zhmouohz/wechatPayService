package com.yada.wechatPayService.model;

import javax.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.Map;
import java.util.HashMap;
@Entity
public class RefundInfo {
    @Getter
    @Setter
    @Id
    private String payId;
    @Getter
    @Setter
    @Column(length = 64)
    private String out_refund_no;
    @Getter
    @Setter
    @Column(length = 32)
    private String out_trade_no;
    @Getter
    @Setter
    private int total_fee;
    @Getter
    @Setter
    private int refund_fee;
    @Getter
    @Setter
    @Column(length = 8)
    private String refund_fee_type;
    @Getter
    @Setter
    @Column(length = 80)
    private String refund_desc;
    @Getter
    @Setter
    @Column(length = 30)
    private String refund_account;
    @Getter
    @Setter
    @Column(length = 256)
    private String notify_url;

    public Map<String,String> getRefundInfoMap(){
        Map<String, String> data = new HashMap<String, String>();
        data.put("out_refund_no",this.out_refund_no);
        data.put("out_trade_no",this.out_trade_no);
        data.put("refund_desc",this.refund_desc);
        data.put("refund_account",this.refund_account);
        if(this.notify_url!=null&&!this.notify_url.isEmpty()){
            data.put("notify_url",this.notify_url);
        }
        data.put("refund_fee_type",this.refund_fee_type);
        data.put("out_trade_no",this.out_trade_no);
        data.put("total_fee",String.valueOf(this.total_fee));
        data.put("refund_fee",String.valueOf(this.refund_fee));
        return data;
    }

}
