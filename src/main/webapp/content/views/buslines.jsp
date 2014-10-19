<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title></title>
<link rel="stylesheet" href="content/static/css/travel/buslines/buslines.css" />
</head>
<jsp:include page='header.jsp' />
<body>
  <script type="text/javascript">
      function booking() {
          window.location.href = "./passengers";
      }
  </script>
  <div id="base_bd">
    <!--搜索框开始-->
    <form action="buslines" id="searchBusForm" method="POST" accept-charset="utf-8">
      <div class="searchbox">
        出发城市 <input type="text" id="notice01" name="from" value="${condition.from }" class="input_text" style="width: 82px; color: gray;" autocomplete="on"> 到达城市 <input
          type="text" id="notice02" name="to" value="${condition.to }" class="input_text" style="width: 82px; color: gray;" autocomplete="on"> 出发日期 <input type="text"
          id="dateObj" name="date" value="${condition.departDate }" class="input_text" style="width: 120px; color: gray;"> <input type="submit" class="btn_search"
          id="searchBusTicket" value="搜索">
      </div>
    </form>
    <!--搜索框结束-->
    <div class="single_wapper">
      <!--右栏开始-->
      <div id="leftSideTrain">
        <div class="side_pack">
          <!--右侧广告start-->
          <style type="text/css">
            .app_prop {
            	position: relative;
            	width: 300px;
            	height: 150px;
            	margin-bottom: 10px;
            }
            
            .prop_link:hover {
            	border: 2px solid #FFB001;
            }
            
            .prop_link {
            	position: absolute;
            	left: 0;
            	top: 0;
            	width: 296px;
            	height: 146px;
            	background: url(#);
            }
          </style>
          <div class="app_prop">
            <img src="http://pic.c-ctrip.com/bus/mobile03.jpg" alt=""> <a href="http://app.ctrip.com/#ctm_ref=ad_2818_7704" target="_blank" class="prop_link"></a>
          </div>
          <!--右侧广告end-->
          <!--推荐门票start-->
          <div class="seo_tickets" id="tuijian_entrance_ticket" style="">
            <h3>南宁门票</h3>
            <div class="txt_info basefix">
              <div class="info">
                <h4>
                  <a href="http://piao.ctrip.com/dest/t8810.html#ctm_ref=bus_sr_rectic_dl_bn_1" target="_blank">青秀山</a>
                </h4>
                <div class="price">
                  <dfn>¥</dfn>
                  <span class="f-ora">16</span> 起
                </div>
                <div class="score">
                  <span class="f-blue">4.9</span>/5分
                </div>
                <p class="f-ora">AAAA</p>
                <p class="addr">广西省南宁市青山路19号。</p>
                <a href="http://piao.ctrip.com/dest/t8810.html#ctm_ref=bus_sr_rectic_dl_bn_1" target="_blank" class="btn_comm btn_2">预订</a>
              </div>
            </div>

            <div class="txt_info basefix">
              <div class="info">
                <h4>
                  <a href="http://piao.ctrip.com/dest/t8812.html#ctm_ref=bus_sr_rectic_dl_bn_2" target="_blank">南宁动物园</a>
                </h4>
                <div class="price">
                  <dfn>¥</dfn>
                  <span class="f-ora">45</span> 起
                </div>
                <div class="score">
                  <span class="f-blue">5</span>/5分
                </div>
                <p class="f-ora">AAAA</p>
                <p class="addr">广西省南宁市西乡塘区大学西路3号。</p>
                <a href="http://piao.ctrip.com/dest/t8812.html#ctm_ref=bus_sr_rectic_dl_bn_2" target="_blank" class="btn_comm btn_2">预订</a>
              </div>
            </div>

            <div class="txt_info basefix">
              <div class="info">
                <h4>
                  <a href="http://piao.ctrip.com/dest/t8841.html#ctm_ref=bus_sr_rectic_dl_bn_3" target="_blank">大明山</a>
                </h4>
                <div class="price">
                  <dfn>¥</dfn>
                  <span class="f-ora">80</span> 起
                </div>
                <div class="score">
                  <span class="f-blue">4.5</span>/5分
                </div>
                <p class="f-ora">AAAA</p>
                <p class="addr">广西省南宁市武鸣县两江镇明山路1号。</p>
                <a href="http://piao.ctrip.com/dest/t8841.html#ctm_ref=bus_sr_rectic_dl_bn_3" target="_blank" class="btn_comm btn_2">预订</a>
              </div>
            </div>
          </div>
          <!--推荐门票end-->
        </div>
      </div>
      <!--右栏结束-->
      <div class="railway_info_pack">
        <!--时间轴-->
        <div class="r_calendar" id="ulCanlender01">
          <div class="cal_left">
            <a id="canlenderleftbutton01" class="icon_cal_left disable" onclick="CanlenderLeftButtonClick01()"></a>
          </div>
          <ul class="cal_middle">
            <li style="display:"><a href="./buslines?from=${condition.from }&amp;to=${condition.to }&amp;date=2014-10-07">10-07<br>周二
            </a></li>
            <li style="display:"><a href="./buslines?from=${condition.from }&amp;to=${condition.to }&amp;date=2014-10-08" class="current">10-08<br>周三
            </a></li>
            <li style="display:"><a href="./buslines?from=${condition.from }&amp;to=${condition.to }&amp;date=2014-10-09">10-09<br>周四
            </a></li>
            <li style="display:"><a href="./buslines?from=${condition.from }&amp;to=${condition.to }&amp;date=2014-10-10">10-10<br>周五
            </a></li>
            <li style="display:"><a href="./buslines?from=${condition.from }&amp;to=南宁&amp;date=2014-10-11">10-11<br>周六
            </a></li>
            <li style="display:"><a href="./buslines?from=${condition.from }&amp;to=南宁&amp;date=2014-10-12">10-12<br>周日
            </a></li>
            <li style="display: none"><a href="./buslines?from=${condition.from }&amp;to=南宁&amp;date=2014-10-13">10-13<br>周一
            </a></li>
            <li style="display: none;"><a href="/busList.html?from=${condition.from }&amp;to=${condition.to }&amp;date=2014-10-14">10-14<br>周二
            </a></li>
            <li style="display: none;"><a href="./buslines?from=${condition.from }&amp;to=${condition.to }&amp;date=2014-10-15">10-15<br>周三
            </a></li>
            </ul>
            <div class="cal_right">
              <a id="canlenderrightbutton01" class="icon_cal_right " onclick="CanlenderRightButtonClick01()"></a>
            </div>
        </div>
        <div class="railway_detail_box">
          <div class="info_title">
            <strong>${condition.from } - ${condition.to }</strong> <span class="base_txtgray">车票信息</span><label id="busCount">89</label><span class="base_txtgray">条</span>
          </div>
          <div class="search_cate">
            <div class="search_cate_list">
              <span class="search_cate_type">出发时间</span> <a href="###" class="no_limit selected f_time_range" id="f_time_range" val="all">不限</a>
              <div class="search_cate_cont">
                <a href="###" class="f_time_range">上午(06:00-12:00)</a> 
                <a href="###" class="f_time_range">下午(12:00-18:00)</a> 
                <a href="###" class="f_time_range">晚上(18:00-06:00)</a>
              </div>
            </div>
            <div class="search_cate_list">
              <span class="search_cate_type">出发车站</span> <a href="###" class="no_limit selected f_from_station" id="f_from_station" val="all">不限</a>
              <div class="search_cate_cont">
                <c:forEach var="station" items="${stations}">
                  <a href="###" class="f_from_station">${station.name }</a>
                </c:forEach>
              </div>
            </div>
          </div>
          <!--列表开始-->
          <table class="tb_railway_list nolayout" width="100%" id="tb_railway_list">
            <tbody>
              <tr>
                <th width="195"><a href="###" id="" class="px_up f_sort_list" sort_name="from_time" onclick="return sortObj(this);">发/到时间<b class="icon_arrow_up"></b></a></th>
                <th width="190">发/到站</th>
                <th width="150">车型/车次</th>
                <th width="80" class="price"><a href="###" class="px_up f_sort_list" sort_name="full_price" onclick="return sortObj(this);">票价<b class="icon_arrow_up"></b></a></th>
                <th width="180"></th>
              </tr>
              <c:forEach var="line" items="${lines}">
                <tr class="train_result_list">
                  <td><span class="railway_time">${line.startTime }</span><br>${line.arriveTime }</td>
                  <td><span class="icon_start"></span>${line.fromStation }<br> <span class="icon_end"></span>${line.toStation }</td>
                  <td>${line.carType }<br>${line.lineNo }
                  </td>
                  <td class="price">
                    <div class="railway_seat">
                      <span class="seat_type"></span>
                      <div class="price_r">
                        <dfn>¥</dfn>
                        <span class="base_price">${line.price }</span>
                      </div>
                    </div>
                  </td>
                  <td class="text_right"><input type="button" class="btn_book goBook"
                    data-params="{from:'深圳',fromStation:'深圳汽车客运站',to:'南宁',busNo:'YFYHPGP0001',date:'2014-10-08',time:'08:00',hashkey:'38f87e10283fc0e2247abcf1a9063dbb'}" value="预订"
                    onclick="booking()"></td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
          <form id="jump_form" target="_blank"></form>
          <input type="hidden" id="min_price" value="210.00">
          <div class="block_alert">
            <b></b> 到达时间为预估时间，实际到达时间可能会因为路况和天气等因素影响而变动。
          </div>
          <div class="date_flip">
            <a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-07"><b class="icon_arrow_left"></b>(10/07)前一天</a> <a
              href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-09">后一天(10/09)<b class="icon_arrow_right"></b></a>
          </div>
          <input type="hidden" id="page" value="1">
          <div class="page_box">
            <div class="c_page">
              <div class="c_page_list layoutfix" id="showPage">
                <a href="###" class="current" data-page="1" onclick="">1</a> <a href="###" data-page="2" onclick="">2</a> <a href="###" data-page="3" onclick="">3</a> <a href="###"
                  data-page="4" onclick="">4</a>
              </div>
            </div>
          </div>
          <div class="no_result_alert" id="no_result" style="display: none;">
            <b></b>
            <p style="font: 22px 'Microsoft Yahei';">很抱歉，该条件下无车次信息。</p>
            <p style="margin-bottom: 20px;">您可以放宽筛选条件或查询其他日期的车次信息。</p>
          </div>
          <!--列表结束-->
        </div>
      </div>
    </div>
  </div>
  <jsp:include page='footer.jsp' />
</body>
</html>
