<%--
  Created by IntelliJ IDEA.
  User: Bright Huang
  Date: 10/7/14
  Time: 21:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="content/static/css/travel/mytravel/mytravel.css" />
    <link rel="stylesheet" href="content/static/css/travel/mytravel/myorders.css" />
</head>
<jsp:include page='header.jsp'/>
<jsp:include page="navbar.jsp"/>
<body>
<ul id="base_wrapper">

<li id="base_bd">





<div class="breadcrumb"><a href="
          http://my.ctrip.com/home/myinfo.aspx
        ">
    我的携程
</a>
    &gt;
    <span>全部订单</span></div>
<div id="sideNav" class="aside clearfix">
    <dl class="sidenav">
        <dt><a href="
          http://my.ctrip.com/home/myinfo.aspx
            "><span>我的携程首页</span></a></dt>
    </dl>
    <dl class="sidenav">
        <dt><a href="
          http://my.ctrip.com/Customer-API-Online/MyJourney.aspx
            "><span>
              我的行程
            </span></a></dt>
    </dl>
    <dl class="sidenav sidenav_c">
        <dt><a href="javascript:;"><span>订单中心</span><i class="ico_arr"></i></a></dt>
        <dd><a href="
          http://my.ctrip.com/Home/Order/AllOrderList.aspx
            " class="selected"><span>全部订单</span></a><a href="
          http://my.ctrip.com/Home/Order/FlightOrderList.aspx
            "><span>机票订单</span></a><a href="
          http://my.ctrip.com/Home/Order/HotelOrderList.aspx
            "><span>酒店订单</span></a><a href="
          http://my.ctrip.com/Home/Order/PkgOrderList.aspx
            "><span>旅游度假订单</span></a><a href="
          http://my.ctrip.com/Home/Order/RailwayOrderList.aspx
            "><span>国内火车票订单</span></a><div id="hideOrder" class="hide_order"><a href="
          http://my.ctrip.com/Home/Order/OuTieOrderList.aspx
              "><span>
                国际火车票订单<i class="ico_new2"></i></span></a><a href="
          http://my.ctrip.com/Home/Order/PiaoOrderlist.aspx
              "><span>
                门票订单
              </span></a><a href="
          http://my.ctrip.com/Home/Order/ActivityOrderlist.aspx
              "><span>
                当地玩乐订单<i class="ico_new2"></i></span></a><a href="
          http://my.ctrip.com/Home/Order/QicheOrderlist.aspx
              "><span>
                汽车票订单<i class="ico_new2"></i></span></a><a href="
          http://my.ctrip.com/Home/Order/CarOrderList.aspx
              "><span>用车订单</span></a><a href="
          http://my.ctrip.com/Home/Order/DIYOrderList.aspx
              "><span>自由行订单</span></a><a href="
          http://my.ctrip.com/Home/Order/FlightHotelOrderList.aspx
              "><span>
                机+酒订单
              </span></a><a href="
          http://my.ctrip.com/Home/Order/CruiseOrderList.aspx
              "><span>邮轮订单</span></a><a href="
          http://my.ctrip.com/Home/Order/GroupOrderList.aspx
              "><span>团购订单</span></a><a href="
          http://my.ctrip.com/Home/Order/TicketOrderList.aspx
              "><span>礼品卡订单</span></a><a href="
          http://my.ctrip.com/Home/Order/DnrOrderList.aspx
              "><span>美食订餐订单</span></a><a href="
          http://my.ctrip.com/Home/Order/HHTravelOrderList.aspx
              "><span>
                HHtravel订单
              </span></a><a href="
          http://my.ctrip.com/Home/Order/InsuranceOrderList.aspx
              "><span>
                度假保险订单
              </span></a></div><a id="moreOrder" href="javascript:;" class="more_order">
            更多订单<i class="ico_arr"></i></a></dd>
    </dl>
    <dl class="sidenav">
        <dt><a href="javascript:;"><span>
              携程钱包
            </span><i class="ico_arr"></i></a></dt>
        <dd><a href="
          https://sinfo.ctrip.com/Payment-Base-PaymentPwd/Wallet/View/MyWalletIndex.aspx
            "><span>我的钱包</span></a><a href="
          https://sinfo.ctrip.com/Balance/zh-cn/TravelTicket.aspx
            "><span>礼品卡</span></a><a href="
          https://sinfo.ctrip.com/Payment.Base.UsedCardList/zh-cn/UsedCardList.aspx
            "><span>
              银行卡
            </span></a><a href="
          https://sinfo.ctrip.com/Balance/zh-cn/CashAccount.aspx
            "><span>返现账户</span></a><a href="
          https://sinfo.ctrip.com/Payment-Base-PaymentPwd/Wallet/View/WalletSafetyIndex.aspx
            "><span>安全中心</span></a></dd>
    </dl>
    <dl class="sidenav">
        <dt><a href="javascript:;"><span>个人中心</span><i class="ico_arr"></i></a></dt>
        <dd><a href="
          https://sinfo.ctrip.com/MyInfo/AccountCenter/UserInfoUpdate.aspx
            "><span>我的信息</span></a><a target="_blank" href="
          http://my.ctrip.com/adv/Loyalty/MyGrowup.aspx
            "><span>我的成长</span></a><a href="
          http://my.ctrip.com/adv/favorite/hotel/hotellist.aspx
            "><span>我的收藏</span></a><a href="
          http://my.ctrip.com/adv/myinvoice/MyInvoiceManagerment.aspx
            "><span>
              我的发票
              <i class="ico_new2"></i></span></a><a href="
          http://my.ctrip.com/Home/Order/OrderReviewList.aspx
            "><span>我的点评</span></a><a href="
          http://my.ctrip.com/Home/Message/MessageList.aspx
            "><span>消息提醒</span></a><a href="
          http://my.ctrip.com/Home/Third/TrdManager.aspx
            "><span>绑定与关联</span></a><a href="
          https://sinfo.ctrip.com/MyInfo/AccountCenter/AccountSecurity.aspx
            "><span>账户安全</span></a></dd>
    </dl>
    <dl class="sidenav">
        <dt><a href="javascript:;"><span>票券与积分</span><i class="ico_arr"></i></a></dt>
        <dd><a href="
          https://sinfo.ctrip.com/Balance/zh-cn/Promocode.aspx
            "><span>优惠券</span></a><a id="pagemenu_myjifen" name="pagemenu_myjifen" href="
          https://sinfo.ctrip.com/MyInfo/AccountCenter/MyMileage.aspx
            "><span>我的积分</span></a></dd>
    </dl>
    <dl class="sidenav">
        <dt><a href="javascript:;"><span>常用信息管理</span><i class="ico_arr"></i></a></dt>
        <dd><a href="
          http://my.ctrip.com/Home/Passenger/PassengerList.aspx
            "><span>
              常用旅客信息
            </span></a><a href="
          http://my.ctrip.com/Home/Address/AddressList.aspx
            "><span>
              常用地址
            </span></a><a href="
          http://my.ctrip.com/Home/Invoice/InvoiceList.aspx
            "><span>
              常用发票
            </span></a></dd>
    </dl>
    <dl class="sidenav">
        <dt><a target="_blank" href="
          http://you.ctrip.com/members/
            "><span>我的社区主页</span></a></dt>
    </dl>
    <dl class="sidenav">
        <dt><a href="javascript:;"><span>应用中心</span><i class="ico_arr"></i></a></dt>
        <dd><a target="_blank" href="
          http://flights.ctrip.com/domestic/MyToolBox/Default.aspx
            "><span>机票工具箱</span></a><a href="
          http://my.ctrip.com/subscription/Subscribe.aspx
            "><span>邮件订阅</span></a><a href="
          http://travel.ctrip.com/CMS/MyBlogs.aspx
            "><span>旅游分享</span></a></dd>
    </dl>
    <dl class="sidenav" id="pagemenu_cyjlb" name="pagemenu_cyjlb" style="display: none;">
        <dt><a target="_blank" href="
          http://www.ctrip.com/community/club/introduce.asp?club=140
            "><span>参议俱乐部</span></a></dt>
    </dl>
    <dl class="sidenav" id="pagemenu_djcmlt" name="pagemenu_djcmlt" style="display: none;">
        <dt><a target="_blank" href="
          http://www.ctrip.com/community/holiday_senate/index.asp
            "><span>度假参谋论坛</span></a></dt>
    </dl>
</div><script type="text/javascript" src="http://webresource.c-ctrip.com/ResCRMOnline/R2/pagemenu/js/MenuJscript140228.js?temp=20140825" charset="utf-8"></script>

<script type="text/javascript">
    var ClubInfoForMenuStr = {"IsSnateClub":false,"IsPkgClub":false,"IsCorpMileage":false};
    if (ClubInfoForMenuStr.IsSnateClub) {
        document.getElementById("pagemenu_cyjlb").style.display = "block";
    } else {
        document.getElementById("pagemenu_cyjlb").style.display = "none";
    }
    if (ClubInfoForMenuStr.IsPkgClub) {
        document.getElementById("pagemenu_djcmlt").style.display = "block";
    } else {
        document.getElementById("pagemenu_djcmlt").style.display = "none";
    }

    var sidebar_TimeOut = setInterval(function () {
        if (typeof $ != 'undefined') {
            var url = document.location.href;
            $.mod.load('sideBar', '2.0', function () {
                var sidebar = $(document).regMod('sideBar', '2.0', {
                    threshold_px: 0,
                    url: {
                        feedBackURL: IsShowQurvey(url) ? GetQurveyUrl(url) : 'http://accounts.ctrip.com/MyCtrip/Community/CommunityAdvice.aspx?productType=8',
                        liveChatURL: url.indexOf("RailwayOrderList.aspx") > 0 ? 'http://trains.ctrip.com/TrainBooking/kefu.aspx' : 'http://livechat.ctrip.com/livechat/Login3.aspx?GroupCode=CustomerService&AsFrom=1|客户服务部|我的携程'
                    },
                    title: {
                        backTop: '回到顶端',
                        feedBack: IsShowQurvey(url) ? '问卷调查' : '建议反馈',
                        liveChat: '在线客服'
                    }
                });
                if ((url.indexOf("OrderList") > 0)&&!(url.indexOf("RailwayOrderList.aspx") > 0)) {
                    $(".c_sidebar:eq(1)").css("display", "none");
                }
            });
            clearInterval(sidebar_TimeOut);
        }
    }, 100);

    //是否显示调查问卷
    function IsShowQurvey(url) {
        if (url.indexOf('FlightOrderList.aspx') > 0 || (url.indexOf('HotelOrderList.aspx') > 0 && !(url.indexOf('FlightHotelOrderList.aspx') > 0)) || url.indexOf('GroupOrderList.aspx') > 0 || url.indexOf('RailwayOrderList.aspx') > 0 || url.indexOf('TicketOrderList.aspx') > 0) {
            return true;
        }
        else {
            return false;
        }
    }

    //获取问卷调查URL
    function GetQurveyUrl(url) {
        if (url.indexOf('FlightOrderList.aspx') > 0) {
            return 'http://www.ctrip.com/QSYS/Online/OnlineQsysQurveyLogin.asp?SurveyID=fbdbc5b1-728b-47ea-933b-2a9a38d3ee2c&Review=';
        }
        else if (url.indexOf('HotelOrderList.aspx') > 0 && !(url.indexOf('FlightHotelOrderList.aspx') > 0)) {
            return 'http://www.ctrip.com/QSYS/Online/OnlineQsysQurveyLogin.asp?SurveyID=540cb638-a7b3-4fd6-9a20-50ebcdf2a3bd&Review=';
        }
        else if (url.indexOf('GroupOrderList.aspx') > 0) {
            return 'http://www.ctrip.com/QSYS/Online/OnlineQsysQurveyLogin.asp?SurveyID=a2857133-59da-4f79-bc11-d079761a4143&Review=';
        }
        else if (url.indexOf('RailwayOrderList.aspx') > 0) {
            return 'http://www.ctrip.com/QSYS/Online/OnlineQsysQurveyLogin.asp?SurveyID=85a2757a-a345-4aff-85ab-14329a9d1b96&Review=';
        }
        else {
            return 'http://www.ctrip.com/QSYS/Online/OnlineQsysQurveyLogin.asp?SurveyID=5f510a06-629a-4f29-aeb1-46b24d0f88ca&Review=';
        }
    }
</script>




<div class="main layoutfix">
<div class="pd07 mb8 bs06">
    <ul class="filter_list clearfix">
        <li>
            <label>旅客姓名</label><input class="m_input w07 inputSel" type="text" id="txt_name" _cqnotice="中文名/英文名">
        </li>
        <li>
            <label>订单编号</label><input class="m_input w07" type="text" id="txt_orderid">
        </li>
        <li>
            <label>预订日期</label><input class="m_input w10" type="text" id="txt_dateStart" _cqnotice="yyyy-mm-dd">-<input class="m_input w10" type="text" id="txt_dateEnd" _cqnotice="yyyy-mm-dd">
        </li>
        <li><input class="btn_sel" type="button" value="查询" id="btn_search"></li>
        <li><a href="###" id="a_clearSeachCondition" class="lh" style="display:none;">清空查询条件</a></li>
        <input id="hdUnFinishStatus" type="hidden" value="2">
        <input id="hdFinishStatus" type="hidden" value="1">
        <input id="hdFinishCount" type="hidden">
        <input id="hdUnFinishCount" type="hidden">
        <input id="hdSelectCount" type="hidden">
        <input id="hdSelectStatus" type="hidden" value="">
        <input id="hdUnfinishOrder" type="hidden" value="">
        <input id="hdFinishOrder" type="hidden" value="">
        <input id="hdUPageBeginTime" type="hidden">
        <input id="hdUPageEndTime" type="hidden">
        <input id="hdFPageBeginTime" type="hidden" value="2014-9-24 17:25:38">
        <input id="hdFPageEndTime" type="hidden" value="0001-1-1 0:00:00">
        <input id="hdSPageBeginTime" type="hidden">
        <input id="hdSPageEndTime" type="hidden">
        <input id="hdUIsPrevPage" type="hidden">
        <input id="hdUIsNextPage" type="hidden">
        <input id="hdFIsPrevPage" type="hidden">
        <input id="hdFIsNextPage" type="hidden">
        <input id="hdSIsPrevPage" type="hidden">
        <input id="hdSIsNextPage" type="hidden">
        <input id="hdSelectOrder" type="hidden">
        <input id="hd_Ordertype" type="hidden">
        <input id="hd_orderdaterange" type="hidden">
        <input type="hidden" id="hdUPrePageCount">
        <input type="hidden" id="hdFPrePageCount" value="1">
        <input type="hidden" id="hdSPrePageCount">

        <input name="ctl00$MainContentPlaceHolder$hd_Quesystring" type="hidden" id="ctl00_MainContentPlaceHolder_hd_Quesystring">
        <input type="hidden" name="orderid" id="orderid">
        <input type="hidden" name="ordertype" id="ordertype">
        <input type="hidden" name="orderdate" id="orderdate">
        <input type="hidden" name="status" id="status">
        <input type="hidden" name="description" id="description">
        <input type="hidden" id="hd_unfinishcount" value="0">
        <input type="hidden" id="hd_finishcount" value="1">
        <input type="hidden" id="hd_domain" value="ctrip.com">

        <input id="hiddenOperateLineNum" type="hidden" value="">
        <input id="hiddenOperateOrderId" type="hidden" value="">
        <input id="hiddenTbodyName" type="hidden" value="">
    </ul>
</div>
<div class="select_date clearfix" id="dv_selectDate">
    <div id="div_OneMonthOrderTip" class="jmp_yellow" style="top: -4px; left: 130px;">
        <b class="jmp_lt"></b>
        <div class="jmp_cn">
            当前您所查看的是近1个月的订单。
            <a href="javascript:;">知道了</a>
        </div>
    </div>
    <select class="fl" id="sel_orderrange">
        <option value="1">最近1个月订单</option>
        <option value="2">最近3个月订单</option>
        <option value="3">最近1年订单</option>
    </select>
    <a href="ManageList.aspx" class="fr ico_group" id="a_groupmanageList">订单分组管理</a>
</div>
<!-- START待完成的订单 -->
<div class="box01 mb10" id="dv_unfinishorder">
    <div class="box_hd hd01" id="dv_unfinish">
        <h3 class="fs14" id="h_contianerN">待完成的订单(0)</h3>
        <span class="hd_rt ico_edit" id="sp_DisplayUnFinish">展开</span>
    </div>
    <div class="box_bd2" style="display: none;" id="dv_contianerN">
        <ul class="filter_tab" id="ul_noFinishOrder"><li class="cur_tab">所有待完成订单</li><li class="un_tab"><span>未提交订单(<em>0</em>)</span></li><li class="un_tab"><span>待支付订单(<em>0</em>)<span></span></span></li><li class="un_tab"><span>暂缓订单(<em>0</em>)</span></li></ul>
        <div class="tb_cner">
            <table class="mb10 tb_cash tb_s">
                <thead>
                <tr>
                    <th class="check_box"><label class="base_label"><input type="checkbox" value="" id="chbUOrderCheckAll">全选</label></th>
                    <th width="11%">订单编号</th>
                    <th width="9%">类型</th>
                    <th width="11%">预订日期</th>
                    <th width="24%">产品内容</th>
                    <th width="13%">行程/有效日期</th>
                    <th width="11%">订单金额</th>
                    <th width="9%">订单状态</th>
                    <th width="12%">操作</th>
                </tr>
                </thead>
                <tbody id="bodyListNoFinish"><tr class="nohover"><td colspan="9"><div class="no_result">您近一个月没有待完成的订单记录。</div></td></tr></tbody>
            </table>
            <div class="tb_page" id="dv_unfinishpage" style="display:none">
                <ul class="fl">
                    <li class="tb_item">
                        <div class="all_sel bs1">
                            <label class="base_label"><input type="checkbox" value="" id="cbUCheckedAll">全选</label>
                        </div>
                    </li>
                    <li class="tb_item"><a href="###" class="ico_download bs1">下载</a></li>
                </ul>
                <div class="fr mc_page">
                    <a href="###" class="prev" id="pagePrev"></a><span id="spUnFinishPage">0/0页</span><a href="###" class="next" id="pageNext"></a>
                </div>
            </div>
        </div>
        <div class="no_result" id="dv_unfinishnoresult" style="display: none;">
            <img src="http://pic.c-ctrip.com/myctripv2/loading_animation_20.gif">加载中，请稍候...
        </div>
    </div>
</div>
<!-- END待完成的订单 -->
<!-- START已完成的订单 -->
<div class="box01 mb10 box01_c" id="dv_finishorder">
    <div class="box_hd hd02" id="dv_finish">
        <h3 class="fs14" id="h3_contianerF">未出行/已完成的订单(1)</h3>
        <span class="hd_rt ico_up" id="sp_DisplayFinish">收起</span>
    </div>
    <div class="pr box_bd2" style="display:block;" id="dv_contianerF">
        <ul class="pr filter_tab" id="ul_finish"><li class="cur_tab">所有未出行/已完成订单</li><li class="un_tab"><span>未出行订单(<em>0</em>)</span></li><li class="un_tab"><span>退/改订单(<em>0</em>)</span></li><li class="un_tab"><span>待点评酒店(<em>0</em>)</span></li><li class="un_tab"><span>待点评行程(<em>0</em>)</span></li></ul>
        <div class="order_remark" id="dv_untravelalert" style="display:none;">未出行订单不含团购、美食、礼品卡、机+酒。相关订单请至订单列表查看。</div>
        <div class="tb_cner">
            <table class="mb10 tb_cash tb_s">
                <thead>
                <tr>
                    <th class="check_box"><label class="base_label"><input type="checkbox" value="" id="cbFCheckedAll">全选</label></th>
                    <th width="11%">订单编号</th>
                    <th width="9%">类型</th>
                    <th width="11%">预订日期</th>
                    <th width="24%">产品内容</th>
                    <th width="13%">行程/有效日期</th>
                    <th width="11%">订单金额</th>
                    <th width="9%">订单状态</th>
                    <th width="12%">操作</th>
                </tr>
                </thead>
                <tbody id="bodyListFinish">

                <tr><td class="check_box"><label class="base_label"><input type="checkbox" onclick="SetFCheckValue(this);" value="1051252189$QC"></label></td><td><a href="http://bus.ctrip.com/orderDetail.html?orderid=1051252189" target="_blank">1051252189</a></td><td>汽车票</td><td>2014-09-24 17:25:39</td><td>深圳(深圳福田客运站)-南宁 0958</td><td>2014-09-25 09:30</td><td><span class="base_price"><dfn>¥</dfn>250</span></td><td>已取消<br><a href="http://bus.ctrip.com/orderDetail.html?orderid=1051252189" target="_blank">订单详情</a></td><td></td></tr></tbody>
            </table>
            <div class="tb_page" id="dv_finishpage" style="display: block;">
                <ul class="fl">
                    <li class="tb_item">
                        <div class="all_sel bs1">
                            <label class="base_label"><input type="checkbox" value="" id="cbFOrderCheckedAll">全选</label>
                        </div>
                    </li>
                    <li class="tb_item"><a href="###" class="ico_download bs1">下载</a></li>
                    <li class="tb_item"><a href="###" class="ico_group bs1" id="a_ordergroup">分组</a></li>
                </ul>
                <div class="fr mc_page">
                    <a href="###" class="prev first_page" id="finishPagePrev"></a><span id="spFinishPage">1/1页</span><a href="###" class="next last_page" id="finishPageNext"></a>
                </div>
            </div>
        </div>
        <div class="no_result" id="dv_finishnoresult" style="display: none;">
            <img src="http://pic.c-ctrip.com/myctripv2/loading_animation_20.gif">加载中，请稍候...
        </div>
    </div>
</div>
<!-- END待完成的订单 -->
<!-- 订单查询无结果 -->
<!-- 查询结果DIV -->
<div class="result_box bs06" id="dv_selectorder" style="display:none">
    <div class="pd05 fs14" id="dv_orderresult"><strong>订单查询结果</strong></div>
    <div class="tb_cner">
        <table class="mb10 tb_cash tb_s">
            <thead>
            <tr>
                <th class="check_box"><label class="base_label"><input type="checkbox" id="cbSCheckedAll">全选</label></th>
                <th width="11%">订单编号</th>
                <th width="9%">类型</th>
                <th width="11%">预订日期</th>
                <th width="24%">产品内容</th>
                <th width="13%">行程/有效日期</th>
                <th width="11%">订单金额</th>
                <th width="9%">订单状态</th>
                <th width="12%">操作</th>
            </tr>
            </thead>
            <tbody id="bodyListSelect">
            </tbody>
        </table>
        <div class="tb_page" id="dv_selectpage" style="display:none">
            <ul class="fl">
                <li class="tb_item">
                    <div class="all_sel bs1">
                        <label class="base_label"><input type="checkbox" id="cbSOrderCheckedAll">全选</label>
                    </div>
                </li>
                <li class="tb_item"><a href="###" class="ico_download bs1">下载</a></li>
            </ul>
            <div class="fr mc_page">
                <a href="###" class="prev" id="selectPagePrev"></a><span id="sp_selectPage">0/0页</span><a href="###" class="next" id="selectPageNext"></a>
            </div>
        </div>
    </div>
    <div class="no_result" id="dv_selectnoresult">
        <img src="http://pic.c-ctrip.com/myctripv2/loading_animation_20.gif">加载中，请稍候...
    </div>
</div>



<div class="mc_wireless_box">
    <a href="http://u.ctrip.com/union/CtripRedirect.aspx?TypeID=2&amp;AllianceID=9180&amp;sid=194275&amp;ouid=&amp;app=0101X00&amp;jumpUrl=http://app.ctrip.com/" target="_blank">
        <img src="http://pic.c-ctrip.com/myctripv2/mc_wireless_app.png" alt="携程手机客户端" width="1010" height="100"></a>
</div>
</div>
<div style="display:none" id="dv_mask"></div>
<input type="hidden" id="page_id" value="706002">

<div id="divReseat" class="base_pop" style="width:722px; display:none;">
    <div class="pop_hd">
        <a id="closeWinReseat" class="delete" href="###">×</a><h3>座位预订</h3>
    </div>
    <div class="pop_bd">
        <iframe id="iframeReseat" name="iframeReseat" style="width: 722px; height: 250px;" frameborder="0" scrolling="no" src=""></iframe>
    </div>
</div>


<div id="divCancelOrder" class="base_pop" style="width:440px; display:none;">
    <div class="pop_hd">
        <a id="closeWinCancelOrder" class="delete" href="###">×</a><h3>取消订单</h3>
    </div>
    <div class="pop_bd">
        <iframe id="iframeCancelOrder" name="iframeCancelOrder" style="width: 416px; height: 200px;" frameborder="0" scrolling="no" src=""></iframe>
    </div>
</div>


<div id="divRecedeOrder" class="base_pop" style="width:440px; display:none;">
    <div class="pop_hd">
        <a id="closeWinRecedeOrder" class="delete" href="###">×</a><h3>退订</h3>
    </div>
    <div class="pop_bd">
        <iframe id="iframeRecedeOrder" name="iframeRecedeOrder" style="width: 416px; height: 200px;" frameborder="0" scrolling="no" src=""></iframe>
    </div>
</div>


<div id="divSendEmail" class="base_pop" style="width:390px; display:none;">
    <div class="pop_hd">
        <a id="closeWinSendEmail" class="delete" href="###">×</a><h3>礼券重发</h3>
    </div>
    <div class="pop_bd">
        <iframe id="iframeSendEmail" name="iframeSendEmail" style="width: 380px; height: 94px;" frameborder="0" scrolling="no" src=""></iframe>
    </div>
</div>


<div id="dv_LimitOrderTip" class="base_pop" style="width:570px;display:none;">
    <div class="pop_hd">
        <a id="closeLimitOrderTip" class="delete" href="###">×</a><h3>温馨提示</h3>
    </div>
    <div class="pop_bd">
        <div class="warn_tips">
            <span class="ico_success"></span>
            很抱歉，暂时无法处理您的请求。<br>
            请您耐心等待，稍候再试。
        </div>
        <div class="btn_box">
            <button class="btn_l3" id="btnLimitOrderTipConfirm" type="button"><span><em>确定</em></span></button>
        </div>
    </div>
</div>



<div id="dv_orderGroup" class="base_pop" style="width:640px;display:none;">
    <div class="pop_hd">
        <a id="a_orderGroupClose" href="###" class="delete">×</a><h3>订单分组</h3>
    </div>
    <div class="pop_bd">
        <div class="mb5 clearfix">
            <a href="###" class="fr l_btn02" id="a_creategroup"><span>创建订单分组</span></a>
            订单添加到：
        </div>
        <div class="mb10 s_box3 bs06">
            <label>分组名称：</label><input id="groupNameId" class="m_input w05" type="text"><input class="mr10 btn_sel" type="button" value="查询" id="btn_groupSearch"><input class="btn_sel" type="reset" value="重置" id="re_selectGroup">
        </div>
        <ul id="orderGroupUl" class="pd05 group_list bs06 clearfix">
        </ul>
        <div class="btn_box">
            <button id="Smt_group" class="btn_l3" type="button"><span><em>提交</em></span></button><button class="btn_l4" id="btn_cancel" type="button"><span><em>取消</em></span></button>
        </div>
    </div>
    <div id="dv_ErrorSelect" class="base_jmp jmp_alert base_jmp_t" style="position:absolute;width:153px;margin:-195px 0 0 86px;display:none;">
        <b class="tri_t" style="margin: -7px 0pt 0pt 30px;"></b>
        <div class="jmp_bd">错误提示。</div>
    </div>
</div>


<div id="div_addToGroup" class="base_pop" style=" display:none; width:500px;">
    <div class="pop_hd">
        <a href="###" class="delete">×</a><h3>订单分组</h3>
    </div>
    <div class="pop_bd">
        <p class="mb10">订单添加到：</p>
        <ul id="ul_orderGroupList" class="group_list bs06 clearfix">
        </ul>
        <div class="btn_box">
            <button id="btn_addToGroup" class="btn_l3" type="button"><span><em>提交</em></span></button><button class="btn_l4" type="button"><span><em>取消</em></span></button>
        </div>
    </div>
    <div id="div_addToGroupError" class="base_jmp jmp_alert base_jmp_t" style="position:absolute;width:93px;margin:-70px 0 0 22px; display:none;">
        <b class="tri_t" style="margin: -7px 0pt 0pt 30px;"></b>
        <div class="jmp_bd">请选择分组。</div>
    </div>
</div>


<div id="div_orderGroupSelect" class="base_pop" style=" display:none; width:500px;">
    <div class="pop_hd">
        <a href="###" class="delete">×</a><h3>订单分组</h3>
    </div>
    <div class="pop_bd">
        <div class="btn_group">
            <button class="btn_l3" type="button"><span><em>添加到新组</em></span></button><button class="btn_l3" type="button"><span><em>添加到现有组</em></span></button>
        </div>
    </div>
</div>


<div id="div_newGroup" class="base_pop" style=" display:none; width:500px;">
    <div class="pop_hd">
        <a href="###" class="delete">×</a><h3>创建新订单分组</h3>
    </div>
    <div class="pop_bd">
        <div class="new_group">
            <p class="mb10">请为此新组输入名称:</p>
            <input id="txt_newGroup" class="m_input w03" type="text">
        </div>
        <div class="btn_box">
            <button class="btn_l3" id="btn_newGroupClick" type="button"><span><em>确定</em></span></button><button class="btn_l4" type="button"><span><em>取消</em></span></button>
        </div>
    </div>
    <div id="div_newGroupError" class="base_jmp jmp_alert base_jmp_t" style=" display:none; position:absolute;width:153px;margin:-69px 0 0 20px;">
        <b class="tri_t" style="margin: -7px 0pt 0pt 30px;"></b>
        <div class="jmp_bd">已存在该分组名称。</div>
    </div>
</div>


<div id="divOrderGroupTip" class="base_pop" style="width:570px;display:none;">
    <div class="pop_hd">
        <a id="closeOrderGroupTip" class="delete" href="###">×</a><h3>温馨提示</h3>
    </div>
    <div class="pop_bd">
        <div class="warn_tips">
            <span class="ico_success"></span>
            分组添加成功！<a class="fs12 fwn" href="ManageList.aspx" target="_blank">订单分组打印管理</a>
        </div>
        <div class="btn_box">
            <button class="btn_l3" id="btnOrderGroupTipConfirm" type="button"><span><em>确定</em></span></button>
            <button class="btn_l4" type="button" id="btn_ogsucccancel"><span><em>取消</em></span></button>
        </div>
    </div>
</div>

<div id="dv_AlterGroup" class="base_pop" style="width:570px;display:none;">
    <div class="pop_hd">
        <a class="delete" href="###" id="a_groupalter">×</a><h3>温馨提示</h3>
    </div>
    <div class="pop_bd">
        <div class="warn_tips">
            <span class="ico_warn2"></span>
            请选择需要进行分组的订单。
        </div>
        <div class="btn_box">
            <button class="btn_l3" id="btn_groupalter" type="button"><span><em>确定</em></span></button>
        </div>
    </div>
</div>
</li>
<script type="text/javascript">
    window.__uidc_init = new Date * 1;
</script>
<script src="http://webresource.c-ctrip.com/code/cquery/LABjs/LAB.js" charset="utf-8" type="text/javascript"></script>
<script type="text/javascript">
    $globalPad = true;
    $LAB
            .script({ src: "http://webresource.c-ctrip.com/code/cquery/cQuery_110421.js", charset: "utf-8" }).wait()
            .padScript({ src: "http://webresource.c-ctrip.com/code/cquery/pad.js", charset: "utf-8" }).wait()
            .script({ src: "../JS/public/orderGroup.js" }).wait()
            .script({ src: "../JS/public/gridview.js"}).wait()
            .script({ src: "../JS/public/elements.js" }).wait()
            .script({ src: "../JS/public/orders.js" }).wait()
            .script({ src: "../JS/module/allorder.js" })
</script>
<script type="text/javascript">
    document.getElementById("hdSelectStatus").value= document.getElementById("ctl00_MainContentPlaceHolder_hd_Quesystring").value;

    function getLastYearDay() {
        return '2013-10-07';
    }
</script>

</ul>
</body>
<jsp:include page='footer.jsp'/>
</html>
