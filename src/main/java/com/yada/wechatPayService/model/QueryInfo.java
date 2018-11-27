package com.yada.wechatPayService.model;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.util.HashMap;
import java.util.Map;
@Entity
@Data
public class QueryInfo {

    @Id
    private String queryId;

    @Column(length = 32)
    private String out_trade_no;

    public Map<String,String> getQueryInfoMap(){
        Map<String, String> data = new HashMap<String, String>();
        data.put("out_trade_no",this.out_trade_no);
        return data;
    }

}
