package com.yada.wechatPayService.model;

import javax.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.Map;
import java.util.HashMap;
@Entity
public class QueryInfo {
    @Getter
    @Setter
    @Id
    private String queryId;
    @Getter
    @Setter
    @Column(length = 32)
    private String out_trade_no;

    public Map<String,String> getQueryInfoMap(){
        Map<String, String> data = new HashMap<String, String>();
        data.put("out_trade_no",this.out_trade_no);
        return data;
    }

}
