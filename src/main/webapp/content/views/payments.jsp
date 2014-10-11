<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="content/static/css/travel/payments/payments.css" />
</head>
<jsp:include page='header.jsp'/>
<body>
<script type="text/javascript">
  function payment(){
    window.location.href = "./confirmation";
  }
</script>
<div class="wrapper">
<div class="payinfo">
    <div class="payinfo_price">

        <p>
            订单金额：</p>
        <p>
                    <span class="price">
                        <dfn>¥</dfn>210.00</span></p>

    </div>

    <div class="payinfo_detail">
        <dl>
            <dd>
                2014-10-08 深圳汽车客运站-南宁 汽车票1张
            </dd>
        </dl>
    </div>

</div>

<h2 id="headerLeftMoneyMessage" style="" class="paytitle"><strong>您还需要支付:</strong><span class="price"><dfn>¥</dfn>210.00</span></h2>


<div class="payarea" id="divPayCatalogArea">

<input type="hidden" id="hidLastPayCatalog" value="CreditCard">
<input type="hidden" id="hidLastPayWayID" value="EB_ICBC">
<ul id="ulAllPayCatalog" class="paytab">

    <li class="catalogcodev2 current" id="li_paycatalog_CreditCard" catalogcode="CreditCard">
        <a href="javascript:;">
            信用卡

        </a>
    </li>

    <li class="catalogcodev2" id="li_paycatalog_DepositCard" catalogcode="DepositCard">
        <a href="javascript:;">
            储蓄卡

        </a>
    </li>

    <li class="catalogcodev2" id="li_paycatalog_ThirdPay" catalogcode="ThirdPay">
        <a href="javascript:;">
            第三方支付

        </a>
    </li>

    <li class="catalogcodev2" id="li_paycatalog_EBank" catalogcode="EBank">
        <a href="javascript:;">
            网上银行

        </a>
    </li>

    <li class="catalogcodev2" id="li_paycatalog_WeChat" catalogcode="WeChat">
        <a href="javascript:;">

            <span class="ico_phone"></span>微信支付<span class="tag_sale" style="display:none;">优惠</span>

        </a>
    </li>

</ul>

<div id="div_payway_CreditCard" class="paybox">

    <p class="paybox_tip">
        没有信用卡？您可以免费申请<a href="http://pages.ctrip.com/commerce/promote/AllianceCard/200706/xyk/lyxykindex.htm" id="travelCreditcard" target="_blank">“携程旅行信用卡”</a>，一卡双币，全球通用。</p>
    <ul class="paylist">

        <li class="commonpaywayliv2 selected">
            <input type="radio" id="rbCC_CMB2" name="rbPaymentWay" data="creditCardPayWay_InCard" dataid="8158" promotext="" value="CC_CMB2" catalogcode="CreditCard" enableinvoice="0" currentchannel="500" disableddescription="" isdisabled="False"><label id="pay_lbl_CreditCard_CC_CMB2" for="rbCC_CMB2" title="招商银行" class="creditcard_cmb"></label><span class="tip_sale" style="display:none;" promotiontext="">
                        </span></li>

        <li class="commonpaywayliv2">
            <input type="radio" id="rbCC_CCB2" name="rbPaymentWay" data="creditCardPayWay_InCard" dataid="8154" promotext="" value="CC_CCB2" catalogcode="CreditCard" enableinvoice="0" currentchannel="500" disableddescription="" isdisabled="False"><label id="pay_lbl_CreditCard_CC_CCB2" for="rbCC_CCB2" title="中国建设银行" class="creditcard_ccb"></label><span class="tip_sale" style="display:none;" promotiontext="">
                        </span></li>

        <li class="commonpaywayliv2">
            <input type="radio" id="rbCC_COMM2" name="rbPaymentWay" data="creditCardPayWay_InCard" dataid="8160" promotext="" value="CC_COMM2" catalogcode="CreditCard" enableinvoice="0" currentchannel="500" disableddescription="" isdisabled="False"><label id="pay_lbl_CreditCard_CC_COMM2" for="rbCC_COMM2" title="交通银行" class="creditcard_comm"></label><span class="tip_sale" style="display:none;" promotiontext="">
                        </span></li>

        <li class="commonpaywayliv2">
            <input type="radio" id="rbCC_ICBC2" name="rbPaymentWay" data="creditCardPayWay_InCard" dataid="8162" promotext="" value="CC_ICBC2" catalogcode="CreditCard" enableinvoice="0" currentchannel="500" disableddescription="" isdisabled="False"><label id="pay_lbl_CreditCard_CC_ICBC2" for="rbCC_ICBC2" title="工商银行" class="creditcard_icbc"></label><span class="tip_sale" style="display:none;" promotiontext="">
                        </span></li>

        <li class="commonpaywayliv2">
            <input type="radio" id="rbCC_BOC2" name="rbPaymentWay" data="creditCardPayWay_InCard" dataid="8153" promotext="" value="CC_BOC2" catalogcode="CreditCard" enableinvoice="0" currentchannel="500" disableddescription="" isdisabled="False"><label id="pay_lbl_CreditCard_CC_BOC2" for="rbCC_BOC2" title="中国银行" class="creditcard_boc"></label><span class="tip_sale" style="display:none;" promotiontext="">
                        </span></li>

        <li class="commonpaywayliv2">
            <input type="radio" id="rbCC_GDB2" name="rbPaymentWay" data="creditCardPayWay_InCard" dataid="8161" promotext="" value="CC_GDB2" catalogcode="CreditCard" enableinvoice="0" currentchannel="500" disableddescription="" isdisabled="False"><label id="pay_lbl_CreditCard_CC_GDB2" for="rbCC_GDB2" title="广发银行" class="creditcard_gdb"></label><span class="tip_sale" style="display:none;" promotiontext="">
                        </span></li>

        <li class="commonpaywayliv2">
            <input type="radio" id="rbCC_CITIC2" name="rbPaymentWay" data="creditCardPayWay_InCard" dataid="8157" promotext="" value="CC_CITIC2" catalogcode="CreditCard" enableinvoice="0" currentchannel="500" disableddescription="" isdisabled="False"><label id="pay_lbl_CreditCard_CC_CITIC2" for="rbCC_CITIC2" title="中信银行" class="creditcard_citic"></label><span class="tip_sale" style="display:none;" promotiontext="">
                        </span></li>

        <li class="commonpaywayliv2">
            <input type="radio" id="rbCC_ABC2" name="rbPaymentWay" data="creditCardPayWay_InCard" dataid="8152" promotext="" value="CC_ABC2" catalogcode="CreditCard" enableinvoice="0" currentchannel="500" disableddescription="" isdisabled="False"><label id="pay_lbl_CreditCard_CC_ABC2" for="rbCC_ABC2" title="农业银行" class="creditcard_abc"></label><span class="tip_sale" style="display:none;" promotiontext="">
                        </span></li>

        <li class="commonpaywayliv2">
            <input type="radio" id="rbCC_CMBC2" name="rbPaymentWay" data="creditCardPayWay_InCard" dataid="8159" promotext="" value="CC_CMBC2" catalogcode="CreditCard" enableinvoice="0" currentchannel="500" disableddescription="" isdisabled="False"><label id="pay_lbl_CreditCard_CC_CMBC2" for="rbCC_CMBC2" title="民生银行" class="creditcard_cmbc"></label><span class="tip_sale" style="display:none;" promotiontext="">
                        </span></li>

        <li class="commonpaywayliv2">
            <input type="radio" id="rbCC_CIB2" name="rbPaymentWay" data="creditCardPayWay_InCard" dataid="8156" promotext="" value="CC_CIB2" catalogcode="CreditCard" enableinvoice="0" currentchannel="500" disableddescription="" isdisabled="False"><label id="pay_lbl_CreditCard_CC_CIB2" for="rbCC_CIB2" title="兴业银行" class="creditcard_cib"></label><span class="tip_sale" style="display:none;" promotiontext="">
                        </span></li>

        <li class="commonpaywayliv2">
            <input type="radio" id="rbCC_CEBBANK2" name="rbPaymentWay" data="creditCardPayWay_InCard" dataid="8155" promotext="" value="CC_CEBBANK2" catalogcode="CreditCard" enableinvoice="0" currentchannel="500" disableddescription="" isdisabled="False"><label id="pay_lbl_CreditCard_CC_CEBBANK2" for="rbCC_CEBBANK2" title="光大银行" class="creditcard_cebbank"></label><span class="tip_sale" style="display:none;" promotiontext="">
                        </span></li>

        <li class="commonpaywayliv2">
            <input type="radio" id="rbCC_SPABANK" name="rbPaymentWay" data="creditCardPayWay_InCard" dataid="806" promotext="" value="CC_SPABANK" catalogcode="CreditCard" enableinvoice="0" currentchannel="0" disableddescription="" isdisabled="False"><label id="pay_lbl_CreditCard_CC_SPABANK" for="rbCC_SPABANK" title="平安银行" class="creditcard_spabank"></label><span class="tip_sale" style="display:none;" promotiontext="">
                        </span></li>

    </ul>

    <p id="lbl_cc_foreign_charge" style="padding-top: 10px; border-top: 1px dashed #C5C5C5;">境外信用卡请选择卡标识</p>

    <ul class="paylist">

        <li class="commonpaywayliv2">
            <input type="radio" id="rbCC_VISA" name="rbPaymentWay" data="creditCardPayWay_ForeignCard" dataid="808" promotext="" value="CC_VISA" catalogcode="CreditCard" enableinvoice="0" currentchannel="0" disableddescription="" isdisabled="False"><label id="pay_lbl_CreditCard_CC_VISA" for="rbCC_VISA" title="威士(VISA)" class="creditcard_visa"></label><span class="tip_sale" style="display:none;" promotiontext="">
                        </span> </li>

        <li class="commonpaywayliv2">
            <input type="radio" id="rbCC_MasterCard" name="rbPaymentWay" data="creditCardPayWay_ForeignCard" dataid="802" promotext="" value="CC_MasterCard" catalogcode="CreditCard" enableinvoice="0" currentchannel="0" disableddescription="" isdisabled="False"><label id="pay_lbl_CreditCard_CC_MasterCard" for="rbCC_MasterCard" title="万事达(Master)" class="creditcard_mastercard"></label><span class="tip_sale" style="display:none;" promotiontext="">
                        </span> </li>

        <li class="commonpaywayliv2">
            <input type="radio" id="rbCC_AmericanExpress" name="rbPaymentWay" data="creditCardPayWay_ForeignCard" dataid="786" promotext="" value="CC_AmericanExpress" catalogcode="CreditCard" enableinvoice="0" currentchannel="0" disableddescription="" isdisabled="False"><label id="pay_lbl_CreditCard_CC_AmericanExpress" for="rbCC_AmericanExpress" title="运通(AMEX)" class="creditcard_americanexpress"></label><span class="tip_sale" style="display:none;" promotiontext="">
                        </span> </li>

        <li class="commonpaywayliv2">
            <input type="radio" id="rbCC_JCB" name="rbPaymentWay" data="creditCardPayWay_ForeignCard" dataid="801" promotext="" value="CC_JCB" catalogcode="CreditCard" enableinvoice="0" currentchannel="0" disableddescription="" isdisabled="False"><label id="pay_lbl_CreditCard_CC_JCB" for="rbCC_JCB" title="JCB" class="creditcard_jcb"></label><span class="tip_sale" style="display:none;" promotiontext="">
                        </span> </li>

    </ul>

    <a href="javascript:;" class="ico_more" id="linkMoreCreditCard">选择其他</a>

</div>

<div class="paybox" id="div_payway_DepositCard" style="display: none;">

    <div id="divDQPaywayInfo">
        <ul class="paylist">

            <li class="commonpaywayliv2">
                <input type="radio" id="rbDQ_BOC" name="rbPaymentWay" data="creditCardPayWay_InCard" dataid="5107" promotext="" value="DQ_BOC" catalogcode="DepositCard" enableinvoice="0" currentchannel="0" disableddescription="" isdisabled="False">
                <label id="pay_lbl_DepositCard_DQ_BOC" for="rbDQ_BOC" title="中国银行" class="creditcard_boc">
                </label>
                <span class="tip_sale" style="display:none;" promotiontext="">
                    </span> </li>

            <li class="commonpaywayliv2">
                <input type="radio" id="rbDQ_CCB" name="rbPaymentWay" data="creditCardPayWay_InCard" dataid="5117" promotext="" value="DQ_CCB" catalogcode="DepositCard" enableinvoice="0" currentchannel="0" disableddescription="" isdisabled="False">
                <label id="pay_lbl_DepositCard_DQ_CCB" for="rbDQ_CCB" title="建设银行" class="creditcard_ccb">
                </label>
                <span class="tip_sale" style="display:none;" promotiontext="">
                    </span> </li>

            <li class="commonpaywayliv2">
                <input type="radio" id="rbDQ_CEBBANK" name="rbPaymentWay" data="creditCardPayWay_InCard" dataid="5120" promotext="" value="DQ_CEBBANK" catalogcode="DepositCard" enableinvoice="0" currentchannel="0" disableddescription="" isdisabled="False">
                <label id="pay_lbl_DepositCard_DQ_CEBBANK" for="rbDQ_CEBBANK" title="光大银行" class="creditcard_cebbank">
                </label>
                <span class="tip_sale" style="display:none;" promotiontext="">
                    </span> </li>

            <li class="commonpaywayliv2">
                <input type="radio" id="rbDQ_CIB" name="rbPaymentWay" data="creditCardPayWay_InCard" dataid="5122" promotext="" value="DQ_CIB" catalogcode="DepositCard" enableinvoice="0" currentchannel="0" disableddescription="" isdisabled="False">
                <label id="pay_lbl_DepositCard_DQ_CIB" for="rbDQ_CIB" title="兴业银行" class="creditcard_cib">
                </label>
                <span class="tip_sale" style="display:none;" promotiontext="">
                    </span> </li>

            <li class="commonpaywayliv2">
                <input type="radio" id="rbDQ_CMB" name="rbPaymentWay" data="creditCardPayWay_InCard" dataid="5125" promotext="" value="DQ_CMB" catalogcode="DepositCard" enableinvoice="0" currentchannel="0" disableddescription="" isdisabled="False">
                <label id="pay_lbl_DepositCard_DQ_CMB" for="rbDQ_CMB" title="招商银行" class="creditcard_cmb">
                </label>
                <span class="tip_sale" style="display:none;" promotiontext="">
                    </span> </li>

            <li class="commonpaywayliv2">
                <input type="radio" id="rbDQ_ICBC" name="rbPaymentWay" data="creditCardPayWay_InCard" dataid="5159" promotext="" value="DQ_ICBC" catalogcode="DepositCard" enableinvoice="0" currentchannel="0" disableddescription="" isdisabled="False">
                <label id="pay_lbl_DepositCard_DQ_ICBC" for="rbDQ_ICBC" title="工商银行" class="creditcard_icbc">
                </label>
                <span class="tip_sale" style="display:none;" promotiontext="">
                    </span> </li>

            <li class="commonpaywayliv2">
                <input type="radio" id="rbDQ_ABC" name="rbPaymentWay" data="creditCardPayWay_InCard" dataid="5100" promotext="" value="DQ_ABC" catalogcode="DepositCard" enableinvoice="0" currentchannel="0" disableddescription="" isdisabled="False">
                <label id="pay_lbl_DepositCard_DQ_ABC" for="rbDQ_ABC" title="农业银行" class="creditcard_abc">
                </label>
                <span class="tip_sale" style="display:none;" promotiontext="">
                    </span> </li>

        </ul>
    </div>

    <input type="hidden" id="hidRefNo">
</div>

<div id="div_payway_ThirdPay" class="paybox" style="display: none;">
    <ul class="paylist basefix">

        <li class="commonpaywayliv2" title="">
            <input type="radio" id="rbAlipay" name="rbPaymentWay" data="thirdPaymentWay" dataid="783" promotext="" value="Alipay" catalogcode="ThirdPay" enableinvoice="0">
            <label id="pay_lbl_ThirdPay_Alipay" for="rbAlipay" title="支付宝" class="more_alipay"></label>
            <span class="tip_sale" style="display:none;" promotiontext=""></span>

        </li>

        <li class="commonpaywayliv2" title="">
            <input type="radio" id="rbAlipay_ScanCode" name="rbPaymentWay" data="thirdPaymentWay" dataid="783" promotext="" value="Alipay_ScanCode" catalogcode="ThirdPay" enableinvoice="0">
            <label id="pay_lbl_ThirdPay_Alipay_ScanCode" for="rbAlipay_ScanCode" title="支付宝" class="more_alipayscan"></label>
            <span class="tip_sale" style="display:none;" promotiontext=""></span>

        </li>

        <li class="commonpaywayliv2" title="">
            <input type="radio" id="rbEB_UnionPay" name="rbPaymentWay" data="thirdPaymentWay" dataid="949" promotext="" value="EB_UnionPay" catalogcode="ThirdPay" enableinvoice="0">
            <label id="pay_lbl_ThirdPay_EB_UnionPay" for="rbEB_UnionPay" title="银联在线支付" class="more_unionpay"></label>
            <span class="tip_sale" style="display:none;" promotiontext=""></span>
            <p>无需开通网上银行</p>
        </li>

        <li class="commonpaywayliv2" title="">
            <input type="radio" id="rbTenpay" name="rbPaymentWay" data="thirdPaymentWay" dataid="844" promotext="" value="Tenpay" catalogcode="ThirdPay" enableinvoice="0">
            <label id="pay_lbl_ThirdPay_Tenpay" for="rbTenpay" title="财付通" class="more_tenpay"></label>
            <span class="tip_sale" style="display:none;" promotiontext=""></span>

        </li>

    </ul>
</div>
<div id="div_payway_EBank" class="paybox" style="display: none;">
    <ul class="paylist basefix">

        <li class="commonpaywayliv2" title="">
            <input type="radio" id="rbEB_ICBC" name="rbPaymentWay" data="ebankPaymentWay" dataid="841" promotext="" value="EB_ICBC" catalogcode="EBank" enableinvoice="0">
            <label id="pay_lbl_EBank_EB_ICBC" for="rbEB_ICBC" title="中国工商银行" class="creditcard_icbc">
            </label>
            <span class="tip_sale" style="display:none;" promotiontext="">
                </span> </li>

        <li class="commonpaywayliv2" title="">
            <input type="radio" id="rbEB_CCB" name="rbPaymentWay" data="ebankPaymentWay" dataid="839" promotext="后返送好礼" value="EB_CCB" catalogcode="EBank" enableinvoice="0">
            <label id="pay_lbl_EBank_EB_CCB" for="rbEB_CCB" title="中国建设银行" class="creditcard_ccb">
            </label>
            <span class="tip_sale" promotiontext="后返送好礼">
                后返送好礼</span> </li>

        <li class="commonpaywayliv2" title="">
            <input type="radio" id="rbEB_BOC" name="rbPaymentWay" data="ebankPaymentWay" dataid="838" promotext="" value="EB_BOC" catalogcode="EBank" enableinvoice="0">
            <label id="pay_lbl_EBank_EB_BOC" for="rbEB_BOC" title="中国银行" class="creditcard_boc">
            </label>
            <span class="tip_sale" style="display:none;" promotiontext="">
                </span> </li>

        <li class="commonpaywayliv2" title="">
            <input type="radio" id="rbEB_CMB" name="rbPaymentWay" data="ebankPaymentWay" dataid="840" promotext="" value="EB_CMB" catalogcode="EBank" enableinvoice="0">
            <label id="pay_lbl_EBank_EB_CMB" for="rbEB_CMB" title="招商银行" class="creditcard_cmb">
            </label>
            <span class="tip_sale" style="display:none;" promotiontext="">
                </span> </li>

        <li class="commonpaywayliv2" title="">
            <input type="radio" id="rbEB_SPDB" name="rbPaymentWay" data="ebankPaymentWay" dataid="842" promotext="" value="EB_SPDB" catalogcode="EBank" enableinvoice="0">
            <label id="pay_lbl_EBank_EB_SPDB" for="rbEB_SPDB" title="浦发银行" class="creditcard_spdb">
            </label>
            <span class="tip_sale" style="display:none;" promotiontext="">
                </span> </li>

        <li class="commonpaywayliv2" title="">
            <input type="radio" id="rbEB_ABC" name="rbPaymentWay" data="ebankPaymentWay" dataid="837" promotext="" value="EB_ABC" catalogcode="EBank" enableinvoice="0">
            <label id="pay_lbl_EBank_EB_ABC" for="rbEB_ABC" title="中国农业银行" class="creditcard_abc">
            </label>
            <span class="tip_sale" style="display:none;" promotiontext="">
                </span> </li>

        <li class="commonpaywayliv2" title="">
            <input type="radio" id="rbEB_PSBC" name="rbPaymentWay" data="ebankPaymentWay" dataid="856" promotext="" value="EB_PSBC" catalogcode="EBank" enableinvoice="0">
            <label id="pay_lbl_EBank_EB_PSBC" for="rbEB_PSBC" title="中国邮政储蓄银行" class="creditcard_psbc">
            </label>
            <span class="tip_sale" style="display:none;" promotiontext="">
                </span> </li>

        <li class="commonpaywayliv2" title="">
            <input type="radio" id="rbEB_COMM" name="rbPaymentWay" data="ebankPaymentWay" dataid="1306" promotext="" value="EB_COMM" catalogcode="EBank" enableinvoice="0">
            <label id="pay_lbl_EBank_EB_COMM" for="rbEB_COMM" title="交行网银" class="creditcard_comm">
            </label>
            <span class="tip_sale" style="display:none;" promotiontext="">
                </span> </li>

        <li class="commonpaywayliv2" title="">
            <input type="radio" id="rbEB_BJBANK_Alipay" name="rbPaymentWay" data="ebankPaymentWay" dataid="29152" promotext="" value="EB_BJBANK_Alipay" catalogcode="EBank" enableinvoice="0">
            <label id="pay_lbl_EBank_EB_BJBANK_Alipay" for="rbEB_BJBANK_Alipay" title="北京银行网银" class="creditcard_bjbank">
            </label>
            <span class="tip_sale" style="display:none;" promotiontext="">
                </span> </li>

        <li class="commonpaywayliv2" title="">
            <input type="radio" id="rbEB_BJRCB_Alipay" name="rbPaymentWay" data="ebankPaymentWay" dataid="29153" promotext="" value="EB_BJRCB_Alipay" catalogcode="EBank" enableinvoice="0">
            <label id="pay_lbl_EBank_EB_BJRCB_Alipay" for="rbEB_BJRCB_Alipay" title="北京农商银行网银" class="creditcard_bjrcb">
            </label>
            <span class="tip_sale" style="display:none;" promotiontext="">
                </span> </li>

        <li class="commonpaywayliv2" title="">
            <input type="radio" id="rbEB_CEBBANK_Alipay" name="rbPaymentWay" data="ebankPaymentWay" dataid="29156" promotext="" value="EB_CEBBANK_Alipay" catalogcode="EBank" enableinvoice="0">
            <label id="pay_lbl_EBank_EB_CEBBANK_Alipay" for="rbEB_CEBBANK_Alipay" title="光大银行网银" class="creditcard_cebbank">
            </label>
            <span class="tip_sale" style="display:none;" promotiontext="">
                </span> </li>

        <li class="commonpaywayliv2" title="">
            <input type="radio" id="rbEB_CIB_Alipay" name="rbPaymentWay" data="ebankPaymentWay" dataid="29157" promotext="" value="EB_CIB_Alipay" catalogcode="EBank" enableinvoice="0">
            <label id="pay_lbl_EBank_EB_CIB_Alipay" for="rbEB_CIB_Alipay" title="兴业银行网银" class="creditcard_cib">
            </label>
            <span class="tip_sale" style="display:none;" promotiontext="">
                </span> </li>

        <li class="commonpaywayliv2" title="">
            <input type="radio" id="rbEB_CITIC_Alipay" name="rbPaymentWay" data="ebankPaymentWay" dataid="29158" promotext="" value="EB_CITIC_Alipay" catalogcode="EBank" enableinvoice="0">
            <label id="pay_lbl_EBank_EB_CITIC_Alipay" for="rbEB_CITIC_Alipay" title="中信银行网银" class="creditcard_citic">
            </label>
            <span class="tip_sale" style="display:none;" promotiontext="">
                </span> </li>

        <li class="commonpaywayliv2" title="">
            <input type="radio" id="rbEB_CMBC_Alipay" name="rbPaymentWay" data="ebankPaymentWay" dataid="29160" promotext="" value="EB_CMBC_Alipay" catalogcode="EBank" enableinvoice="0">
            <label id="pay_lbl_EBank_EB_CMBC_Alipay" for="rbEB_CMBC_Alipay" title="民生银行网银" class="creditcard_cmbc">
            </label>
            <span class="tip_sale" style="display:none;" promotiontext="">
                </span> </li>

        <li class="commonpaywayliv2" title="">
            <input type="radio" id="rbEB_FDB_Alipay" name="rbPaymentWay" data="ebankPaymentWay" dataid="29162" promotext="" value="EB_FDB_Alipay" catalogcode="EBank" enableinvoice="0">
            <label id="pay_lbl_EBank_EB_FDB_Alipay" for="rbEB_FDB_Alipay" title="富滇银行网银" class="creditcard_fdb">
            </label>
            <span class="tip_sale" style="display:none;" promotiontext="">
                </span> </li>

        <li class="commonpaywayliv2" title="">
            <input type="radio" id="rbEB_GDB_Alipay" name="rbPaymentWay" data="ebankPaymentWay" dataid="29163" promotext="" value="EB_GDB_Alipay" catalogcode="EBank" enableinvoice="0">
            <label id="pay_lbl_EBank_EB_GDB_Alipay" for="rbEB_GDB_Alipay" title="广发银行网银" class="creditcard_gdb">
            </label>
            <span class="tip_sale" style="display:none;" promotiontext="">
                </span> </li>

        <li class="commonpaywayliv2" title="">
            <input type="radio" id="rbEB_HZBANK_Alipay" name="rbPaymentWay" data="ebankPaymentWay" dataid="29164" promotext="" value="EB_HZBANK_Alipay" catalogcode="EBank" enableinvoice="0">
            <label id="pay_lbl_EBank_EB_HZBANK_Alipay" for="rbEB_HZBANK_Alipay" title="杭州银行网银" class="creditcard_hzbank">
            </label>
            <span class="tip_sale" style="display:none;" promotiontext="">
                </span> </li>

        <li class="commonpaywayliv2" title="">
            <input type="radio" id="rbEB_NBBANK_Alipay" name="rbPaymentWay" data="ebankPaymentWay" dataid="29166" promotext="" value="EB_NBBANK_Alipay" catalogcode="EBank" enableinvoice="0">
            <label id="pay_lbl_EBank_EB_NBBANK_Alipay" for="rbEB_NBBANK_Alipay" title="宁波银行网银" class="creditcard_nbbank">
            </label>
            <span class="tip_sale" style="display:none;" promotiontext="">
                </span> </li>

        <li class="commonpaywayliv2" title="">
            <input type="radio" id="rbEB_SHBANK_Alipay" name="rbPaymentWay" data="ebankPaymentWay" dataid="29168" promotext="" value="EB_SHBANK_Alipay" catalogcode="EBank" enableinvoice="0">
            <label id="pay_lbl_EBank_EB_SHBANK_Alipay" for="rbEB_SHBANK_Alipay" title="上海银行网银" class="creditcard_shbank">
            </label>
            <span class="tip_sale" style="display:none;" promotiontext="">
                </span> </li>

        <li class="commonpaywayliv2" title="">
            <input type="radio" id="rbEB_SPABANK_Alipay" name="rbPaymentWay" data="ebankPaymentWay" dataid="29169" promotext="" value="EB_SPABANK_Alipay" catalogcode="EBank" enableinvoice="0">
            <label id="pay_lbl_EBank_EB_SPABANK_Alipay" for="rbEB_SPABANK_Alipay" title="平安银行网银" class="creditcard_spabank">
            </label>
            <span class="tip_sale" style="display:none;" promotiontext="">
                </span> </li>

        <li class="commonpaywayliv2" title="">
            <input type="radio" id="rbEB_SRCB_Alipay" name="rbPaymentWay" data="ebankPaymentWay" dataid="29171" promotext="" value="EB_SRCB_Alipay" catalogcode="EBank" enableinvoice="0">
            <label id="pay_lbl_EBank_EB_SRCB_Alipay" for="rbEB_SRCB_Alipay" title="上海农商银行网银" class="creditcard_srcb">
            </label>
            <span class="tip_sale" style="display:none;" promotiontext="">
                </span> </li>

        <li class="commonpaywayliv2" title="">
            <input type="radio" id="rbEB_WZCB_Alipay" name="rbPaymentWay" data="ebankPaymentWay" dataid="29172" promotext="" value="EB_WZCB_Alipay" catalogcode="EBank" enableinvoice="0">
            <label id="pay_lbl_EBank_EB_WZCB_Alipay" for="rbEB_WZCB_Alipay" title="温州银行网银" class="creditcard_wzcb">
            </label>
            <span class="tip_sale" style="display:none;" promotiontext="">
                </span> </li>

    </ul>
    <p id="divNotSupportEBankMessage" class="paybox_error" style="display: none;">
        <span class="ico_alert3"></span>您正在使用的浏览器可能不支持网银支付，建议您使用信用卡或切换至chrome浏览器进行支付。</p>
</div>
<div id="div_payway_WeChat" class="paybox" style="display: none;">
    <div class="paybox_wx">
        <div class="wx_sale">
            <span class="ico_wx"></span><strong>微信</strong>
        </div>
        <div class="wx_tip">
            <div class="wx_tip_pic"></div>
            <strong>提示：</strong>点击“下一步”后，请打开手机微信的“扫一扫”，扫描二维码
        </div>


        <label style="display:none;" class="paylabel" title=""><input type="radio" id="rbWechatScanCode" name="rbPaymentWay" value="WechatScanCode" catalogcode="WeChat" enableinvoice="0" dataid="8166"><strong>微信支付 </strong></label>

    </div>
</div>
</div>

<div class="paysubmit" style="margin-top: 10px;">
    <div class="bank_maintain" id="divPayWayDisabledMessage" style="display: none;"></div>

    <form id="frmEBankPayProcess" method="post" target="_blank" action="zh-CN/EBankV2/EBankBillProcess.aspx">
        <input id="hidRequestID" type="hidden" name="RequestID" value="121289206">
        <input id="hidTimeStamp" type="hidden" name="TimeStamp" value="20141007011042366024">
        <input id="hidBillNo" type="hidden" name="BillNo" value="0">
        <input id="hidCurrency" type="hidden" name="currency" value="CNY">
        <input id="hidSubGatheringNo" type="hidden" name="SubGatheringNo" value="0">
        <input id="hidToken" type="hidden" name="Token" value="FB06CAEE40F643F598059A70C1E023C2">
        <input id="hidOrderAmount" type="hidden" name="OrderAmount" value="210">
        <input id="hidTMLimitAmount" type="hidden" name="TMLimitAmount" value="0">
        <input id="hidTMEMDiscount" type="hidden" name="TMEMDiscount" value="0">
        <input id="hidCustomerID" type="hidden" name="CustomerID" value="E120427298">
        <input id="hidTicketType" type="hidden" name="TicketType" value="3">
        <input id="hidOrderID" type="hidden" value="1051377659">
        <input id="hidBatchNo" type="hidden" name="BatchNo" value="">
        <input id="hidForeignCardChargeRate" name="ForeignCardChargeRate" type="hidden" value="0.00">
        <input id="hidEnableDCC" name="EnableDCC" type="hidden" value="True">
        <input id="hidIsGuaranteePay" name="IsGuaranteePay" type="hidden" value="True">
        <input id="hidDisabledInvoiceBaseAmount" name="DisabledInvoiceBaseAmount" type="hidden" value="0">
        <input id="hidInvoiceBaseAmount" type="hidden" name="InvoiceBaseAmount" value="0">
        <input id="hidInvoiceBizID" type="hidden" name="InvoiceBizID" value="0">
        <input id="hidEnableInvoice" type="hidden" value="false">
        <input id="hidVoucherMixedDisabledPayWay" type="hidden" value="">
        <input id="hidIsEnableEBankNewPay" type="hidden" value="False">
        <input type="button" value="下一步" class="btn_submit" id="btnNextCommand" onclick="payment()">
        <span id="spanSubmitLoading" class="ico_loading" style="display: none;"></span>
    </form>
</div>

<div class="payprompt">
    <span class="ico_protect"></span>携程支付安全承诺：携程采用国际标准加密算法来保证支付信息安全传输，并承诺保障用户在携程的信息安全，如因携程安全问题造成资金损失，携程全额赔付。<a href="javascript:;" id="link_ccmask_cvv2_open">详细了解信用卡验证码</a>
</div>
</div>
</body>
</html>
