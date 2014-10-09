<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="content/static/css/travel/order/order.css" />
</head>
<jsp:include page='header.jsp'/>
<body>
<script type="text/javascript">
    function payment(){
    	 window.location.href = "./payments";
    }
</script>
<div class="w1180 order_progress">
    <div class="step finished">
        <div class="progress_line"></div>
        <i>1</i>
        <h4>填写</h4>
    </div>
    <div class="step finished">
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
            <div class="form_panel c_p_info">
                <h3>乘客信息</h3>
                <div class="form_field p_info">
                    <div class="check_p_info">
                        <table cellpadding="0" cellspacing="0" width="100%" class="tb_form">
                            <tbody><tr>
                                <th>姓名</th>
                                <td>（成人）</td>
                            </tr>
                            <tr>
                                <th>证件信息</th>
                                <td>二代身份证 </td>
                            </tr>
                            </tbody></table>
                    </div>
                </div>
            </div>
            <div class="form_panel">
                <h3>取票人信息</h3>
                <div class="form_field">
                    <table width="100%" cellpadding="0" cellspacing="0" class="tb_form">
                        <tbody><tr>
                            <th>姓名</th>
                            <td>（成人）</td>
                        </tr>
                        <tr>
                            <th>证件信息</th>
                            <td>二代身份证 </td>
                        </tr>
                        <tr>
                            <th>手机号</th>
                            <td></td>
                        </tr>
                        </tbody></table>
                </div>
            </div>
            <!--赠送意外险start-->
            <div class="form_panel">
                <h3>赠送意外险</h3>
                <div class="form_field">
                    选择后，您将有机会免费获取交通意外险一份（60天出行保障）。
                </div>
            </div>
            <!--赠送意外险end-->
            <div class="btn_box" style="margin:20px 0 50px;"><a href="###" class="go_back" onclick="history.go(-1);return false;">&lt; 返回修改订单</a><input type="button" value="下一步，支付" id="pay" class="btn_check" onclick="payment()"><img id="imgLoading" src="http://pic.c-ctrip.com/common/loading.gif" alt="" style="display:none;"></div>

        </div>
    </div>
    <div class="side_box">
        <div class="side_fix_box">
            <div class="price_box">
                <div class="price_detail_list">
                    <span class="float_right"><dfn>¥</dfn>210.00 × 1</span><p>票&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价：</p>
                </div>
                <div class="price_detail_list" style="display:none;">
                    <span class="float_right"><dfn>¥</dfn>0 × 1</span><p>服 务 费：</p>
                </div>
                <div class="basefix">
                    <span class="float_right"><dfn>¥</dfn><span class="base_price">210</span></span><strong>应付总额：</strong>
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

</body>
</html>
