<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="content/static/css/travel/mytravel/mytravel.css"/>
    <link rel="stylesheet" href="content/static/css/travel/mytravel/myorders.css"/>
</head>
<jsp:include page='header.jsp'/>
<jsp:include page="navbar.jsp"/>
<body>
<ul id="base_wrapper">

<li id="base_bd">


<div class="breadcrumb"><a href="http://my.ctrip.com/home/myinfo.aspx">
    我的携程
</a>
    &gt;
    <span>首页</span></div>
<div id="sideNav" class="aside clearfix">
    <dl class="sidenav sidenav_c">
        <dt><a href="
          http://my.ctrip.com/home/myinfo.aspx
            " class="selected"><span>我的携程首页</span></a></dt>
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
        <dd><a href="./myorders"><span>全部订单</span></a><a href="
          http://my.ctrip.com/Home/Order/FlightOrderList.aspx
            "><span>机票订单</span></a><a href="
          http://my.ctrip.com/Home/Order/HotelOrderList.aspx
            "><span>酒店订单</span></a><a href="
          http://my.ctrip.com/Home/Order/PkgOrderList.aspx
            "><span>旅游度假订单</span></a><a href="
          http://my.ctrip.com/Home/Order/RailwayOrderList.aspx
            "><span>国内火车票订单</span></a>

            <div id="hideOrder" class="hide_order"><a href="
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
              </span></a></div>
            <a id="moreOrder" href="javascript:;" class="more_order">
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
</div>
<script type="text/javascript"
        src="http://webresource.c-ctrip.com/ResCRMOnline/R2/pagemenu/js/MenuJscript140228.js?temp=20140729"
        charset="utf-8"></script>

<script type="text/javascript">
    var ClubInfoForMenuStr = {"IsSnateClub": false, "IsPkgClub": false, "IsCorpMileage": false};
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
                if ((url.indexOf("OrderList") > 0) && !(url.indexOf("RailwayOrderList.aspx") > 0)) {
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


<div class="mb10 layoutfix">
<div class="mb10 unsearch layoutfix">
    <div class="bs01 mc_info">
        <!--- 我的基本信息 --->


        <div class="mb5">用户：<a href="http://you.ctrip.com/members/">h****g@live.com</a>
                <span id="ctl00_MainContentPlaceHolder_MyBasicInfo1_div_showCtripCardNo" style=" display:none;"
                      class="card_num">(卡号：)</span>
                <span id="ctl00_MainContentPlaceHolder_MyBasicInfo1_div_showCorpCardName" style=" display:none;"
                      class="card_num">(卡主：)</span>


        </div>
        <a href="https://sinfo.ctrip.com/MyInfo/AccountCenter/UserInfoUpdate.aspx?v=avapicture" class="mc_face">
            <img src="http://images4.c-ctrip.com/target/headphoto/portrait_100_100.jpg" width="100" height="100">
            <span class="face_mask"></span><span class="load_face">上传头像</span>
        </a>
        <ul class="mc_info_detail">
            <li>
                <div id="dv_paypwd_note" class="jmp_yellow" style="margin: -5px 0px 0px 120px;"><b
                        class="jmp_lt"></b>

                    <div class="jmp_cn">保护资金安全，请立即<a
                            href="https://sinfo.ctrip.com/Payment-Base-PaymentPwd/SecuritySetting.aspx">设置交易密码&gt;&gt;</a>
                    </div>
                </div>
                账户安全：中<a href="https://sinfo.ctrip.com/MyInfo/AccountCenter/AccountSecurity.aspx?v=mobile"
                         class="mg02 fs12 sc01">[修改]</a>
            </li>
            <li class="pr clearfix">

                <div id="div_userLevelTip" class="jmp_yellow"
                     style=" display:none; top:28px;left:100px;width:116px;">
                    <b class="jmp_tl"></b>

                    <div class="jmp_cn">数字代表<a target="_blank"
                                               href="http://help.ctrip.com/questiondetail.aspx?questionId=334">基本积分</a>
                    </div>
                </div>
                <div class="fl">会员等级：</div>
                <div class="grade_box">
                    <div class="process_bar">
                        <a href="http://my.ctrip.com/adv/Loyalty/MyGrowup.aspx"
                           id="ctl00_MainContentPlaceHolder_MyBasicInfo1_a_Grade_Now" target="_blank"
                           class="pb_label">普通</a>

                        <div id="ctl00_MainContentPlaceHolder_MyBasicInfo1_dv_Grade" class="pb_wrapper">
                                <span id="ctl00_MainContentPlaceHolder_MyBasicInfo1_sp_Level_F"
                                      style="text-align:center;" class="pb_text">0/2000</span>

                            <div id="ctl00_MainContentPlaceHolder_MyBasicInfo1_dv_Level_P" class="pb_value"
                                 style="width:0%;"></div>
                        </div>
                        <a href="http://my.ctrip.com/adv/Loyalty/MyGrowup.aspx"
                           id="ctl00_MainContentPlaceHolder_MyBasicInfo1_a_Grade_Next" target="_blank"
                           class="pb_label">金牌</a>
                        &nbsp;<a href="/adv/Loyalty/MyGrowup.aspx" target="_blank">我的成长</a>
                    </div>
                </div>
            </li>
            <li>
                等级有效期：永不过期
                <a href="/adv/Loyalty/MyLevel.aspx" id="ctl00_MainContentPlaceHolder_MyBasicInfo1_a_LevelUp"
                   class="ml10 sc01" target="_blank">如何升级？</a>

            </li>
        </ul>

        <div class="links_list" id="li_OrderCount"><a href="/Home/Order/AllOrderList.aspx?orderstatus=4"
                                                      class="mr20">未提交订单(<span>0</span>)</a><a
                href="/Home/Order/AllOrderList.aspx?orderstatus=3" class="mr20">未出行订单(<span>0</span>)</a><a
                href="/Home/Order/AllOrderList.aspx?orderstatus=15" class="mr20">待点评订单(<span>0</span>)</a><a
                href="Message/MessageList.aspx" class="mr20">消息提醒(<span>0</span>)</a></div>


        <script type="text/javascript">
            var basicMileageObj = "ctl00_MainContentPlaceHolder_MyBasicInfo1_dv_Grade";
        </script>

        <!--- 我的积分信息 --->
        <div style=" display:block" class="mc_acount"><span class="tit">我的积分</span>

            <div class="cn"><a href="https://sinfo.ctrip.com/MyInfo/AccountCenter/MyMileage.aspx"><span
                    class="sc04">可兑换积分&nbsp;</span>1200</a><a class="mg04"
                                                              href="http://jifen.ctrip.com/rewards/SearchPrize.aspx"
                                                              target="_blank">兑换好礼</a></div>
        </div>
        <!--- 我的票券信息 --->
        <div class="mc_acount bs04"><span class="tit">我的票券</span>

            <div class="cn"><p><a href="https://sinfo.ctrip.com/Balance/zh-cn/CashAccount.aspx"><span
                    class="sc04">返现账户</span>&nbsp;0</a>
            </p>

                <p><a href="https://sinfo.ctrip.com/Balance/zh-cn/TravelTicket.aspx"><span class="sc04">礼品卡</span>&nbsp;0</a>
                </p>

                <p class="wrap"></p>

                <p><a href="https://sinfo.ctrip.com/Balance/zh-cn/Coupon.aspx?type=tab"><span
                        class="sc04">消费券</span>&nbsp;1300</a></p></div>
        </div>

    </div>
</div>
<div id="divMyJourneyLoading" style="display: none;" class="mb10 bs02">
    <div class="pr pd02 bs03 pdr10">
        <h3 class="tit_siller"><strong>我的行程</strong></h3>
    </div>
    <div class="timeline_noresult">
        <div class="tac pd11">
            <span class="loading_50"></span><span class="fwb fs14">行程数据加载中</span>
        </div>
    </div>
</div>
<iframe src="http://my.ctrip.com/Customer-API-Online/IframeMyJourney.aspx" id="IframeMyJourney" frameborder="0"
        scrolling="no" width="100%" height="188px"></iframe>
<!--- 商旅规则 --->


<!--- 促销信息 --->

<!--金牌贵宾特色服务-->
<div class="mc_service bs02">
    <div class="hd pd02 bs03">
        <h3 class="ico_gold_medal">普通会员特色服务</h3>
        <a href="/adv/Loyalty/MyPrivilege.aspx" class="link_more" target="_blank">查看全部&gt;&gt;</a>
    </div>
    <div class="pd01 clearfix">
        <div class="row32 fl">
            <dl>
                <dt>订海外旅游度假，享24小时中文热线</dt>
                <dd>目前已开通夏威夷、普吉岛中文热线；为预订旅游度假并出行的会员提供咨询和紧急帮助服务。</dd>
            </dl>
        </div>
        <div class="row32 fl">
            <dl>
                <dt>积分累加快</dt>
                <dd>预订成交享有积分奖励，无线预订，积分累加更多！参与有奖调查、抽奖等都也可获得积分！
                </dd>
            </dl>
        </div>
        <div class="row_cell">
            <dl>
                <dt>积分兑换丰富礼品</dt>
                <dd>参与积分活动，有机会获得旅游产品抵用券、携程刊物、海外度假游等奖品。</dd>
            </dl>
        </div>
    </div>
</div>

<!--ad-->

<div class="adbox">
    <div class="row62 fl">
        <a href="news/SubScript.aspx"><img src="http://pic.c-ctrip.com/myctripv2/pic_ad_01.gif" width="510"
                                           height="76" alt=""></a>
    </div>
    <div class="row_cell">
        <a href="news/SubScript.aspx"><img src="http://pic.c-ctrip.com/myctripv2/pic_ad_02.gif" width="266"
                                           height="76" alt=""></a>
    </div>
</div>
<!--工具箱、会员互动、会员规则-->


<div class="fs14 clearfix mb10">
    <div class="row32 fl bs02">
        <dl class="mod_list01">
            <dt class="bs03">机票工具箱</dt>
            <dd>·<a href="http://flights.ctrip.com/domestic/MyToolBox/Option.aspx" target="_blank">低价订阅提醒</a></dd>
            <dd>·<a href="http://flights.ctrip.com/Domestic/MyToolBox/Default.aspx" target="_blank">航班实时起降信息</a>
            </dd>
        </dl>
    </div>
    <div class="row32 fl bs02">
        <dl class="mod_list01">
            <dt class="bs03">会员互动</dt>
            <dd>·<a href="http://www.ctrip.com/community/senate/activity_index.asp" target="_blank">携程贵宾俱乐部</a></dd>
            <dd>·<a href="http://pages.ctrip.com/commerce/promote/201005/other/jfdhzq/index.htm" target="_blank">积分奖励活动专区</a>
            </dd>
        </dl>
    </div>
    <div class="row_cell bs02">
        <dl class="mod_list01">
            <dt class="bs03">会员规则</dt>
            <dd>·<a href="http://my.ctrip.com/adv/Loyalty/MyLevel.aspx" target="_blank">会员升级标准</a></dd>
            <dd>·<a href="http://pages.ctrip.com/commerce/promote/201405/other/jfsd/index.html"
                    target="_blank">携程积分怎么玩</a>
            </dd>
        </dl>
    </div>
</div>

<!--工具箱、会员互动、会员规则-->


<div id="ctl00_MainContentPlaceHolder_divMyCtripSurveyLink" style=" display:none;" class="mt10 clearfix">
    <a class="fr" target="_blank"
       href="http://www.ctrip.com/QSYS/Online/OnlineQsysQurveyLogin.asp?SurveyID=a6db18ce-6145-439f-ba31-54d291fdd079&amp;Review=">“我的携程”小调查&gt;&gt;</a>
</div>

<input name="ctl00$MainContentPlaceHolder$hd_messageCount" type="hidden"
       id="ctl00_MainContentPlaceHolder_hd_messageCount" value="0">
<input type="hidden" id="hd_smessageCount" value="0">
<input type="hidden" id="page_id" value="100021">
<input id="EncryptID" value="E120427298" type="hidden">
<input id="EncryptID_GUID_URL" type="hidden"
       value="https://cdid.c-ctrip.com/Payment-CardRisk-DeviceWebSite/DeviceGuid.aspx?EncryptID={$EncryptID}">
<input id="EncryptID_DeviceID_URL" type="hidden"
       value="https://cdid.c-ctrip.com/Payment-CardRisk-DeviceWebSite/EntryWay.aspx?Plugid=6&amp;EncryptID={$EncryptID}&amp;GUID={$GUID}&amp;DeviceID={$DeviceID}">
<script type="text/javascript" src="https://pages.c-ctrip.com/Cdid/deviceid.js" defer=""></script>
</div>
</li>
<script type="text/javascript">
    var strServerName = window.location.host.toLowerCase();
    window.__uidc_init = new Date * 1;
    document.getElementById("hd_smessageCount").value = document.getElementById("ctl00_MainContentPlaceHolder_hd_messageCount").value;

    var IframeMctripDomain = 'ctrip.com';
    var IframeMyJourneyUrl = 'http://my.ctrip.com/Customer-API-Online/IframeMyJourney.aspx';
</script>
<script src="http://webresource.c-ctrip.com/code/cquery/LABjs/LAB.js" charset="utf-8" type="text/javascript"></script>
<script type="text/javascript">
    $LAB
            .script({ src: "http://webresource.c-ctrip.com/code/cquery/cQuery_110421.js", charset: "utf-8" }).wait()
            .script({ src: "JS/public/elements.js" }).wait()
            .script({ src: "JS/module/myinfo2.js" })
</script>

</ul>
</body>
<jsp:include page='footer.jsp'/>
</html>
