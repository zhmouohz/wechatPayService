package com.yada.wechatPayService.controller;


import com.alibaba.fastjson.JSON;
import com.github.wxpay.sdk.WXPay;
import com.yada.util.wxpayUtil.WXPayConfigImpl;
import com.yada.wechatPayService.base.BaseController;
import com.yada.wechatPayService.model.PayInfo;
import com.yada.wechatPayService.model.QueryInfo;
import com.yada.wechatPayService.model.RefundInfo;
import lombok.Getter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

import static java.lang.Thread.sleep;

/**
 * @author zhoumiao
 * @version 1.0
 * @since 1.0
 */


@Controller
@RequestMapping("wechat")
public class PayController extends BaseController {

    @Value("${wxpay.appId}")
    private String appId;
    @Value("${wxpay.key}")
    private String key;

    @Value("${wxpay.certPath}")
    private String certPath;
    @Value("${wxpay.mchId}")
    private String mchId;

    @RequestMapping(value = "/wechatPay", method = {RequestMethod.POST})
    @ResponseBody
    public String pay(@RequestBody PayInfo payInfo) {
        WXPay wxpay ;
        WXPayConfigImpl config ;
        try {
            config = new WXPayConfigImpl(appId,key,mchId,certPath);
            wxpay = new WXPay(config);
        } catch (Exception e) {
            e.printStackTrace();
            return getJsonResult(false);
        }
        //String out_trade_no = UUID.randomUUID().toString().replace("-","");
        //payInfo.setOut_trade_no(out_trade_no);
        Map<String, String> resultMap = null;
        try {
            resultMap = wxpay.microPay(payInfo.getPayInfoMap());
        } catch (Exception e) {
            e.printStackTrace();
        }
//        System.out.println("----------------------");
//        System.out.println(getJsonResult(true, resultMap));
//        System.out.println(resultMap.get("return_msg"));
//        System.out.println(getTranState(resultMap));
        String result = afterPayProcess(resultMap, wxpay, payInfo);
        if (result.equals(getJsonResult(false))) {
            //todo 失败后处理
        } else {
            //todo 成功后处理
        }
        return result;
    }

    @RequestMapping(value = "/wechatRefund", method = {RequestMethod.POST})
    @ResponseBody
    public String refund(@RequestBody RefundInfo refundInfo) {
        WXPay wxpay;
        WXPayConfigImpl config;
        try {
            config = new WXPayConfigImpl(appId,key,mchId,certPath);
            wxpay = new WXPay(config);
        } catch (Exception e) {
            e.printStackTrace();
            return getJsonResult(false);
        }
        Map<String, String> resultMap = null;
        try {
            resultMap = wxpay.refund(refundInfo.getRefundInfoMap());
        } catch (Exception e) {
            e.printStackTrace();
        }

        TranState ts = getTranState(resultMap);
        if (ts.equals(TranState.SUCCESS)) {
            return getJsonResult(true);
        }else{
            return getJsonResult(false);
        }
    }


    @RequestMapping(value = "/wechatQuery", method = {RequestMethod.POST})
    @ResponseBody
    public String query(@RequestBody QueryInfo queryInfo) {
        WXPay wxpay;
        WXPayConfigImpl config;
        try {
            config = new WXPayConfigImpl(appId,key,mchId,certPath);
            wxpay = new WXPay(config);
        } catch (Exception e) {
            e.printStackTrace();
            return getJsonResult(false);
        }
        Map<String, String> resultMap = null;
        try {
            resultMap = wxpay.orderQuery(queryInfo.getQueryInfoMap());
        } catch (Exception e) {
            e.printStackTrace();
        }
        TranState ts = getTranState(resultMap);
        if (ts.equals(TranState.SUCCESS)) {
            return getJsonResult(true,resultMap);
        }else{
            return getJsonResult(false);
        }
    }


    private String afterPayProcess(Map<String, String> resultMap, WXPay wxpay, PayInfo payInfo) {
        if (getTranState(resultMap) == TranState.SUCCESS)
            return getJsonResult(true);
        if (getTranState(resultMap) == TranState.OTHER_FAIL) {
            return getJsonResult(false);
        }
        if (getTranState(resultMap) == TranState.PAYING) {
            try {
                sleep(10 * 1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
                return getJsonResult(false);
            }
            return queryResult(10, wxpay, payInfo);
        }
        if(getTranState(resultMap) == TranState.SYSTEMERROR){
            return queryResult(0, wxpay, payInfo);
        }
        try {
            sleep(5 * 1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
            return getJsonResult(false);
        }
        return queryResult(5, wxpay, payInfo);
    }

    private String queryResult(int second, WXPay wxpay, PayInfo payInfo) {
        Map<String, String> data = new HashMap<>();
        data.put("out_trade_no", payInfo.getOut_trade_no());
        data.put("mch_id", payInfo.getMch_id());
        data.put("sub_mch_id",payInfo.getSub_mch_id());
        Map<String, String> resp = null;
        try {
            resp = wxpay.orderQuery(data);
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (getTranState(resp) == TranState.SUCCESS)
            return getJsonResult(true);
        if (getTranState(resp) == TranState.OTHER_FAIL) {
            if(resp.get("trade_state")!=null){
                Map<String,String> respMsgMap = new HashMap<>();
                respMsgMap.put("trade_state",resp.get("trade_state"));
                return getJsonResult(false,respMsgMap);
            }
            else{
                return getJsonResult(false);
            }

        }
        if (second + 10 <= 30) {
            try {
                sleep(10 * 1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
                return getJsonResult(false);
            }
            return queryResult(second + 10, wxpay, payInfo);
        } else
            return getJsonResult(false);

    }

//    private String signature(SignField bsField) {
//        return "";
//    }

//    /**
//     * @param sn 设备序列号
//     * @return 验证未通过则返回空，
//     */
//    private PayInfo getPayInfo(String sn) {
//        return null;
//    }

//    //检查设备是否绑定
//    private boolean checkBind(String sn) {
//        return true;
//    }

//    //风控
//    private String verify(PayInfo payInfo) {
//        return "";
//    }

    class Result {
        @Getter
        private String result;
        @Getter
        private Map<String,String>  info;
        Result(boolean result) {
            if (result)
                this.result = "success";
            else
                this.result = "fail";
        }
        Result(boolean result,Map<String,String> info) {
            this.info= info;
            if (result)
                this.result = "success";
            else
                this.result = "fail";
        }
    }

    private String getJsonResult(boolean result) {
        return JSON.toJSONString(new Result(result));
    }
    private String getJsonResult(boolean result,Map<String,String> resultMap) {
        return JSON.toJSONString(new Result(result,resultMap));
    }

    private enum TranState {
        SUCCESS, PAYING, OTHER_FAIL, UNKNOWN,SYSTEMERROR,REFUND
    }

    private TranState getTranState(Map<String, String> resp) {
        if (resp == null) {
            return TranState.UNKNOWN;
        }
        if (resp.get("return_code").equals("FAIL")) {
            return TranState.UNKNOWN;
        }
        if (resp.get("return_code").equals("SUCCESS") && resp.get("result_code").equals("SUCCESS") && resp.get("trade_state")==null) {
            return TranState.SUCCESS;
        }
        if (resp.get("return_code").equals("SUCCESS") && resp.get("result_code").equals("SUCCESS") && resp.get("trade_state").equals("SUCCESS")) {
            return TranState.SUCCESS;
        }
        if (resp.get("return_code").equals("SUCCESS") && resp.get("result_code").equals("FAIL") && !resp.get("err_code").equals("USERPAYING")&& !resp.get("err_code").equals("SYSTEMERROR")) {
            return TranState.OTHER_FAIL;
        }
        if (resp.get("return_code").equals("SUCCESS") && resp.get("result_code").equals("FAIL") && resp.get("err_code").equals("SYSTEMERROR")) {
            return TranState.SYSTEMERROR;
        }

        if (resp.get("return_code").equals("SUCCESS") && resp.get("result_code").equals("SUCCESS") && resp.get("trade_state").equals("USERPAYING")) {
            return TranState.PAYING;
        }
        if (resp.get("return_code").equals("SUCCESS") && resp.get("result_code").equals("SUCCESS") && resp.get("trade_state")!=null && resp.get("trade_state").equals("REFUND")) {
            return TranState.REFUND;
        }
        if (resp.get("return_code").equals("SUCCESS") && resp.get("result_code").equals("SUCCESS") && resp.get("trade_state")!=null && (resp.get("trade_state").equals("REVOKED")||resp.get("trade_state").equals("REVOKED")||resp.get("trade_state").equals("NOTPAY")||resp.get("trade_state").equals("PAYERROR"))) {
            return TranState.OTHER_FAIL;
        }
        return TranState.PAYING;
    }

//    private String wxpayAndConfigInit(WXPay wxpay, WXPayConfigImpl config) {
//        try {
//            config = new WXPayConfigImpl();
//            wxpay = new WXPay(config, true, true);
//        } catch (Exception e) {
//            e.printStackTrace();
//            return getJsonResult(false);
//        }
//        return "wxpayAndConfigInit";
//    }


}