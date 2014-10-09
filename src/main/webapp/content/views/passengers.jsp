<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="content/static/css/travel/passengers/passengers.css" />
</head>
<jsp:include page='header.jsp'/>

<body>
<div class="w1180 order_progress">
    <div class="step finished">
        <div class="progress_line"></div>
        <i>1</i>
        <h4>填写</h4>
    </div>
    <div class="step">
        <div class="progress_line"></div>
        <i>2</i>
        <h4>核对</h4>
    </div>
    <div class="step">
        <div class="progress_line"></div>
        <i>3</i>
        <h4>支付</h4>
    </div>
    <div class="step">
        <div class="progress_line"></div>
        <i>4</i>
        <h4>完成</h4>
    </div>
</div>

<form id="go_pay" action="http://bus.ctrip.com/commitOrder.html" method="post" accept-charset="utf-8">
<input type="hidden" id="f_from_city_name" name="fromCityName" value="深圳">
<input type="hidden" id="f_to_city_name" name="toCityName" value="南宁">
<input type="hidden" id="f_from_station_name" name="fromStationName" value="深圳汽车客运站">
<input type="hidden" id="f_bus_number" name="busNumber" value="YFYHPGP0001">
<input type="hidden" id="f_full_price" name="fullPrice" value="210.00">
<input type="hidden" id="f_from_time" name="ticketTime" value="08:00">
<input type="hidden" id="f_bookable" name="bookable" value="2">
<input type="hidden" id="f_order_ticket_cnt" name="orderTicketCnt" value="3">
<input type="hidden" id="f_order_utm_source" name="utm_source" value="">
<input type="hidden" id="f_from_date" name="ticketDate" value="2014-10-08">
<input type="hidden" id="hashkey" name="hashkey" value="38f87e10283fc0e2247abcf1a9063dbb">

<div class="w1180 wrapper">
<div class="main_box">
    <div class="main_wrap">
        <div class="form_panel">
            <h3>车次信息</h3>
            <div class="form_field">
                <table width="100%" cellspacing="0" cellpadding="0" class="tb_train_info">
                    <tbody><tr>
                        <td style="width:80px;"><em class="bus_no">YFYHPGP0001</em><br><a style="cursor:pointer;" class="go_back_page">修改车次</a></td>
                        <td style="width:140px;" class="text_right"><strong><em>深圳(深圳汽车客运站)</em></strong><br>10月8日08:00</td>
                        <td style="width:40px; text-align:center;"><b class="line_arrow"></b></td>
                        <td style="width:140px;"><strong><em>南宁</em></strong><br><br></td>
                        <td style="width:60px;">大型卧铺1</td>
                        <td style="width:60px;"><dfn>¥</dfn><span class="base_price">210.00</span></td>
                    </tr>
                    </tbody></table>
            </div>
        </div>
        <div class="form_panel">
            <h3>乘客信息</h3>
            <div class="passenger_list">
                <div class="passenger">
                    <div id="divUsers">
                        <label class="base_label" title="黄亮"><input type="checkbox" class="select_passenger" id="select_passenger_212471118" data-infoid="212471118" data-name="" data-cardno="" data-cardtype="1">黄亮</label>
                    </div>
                </div>
            </div>
            <div class="form_field p_info" id="p_info">
                <div class="btn_box"><div id="passenger1" style="display: block;" class="single_passenger">
                    <label class="base_label add_to_reg"><input type="checkbox" class="bool_add_passenger" data-hiddenid="bool_add_passenger_passenger1" checked="checked">保存为常用旅客</label>
                    <input type="hidden" name="addPassenger[]" value="1" id="bool_add_passenger_passenger1">
                    <strong class="title">第1位乘客-成人票</strong>

                    <a href="###" class="clearPassenger" data-pid="passenger1">清空</a>
                    <a href="###" class="removePassenger" data-pid="passenger1" style="display:none">删除</a>

                    <a href="###" class="btn_zhongtu" style="display:none;">携程帮你填</a>
                    <input type="hidden" name="infoId[]" id="info_id_passenger1">
                    <table width="100%" cellpadding="0" cellspacing="0" class="tb_form">
                        <tbody><tr>
                            <th>姓名</th>
                            <td>
                                <div><input type="text" name="passengerName[]" data-pid="passenger1" class="input_text passengerName" data-params="{options:{default_value:&quot;请填写乘客姓名&quot;}}" value="请填写乘客姓名" style="width:308px; color:#999;"><span class="icon_tip" data-role="jmp" data-params="{options:{type:&quot;jmp_text&quot;,template:&quot;#jmp_text&quot;,classNames:{boxType:&quot;jmp_text&quot;},&quot;content&quot;:{&quot;txt&quot;:&quot;<ul class=\&quot;t_jump_content\&quot;><li>乘客姓名与证件号码必须与乘车时所使用证件上的名字和号码一致。</li></ul>&quot;}}}"></span></div>
                                <div class="block_alert passengerNameError force_prompt errorPassengerNameEmpty" style="display: none;"><b></b>请按照购票所持证件填写中文或英文姓名</div>
                                <div class="block_alert passengerNameError errorPassengerNameWrong" style="display: none;"><b></b>请确认您提交的姓名与证件上姓名是否一致</div>
                                <div class="block_alert passengerNameError errorPassengerNameRepeat" style="display: none;"><b></b>乘客姓名不能重复</div>
                            </td>
                        </tr>
                        <tr>
                            <th>证件信息</th>
                            <td>
                                <div class="dropdown">
                                    <a href="###" class="current cardType" id="show_cardtype_pop_passenger1" data-popid="cardtype_pop_passenger1" data-card="二代身份证" data-pid="passenger1"><b></b>二代身份证</a>
                                    <div class="pop_ups options" id="cardtype_pop_passenger1" style="display:none;">
                                        <div class="pop_title">证件类型</div>
                                        <ul class="pop_bd">
                                            <li class="border_none"><a href="###" class="selectCardType" data-params="{options:{hidden_card_type_id:&quot;card_type_passenger1&quot;,pop_id:&quot;cardtype_pop_passenger1&quot;,show_pop_id:&quot;show_cardtype_pop_passenger1&quot;,card_no_id:&quot;input_cardno_passenger1&quot;}}" data-pid="passenger1" data-cardtype="二代身份证"><span class="float_right"></span>二代身份证</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <input type="text" name="cardNo[]" id="input_cardno_passenger1" data-cardtype="二代身份证" class="input_text cardNo" data-pid="passenger1" data-params="{options:{default_value:&quot;证件号码&quot;}}" value="证件号码" style="width:158px; color:#999;">
                                <input type="hidden" name="cardType[]" value="二代身份证" id="card_type_passenger1">
                                <span class="base_txtgray cardtype_tip">台籍乘客请使用台胞回乡证或护照</span>
                                <div class="block_alert force_prompt errorPassengerCardNoEmpty cardNoError" style="display: none;"><b></b>请填写所选证件号码</div>
                                <div class="block_alert errorPassengerCardNoWrong cardNoError" style="display: none;"><b></b>请填写正确的身份证号码</div>
                                <div class="block_alert errorPassengerPassportNoWrong cardNoError" style="display: none;"><b></b>请填写正确的护照号码</div>
                                <div class="block_alert errorPassengerCardNoRepeat cardNoError" style="display: none;"><b></b>此证件号码已经使用</div>
                                <div class="block_alert errorPassengerHkongMacaoCardNoWrong cardNoError" style="display: none;"><b></b>请填写正确的港澳通行证号码</div>
                                <div class="block_alert errorPassengerTaiwCardNoWrong cardNoError" style="display: none;"><b></b>请填写正确的台湾通行证号码</div>
                            </td>
                        </tr>
                        </tbody></table>
                </div><a href="###" class="btn_add_p" id="addPassenger"><b></b>添加乘客</a> <span class="base_txtgray" id="allowPassengerNum">还可添加2位乘客</span></div>
            </div>
        </div>
        <div class="form_panel">
            <h3>取票人信息</h3>
            <div class="form_field">
                <div class="block_alert qupiao_alert"><b></b>需取票后乘车，建议开车前30分钟（节假日等高峰期建议提前1小时）到出发车站取票</div>
                <table width="100%" cellpadding="0" cellspacing="0" class="tb_form">
                    <tbody><tr>
                        <th>姓名</th>
                        <td>
                            <input type="text" name="contactName" id="contactName" class="input_text" data-params="{options:{default_value:&quot;中文/拼音&quot;}}" value="" style="width:308px;">
                            <!--常用联系人start-->
                            <div id="commonContact" class="pop_ups fre_pop" style="display:none;">
                                <div class="pop_title">常用联系人</div>
                                <ul class="pop_bd">
                                    <li class="border_none">
                                    </li>
                                </ul>
                                <div class="pop_title">乘客</div>
                                <ul class="pop_bd" id="autoLoadContactPassenger"></ul>
                            </div>
                            <!--常用联系人end-->
                            <div class="block_alert contactNameError force_prompt" style="display: none;" id="errorContactNameEmpty"><b></b>请填写取票人姓名</div>
                            <div class="block_alert contactNameError force_prompt" style="display: none;" id="errorContactNameWrong"><b></b>请确认取票人姓名是否正确</div>
                        </td>
                    </tr>
                    <tr>
                        <th>证件信息</th>
                        <td>
                            <div class="dropdown" id="fetcher_paper">
                                <a href="###" class="current" id="cardType" data-popid="fetcher_paper_pop_ups" data-card="二代身份证" data-pid="fetcher_paper"><b></b>二代身份证</a>
                                <div class="pop_ups options" id="fetcher_paper_pop_ups" style="display:none;">
                                    <div class="pop_title">证件类型</div>
                                    <ul class="pop_bd">
                                        <li class="border_none"><a href="###" class="selectContactCardNo" data-params="{options:{hidden_card_type_id:&quot;f_contact_paper_type&quot;,pop_id:&quot;fetcher_paper_pop_ups&quot;,show_pop_id:&quot;cardType&quot;,card_no_id:&quot;cardNo&quot;}}" data-target="cardNo" data-pid="fetcher_paper" data-cardtype="二代身份证"><span class="float_right"></span>二代身份证</a></li>
                                    </ul>
                                </div>
                            </div>
                            <input type="text" name="contactPaperNum" id="cardNo" data-params="{options:{default_value:&quot;证件号码&quot;}}" data-cardtype="二代身份证" class="input_text" value="" style="width:158px;">
                            <input type="hidden" id="f_contact_paper_type" name="contactPaperType" value="二代身份证">
                            <div class="block_alert force_prompt contactCardNoError" id="errorPassengerCardNoEmpty" style="display: none;"><b></b>请填写所选证件号码</div>
                            <div class="block_alert contactCardNoError" id="errorPassengerCardNoWrong" style="display: none;"><b></b>请填写正确的身份证号码</div>
                            <div class="block_alert contactCardNoError" id="errorPassengerPassportNoWrong" style="display: none;"><b></b>请填写正确的护照号码</div>
                            <div class="block_alert contactCardNoError" id="errorPassengerCardNoRepeat" style="display: none;"><b></b>此证件号码已经使用</div>
                            <div class="block_alert contactCardNoError" id="errorPassengerHkongMacaoCardNoWrong" style="display: none;"><b></b>请填写正确的港澳通行证号码</div>
                            <div class="block_alert contactCardNoError" id="errorPassengerTaiwCardNoWrong" style="display: none;"><b></b>请填写正确的台湾通行证号码</div>
                        </td>
                    </tr>
                    <tr>
                        <th>手机号</th>
                        <td>
                            <input type="text" name="contactMobile" id="contactMobile" class="input_text" data-params="{options:{default_value:&quot;请填写正确的手机号以接收出票通知短信&quot;}}" value="" style="width:308px;">
                            <div class="block_alert contactMobileError force_prompt" style="display: none;" id="errorContactMobileEmpty"><b></b>请填写手机号码</div>
                            <div class="block_alert contactMobileError force_prompt" style="display: none;" id="errorContactMobileWrong"><b></b>请填写正确的手机号码</div>
                        </td>
                    </tr>
                    </tbody></table>
            </div>
        </div>
        <!--赠送意外险start-->
        <div class="form_panel">
            <h3>赠送意外险</h3>
            <div class="form_field">
                <input type="hidden" id="acceptFreeInsurance" name="acceptFreeInsurance" value="1">
                <input type="checkbox" id="selectAcceptFreeInsurance" checked="checked">
                选择后，您将有机会免费获取交通意外险一份（60天出行保障）。
                <script type="text/javascript">
                    jQuery(function(){
                        jQuery("#selectAcceptFreeInsurance").attr('checked', true);
                        jQuery('#acceptFreeInsurance').val(1);
                    });

                    jQuery("#selectAcceptFreeInsurance").click(function(){
                        if (jQuery(this).attr("checked")) {
                            cQuery.pageStorage.set('acceptFreeInsurance', 1);
                            jQuery('#acceptFreeInsurance').val(1);
                        } else {
                            cQuery.pageStorage.set('acceptFreeInsurance', 0);
                            jQuery('#acceptFreeInsurance').val(0);
                        }
                    });
                </script>
            </div>
        </div>
        <!--赠送意外险end-->
        <div class="form_panel">
            <h3>出票需求</h3>
            <div class="form_field">
                <input type="hidden" id="acceptFromDateFloating" name="acceptFromDateFloating" value="0">
                <input type="checkbox" id="selectAcceptFromDateFloating">
                如所选车次无票，同意更换原发车时间前后一小时的车次（出发车站、票价相同）。
                <script type="text/javascript">
                    jQuery(function(){
                        jQuery("#selectAcceptFromDateFloating").removeAttr('checked');
                        jQuery('#acceptFromDateFloating').val(0);
                    });

                    jQuery("#selectAcceptFromDateFloating").click(function(){
                        if (jQuery(this).attr("checked")) {
                            cQuery.pageStorage.set('acceptFromDateFloating', 1);
                            jQuery('#acceptFromDateFloating').val(1);
                        } else {
                            cQuery.pageStorage.set('acceptFromDateFloating', 0);
                            jQuery('#acceptFromDateFloating').val(0);
                        }
                    });
                </script>
            </div>
        </div>
        <div class="form_panel">
            <h3>条款和限制</h3>
            <div class="form_field">
                <span class="base_txtdiv" onclick="document.getElementById('product_agreement').submit();">产品预订协议</span>

            </div>
        </div>
        <div class="btn_box" style="margin:20px 0 50px;"><a style="cursor:pointer;" class="go_back go_back_page">&lt; 返回上一页</a><input type="button" value="下一步，核对" id="commitOrder" class="btn_check" onclick="checking()"><img id="imgLoading" src="http://pic.c-ctrip.com/common/loading.gif" alt="" style="display:none;"></div>
    </div>
</div>
<div class="side_box">
    <div class="side_fix_box" id="sideBox" style="top: auto;">
        <div class="price_box">
            <div class="price_detail_list">
                <span class="float_right" id="ticket_price"><dfn>¥</dfn>210 × 1</span><p>票&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价：</p>
            </div>
            <div class="price_detail_list" style="display:none;">
                <span class="float_right" id="service_price"><dfn>¥</dfn>0 × 1</span><p>服 务 费：</p>
            </div>
            <div class="basefix">
                <span class="float_right" id="total_price"><dfn>¥</dfn><span class="base_price">210</span></span><strong>应付总额：</strong>
            </div>
        </div>
        <dl class="tip_box">
            <dt>特别提示</dt>
            <dd><i>·</i>代购成功与否会第一时间短信通知您。</dd>
            <dd><i>·</i>旅客请凭取票号码/取票密码/身份证等凭证（参照客运站具体规定）到车站售票窗口/自助取票机取票上车。请预留充足时间取票以免误车。</dd>
            <dd><i>·</i>如购票未成功，您的资金将在3-7个工作日内全额安全退还至原支付账户。</dd>
            <dd><i>·</i>暂不支持网上退改签，如需退改签，请在发车前到出发车站按规定办理。</dd>
            <dd><i>·</i>目前仅售全价票（含成人及身高超过1.50米的儿童），儿童票、学生票、优待票、免票（携儿童）需要在出发车站自行购买。</dd>
        </dl>		</div>
</div>
</div>
<!--页尾start-->
<!--icon_tip提示模板-->
<div style="clear:both;">
    <div id="jmp_text" style="display:none;">
        <div class="jmp_bd">${txt}</div>
    </div>
</div>
<!--弹层-->
<style type="text/css">
    .pop_v2 { position:relative; width:390px; padding:10px 15px 20px; font-family:Tahoma, Simsun; border:9px solid #DCDCDC; background-color:#FFF; }
    .pop_v2 .pop_hd_v2 { height:28px; margin-bottom:10px; padding-bottom:5px; border-bottom:1px solid #E1E1E1; font:bold 14px/28px Tahoma, Simsun; }
    .pop_v2 .sub_title_v2 { font-weight:bold;  }
    .pop_v2 .icon_close { position:absolute; right:0; top:0; padding:0 5px; font:normal 18px/28px Tahoma; color:#CCC; }
    .pop_v2 .icon_close:hover { text-decoration: none; color:#FFA800; }
    .pop_v2 .btn_box_v2 { text-align:center; }
    .pop_v2 .btn_box_v2 .btn_c, .pop_v2 .btn_box_v2 .btn_w, .product_choice .btn_c { display:inline-block; height:24px; margin-right:10px; padding:0 10px; font-weight:bold; text-align:center; line-height:24px; color:#FFF; box-shadow:0 1px 0 rgba(0,85,170,0.8); border-radius:3px; *filter:chroma(color=#000000);clear:both; background-color:#27C; border:1px solid #05A; }
    .pop_v2 .btn_box_v2 .btn_w { background-color:#FFF; border-color:#CCC; box-shadow:0 1px 0 rgba(0,0,0,.6); color:#333; }
    .pop_v2 .btn_box_v2 .btn_c:hover, .product_choice .btn_c:hover { text-decoration:none; background-color:#29F; border-color:#07D; }
    .pop_v2 .btn_box_v2 .btn_w:hover { text-decoration:none; background-color:#27C; border-color:#27C; color:#FFF; box-shadow:0 1px 0 rgba(0,85,170,0.8); }
    .city_select_lhsl{width:510px;}
    .base_notice{margin-bottom: 10px;padding: 5px 10px 5px 58px;text-indent: -48px;background: url(http://pic.c-ctrip.com/railway/bg_yellow.png) #fff1c9 repeat-x;border: 1px solid #ffb533;}
    .base_notice .icon_close {float: right;width: 16px;height: 0;padding-top: 16px;overflow: hidden;background: url(http://pic.c-ctrip.com/common/un_ico_yellow.png) no-repeat 0 -1344px;}
    .base_notice .i_notice{display: none;}
    .i_notice{text-indent: -58px;padding-left: 66px;}
    .i_notice b{display: inline-block;width: 16px;height: 16px;padding-right: 6px;background: url(http://pic.c-ctrip.com/common/un_ico_yellow.png) no-repeat 0 -224px;}
</style>
<div class="pop_v2" id="not_booking_pop" style="display:none;">
    <div class="pop_hd_v2"><a href="###" class="icon_close" onclick="document.getElementById('not_booking_pop').style.display='none';cQuery(document.getElementById('not_booking_pop')).unmask();">×</a>温馨提示：</div>
    <div class="pop_bd_v2">
        <p style="margin:20px 0; text-align:center; color:#4D4D4D;"><strong id="not_booking_desc">该车次已无票，请选择其它车次</strong></p>
        <div class="btn_box_v2">
            <a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-08" class="btn_c">更改车次</a>
            <a href="###" class="btn_w" onclick="document.getElementById('not_booking_pop').style.display='none';cQuery(document.getElementById('not_booking_pop')).unmask();">取消</a>
        </div>
    </div>
</div>
<script type="text/javascript" src="http://webresource.ctrip.com/ResTrainOnline/R6/Bus/js/ui2_input_utf8.js?v=20140902"></script>
<script type="text/javascript">
    UI2.InputPassengers.setPrice('210.00');
    UI2.InputPassengers.setMaxPassengerCount('3');
    UI2.InputPassengers.setCheckBookUrl('http://bus.ctrip.com');
    if ('0' == '' || '0' === '' || '0' == null) {
        UI2.InputPassengers.setServicePrice(0);
    } else {
        UI2.InputPassengers.setServicePrice('0');
    }

    UI2.InputPassengers.setCardTypes({1:'二代身份证',2:'护照',3:'港澳通行证',4:'台湾通行证'});
    UI2.InputPassengers.init();

    cQuery.ready(function(){
        cQuery.mod.load('jmp','1.0');
        cQuery.mod.load('notice', '1.1');
        cQuery(document).regMod('jmp','1.0',{});
    });

    jQuery('.go_back_page').click(function(){
        var from = encodeURIComponent(jQuery('#f_from_city_name').val());
        var to = encodeURIComponent(jQuery('#f_to_city_name').val());
        var date = jQuery('#f_from_date').val();
        var back_list_url = cQuery.storage.get('back_list_url');
        if (back_list_url) {
            cQuery.storage.remove('back_list_url');
            location.href = back_list_url;
        } else {
            location.href = '/busList.html?from=' + from + '&to=' + to + '&date=' + date;
        }
    });
    
    function checking(){
       window.location.href = "./order";
    }
</script>
<!--页尾end-->
</form>

</body>
</html>
