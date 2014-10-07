<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 10/7/14
  Time: 12:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="content/static/css/travel/buslines/buslines.css" />
</head>
<jsp:include page='header.jsp'/>
<body>
<div id="base_bd">
<iframe id="__SSO_iframe_0" frameborder="0" scrolling="no" width="394px" height="582px" style="display:none;"></iframe>
<iframe id="__SSO_iframe_1" frameborder="0" scrolling="no" width="394px" height="582px" style="display:none;"></iframe>
<script type="text/javascript">
    //免登 元素id,快速预订
    function __SSO_booking(a,t){
        var el=cQuery("#__SSO_iframe_"+t);
        if(el[0]){
            el[0].src="/index.php?param=/user/loginCheck&a="+a+"&t="+t+"&b=905208C08CFC4304&sem=0B313BFAFFA676306B21C69ECC011D1E";
        }
        return false;
    }
    //强登功能，元素id,快速预订
    function __SSO_booking_1(a,t){
        var el=cQuery("#__SSO_iframe_"+t);
        if(el[0]){
            el[0].src="/index.php?param=/user/loginCheck&a="+a+"&t="+t+"&b=905208C08CFC4304";
        }
        return false;
    }

    //元素id,是否弹出登录框,快速预订,是否执行js函数
    function __SSO_loginShow(a,s,t,n){
        var el=cQuery("#__SSO_iframe_"+t);
        if (el[0]){
            if(s){
                if(el[0]){
                    el.mask();
                    el[0].src="/index.php?param=/user/loginAgent&a="+a+"&t="+t+"&b=BE19260EEDF1F109&o=8F17BAF92DA4C85F";
                }
            }else{
                el.unmask();
                if(n){
                    __SSO_submit(a,t);
                }
            }
        }
    }
</script>
<!--搜索框开始-->
<form action="http://bus.ctrip.com/busList.html" id="searchBusForm" method="get" accept-charset="utf-8">
    <div class="searchbox">
        出发城市
        <input type="text" id="notice01" name="from" value="深圳" class="input_text" style="width:82px; color: gray;" autocomplete="on" _cqnotice="中文/拼音/首字母">
        到达城市
        <input type="text" id="notice02" name="to" value="南宁" class="input_text" style="width:82px; color: gray;" autocomplete="on" _cqnotice="中文/拼音/首字母">
        出发日期
        <input type="text" id="dateObj" name="date" value="2014-10-08" class="input_text" style="width:120px; color: gray;" _cqnotice="yyyy-mm-dd">
        <input type="button" class="btn_search" id="searchBusTicket" value="搜索">
    </div>
</form>
<script type="text/javascript">
function formatBusData(data) {
    var obj = {};
    for (var key in data) {
        obj[key] = {};
        if (key.search(/[A-Z]/i) != -1) {
            for (var i = 0; i < data[key].length; i++) {
                var groupBy = data[key][i]['data'].split('|')[2].substr(0, 1).toUpperCase();
                if (obj[key][groupBy]) {
                    obj[key][groupBy].push(data[key][i]);
                } else {
                    obj[key][groupBy] = [];
                    obj[key][groupBy].push(data[key][i]);
                }
            }
        } else {
            for (var i = 0; i < data[key].length; i++) {
                if (obj[key]['']) {
                    obj[key][''].push(data[key][i]);
                } else {
                    obj[key][''] = [];
                    obj[key][''].push(data[key][i]);
                }
            }
        }
    }
    return obj;
}

var toCityList = {};
var notice01 = null;
var notice02 = null;

cQuery.ready(function(){
    // 先加载地址选择器模块
    cQuery.mod.load("address", "1.0");
    cQuery.mod.load("notice", "1.0");
    cQuery.mod.load("calendar", "3.0");
    // 再注册地址选择器模块
    var from = cQuery('#notice01'),
            to = cQuery('#notice02'),
            date = cQuery('#dateObj');

    from.regMod('notice' , '1.0', {
        name: 'notice01',
        selClass: "base_txtgray",
        tips: "中文/拼音/首字母"
    });

    to.regMod('notice' , '1.0', {
        name: 'notice02',
        selClass: "base_txtgray",
        tips: "中文/拼音/首字母"
    });

    function regBusAddress(input, name, tagHistory) {
        var noticeAddress = $(input).regMod('address', '1.0', {
            name: name,
            message: {
                suggestion: '请从下列城市选择',
                noFilterResult:"抱歉，找不到：'${val}'  请手动输入"
            },
            isFocusNext: true,
            //isAutoCorrect: true,
            template: {
                suggestion: '{{if (data = formatBusData(data))}}{{/if}}' +
                        '<div class="city_select_lhsl">' +
                        '<p class="title"><a class="close" href="javascript:;">×</a>支持中文/拼音/简拼输入</p>' +

                        (!!tagHistory ? (
                                '<p class="sarch_history_title">搜索历史</p>' +
                                '<div class="search_history_box">'
                                + tagHistory +
                                '</div>') : '') +

                        '<ul class="tab_box">{{enum(key) data}}<li><span>${key}</span></li>{{/enum}}</ul>' +
                        '{{enum(key,objs) data}}' +
                        '<div class="city_item">' +
                        '{{enum(k,arr) objs}}' +
                        '<div class="city_item_in">' +
                        '<span class="city_item_letter">${k}</span>' +
                        '{{each(index, item) arr}}<a href="javascript:void(0);" data="${item.data}">${item.display}</a>{{/each}}' +
                        '</div>' +
                        '{{/enum}}' +
                        '</div>' +
                        '{{/enum}}' +
                        '</div>',

                suggestionStyle: '.city_select_lhsl{width:408px;padding:10px;border:1px solid #999;background-color:#fff;}' +
                        '.city_select_lhsl .close{float:right;width:20px;height:20px;color:#666;text-align:center;font:bold 16px/20px Simsun;}' +
                        '.city_select_lhsl .close:hover{text-decoration:none;color:#FFA800;}' +
                        '.city_select_lhsl .title{margin-bottom:10px;color:#999;}' +
                        '.city_select_lhsl .tab_box{width:100%;height:22px;margin-bottom:6px;margin-top:0;border-bottom:2px solid #ccc;}' +
                        '.city_select_lhsl .tab_box li{position:relative;float:left;display:inline;margin-right:2px;line-height:22px;cursor:pointer;}' +
                        '.city_select_lhsl .tab_box li b{display:none;}' +
                        '.city_select_lhsl .tab_box li span{padding:0 8px;}' +
                        '.city_select_lhsl .tab_box .hot_selected{border-bottom:2px solid #06c;margin-bottom:-2px;font-weight:bold;color:#06c;}' +
                        '.city_select_lhsl .tab_box .hot_selected b{position:absolute;top:23px;left:50%;display:block;width:0;height:0;margin-left:-5px;overflow:hidden;font-size:0;line-height:0;border-color:#06c transparent transparent transparent;border-style:solid dashed dashed dashed;border-width:5px;}' +
                        '.city_select_lhsl .city_item, .city_select_lhsl .search_history_box {display:inline-block;*zoom:1;overflow:hidden;}' +
                        '.city_select_lhsl .city_item{width:408px;}' +
                        '.city_select_lhsl .city_item a, .city_select_lhsl .search_history_box a {float:left;display:inline;width:52px;height:22px;margin:0 2px 2px 0;padding-left:8px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis;line-height:22px;color:#333;}' +
                        '.city_select_lhsl .city_item a:hover,.city_select_lhsl .search_history_box a:hover{background-color:#2577E3;text-decoration:none;color:#fff;}' +
                        '.city_item .city_item_in{width:378px;padding-left:30px;*zoom:1;}' +
                        '.city_item .city_item_in:after,.city_select_lhsl .search_history_box:after{display:block;height:0;visibility:hidden;overflow:hidden;content:".";clear:both;}' +
                        '.city_item .city_item_letter{float:left;width:30px;height:22px;margin-left:-30px;line-height:22px;text-align:center;color:#E56700;}' +
                        '.city_select_lhsl .sarch_history_title{margin-bottom:2px;font-weight:bold;color:#06c;}' +
                        '.city_select_lhsl .search_history_box{margin-bottom:6px;}',

                suggestionInit: function (el) {
                    suggestInit(el);
                }
            }
        });
        function suggestInit(a) {
            cQuery(".tab_box li", a[0]).bind("mousedown", function () {
                cQuery(".tab_box li", a[0]).removeClass("hot_selected");
                cQuery(this).addClass("hot_selected");
                cQuery(".city_item", a[0]).css("display", "none");
                var keywords = cQuery("span", $(this)[0])[0].innerHTML;
                if (keywords.trim() == '热门') {
                    cQuery(".city_item:eq(0)", a[0]).css("display", "");
                }
                else {
                    cQuery(".city_item").each(function (c) {
                        var letter = cQuery(".city_item_letter", c[0])[0].innerHTML;
                        if (letter != '' && keywords.indexOf(letter) > -1) {
                            cQuery(c).css("display", "");
                        }
                    });
                }
            });
            cQuery(".search_history_box a", a[0]).bind("mousedown", function () {
                cQuery(input).value(this.innerHTML);
                noticeAddress.method("hidden");
            });
            cQuery(".title .close", a[0]).bind("mousedown", function () {
                noticeAddress.method("hidden");
            });
            cQuery(".tab_box li:eq(0)", a[0]).trigger("mousedown");
        };

        return noticeAddress;
    }

    notice02 = regBusAddress('#notice02', 'notice02', '');
    notice01 = regBusAddress('#notice01', 'notice01', '');

    getBusFromCity();

    cQuery("#notice02").bind("focus", function(){
        getBusToCity(encodeURIComponent(cQuery("#notice01").value().trim()));
    });

    date.regMod('notice' , '1.0', {
        name: 'dateObj',
        selClass: "base_txtgray",
        tips: "yyyy-mm-dd"
    });

    date.regMod("calendar", "3.0", {
        options: {
            showWeek: true,
            container: cQuery.container,
            maxDate: "2014-11-05"
        }
    }, true);

    // 表单验证
    cQuery.mod.load('validate','1.1',function(){
        var validateShow = function (obj, message) {
            cQuery(document).regMod('validate', '1.1').method("show", { $obj: obj, data: message, removeErrorClass: true, hideEvent: "blur", isFocus: true });
        };

        cQuery("#searchBusTicket").bind('click', function (e) {
            var notice01 = cQuery("#notice01"),
                    notice02 = cQuery("#notice02"),
                    dateObj = cQuery("#dateObj");

            if (notice01.value().trim() == "中文/拼音/首字母" || notice01.value().trim() == "") {
                validateShow(notice01, "请输入出发城市名称");
                return false;
            } else if (notice02.value().trim() == "中文/拼音/首字母" || notice02.value().trim() == "") {
                validateShow(notice02, "请输入到达城市名称");
                return false;
            } else if (dateObj.value().trim().replace(/\//g, '-').trim() == "yyyy-mm-dd" || dateObj.value().trim() == "") {
                validateShow(dateObj, "请选择出发日期");
                return false;
            }

            document.getElementById("searchBusForm").submit();
            return false;
        });
    });
});

function getBusFromCity() {
    cQuery.jsonp('/index.php?param=/data/cityList&callback=busFromCityCallback', {onload: function(){
    }});
}

function busFromCityCallback(data) {
    if (data['code'] == 1 && notice01) {
        notice01.method("source_set", {
            suggestion: data['return']['suggestion'],
            data:data['return']['data']
        });
    }
}

function getBusToCity(fromCity) {
    if (fromCity != '' && fromCity != '中文/拼音/首字母') {
        cQuery.jsonp('/index.php?param=/data/toCityList&fromCity=' + fromCity + '&callback=busToCityCallback', {onload: function(){
        }});
    }
}

function busToCityCallback(data) {
    if (data['code'] == 1 && notice02) {
        notice02.method("source_set", {
            suggestion: data['return']['suggestion'],
            data:data['return']['data']
        });
    }
}
</script>
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
    <img src="http://pic.c-ctrip.com/bus/mobile03.jpg" alt="">
    <a href="http://app.ctrip.com/#ctm_ref=ad_2818_7704" target="_blank" class="prop_link"></a>
</div>
<!--右侧广告end-->
<!--车站地图start-->
<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&amp;key=0b895f63ca21c9e82eb158f46fe7f502"></script>

<script type="text/template" id="map_mark">
    <div class="map_mark"><span class="map_num"></span><div class="map_mark_inner"><span class="map_mark_name">${station_name}</span></div></div>
</script>

<script type="text/template" id="map_mark_hover">
    <div class="map_mark map_mark_cur"><span class="map_num"></span><div class="map_mark_inner"><span class="map_mark_name">${station_name}</span></div></div>
</script>

<script type="text/template" id="map_mark_info">
    <div class="map_mark_info basefix map_mark_nopic" id="mark_info_${station_id}">
        <a href="##" class="map_mark_x" onclick="document.getElementById('mark_info_${station_id}').style.display = 'none';">×</a>
        <i class="i-map i4"></i>
        <img src="http://pic.c-ctrip.com/bus/nopic.png" alt="暂无图片" />
        <div class="info">
            <h4>${station_full_name}</h4>
            <p>地址：${address}</p>
            <p>电话：${phone_number}</p>
            <p><a href="##" class="btn_m select_map_station" data-markinfoid="mark_info_${station_id}" data-station="${station_name}">选择此车站</a></p>
        </div>
    </div>
</script>

<script type="text/javascript">
    jQuery('.select_map_station').live('click', function(){
        var station = jQuery(this).attr('data-station');
        var markinfoid = jQuery(this).attr('data-markinfoid');

        jQuery(".f_from_station").each(function(e){
            if (jQuery(this).attr("val") == station) {
                jQuery(this).addClass('selected');
            } else {
                jQuery(this).removeClass('selected');
            }
        });

        ajaxGetBusList();
        jQuery('#' + markinfoid).hide();
    });
</script>

<script type="text/javascript">
    var stationListJsonData = eval('(' + '{"\u6df1\u5733\u6c7d\u8f66\u5ba2\u8fd0\u7ad9":{"station_id":"506","station_name":"\u6df1\u5733\u6c7d\u8f66\u5ba2\u8fd0\u7ad9","station_full_name":"\u6df1\u5733\u6c7d\u8f66\u5ba2\u8fd0\u7ad9","station_pinyin":"shenzhenqichekeyunzhan","city_name":"\u6df1\u5733","address":"\u6df1\u5733\u5e02\u4e0a\u6b65\u5317\u8def2008\u53f7\u94f6\u6e56\u5927\u53a6\u9996\u5c42","phone_number":"0755-82407002","fetch_ticket_help":"\u63d0\u524d\u81f3\u5c1160\u5206\u949f\u51ed\u7535\u5b50\u8ba2\u5355\u53f7\uff08\u4ee5\u624b\u673a\u77ed\u4fe1\u7684\u5f62\u5f0f\u53d1\u9001\u5230\u60a8\u6307\u5b9a\u7684\u624b\u673a\u53f7\uff09\u548c\u6709\u6548\u8eab\u4efd\u8bc1\u660e\u5230\u53d1\u8f66\u7ad9\u6362\u53d6\u8f66\u7968\u4e0a\u8f66\u3002","return_change_help":"\u5230\u76f8\u5e94\u7684\u53d1\u8f66\u7ad9\u670d\u52a1\u7a97\u53e3\u6309\u89c4\u5b9a\u529e\u7406\u6709\u5173\u9000\u7968\u624b\u7eed\u3002","coordinate_x":"114.089505","coordinate_y":"22.568947","support_passenger_types":"\u4e8c\u4ee3\u8eab\u4efd\u8bc1"},"\u9f99\u534e\u6c7d\u8f66\u5ba2\u8fd0\u7ad9":{"station_id":"529","station_name":"\u9f99\u534e\u6c7d\u8f66\u5ba2\u8fd0\u7ad9","station_full_name":"\u6df1\u5733\u5e02\u9f99\u534e\u6c7d\u8f66\u5ba2\u8fd0\u7ad9","station_pinyin":"longhuaqichekeyunzhan","city_name":"\u6df1\u5733","address":"\u6df1\u5733\u5e02\u5b9d\u5b89\u533a\u9f99\u534e\u9547\u9f99\u89c2\u4e1c\u8def\u9f99\u534e\u5ba2\u8fd0\u5927\u697c","phone_number":"0755-28114518","fetch_ticket_help":"\u63d0\u524d\u81f3\u5c1160\u5206\u949f\u51ed\u7535\u5b50\u8ba2\u5355\u53f7\uff08\u4ee5\u624b\u673a\u77ed\u4fe1\u7684\u5f62\u5f0f\u53d1\u9001\u5230\u60a8\u6307\u5b9a\u7684\u624b\u673a\u53f7\uff09\u548c\u6709\u6548\u8eab\u4efd\u8bc1\u660e\u5230\u53d1\u8f66\u7ad9\u6362\u53d6\u8f66\u7968\u4e0a\u8f66\u3002","return_change_help":"\u5230\u76f8\u5e94\u7684\u53d1\u8f66\u7ad9\u670d\u52a1\u7a97\u53e3\u6309\u89c4\u5b9a\u529e\u7406\u6709\u5173\u9000\u7968\u624b\u7eed\u3002","coordinate_x":"114.031141","coordinate_y":"22.670026","support_passenger_types":"\u4e8c\u4ee3\u8eab\u4efd\u8bc1"},"\u5b9d\u5b89\u6c7d\u8f66\u5ba2\u8fd0\u7ad9":{"station_id":"519","station_name":"\u5b9d\u5b89\u6c7d\u8f66\u5ba2\u8fd0\u7ad9","station_full_name":"\u6df1\u5733\u5e02\u5b9d\u5b89\u6c7d\u8f66\u5ba2\u8fd0\u7ad9","station_pinyin":"baoanqichekeyunzhan","city_name":"\u6df1\u5733","address":"\u6df1\u5733\u5e02\u5b9d\u5b89\u533a\u5341\u4e8c\u533a\u5b9d\u6c11\u4e00\u8def171\u53f7","phone_number":"0755-27785540","fetch_ticket_help":"\u63d0\u524d\u81f3\u5c1160\u5206\u949f\u51ed\u7535\u5b50\u8ba2\u5355\u53f7\uff08\u4ee5\u624b\u673a\u77ed\u4fe1\u7684\u5f62\u5f0f\u53d1\u9001\u5230\u60a8\u6307\u5b9a\u7684\u624b\u673a\u53f7\uff09\u548c\u6709\u6548\u8eab\u4efd\u8bc1\u660e\u5230\u53d1\u8f66\u7ad9\u6362\u53d6\u8f66\u7968\u4e0a\u8f66\u3002","return_change_help":"\u5230\u76f8\u5e94\u7684\u53d1\u8f66\u7ad9\u670d\u52a1\u7a97\u53e3\u6309\u89c4\u5b9a\u529e\u7406\u6709\u5173\u9000\u7968\u624b\u7eed\u3002","coordinate_x":"113.899169","coordinate_y":"22.563753","support_passenger_types":"\u4e8c\u4ee3\u8eab\u4efd\u8bc1"},"\u9f99\u5c97\u6c7d\u8f66\u5ba2\u8fd0\u7ad9":{"station_id":"537","station_name":"\u9f99\u5c97\u6c7d\u8f66\u5ba2\u8fd0\u7ad9","station_full_name":"\u6df1\u5733\u5e02\u9f99\u5c97\u6c7d\u8f66\u5ba2\u8fd0\u7ad9","station_pinyin":"longgangqichekeyunzhan","city_name":"\u6df1\u5733","address":"\u6df1\u5733\u5e02\u9f99\u5c97\u533a\u4e2d\u5fc3\u57ce\u9f99\u5e73\u897f\u8def129\u53f7","phone_number":"0755-89910408","fetch_ticket_help":"\u63d0\u524d\u81f3\u5c1160\u5206\u949f\u51ed\u7535\u5b50\u8ba2\u5355\u53f7\uff08\u4ee5\u624b\u673a\u77ed\u4fe1\u7684\u5f62\u5f0f\u53d1\u9001\u5230\u60a8\u6307\u5b9a\u7684\u624b\u673a\u53f7\uff09\u548c\u6709\u6548\u8eab\u4efd\u8bc1\u660e\u5230\u53d1\u8f66\u7ad9\u6362\u53d6\u8f66\u7968\u4e0a\u8f66\u3002","return_change_help":"\u5230\u76f8\u5e94\u7684\u53d1\u8f66\u7ad9\u670d\u52a1\u7a97\u53e3\u6309\u89c4\u5b9a\u529e\u7406\u6709\u5173\u9000\u7968\u624b\u7eed\u3002","coordinate_x":"114.236814","coordinate_y":"22.728543","support_passenger_types":"\u4e8c\u4ee3\u8eab\u4efd\u8bc1"},"\u5e03\u5409\u6c7d\u8f66\u5ba2\u8fd0\u7ad9":{"station_id":"547","station_name":"\u5e03\u5409\u6c7d\u8f66\u5ba2\u8fd0\u7ad9","station_full_name":"\u6df1\u5733\u5e02\u9f99\u5c97\u533a\u5e03\u5409\u6c7d\u8f66\u5ba2\u8fd0\u7ad9","station_pinyin":"bujiqichekeyunzhan","city_name":"\u6df1\u5733","address":"\u6df1\u5733\u5e02\u9f99\u5c97\u533a\u5e03\u5409\u5e03\u9f99\u516c\u8def","phone_number":"0755-28759230","fetch_ticket_help":"\u63d0\u524d\u81f3\u5c1160\u5206\u949f\u51ed\u7535\u5b50\u8ba2\u5355\u53f7\uff08\u4ee5\u624b\u673a\u77ed\u4fe1\u7684\u5f62\u5f0f\u53d1\u9001\u5230\u60a8\u6307\u5b9a\u7684\u624b\u673a\u53f7\uff09\u548c\u6709\u6548\u8eab\u4efd\u8bc1\u660e\u5230\u53d1\u8f66\u7ad9\u6362\u53d6\u8f66\u7968\u4e0a\u8f66\u3002","return_change_help":"\u5230\u76f8\u5e94\u7684\u53d1\u8f66\u7ad9\u670d\u52a1\u7a97\u53e3\u6309\u89c4\u5b9a\u529e\u7406\u6709\u5173\u9000\u7968\u624b\u7eed\u3002","coordinate_x":"114.118027","coordinate_y":"22.603097","support_passenger_types":"\u4e8c\u4ee3\u8eab\u4efd\u8bc1"}}' + ')');
    var mapObj;
    var toolBar;

    function buildCpoint(data) {
        var inforWindow = new AMap.InfoWindow({
            offset: new AMap.Pixel(-14, -31),
            isCustom: !0,
            closeWhenClickMap: !0,
            content: ""
        });

        // 设置坐标
        var cpoint = new AMap.LngLat(parseFloat(data['coordinate_x']), parseFloat(data['coordinate_y']));
        // 添加中心点
        var cmarker = new AMap.Marker({
            position:cpoint, // 设置标注
            map:mapObj, // 设置地图对象
            offset: new AMap.Pixel(-25, -36),
            content: cQuery.tmpl.render(cQuery('#map_mark').html(), data) // 设置坐标显示内容
        });

        // 监听标注点点击事件
        AMap.event.addListener(cmarker, "click", function (e) {
            setTimeout(function(){
                // 显示车站详情信息
                inforWindow.setContent(cQuery.tmpl.render(cQuery('#map_mark_info').html(), data));
                inforWindow.open(mapObj, cpoint);

                // 坐标点位置平移
                mapObj.panTo(cpoint);
            }, 200);
        });

        AMap.event.addListener(cmarker, "mouseover", function (e) {
            cmarker.setContent(cQuery.tmpl.render(cQuery('#map_mark_hover').html(), data));
        });

        AMap.event.addListener(cmarker, "mouseout", function (e) {
            cmarker.setContent(cQuery.tmpl.render(cQuery('#map_mark').html(), data));
        });
    }

    function mapInit() {
        if (!stationListJsonData) {
            return;
        }

        //加载地图
        mapObj = new AMap.Map("iCenter", {
        });

        // 循环遍历设置车站标注点
        for(var p in stationListJsonData){
            buildCpoint(stationListJsonData[p]);
        }

        // 监听地图缩放事件
        /*AMap.event.addListener(mapObj, "zoomchange", function (e) {
         var zoom = this.getZoom() * 1; // 获取当前地图缩放级别
         })*/

        // 显示地图坐标位置中心点（地图自适应显示到合适的范围内,点标记已全部显示在视野中）
        mapObj.setFitView();

        //在地图中添加ToolBar插件
        mapObj.plugin(["AMap.ToolBar"],function(){
            toolBar = new AMap.ToolBar();
            // 隐藏方向键盘
            toolBar.hideDirection();
            // 隐藏标尺键盘
            toolBar.hideRuler()
            mapObj.addControl(toolBar);
        });
    }
</script>
<div class="side_map">
    <div class="map_box amap-container" id="iCenter" style="height:313px;">
        <a class="map_link" style="cursor:pointer;" id="look_map_detail" target="_blank">看大地图</a>
        <div class="amap-maps"><div class="amap-layers"><canvas width="768" height="512" style="position: absolute; z-index: 1; top: -58.5px; left: -220px;"></canvas><canvas width="768" height="512" style="position: absolute; z-index: 1; top: -58.5px; left: -220px;"></canvas><div style="position: absolute; z-index: 120; top: 241.5px; left: 168px;"><div class="amap-marker" style="top: -60px; left: -23px; z-index: 100; -webkit-transform: translate(25px, 36px) rotate(0deg) translate(-25px, -36px); display: block;"><div class="amap-marker-content" style="opacity: 1;">
            <div class="map_mark"><span class="map_num"></span><div class="map_mark_inner"><span class="map_mark_name">深圳汽车客运站</span></div></div>
        </div></div><div class="amap-marker" style="top: -140px; left: -66px; z-index: 100; -webkit-transform: translate(25px, 36px) rotate(0deg) translate(-25px, -36px); display: block;"><div class="amap-marker-content" style="opacity: 1;">
            <div class="map_mark"><span class="map_num"></span><div class="map_mark_inner"><span class="map_mark_name">龙华汽车客运站</span></div></div>
        </div></div><div class="amap-marker" style="top: -56px; left: -162px; z-index: 100; -webkit-transform: translate(25px, 36px) rotate(0deg) translate(-25px, -36px); display: block;"><div class="amap-marker-content" style="opacity: 1;">
            <div class="map_mark"><span class="map_num"></span><div class="map_mark_inner"><span class="map_mark_name">宝安汽车客运站</span></div></div>
        </div></div><div class="amap-marker" style="top: -186px; left: 84px; z-index: 100; -webkit-transform: translate(25px, 36px) rotate(0deg) translate(-25px, -36px); display: block;"><div class="amap-marker-content" style="opacity: 1;">
            <div class="map_mark"><span class="map_num"></span><div class="map_mark_inner"><span class="map_mark_name">龙岗汽车客运站</span></div></div>
        </div></div><div class="amap-marker" style="top: -87px; left: -2px; z-index: 100; -webkit-transform: translate(25px, 36px) rotate(0deg) translate(-25px, -36px); display: block;"><div class="amap-marker-content" style="opacity: 1;">
            <div class="map_mark"><span class="map_num"></span><div class="map_mark_inner"><span class="map_mark_name">布吉汽车客运站</span></div></div>
        </div></div></div></div><div class="amap-overlays"></div></div><div class="amap-controls"><div class="amap-toolbar" style="left: 10px; top: 10px; visibility: visible;"><div class="amap-pancontrol" style="position: relative; display: none;"><div class="amap-pan-left"></div><div class="amap-pan-top"></div><div class="amap-pan-right"></div><div class="amap-pan-bottom"></div></div><div class="amap-locate" style="position: relative; left: 17px; display: block;"></div><div class="amap-zoomcontrol" style="position: relative; left: 14px;"><div class="amap-zoom-plus"></div><div class="amap-zoom-ruler" style="display: none;"><div class="amap-zoom-mask" style="height: 73px;"></div><div class="amap-zoom-cursor" style="top: 73px;"></div><div class="amap-zoom-labels"><div class="amap-zoom-label-street"></div><div class="amap-zoom-label-city"></div><div class="amap-zoom-label-province"></div><div class="amap-zoom-label-country"></div></div></div><div class="amap-zoom-minus"></div></div></div></div><img class="amap-logo" src="http://webapi.amap.com/theme/v1.3/mapinfo_05.png"><div class="amap-copyright"></div></div>
</div>
<script type="text/javascript">
    mapInit();
</script>

<!--点击查看大地图-->
<div id="map_detail" style="display:none;">
    <iframe id="iframe_map_detail" frameborder="0" width="995" height="738" marginheight="0" marginwidth="0" scrolling="no"></iframe>
</div>
<script type="text/javascript">
    jQuery('#look_map_detail').live('click', function(){
        var map_detail = document.getElementById("map_detail");
        cQuery(map_detail).mask();
        map_detail.style.display = "block";
        jQuery('#iframe_map_detail').attr('src', '/view/include/stationDetailMap.html?t=' + new Date().getTime());
    });

    function hideMapDetail() {
        var map_detail = document.getElementById("map_detail");
        cQuery(map_detail).css("display", "none");
        cQuery(map_detail).unmask();
    }
</script>
<!--车站地图end-->
<!--推荐门票start-->
<div class="seo_tickets" id="tuijian_entrance_ticket" style="">
    <h3>南宁门票</h3>

    <div class="txt_info basefix">
        <div class="info">
            <h4><a href="http://piao.ctrip.com/dest/t8810.html#ctm_ref=bus_sr_rectic_dl_bn_1" target="_blank">青秀山</a></h4>
            <div class="price"><dfn>¥</dfn><span class="f-ora">16</span> 起</div>
            <div class="score"><span class="f-blue">4.9</span>/5分</div>
            <p class="f-ora">AAAA</p>
            <p class="addr">广西省南宁市青山路19号。 </p>
            <a href="http://piao.ctrip.com/dest/t8810.html#ctm_ref=bus_sr_rectic_dl_bn_1" target="_blank" class="btn_comm btn_2">预订</a>
        </div>
    </div>

    <div class="txt_info basefix">
        <div class="info">
            <h4><a href="http://piao.ctrip.com/dest/t8812.html#ctm_ref=bus_sr_rectic_dl_bn_2" target="_blank">南宁动物园</a></h4>
            <div class="price"><dfn>¥</dfn><span class="f-ora">45</span> 起</div>
            <div class="score"><span class="f-blue">5</span>/5分</div>
            <p class="f-ora">AAAA</p>
            <p class="addr">广西省南宁市西乡塘区大学西路3号。</p>
            <a href="http://piao.ctrip.com/dest/t8812.html#ctm_ref=bus_sr_rectic_dl_bn_2" target="_blank" class="btn_comm btn_2">预订</a>
        </div>
    </div>

    <div class="txt_info basefix">
        <div class="info">
            <h4><a href="http://piao.ctrip.com/dest/t8841.html#ctm_ref=bus_sr_rectic_dl_bn_3" target="_blank">大明山</a></h4>
            <div class="price"><dfn>¥</dfn><span class="f-ora">80</span> 起</div>
            <div class="score"><span class="f-blue">4.5</span>/5分</div>
            <p class="f-ora">AAAA</p>
            <p class="addr">广西省南宁市武鸣县两江镇明山路1号。</p>
            <a href="http://piao.ctrip.com/dest/t8841.html#ctm_ref=bus_sr_rectic_dl_bn_3" target="_blank" class="btn_comm btn_2">预订</a>
        </div>
    </div>

    <div class="txt_info basefix">
        <div class="info">
            <h4><a href="http://piao.ctrip.com/dest/t8852.html#ctm_ref=bus_sr_rectic_dl_bn_4" target="_blank">良凤江国家森林公园</a></h4>
            <div class="price"><dfn>¥</dfn><span class="f-ora">12</span> 起</div>
            <div class="score"><span class="f-blue">2</span>/5分</div>
            <p class="f-ora">AAAA</p>
            <p class="addr">广西省南宁市江南区友谊路78号。</p>
            <a href="http://piao.ctrip.com/dest/t8852.html#ctm_ref=bus_sr_rectic_dl_bn_4" target="_blank" class="btn_comm btn_2">预订</a>
        </div>
    </div>

    <div class="txt_info basefix">
        <div class="info">
            <h4><a href="http://piao.ctrip.com/dest/t122741.html#ctm_ref=bus_sr_rectic_dl_bn_5" target="_blank">广西南宁三塘九曲湾温泉</a></h4>
            <div class="price"><dfn>¥</dfn><span class="f-ora">130</span> 起</div>
            <div class="score"><span class="f-blue">3</span>/5分</div>
            <p class="f-ora">AAAA</p>
            <p class="addr">广西壮族自治区南宁市三塘温泉路9号。</p>
            <a href="http://piao.ctrip.com/dest/t122741.html#ctm_ref=bus_sr_rectic_dl_bn_5" target="_blank" class="btn_comm btn_2">预订</a>
        </div>
    </div>

    <div class="txt_info basefix">
        <div class="info">
            <h4><a href="http://piao.ctrip.com/dest/t133954.html#ctm_ref=bus_sr_rectic_dl_bn_6" target="_blank">昆仑关</a></h4>
            <div class="price"><dfn>¥</dfn><span class="f-ora">24</span> 起</div>
            <div class="score"><span class="f-blue">4.3</span>/5分</div>
            <p class="f-ora">AAA</p>
            <p class="addr">广西南宁市宾阳县昆仑镇昆仑关景区。</p>
            <a href="http://piao.ctrip.com/dest/t133954.html#ctm_ref=bus_sr_rectic_dl_bn_6" target="_blank" class="btn_comm btn_2">预订</a>
        </div>
    </div>

    <div class="txt_info basefix">
        <div class="info">
            <h4><a href="http://piao.ctrip.com/dest/t54425.html#ctm_ref=bus_sr_rectic_dl_bn_7" target="_blank">明仕田园</a></h4>
            <div class="price"><dfn>¥</dfn><span class="f-ora">100</span> 起</div>
            <div class="score"><span class="f-blue">4.5</span>/5分</div>
            <p class="f-ora"></p>
            <p class="addr">广西崇左市大新县城53公里的堪圩乡明仕村，距离南宁市180公里。</p>
            <a href="http://piao.ctrip.com/dest/t54425.html#ctm_ref=bus_sr_rectic_dl_bn_7" target="_blank" class="btn_comm btn_2">预订</a>
        </div>
    </div>

    <div class="txt_info basefix">
        <div class="info">
            <h4><a href="http://piao.ctrip.com/dest/t1408930.html#ctm_ref=bus_sr_rectic_dl_bn_8" target="_blank">《锦宴》</a></h4>
            <div class="price"><dfn>¥</dfn><span class="f-ora">140</span> 起</div>
            <div class="score"><span class="f-blue">5</span>/5分</div>
            <p class="f-ora"></p>
            <p class="addr">广西南宁市民族大道延长线106号南宁国际会展中心锦宴剧院。</p>
            <a href="http://piao.ctrip.com/dest/t1408930.html#ctm_ref=bus_sr_rectic_dl_bn_8" target="_blank" class="btn_comm btn_2">预订</a>
        </div>
    </div>

    <div class="txt_info basefix">
        <div class="info">
            <h4><a href="http://piao.ctrip.com/dest/t8846.html#ctm_ref=bus_sr_rectic_dl_bn_9" target="_blank">龙虎山自然保护区</a></h4>
            <div class="price"><dfn>¥</dfn><span class="f-ora">50</span> 起</div>
            <div class="score"><span class="f-blue">4</span>/5分</div>
            <p class="f-ora"></p>
            <p class="addr">广西省南宁市西北面83公里处隆安县境内。</p>
            <a href="http://piao.ctrip.com/dest/t8846.html#ctm_ref=bus_sr_rectic_dl_bn_9" target="_blank" class="btn_comm btn_2">预订</a>
        </div>
    </div>

    <div class="txt_info basefix">
        <div class="info">
            <h4><a href="http://piao.ctrip.com/dest/t20304.html#ctm_ref=bus_sr_rectic_dl_bn_10" target="_blank">花花大世界</a></h4>
            <div class="price"><dfn>¥</dfn><span class="f-ora">35</span> 起</div>
            <div class="score"><span class="f-blue">5</span>/5分</div>
            <p class="f-ora"></p>
            <p class="addr">广西省南宁市武鸣县双桥镇伊岭工业区C—3。</p>
            <a href="http://piao.ctrip.com/dest/t20304.html#ctm_ref=bus_sr_rectic_dl_bn_10" target="_blank" class="btn_comm btn_2">预订</a>
        </div>
    </div>

</div>
<script type="text/template" id="tuijian_entrance_ticket_tmp">
    <h3>南宁门票</h3>
    {{each ticketList}}
    <div class="txt_info basefix">
        <div class="info">
            <h4><a href="${url}" target="_blank">${name}</a></h4>
            <div class="price"><dfn>&yen;</dfn><span class="f-ora">${price}</span> 起</div>
            <div class="score"><span class="f-blue">${score}</span>/5分</div>
            <p class="f-ora">${star}</p>
            <p class="addr">${address}</p>
            <a href="${url}" target="_blank" class="btn_comm btn_2">预订</a>
        </div>
    </div>
    {{/each}}
</script>
<script type="text/javascript">
    jQuery(function(){
        setTimeout(function(){
            // 判断是否有推荐火车票列表或是否有汽车票车次列表
            if (jQuery('#bool_tuijian_train_list').val() == 1 || jQuery('#tb_railway_list').html() != null) {
                getTuijianEntranceTicket();
            }
        }, 1000);
    });

    // 根据城市获取推荐门票数据
    function getTuijianEntranceTicket() {
        cQuery.jsonp('/index.php?param=/data/tuijianEntranceTicket&city=南宁&callback=getTuijianEntranceTicketCallback', {onload: function(){
        }});
    }

    // 根据城市获取推荐门票数据回调函数
    function getTuijianEntranceTicketCallback(data) {
        if (data['code'] == 1) {
            jQuery('#tuijian_entrance_ticket').html(cQuery.tmpl.render(cQuery('#tuijian_entrance_ticket_tmp').html(), {ticketList:data['return']})).show();
        }
    }
</script>			<!--推荐门票end-->
</div>
</div>
<!--右栏结束-->
<div class="railway_info_pack">
<!--时间轴-->
<!--时间轴-->
<div class="r_calendar" id="ulCanlender01">
    <div class="cal_left">
        <a id="canlenderleftbutton01" class="icon_cal_left disable" onclick="CanlenderLeftButtonClick01()"></a>
    </div>
    <ul class="cal_middle"><li style="display:"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-07">10-07<br>周二</a></li><li style="display:"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-08" class="current">10-08<br>周三</a></li><li style="display:"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-09">10-09<br>周四</a></li><li style="display:"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-10">10-10<br>周五</a></li><li style="display:"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-11">10-11<br>周六</a></li><li style="display:"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-12">10-12<br>周日</a></li><li style="display:"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-13">10-13<br>周一</a></li><li style="display:none;"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-14">10-14<br>周二</a></li><li style="display:none;"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-15">10-15<br>周三</a></li><li style="display:none;"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-16">10-16<br>周四</a></li><li style="display:none;"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-17">10-17<br>周五</a></li><li style="display:none;"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-18">10-18<br>周六</a></li><li style="display:none;"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-19">10-19<br>周日</a></li><li style="display:none;"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-20">10-20<br>周一</a></li><li style="display:none;"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-21">10-21<br>周二</a></li><li style="display:none;"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-22">10-22<br>周三</a></li><li style="display:none;"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-23">10-23<br>周四</a></li><li style="display:none;"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-24">10-24<br>周五</a></li><li style="display:none;"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-25">10-25<br>周六</a></li><li style="display:none;"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-26">10-26<br>周日</a></li><li style="display:none;"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-27">10-27<br>周一</a></li><li style="display:none;"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-28">10-28<br>周二</a></li><li style="display:none;"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-29">10-29<br>周三</a></li><li style="display:none;"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-30">10-30<br>周四</a></li><li style="display:none;"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-31">10-31<br>周五</a></li><li style="display:none;"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-11-01">11-01<br>周六</a></li><li style="display:none;"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-11-02">11-02<br>周日</a></li><li style="display:none;"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-11-03">11-03<br>周一</a></li><li style="display:none;"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-11-04">11-04<br>周二</a></li><li style="display:none;"><a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-11-05">11-05<br>周三</a></li>				<div class="cal_right">
        <a id="canlenderrightbutton01" class="icon_cal_right " onclick="CanlenderRightButtonClick01()"></a>
    </div>
    </ul></div>
<script type="text/javascript">
    var halfDays = parseInt('3');
    var Canlender01 = function () {
        this.currentItem = parseInt('1'); //当前选择元素索引
        if(this.currentItem < halfDays)
        {
            this.currentItem = halfDays;
        }
        if(parseInt('29') - this.currentItem < halfDays)
        {
            this.currentItem = parseInt('29') - halfDays;
        }
        this.canlenderArray = GetCanlenderLiArray01(); //所有日期元素数组
        this.rightbutton=document.getElementById('canlenderrightbutton01' );//右按钮
        this.leftbutton=document.getElementById('canlenderleftbutton01');//左按钮

        //左按钮点击
        this.LeftButtonClick=function () {
            if (this.currentItem > halfDays) {
                this.canlenderArray[this.currentItem - halfDays - 1].style.display = "";
                this.canlenderArray[this.currentItem + halfDays].style.display = "none";
                this.currentItem = this.currentItem - 1;
                //控制左按钮和右按钮样式
                this.rightbutton.className = "icon_cal_right";
                if (this.currentItem < halfDays + 1) {
                    this.leftbutton.className = "icon_cal_left disable";
                }
            }
        }

        //右按钮点击
        this.RightButtonClick= function () {
            if ((this.canlenderArray.length - this.currentItem) > halfDays + 1) {
                this.currentItem = this.currentItem + 1;
                this.canlenderArray[this.currentItem - halfDays - 1].style.display = "none";
                this.canlenderArray[this.currentItem + halfDays].style.display = "";
                //console.log(this.canlenderArray);
                //控制左按钮和右按钮样式
                this.leftbutton.className = "icon_cal_left";
                if ((this.canlenderArray.length - this.currentItem) < halfDays + 2) {
                    this.rightbutton.className = "icon_cal_right disable";
                }
            }
        }
    }

    //获取所有的日期元素（不包含左按钮和右按钮）
    function GetCanlenderLiArray01() {
        var canlenderui = document.getElementById("ulCanlender01");
        var canlenderarray = canlenderui.getElementsByTagName("LI");
        var newcanlenderarray=new Array();
        for (var i = 0; i < canlenderarray.length; i++) {
            newcanlenderarray.push(canlenderarray[i]);
        }
        return newcanlenderarray;
    }

    //实例化日期对象
    var canlenderobj01 = new Canlender01();

    //日期左按钮点击
    function CanlenderLeftButtonClick01() {
        canlenderobj01.LeftButtonClick();
    }

    //日期右按钮点击
    function CanlenderRightButtonClick01() {
        canlenderobj01.RightButtonClick();
    }
</script>
<!--时间轴-->			<!--时间轴-->
<!--订单列表-->
<form action="http://bus.ctrip.com/inputPassengers.html" id="toBuyForm" method="get" accept-charset="utf-8">
    <input type="hidden" name="from" id="from_city">
    <input type="hidden" name="to" id="to_city">
    <input type="hidden" name="fromStation" id="from_station">
    <input type="hidden" name="busNo" id="bus_no">
    <input type="hidden" name="date" id="from_date">
</form>
<div class="railway_detail_box">
<div class="info_title">
    <strong>深圳 - 南宁</strong> <span class="base_txtgray">车票信息</span><label id="busCount">89</label><span class="base_txtgray">条</span>
</div>
<div class="search_cate">
    <div class="search_cate_list">
        <span class="search_cate_type">出发时间</span>
        <a href="###" class="no_limit selected f_time_range" id="f_time_range" val="all">不限</a>
        <div class="search_cate_cont">
            <a href="###" class="f_time_range" val="1">上午(06:00-12:00)</a>
            <a href="###" class="f_time_range" val="2">下午(12:00-18:00)</a>
            <a href="###" class="f_time_range" val="3">晚上(18:00-06:00)</a>
        </div>
    </div>
    <div class="search_cate_list">
        <span class="search_cate_type">出发车站</span>
        <a href="###" class="no_limit selected f_from_station" id="f_from_station" val="all">不限</a>
        <div class="search_cate_cont"><a href="###" class="f_from_station" val="深圳汽车客运站">深圳汽车客运站</a><a href="###" class="f_from_station" val="龙华汽车客运站">龙华汽车客运站</a><a href="###" class="f_from_station" val="深圳福田客运站">深圳福田客运站</a><a href="###" class="f_from_station" val="龙岗长途客运站">龙岗长途客运站</a><a href="###" class="f_from_station" val="龙岗坪地客运站">龙岗坪地客运站</a><a href="###" class="f_from_station" val="宝安汽车客运站">宝安汽车客运站</a><a href="###" class="f_from_station" val="沙井中心客运站">沙井中心客运站</a><a href="###" class="f_from_station" val="深圳坪山客运总站">深圳坪山客运总站</a><a href="###" class="f_from_station" val="龙运发坪山客运站">龙运发坪山客运站</a><a href="###" class="f_from_station" val="龙岗汽车客运站">龙岗汽车客运站</a><a href="###" class="f_from_station" val="布吉汽车客运站">布吉汽车客运站</a><a href="###" class="f_from_station" val="宝安福永客运站">宝安福永客运站</a><a href="###" class="f_from_station" val="观澜汽车客运站">观澜汽车客运站</a><a href="###" class="f_from_station" val="宝安客运中心站">宝安客运中心站</a><a href="###" class="f_from_station" val="粤运文锦渡汽车站">粤运文锦渡汽车站</a><a href="###" class="f_from_station" val="侨社汽车客运站">侨社汽车客运站</a><a href="###" class="f_from_station" val="西乡镇汽车客运站">西乡镇汽车客运站</a><a href="###" class="f_from_station" val="深圳北汽车客运站">深圳北汽车客运站</a><a href="###" class="f_from_station" val="深圳蛇口汽车站">深圳蛇口汽车站</a><a href="###" class="f_from_station" val="沙井镇汽车客运站">沙井镇汽车客运站</a></div>
    </div>

</div>
<!--列表开始-->
<table class="tb_railway_list nolayout" width="100%" id="tb_railway_list">
<tbody><tr>
    <th width="195"><a href="###" id="" class="px_up f_sort_list" sort_name="from_time" onclick="return sortObj(this);">发/到时间<b class="icon_arrow_up"></b></a></th>
    <th width="190">发/到站</th>
    <th width="150">车型/车次</th>
    <th width="80" class="price"><a href="###" class="px_up f_sort_list" sort_name="full_price" onclick="return sortObj(this);">票价<b class="icon_arrow_up"></b></a></th>
    <th width="180"></th>
</tr>

<tr class="train_result_list">
    <td><span class="railway_time">08:00</span><br>18:43 左右 今天</td>
    <td><span class="icon_start"></span>深圳汽车客运站<br><span class="icon_end"></span>南宁</td>
    <td>大型卧铺1<br>YFYHPGP0001</td>
    <td class="price">
        <div class="railway_seat">
            <span class="seat_type"></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">210.00</span>
            </div>
        </div>
        <div class="railway_seat mobile_price" style="display:none;">
            <span class="seat_type"><span class="icon_cell"></span></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">0.01</span>
            </div>
        </div>
    </td>
    <td class="text_right">
        <input type="button" class="btn_book goBook" data-params="{from:'深圳',fromStation:'深圳汽车客运站',to:'南宁',busNo:'YFYHPGP0001',date:'2014-10-08',time:'08:00',hashkey:'38f87e10283fc0e2247abcf1a9063dbb'}" value="预订">
        <br><a href="javascript:void(0);" style="display:none;" class="check_more" data-trid="appTR0">查看<b class="icon_show"></b></a><!--  icon展开状态使用类名“icon_show" 收起状态“icon_hide”  -->
    </td>
</tr>

<tr class="appTR" name="appTR" style="display:none" id="appTR0">
    <td colspan="5" class="noborder">
        <div class="mobile_order">
            <div class="summary">
                <div class="title">
                    <i class="ico_phone"></i>
                    <i class="ico_arrow"></i>
                    1分钱购票,每天1000名额<br>赠10元礼品卡<br>免除5元服务费
                </div>
                <div class="type type_one">
                    <strong>方式1</strong>
                    <i class="ico_code"></i>
                    扫描下载<br>客户端预定
                </div>
                <div class="type type_two">
                    <strong>方式2</strong>
                    短信获取下载链接
                    <form>
                        <input type="text" name="txtMobileNo" data-trid="appTR0" tooltip="请输入手机号码" class="input_text txtMobileNo" value="请输入手机号码" style="width:115px;color:#999;">
                        <input type="button" class="btn_prebook" data-sendsms="0" data-trid="appTR0" name="btnSendSMS" value="免费发送">
                        <span class="tips_error wrongAppMobile" style="display:none;"><i class="ico_warn"></i>请输入正确的手机号码</span>
                        <span class="tips_error successAppMobile" style="display:none;"><i class="ico_suc"></i>短信发送成功，请稍后查看</span>
                    </form>
                </div>
            </div>
            <dl class="intro">
                <dt>活动时间 : </dt>
                <dd>2014.7.2 - 2014.9.30</dd>
                <dt>活动说明 :</dt>
                <dd>
                    <ol>
                        <li>1. 每天抽取1000名在携程App中首次注册并当天下单购买汽车票，且出票成功的用户，享1分钱购汽车票优惠。</li>
                        <li>2. 中奖用户将获短信通知，其购票费将在扣除一分钱后，按原支付渠道退回。</li>
                        <li>3. 符合条件但未中奖的用户，将获10元任我游礼品卡，可直接抵扣预付类酒店、团购及团队游产品。</li>
                    </ol>
                </dd>
            </dl>
        </div>
    </td>
</tr>
<tr class="train_result_list">
    <td><span class="railway_time">08:20</span><br>16:20 左右 今天</td>
    <td><span class="icon_start"></span>龙华汽车客运站<br><span class="icon_end"></span>南宁</td>
    <td>大型高一卧<br>LHCZNNN0063</td>
    <td class="price">
        <div class="railway_seat">
            <span class="seat_type"></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">240.00</span>
            </div>
        </div>
        <div class="railway_seat mobile_price" style="display:none;">
            <span class="seat_type"><span class="icon_cell"></span></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">0.01</span>
            </div>
        </div>
    </td>
    <td class="text_right">
        <input type="button" class="btn_book goBook" data-params="{from:'深圳',fromStation:'龙华汽车客运站',to:'南宁',busNo:'LHCZNNN0063',date:'2014-10-08',time:'08:20',hashkey:'43aef8516b6b4554787a86efd615cec2'}" value="预订">
        <br><a href="javascript:void(0);" style="display:none;" class="check_more" data-trid="appTR1">查看<b class="icon_show"></b></a><!--  icon展开状态使用类名“icon_show" 收起状态“icon_hide”  -->
    </td>
</tr>

<tr class="appTR" name="appTR" style="display:none" id="appTR1">
    <td colspan="5" class="noborder">
        <div class="mobile_order">
            <div class="summary">
                <div class="title">
                    <i class="ico_phone"></i>
                    <i class="ico_arrow"></i>
                    1分钱购票,每天1000名额<br>赠10元礼品卡<br>免除5元服务费
                </div>
                <div class="type type_one">
                    <strong>方式1</strong>
                    <i class="ico_code"></i>
                    扫描下载<br>客户端预定
                </div>
                <div class="type type_two">
                    <strong>方式2</strong>
                    短信获取下载链接
                    <form>
                        <input type="text" name="txtMobileNo" data-trid="appTR1" tooltip="请输入手机号码" class="input_text txtMobileNo" value="请输入手机号码" style="width:115px;color:#999;">
                        <input type="button" class="btn_prebook" data-sendsms="0" data-trid="appTR1" name="btnSendSMS" value="免费发送">
                        <span class="tips_error wrongAppMobile" style="display:none;"><i class="ico_warn"></i>请输入正确的手机号码</span>
                        <span class="tips_error successAppMobile" style="display:none;"><i class="ico_suc"></i>短信发送成功，请稍后查看</span>
                    </form>
                </div>
            </div>
            <dl class="intro">
                <dt>活动时间 : </dt>
                <dd>2014.7.2 - 2014.9.30</dd>
                <dt>活动说明 :</dt>
                <dd>
                    <ol>
                        <li>1. 每天抽取1000名在携程App中首次注册并当天下单购买汽车票，且出票成功的用户，享1分钱购汽车票优惠。</li>
                        <li>2. 中奖用户将获短信通知，其购票费将在扣除一分钱后，按原支付渠道退回。</li>
                        <li>3. 符合条件但未中奖的用户，将获10元任我游礼品卡，可直接抵扣预付类酒店、团购及团队游产品。</li>
                    </ol>
                </dd>
            </dl>
        </div>
    </td>
</tr>
<tr class="train_result_list">
    <td><span class="railway_time">09:00</span><br>19:43 左右 今天</td>
    <td><span class="icon_start"></span>深圳汽车客运站<br><span class="icon_end"></span>南宁</td>
    <td>大型高一卧<br>YFYHNNL0036</td>
    <td class="price">
        <div class="railway_seat">
            <span class="seat_type"></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">260.00</span>
            </div>
        </div>
        <div class="railway_seat mobile_price" style="display:none;">
            <span class="seat_type"><span class="icon_cell"></span></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">0.01</span>
            </div>
        </div>
    </td>
    <td class="text_right">
        <input type="button" class="btn_book goBook" data-params="{from:'深圳',fromStation:'深圳汽车客运站',to:'南宁',busNo:'YFYHNNL0036',date:'2014-10-08',time:'09:00',hashkey:'a1105b2c31bbd6f94479959c1e49bb9a'}" value="预订">
        <br><a href="javascript:void(0);" style="display:none;" class="check_more" data-trid="appTR2">查看<b class="icon_show"></b></a><!--  icon展开状态使用类名“icon_show" 收起状态“icon_hide”  -->
    </td>
</tr>

<tr class="appTR" name="appTR" style="display:none" id="appTR2">
    <td colspan="5" class="noborder">
        <div class="mobile_order">
            <div class="summary">
                <div class="title">
                    <i class="ico_phone"></i>
                    <i class="ico_arrow"></i>
                    1分钱购票,每天1000名额<br>赠10元礼品卡<br>免除5元服务费
                </div>
                <div class="type type_one">
                    <strong>方式1</strong>
                    <i class="ico_code"></i>
                    扫描下载<br>客户端预定
                </div>
                <div class="type type_two">
                    <strong>方式2</strong>
                    短信获取下载链接
                    <form>
                        <input type="text" name="txtMobileNo" data-trid="appTR2" tooltip="请输入手机号码" class="input_text txtMobileNo" value="请输入手机号码" style="width:115px;color:#999;">
                        <input type="button" class="btn_prebook" data-sendsms="0" data-trid="appTR2" name="btnSendSMS" value="免费发送">
                        <span class="tips_error wrongAppMobile" style="display:none;"><i class="ico_warn"></i>请输入正确的手机号码</span>
                        <span class="tips_error successAppMobile" style="display:none;"><i class="ico_suc"></i>短信发送成功，请稍后查看</span>
                    </form>
                </div>
            </div>
            <dl class="intro">
                <dt>活动时间 : </dt>
                <dd>2014.7.2 - 2014.9.30</dd>
                <dt>活动说明 :</dt>
                <dd>
                    <ol>
                        <li>1. 每天抽取1000名在携程App中首次注册并当天下单购买汽车票，且出票成功的用户，享1分钱购汽车票优惠。</li>
                        <li>2. 中奖用户将获短信通知，其购票费将在扣除一分钱后，按原支付渠道退回。</li>
                        <li>3. 符合条件但未中奖的用户，将获10元任我游礼品卡，可直接抵扣预付类酒店、团购及团队游产品。</li>
                    </ol>
                </dd>
            </dl>
        </div>
    </td>
</tr>
<tr class="train_result_list">
    <td><span class="railway_time">09:30</span><br>19:39 左右 今天</td>
    <td><span class="icon_start"></span>深圳福田客运站<br><span class="icon_end"></span>南宁</td>
    <td>大型卧铺<br>0958</td>
    <td class="price">
        <div class="railway_seat">
            <span class="seat_type"></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">250.00</span>
            </div>
        </div>
        <div class="railway_seat mobile_price" style="display:none;">
            <span class="seat_type"><span class="icon_cell"></span></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">0.01</span>
            </div>
        </div>
    </td>
    <td class="text_right">
        <input type="button" class="btn_book goBook" data-params="{from:'深圳',fromStation:'深圳福田客运站',to:'南宁',busNo:'0958',date:'2014-10-08',time:'09:30',hashkey:'006bef1d91707ac3df3a33a8eb301ee0'}" value="预订">
        <br><a href="javascript:void(0);" style="display:none;" class="check_more" data-trid="appTR3">查看<b class="icon_show"></b></a><!--  icon展开状态使用类名“icon_show" 收起状态“icon_hide”  -->
    </td>
</tr>

<tr class="appTR" name="appTR" style="display:none" id="appTR3">
    <td colspan="5" class="noborder">
        <div class="mobile_order">
            <div class="summary">
                <div class="title">
                    <i class="ico_phone"></i>
                    <i class="ico_arrow"></i>
                    1分钱购票,每天1000名额<br>赠10元礼品卡<br>免除5元服务费
                </div>
                <div class="type type_one">
                    <strong>方式1</strong>
                    <i class="ico_code"></i>
                    扫描下载<br>客户端预定
                </div>
                <div class="type type_two">
                    <strong>方式2</strong>
                    短信获取下载链接
                    <form>
                        <input type="text" name="txtMobileNo" data-trid="appTR3" tooltip="请输入手机号码" class="input_text txtMobileNo" value="请输入手机号码" style="width:115px;color:#999;">
                        <input type="button" class="btn_prebook" data-sendsms="0" data-trid="appTR3" name="btnSendSMS" value="免费发送">
                        <span class="tips_error wrongAppMobile" style="display:none;"><i class="ico_warn"></i>请输入正确的手机号码</span>
                        <span class="tips_error successAppMobile" style="display:none;"><i class="ico_suc"></i>短信发送成功，请稍后查看</span>
                    </form>
                </div>
            </div>
            <dl class="intro">
                <dt>活动时间 : </dt>
                <dd>2014.7.2 - 2014.9.30</dd>
                <dt>活动说明 :</dt>
                <dd>
                    <ol>
                        <li>1. 每天抽取1000名在携程App中首次注册并当天下单购买汽车票，且出票成功的用户，享1分钱购汽车票优惠。</li>
                        <li>2. 中奖用户将获短信通知，其购票费将在扣除一分钱后，按原支付渠道退回。</li>
                        <li>3. 符合条件但未中奖的用户，将获10元任我游礼品卡，可直接抵扣预付类酒店、团购及团队游产品。</li>
                    </ol>
                </dd>
            </dl>
        </div>
    </td>
</tr>
<tr class="train_result_list">
    <td><span class="railway_time">09:30</span><br>21:51 左右 今天</td>
    <td><span class="icon_start"></span>龙岗长途客运站<br><span class="icon_end"></span>南宁</td>
    <td>大型卧一<br>YFLGNNL0002</td>
    <td class="price">
        <div class="railway_seat">
            <span class="seat_type"></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">200.00</span>
            </div>
        </div>
        <div class="railway_seat mobile_price" style="display:none;">
            <span class="seat_type"><span class="icon_cell"></span></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">0.01</span>
            </div>
        </div>
    </td>
    <td class="text_right">
        <input type="button" class="btn_book goBook" data-params="{from:'深圳',fromStation:'龙岗长途客运站',to:'南宁',busNo:'YFLGNNL0002',date:'2014-10-08',time:'09:30',hashkey:'0f2c226830edc1281cf383090940f02f'}" value="预订">
        <br><a href="javascript:void(0);" style="display:none;" class="check_more" data-trid="appTR4">查看<b class="icon_show"></b></a><!--  icon展开状态使用类名“icon_show" 收起状态“icon_hide”  -->
    </td>
</tr>

<tr class="appTR" name="appTR" style="display:none" id="appTR4">
    <td colspan="5" class="noborder">
        <div class="mobile_order">
            <div class="summary">
                <div class="title">
                    <i class="ico_phone"></i>
                    <i class="ico_arrow"></i>
                    1分钱购票,每天1000名额<br>赠10元礼品卡<br>免除5元服务费
                </div>
                <div class="type type_one">
                    <strong>方式1</strong>
                    <i class="ico_code"></i>
                    扫描下载<br>客户端预定
                </div>
                <div class="type type_two">
                    <strong>方式2</strong>
                    短信获取下载链接
                    <form>
                        <input type="text" name="txtMobileNo" data-trid="appTR4" tooltip="请输入手机号码" class="input_text txtMobileNo" value="请输入手机号码" style="width:115px;color:#999;">
                        <input type="button" class="btn_prebook" data-sendsms="0" data-trid="appTR4" name="btnSendSMS" value="免费发送">
                        <span class="tips_error wrongAppMobile" style="display:none;"><i class="ico_warn"></i>请输入正确的手机号码</span>
                        <span class="tips_error successAppMobile" style="display:none;"><i class="ico_suc"></i>短信发送成功，请稍后查看</span>
                    </form>
                </div>
            </div>
            <dl class="intro">
                <dt>活动时间 : </dt>
                <dd>2014.7.2 - 2014.9.30</dd>
                <dt>活动说明 :</dt>
                <dd>
                    <ol>
                        <li>1. 每天抽取1000名在携程App中首次注册并当天下单购买汽车票，且出票成功的用户，享1分钱购汽车票优惠。</li>
                        <li>2. 中奖用户将获短信通知，其购票费将在扣除一分钱后，按原支付渠道退回。</li>
                        <li>3. 符合条件但未中奖的用户，将获10元任我游礼品卡，可直接抵扣预付类酒店、团购及团队游产品。</li>
                    </ol>
                </dd>
            </dl>
        </div>
    </td>
</tr>
<tr class="train_result_list">
    <td><span class="railway_time">10:00</span><br>16:40 左右 今天</td>
    <td><span class="icon_start"></span>龙岗坪地客运站<br><span class="icon_end"></span>南宁</td>
    <td>大型中级卧<br>PDCZPGP0004</td>
    <td class="price">
        <div class="railway_seat">
            <span class="seat_type"></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">200.00</span>
            </div>
        </div>
        <div class="railway_seat mobile_price" style="display:none;">
            <span class="seat_type"><span class="icon_cell"></span></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">0.01</span>
            </div>
        </div>
    </td>
    <td class="text_right">
        <input type="button" class="btn_book goBook" data-params="{from:'深圳',fromStation:'龙岗坪地客运站',to:'南宁',busNo:'PDCZPGP0004',date:'2014-10-08',time:'10:00',hashkey:'a5dd1e801e7001bbd5d83d274ada0eed'}" value="预订">
        <br><a href="javascript:void(0);" style="display:none;" class="check_more" data-trid="appTR5">查看<b class="icon_show"></b></a><!--  icon展开状态使用类名“icon_show" 收起状态“icon_hide”  -->
    </td>
</tr>

<tr class="appTR" name="appTR" style="display:none" id="appTR5">
    <td colspan="5" class="noborder">
        <div class="mobile_order">
            <div class="summary">
                <div class="title">
                    <i class="ico_phone"></i>
                    <i class="ico_arrow"></i>
                    1分钱购票,每天1000名额<br>赠10元礼品卡<br>免除5元服务费
                </div>
                <div class="type type_one">
                    <strong>方式1</strong>
                    <i class="ico_code"></i>
                    扫描下载<br>客户端预定
                </div>
                <div class="type type_two">
                    <strong>方式2</strong>
                    短信获取下载链接
                    <form>
                        <input type="text" name="txtMobileNo" data-trid="appTR5" tooltip="请输入手机号码" class="input_text txtMobileNo" value="请输入手机号码" style="width:115px;color:#999;">
                        <input type="button" class="btn_prebook" data-sendsms="0" data-trid="appTR5" name="btnSendSMS" value="免费发送">
                        <span class="tips_error wrongAppMobile" style="display:none;"><i class="ico_warn"></i>请输入正确的手机号码</span>
                        <span class="tips_error successAppMobile" style="display:none;"><i class="ico_suc"></i>短信发送成功，请稍后查看</span>
                    </form>
                </div>
            </div>
            <dl class="intro">
                <dt>活动时间 : </dt>
                <dd>2014.7.2 - 2014.9.30</dd>
                <dt>活动说明 :</dt>
                <dd>
                    <ol>
                        <li>1. 每天抽取1000名在携程App中首次注册并当天下单购买汽车票，且出票成功的用户，享1分钱购汽车票优惠。</li>
                        <li>2. 中奖用户将获短信通知，其购票费将在扣除一分钱后，按原支付渠道退回。</li>
                        <li>3. 符合条件但未中奖的用户，将获10元任我游礼品卡，可直接抵扣预付类酒店、团购及团队游产品。</li>
                    </ol>
                </dd>
            </dl>
        </div>
    </td>
</tr>
<tr class="train_result_list">
    <td><span class="railway_time">10:20</span><br>19:00 左右 今天</td>
    <td><span class="icon_start"></span>宝安汽车客运站<br><span class="icon_end"></span>南宁</td>
    <td>大型高一卧<br>YFBANNN0109</td>
    <td class="price">
        <div class="railway_seat">
            <span class="seat_type"></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">260.00</span>
            </div>
        </div>
        <div class="railway_seat mobile_price" style="display:none;">
            <span class="seat_type"><span class="icon_cell"></span></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">0.01</span>
            </div>
        </div>
    </td>
    <td class="text_right">
        <input type="button" class="btn_book goBook" data-params="{from:'深圳',fromStation:'宝安汽车客运站',to:'南宁',busNo:'YFBANNN0109',date:'2014-10-08',time:'10:20',hashkey:'d0077d343f653a6c13a3cf218c0092f6'}" value="预订">
        <br><a href="javascript:void(0);" style="display:none;" class="check_more" data-trid="appTR6">查看<b class="icon_show"></b></a><!--  icon展开状态使用类名“icon_show" 收起状态“icon_hide”  -->
    </td>
</tr>

<tr class="appTR" name="appTR" style="display:none" id="appTR6">
    <td colspan="5" class="noborder">
        <div class="mobile_order">
            <div class="summary">
                <div class="title">
                    <i class="ico_phone"></i>
                    <i class="ico_arrow"></i>
                    1分钱购票,每天1000名额<br>赠10元礼品卡<br>免除5元服务费
                </div>
                <div class="type type_one">
                    <strong>方式1</strong>
                    <i class="ico_code"></i>
                    扫描下载<br>客户端预定
                </div>
                <div class="type type_two">
                    <strong>方式2</strong>
                    短信获取下载链接
                    <form>
                        <input type="text" name="txtMobileNo" data-trid="appTR6" tooltip="请输入手机号码" class="input_text txtMobileNo" value="请输入手机号码" style="width:115px;color:#999;">
                        <input type="button" class="btn_prebook" data-sendsms="0" data-trid="appTR6" name="btnSendSMS" value="免费发送">
                        <span class="tips_error wrongAppMobile" style="display:none;"><i class="ico_warn"></i>请输入正确的手机号码</span>
                        <span class="tips_error successAppMobile" style="display:none;"><i class="ico_suc"></i>短信发送成功，请稍后查看</span>
                    </form>
                </div>
            </div>
            <dl class="intro">
                <dt>活动时间 : </dt>
                <dd>2014.7.2 - 2014.9.30</dd>
                <dt>活动说明 :</dt>
                <dd>
                    <ol>
                        <li>1. 每天抽取1000名在携程App中首次注册并当天下单购买汽车票，且出票成功的用户，享1分钱购汽车票优惠。</li>
                        <li>2. 中奖用户将获短信通知，其购票费将在扣除一分钱后，按原支付渠道退回。</li>
                        <li>3. 符合条件但未中奖的用户，将获10元任我游礼品卡，可直接抵扣预付类酒店、团购及团队游产品。</li>
                    </ol>
                </dd>
            </dl>
        </div>
    </td>
</tr>
<tr class="train_result_list">
    <td><span class="railway_time">10:40</span><br>20:32 左右 今天</td>
    <td><span class="icon_start"></span>沙井中心客运站<br><span class="icon_end"></span>南宁</td>
    <td>高卧铺<br>SJZXNNN0190</td>
    <td class="price">
        <div class="railway_seat">
            <span class="seat_type"></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">200.00</span>
            </div>
        </div>
        <div class="railway_seat mobile_price" style="display:none;">
            <span class="seat_type"><span class="icon_cell"></span></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">0.01</span>
            </div>
        </div>
    </td>
    <td class="text_right">
        <input type="button" class="btn_book goBook" data-params="{from:'深圳',fromStation:'沙井中心客运站',to:'南宁',busNo:'SJZXNNN0190',date:'2014-10-08',time:'10:40',hashkey:'cd25d564d42f95f16f10a16ed54c6207'}" value="预订">
        <br><a href="javascript:void(0);" style="display:none;" class="check_more" data-trid="appTR7">查看<b class="icon_show"></b></a><!--  icon展开状态使用类名“icon_show" 收起状态“icon_hide”  -->
    </td>
</tr>

<tr class="appTR" name="appTR" style="display:none" id="appTR7">
    <td colspan="5" class="noborder">
        <div class="mobile_order">
            <div class="summary">
                <div class="title">
                    <i class="ico_phone"></i>
                    <i class="ico_arrow"></i>
                    1分钱购票,每天1000名额<br>赠10元礼品卡<br>免除5元服务费
                </div>
                <div class="type type_one">
                    <strong>方式1</strong>
                    <i class="ico_code"></i>
                    扫描下载<br>客户端预定
                </div>
                <div class="type type_two">
                    <strong>方式2</strong>
                    短信获取下载链接
                    <form>
                        <input type="text" name="txtMobileNo" data-trid="appTR7" tooltip="请输入手机号码" class="input_text txtMobileNo" value="请输入手机号码" style="width:115px;color:#999;">
                        <input type="button" class="btn_prebook" data-sendsms="0" data-trid="appTR7" name="btnSendSMS" value="免费发送">
                        <span class="tips_error wrongAppMobile" style="display:none;"><i class="ico_warn"></i>请输入正确的手机号码</span>
                        <span class="tips_error successAppMobile" style="display:none;"><i class="ico_suc"></i>短信发送成功，请稍后查看</span>
                    </form>
                </div>
            </div>
            <dl class="intro">
                <dt>活动时间 : </dt>
                <dd>2014.7.2 - 2014.9.30</dd>
                <dt>活动说明 :</dt>
                <dd>
                    <ol>
                        <li>1. 每天抽取1000名在携程App中首次注册并当天下单购买汽车票，且出票成功的用户，享1分钱购汽车票优惠。</li>
                        <li>2. 中奖用户将获短信通知，其购票费将在扣除一分钱后，按原支付渠道退回。</li>
                        <li>3. 符合条件但未中奖的用户，将获10元任我游礼品卡，可直接抵扣预付类酒店、团购及团队游产品。</li>
                    </ol>
                </dd>
            </dl>
        </div>
    </td>
</tr>
<tr class="train_result_list">
    <td><span class="railway_time">10:50</span><br>18:50 左右 今天</td>
    <td><span class="icon_start"></span>龙华汽车客运站<br><span class="icon_end"></span>南宁</td>
    <td>大型高一卧<br>LHCZNNN0099</td>
    <td class="price">
        <div class="railway_seat">
            <span class="seat_type"></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">240.00</span>
            </div>
        </div>
        <div class="railway_seat mobile_price" style="display:none;">
            <span class="seat_type"><span class="icon_cell"></span></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">0.01</span>
            </div>
        </div>
    </td>
    <td class="text_right">
        <input type="button" class="btn_book goBook" data-params="{from:'深圳',fromStation:'龙华汽车客运站',to:'南宁',busNo:'LHCZNNN0099',date:'2014-10-08',time:'10:50',hashkey:'b04884234dac2ab1bfaacbcce3f9a448'}" value="预订">
        <br><a href="javascript:void(0);" style="display:none;" class="check_more" data-trid="appTR8">查看<b class="icon_show"></b></a><!--  icon展开状态使用类名“icon_show" 收起状态“icon_hide”  -->
    </td>
</tr>

<tr class="appTR" name="appTR" style="display:none" id="appTR8">
    <td colspan="5" class="noborder">
        <div class="mobile_order">
            <div class="summary">
                <div class="title">
                    <i class="ico_phone"></i>
                    <i class="ico_arrow"></i>
                    1分钱购票,每天1000名额<br>赠10元礼品卡<br>免除5元服务费
                </div>
                <div class="type type_one">
                    <strong>方式1</strong>
                    <i class="ico_code"></i>
                    扫描下载<br>客户端预定
                </div>
                <div class="type type_two">
                    <strong>方式2</strong>
                    短信获取下载链接
                    <form>
                        <input type="text" name="txtMobileNo" data-trid="appTR8" tooltip="请输入手机号码" class="input_text txtMobileNo" value="请输入手机号码" style="width:115px;color:#999;">
                        <input type="button" class="btn_prebook" data-sendsms="0" data-trid="appTR8" name="btnSendSMS" value="免费发送">
                        <span class="tips_error wrongAppMobile" style="display:none;"><i class="ico_warn"></i>请输入正确的手机号码</span>
                        <span class="tips_error successAppMobile" style="display:none;"><i class="ico_suc"></i>短信发送成功，请稍后查看</span>
                    </form>
                </div>
            </div>
            <dl class="intro">
                <dt>活动时间 : </dt>
                <dd>2014.7.2 - 2014.9.30</dd>
                <dt>活动说明 :</dt>
                <dd>
                    <ol>
                        <li>1. 每天抽取1000名在携程App中首次注册并当天下单购买汽车票，且出票成功的用户，享1分钱购汽车票优惠。</li>
                        <li>2. 中奖用户将获短信通知，其购票费将在扣除一分钱后，按原支付渠道退回。</li>
                        <li>3. 符合条件但未中奖的用户，将获10元任我游礼品卡，可直接抵扣预付类酒店、团购及团队游产品。</li>
                    </ol>
                </dd>
            </dl>
        </div>
    </td>
</tr>
<tr class="train_result_list">
    <td><span class="railway_time">11:40</span><br>00:01 左右 第二天</td>
    <td><span class="icon_start"></span>深圳坪山客运总站<br><span class="icon_end"></span>南宁</td>
    <td>大型高一卧<br>PSZZNNL0001</td>
    <td class="price">
        <div class="railway_seat">
            <span class="seat_type"></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">180.00</span>
            </div>
        </div>
        <div class="railway_seat mobile_price" style="display:none;">
            <span class="seat_type"><span class="icon_cell"></span></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">0.01</span>
            </div>
        </div>
    </td>
    <td class="text_right">
        <input type="button" class="btn_book goBook" data-params="{from:'深圳',fromStation:'深圳坪山客运总站',to:'南宁',busNo:'PSZZNNL0001',date:'2014-10-08',time:'11:40',hashkey:'462d8880af244ececed890b79ad8085f'}" value="预订">
        <br><a href="javascript:void(0);" style="display:none;" class="check_more" data-trid="appTR9">查看<b class="icon_show"></b></a><!--  icon展开状态使用类名“icon_show" 收起状态“icon_hide”  -->
    </td>
</tr>

<tr class="appTR" name="appTR" style="display:none" id="appTR9">
    <td colspan="5" class="noborder">
        <div class="mobile_order">
            <div class="summary">
                <div class="title">
                    <i class="ico_phone"></i>
                    <i class="ico_arrow"></i>
                    1分钱购票,每天1000名额<br>赠10元礼品卡<br>免除5元服务费
                </div>
                <div class="type type_one">
                    <strong>方式1</strong>
                    <i class="ico_code"></i>
                    扫描下载<br>客户端预定
                </div>
                <div class="type type_two">
                    <strong>方式2</strong>
                    短信获取下载链接
                    <form>
                        <input type="text" name="txtMobileNo" data-trid="appTR9" tooltip="请输入手机号码" class="input_text txtMobileNo" value="请输入手机号码" style="width:115px;color:#999;">
                        <input type="button" class="btn_prebook" data-sendsms="0" data-trid="appTR9" name="btnSendSMS" value="免费发送">
                        <span class="tips_error wrongAppMobile" style="display:none;"><i class="ico_warn"></i>请输入正确的手机号码</span>
                        <span class="tips_error successAppMobile" style="display:none;"><i class="ico_suc"></i>短信发送成功，请稍后查看</span>
                    </form>
                </div>
            </div>
            <dl class="intro">
                <dt>活动时间 : </dt>
                <dd>2014.7.2 - 2014.9.30</dd>
                <dt>活动说明 :</dt>
                <dd>
                    <ol>
                        <li>1. 每天抽取1000名在携程App中首次注册并当天下单购买汽车票，且出票成功的用户，享1分钱购汽车票优惠。</li>
                        <li>2. 中奖用户将获短信通知，其购票费将在扣除一分钱后，按原支付渠道退回。</li>
                        <li>3. 符合条件但未中奖的用户，将获10元任我游礼品卡，可直接抵扣预付类酒店、团购及团队游产品。</li>
                    </ol>
                </dd>
            </dl>
        </div>
    </td>
</tr>
<tr class="train_result_list">
    <td><span class="railway_time">12:00</span><br>18:00 左右 今天</td>
    <td><span class="icon_start"></span>龙运发坪山客运站<br><span class="icon_end"></span>南宁</td>
    <td>大型卧一<br>YFPSNNN0006</td>
    <td class="price">
        <div class="railway_seat">
            <span class="seat_type"></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">180.00</span>
            </div>
        </div>
        <div class="railway_seat mobile_price" style="display:none;">
            <span class="seat_type"><span class="icon_cell"></span></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">0.01</span>
            </div>
        </div>
    </td>
    <td class="text_right">
        <input type="button" class="btn_book goBook" data-params="{from:'深圳',fromStation:'龙运发坪山客运站',to:'南宁',busNo:'YFPSNNN0006',date:'2014-10-08',time:'12:00',hashkey:'9f305a72a2ae9e83f2c4fb048b7dfea0'}" value="预订">
        <br><a href="javascript:void(0);" style="display:none;" class="check_more" data-trid="appTR10">查看<b class="icon_show"></b></a><!--  icon展开状态使用类名“icon_show" 收起状态“icon_hide”  -->
    </td>
</tr>

<tr class="appTR" name="appTR" style="display:none" id="appTR10">
    <td colspan="5" class="noborder">
        <div class="mobile_order">
            <div class="summary">
                <div class="title">
                    <i class="ico_phone"></i>
                    <i class="ico_arrow"></i>
                    1分钱购票,每天1000名额<br>赠10元礼品卡<br>免除5元服务费
                </div>
                <div class="type type_one">
                    <strong>方式1</strong>
                    <i class="ico_code"></i>
                    扫描下载<br>客户端预定
                </div>
                <div class="type type_two">
                    <strong>方式2</strong>
                    短信获取下载链接
                    <form>
                        <input type="text" name="txtMobileNo" data-trid="appTR10" tooltip="请输入手机号码" class="input_text txtMobileNo" value="请输入手机号码" style="width:115px;color:#999;">
                        <input type="button" class="btn_prebook" data-sendsms="0" data-trid="appTR10" name="btnSendSMS" value="免费发送">
                        <span class="tips_error wrongAppMobile" style="display:none;"><i class="ico_warn"></i>请输入正确的手机号码</span>
                        <span class="tips_error successAppMobile" style="display:none;"><i class="ico_suc"></i>短信发送成功，请稍后查看</span>
                    </form>
                </div>
            </div>
            <dl class="intro">
                <dt>活动时间 : </dt>
                <dd>2014.7.2 - 2014.9.30</dd>
                <dt>活动说明 :</dt>
                <dd>
                    <ol>
                        <li>1. 每天抽取1000名在携程App中首次注册并当天下单购买汽车票，且出票成功的用户，享1分钱购汽车票优惠。</li>
                        <li>2. 中奖用户将获短信通知，其购票费将在扣除一分钱后，按原支付渠道退回。</li>
                        <li>3. 符合条件但未中奖的用户，将获10元任我游礼品卡，可直接抵扣预付类酒店、团购及团队游产品。</li>
                    </ol>
                </dd>
            </dl>
        </div>
    </td>
</tr>
<tr class="train_result_list">
    <td><span class="railway_time">12:10</span><br>23:55 左右 今天</td>
    <td><span class="icon_start"></span>龙岗坪地客运站<br><span class="icon_end"></span>南宁</td>
    <td>大型普通卧<br>PDCZNNL0002</td>
    <td class="price">
        <div class="railway_seat">
            <span class="seat_type"></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">200.00</span>
            </div>
        </div>
        <div class="railway_seat mobile_price" style="display:none;">
            <span class="seat_type"><span class="icon_cell"></span></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">0.01</span>
            </div>
        </div>
    </td>
    <td class="text_right">
        <input type="button" class="btn_book goBook" data-params="{from:'深圳',fromStation:'龙岗坪地客运站',to:'南宁',busNo:'PDCZNNL0002',date:'2014-10-08',time:'12:10',hashkey:'ebd97f3e05a877c339c5e0df2c2cc45a'}" value="预订">
        <br><a href="javascript:void(0);" style="display:none;" class="check_more" data-trid="appTR11">查看<b class="icon_show"></b></a><!--  icon展开状态使用类名“icon_show" 收起状态“icon_hide”  -->
    </td>
</tr>

<tr class="appTR" name="appTR" style="display:none" id="appTR11">
    <td colspan="5" class="noborder">
        <div class="mobile_order">
            <div class="summary">
                <div class="title">
                    <i class="ico_phone"></i>
                    <i class="ico_arrow"></i>
                    1分钱购票,每天1000名额<br>赠10元礼品卡<br>免除5元服务费
                </div>
                <div class="type type_one">
                    <strong>方式1</strong>
                    <i class="ico_code"></i>
                    扫描下载<br>客户端预定
                </div>
                <div class="type type_two">
                    <strong>方式2</strong>
                    短信获取下载链接
                    <form>
                        <input type="text" name="txtMobileNo" data-trid="appTR11" tooltip="请输入手机号码" class="input_text txtMobileNo" value="请输入手机号码" style="width:115px;color:#999;">
                        <input type="button" class="btn_prebook" data-sendsms="0" data-trid="appTR11" name="btnSendSMS" value="免费发送">
                        <span class="tips_error wrongAppMobile" style="display:none;"><i class="ico_warn"></i>请输入正确的手机号码</span>
                        <span class="tips_error successAppMobile" style="display:none;"><i class="ico_suc"></i>短信发送成功，请稍后查看</span>
                    </form>
                </div>
            </div>
            <dl class="intro">
                <dt>活动时间 : </dt>
                <dd>2014.7.2 - 2014.9.30</dd>
                <dt>活动说明 :</dt>
                <dd>
                    <ol>
                        <li>1. 每天抽取1000名在携程App中首次注册并当天下单购买汽车票，且出票成功的用户，享1分钱购汽车票优惠。</li>
                        <li>2. 中奖用户将获短信通知，其购票费将在扣除一分钱后，按原支付渠道退回。</li>
                        <li>3. 符合条件但未中奖的用户，将获10元任我游礼品卡，可直接抵扣预付类酒店、团购及团队游产品。</li>
                    </ol>
                </dd>
            </dl>
        </div>
    </td>
</tr>
<tr class="train_result_list">
    <td><span class="railway_time">12:30</span><br>22:22 左右 今天</td>
    <td><span class="icon_start"></span>沙井中心客运站<br><span class="icon_end"></span>南宁</td>
    <td>大型客车<br>SJZXNNN0161</td>
    <td class="price">
        <div class="railway_seat">
            <span class="seat_type"></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">220.00</span>
            </div>
        </div>
        <div class="railway_seat mobile_price" style="display:none;">
            <span class="seat_type"><span class="icon_cell"></span></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">0.01</span>
            </div>
        </div>
    </td>
    <td class="text_right">
        <input type="button" class="btn_book goBook" data-params="{from:'深圳',fromStation:'沙井中心客运站',to:'南宁',busNo:'SJZXNNN0161',date:'2014-10-08',time:'12:30',hashkey:'1cf608e9355f1ebc0bfc38df6425562d'}" value="预订">
        <br><a href="javascript:void(0);" style="display:none;" class="check_more" data-trid="appTR12">查看<b class="icon_show"></b></a><!--  icon展开状态使用类名“icon_show" 收起状态“icon_hide”  -->
    </td>
</tr>

<tr class="appTR" name="appTR" style="display:none" id="appTR12">
    <td colspan="5" class="noborder">
        <div class="mobile_order">
            <div class="summary">
                <div class="title">
                    <i class="ico_phone"></i>
                    <i class="ico_arrow"></i>
                    1分钱购票,每天1000名额<br>赠10元礼品卡<br>免除5元服务费
                </div>
                <div class="type type_one">
                    <strong>方式1</strong>
                    <i class="ico_code"></i>
                    扫描下载<br>客户端预定
                </div>
                <div class="type type_two">
                    <strong>方式2</strong>
                    短信获取下载链接
                    <form>
                        <input type="text" name="txtMobileNo" data-trid="appTR12" tooltip="请输入手机号码" class="input_text txtMobileNo" value="请输入手机号码" style="width:115px;color:#999;">
                        <input type="button" class="btn_prebook" data-sendsms="0" data-trid="appTR12" name="btnSendSMS" value="免费发送">
                        <span class="tips_error wrongAppMobile" style="display:none;"><i class="ico_warn"></i>请输入正确的手机号码</span>
                        <span class="tips_error successAppMobile" style="display:none;"><i class="ico_suc"></i>短信发送成功，请稍后查看</span>
                    </form>
                </div>
            </div>
            <dl class="intro">
                <dt>活动时间 : </dt>
                <dd>2014.7.2 - 2014.9.30</dd>
                <dt>活动说明 :</dt>
                <dd>
                    <ol>
                        <li>1. 每天抽取1000名在携程App中首次注册并当天下单购买汽车票，且出票成功的用户，享1分钱购汽车票优惠。</li>
                        <li>2. 中奖用户将获短信通知，其购票费将在扣除一分钱后，按原支付渠道退回。</li>
                        <li>3. 符合条件但未中奖的用户，将获10元任我游礼品卡，可直接抵扣预付类酒店、团购及团队游产品。</li>
                    </ol>
                </dd>
            </dl>
        </div>
    </td>
</tr>
<tr class="train_result_list">
    <td><span class="railway_time">12:30</span><br>00:51 左右 第二天</td>
    <td><span class="icon_start"></span>龙岗长途客运站<br><span class="icon_end"></span>南宁</td>
    <td>大型卧一<br>YFLGNNL5056</td>
    <td class="price">
        <div class="railway_seat">
            <span class="seat_type"></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">180.00</span>
            </div>
        </div>
        <div class="railway_seat mobile_price" style="display:none;">
            <span class="seat_type"><span class="icon_cell"></span></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">0.01</span>
            </div>
        </div>
    </td>
    <td class="text_right">
        <input type="button" class="btn_book goBook" data-params="{from:'深圳',fromStation:'龙岗长途客运站',to:'南宁',busNo:'YFLGNNL5056',date:'2014-10-08',time:'12:30',hashkey:'e6f0a4a4a5900e30edc63486df8a9c94'}" value="预订">
        <br><a href="javascript:void(0);" style="display:none;" class="check_more" data-trid="appTR13">查看<b class="icon_show"></b></a><!--  icon展开状态使用类名“icon_show" 收起状态“icon_hide”  -->
    </td>
</tr>

<tr class="appTR" name="appTR" style="display:none" id="appTR13">
    <td colspan="5" class="noborder">
        <div class="mobile_order">
            <div class="summary">
                <div class="title">
                    <i class="ico_phone"></i>
                    <i class="ico_arrow"></i>
                    1分钱购票,每天1000名额<br>赠10元礼品卡<br>免除5元服务费
                </div>
                <div class="type type_one">
                    <strong>方式1</strong>
                    <i class="ico_code"></i>
                    扫描下载<br>客户端预定
                </div>
                <div class="type type_two">
                    <strong>方式2</strong>
                    短信获取下载链接
                    <form>
                        <input type="text" name="txtMobileNo" data-trid="appTR13" tooltip="请输入手机号码" class="input_text txtMobileNo" value="请输入手机号码" style="width:115px;color:#999;">
                        <input type="button" class="btn_prebook" data-sendsms="0" data-trid="appTR13" name="btnSendSMS" value="免费发送">
                        <span class="tips_error wrongAppMobile" style="display:none;"><i class="ico_warn"></i>请输入正确的手机号码</span>
                        <span class="tips_error successAppMobile" style="display:none;"><i class="ico_suc"></i>短信发送成功，请稍后查看</span>
                    </form>
                </div>
            </div>
            <dl class="intro">
                <dt>活动时间 : </dt>
                <dd>2014.7.2 - 2014.9.30</dd>
                <dt>活动说明 :</dt>
                <dd>
                    <ol>
                        <li>1. 每天抽取1000名在携程App中首次注册并当天下单购买汽车票，且出票成功的用户，享1分钱购汽车票优惠。</li>
                        <li>2. 中奖用户将获短信通知，其购票费将在扣除一分钱后，按原支付渠道退回。</li>
                        <li>3. 符合条件但未中奖的用户，将获10元任我游礼品卡，可直接抵扣预付类酒店、团购及团队游产品。</li>
                    </ol>
                </dd>
            </dl>
        </div>
    </td>
</tr>
<tr class="train_result_list">
    <td><span class="railway_time">13:00</span><br>01:19 左右 第二天</td>
    <td><span class="icon_start"></span>龙岗汽车客运站<br><span class="icon_end"></span>南宁</td>
    <td>大型卧铺高<br>HCLGNNT0067</td>
    <td class="price">
        <div class="railway_seat">
            <span class="seat_type"></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">180.00</span>
            </div>
        </div>
        <div class="railway_seat mobile_price" style="display:none;">
            <span class="seat_type"><span class="icon_cell"></span></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">0.01</span>
            </div>
        </div>
    </td>
    <td class="text_right">
        <input type="button" class="btn_book goBook" data-params="{from:'深圳',fromStation:'龙岗汽车客运站',to:'南宁',busNo:'HCLGNNT0067',date:'2014-10-08',time:'13:00',hashkey:'ef08494671eefea82359fa335a5b7f32'}" value="预订">
        <br><a href="javascript:void(0);" style="display:none;" class="check_more" data-trid="appTR14">查看<b class="icon_show"></b></a><!--  icon展开状态使用类名“icon_show" 收起状态“icon_hide”  -->
    </td>
</tr>

<tr class="appTR" name="appTR" style="display:none" id="appTR14">
    <td colspan="5" class="noborder">
        <div class="mobile_order">
            <div class="summary">
                <div class="title">
                    <i class="ico_phone"></i>
                    <i class="ico_arrow"></i>
                    1分钱购票,每天1000名额<br>赠10元礼品卡<br>免除5元服务费
                </div>
                <div class="type type_one">
                    <strong>方式1</strong>
                    <i class="ico_code"></i>
                    扫描下载<br>客户端预定
                </div>
                <div class="type type_two">
                    <strong>方式2</strong>
                    短信获取下载链接
                    <form>
                        <input type="text" name="txtMobileNo" data-trid="appTR14" tooltip="请输入手机号码" class="input_text txtMobileNo" value="请输入手机号码" style="width:115px;color:#999;">
                        <input type="button" class="btn_prebook" data-sendsms="0" data-trid="appTR14" name="btnSendSMS" value="免费发送">
                        <span class="tips_error wrongAppMobile" style="display:none;"><i class="ico_warn"></i>请输入正确的手机号码</span>
                        <span class="tips_error successAppMobile" style="display:none;"><i class="ico_suc"></i>短信发送成功，请稍后查看</span>
                    </form>
                </div>
            </div>
            <dl class="intro">
                <dt>活动时间 : </dt>
                <dd>2014.7.2 - 2014.9.30</dd>
                <dt>活动说明 :</dt>
                <dd>
                    <ol>
                        <li>1. 每天抽取1000名在携程App中首次注册并当天下单购买汽车票，且出票成功的用户，享1分钱购汽车票优惠。</li>
                        <li>2. 中奖用户将获短信通知，其购票费将在扣除一分钱后，按原支付渠道退回。</li>
                        <li>3. 符合条件但未中奖的用户，将获10元任我游礼品卡，可直接抵扣预付类酒店、团购及团队游产品。</li>
                    </ol>
                </dd>
            </dl>
        </div>
    </td>
</tr>
<tr class="train_result_list">
    <td><span class="railway_time">13:00</span><br>21:20 左右 今天</td>
    <td><span class="icon_start"></span>布吉汽车客运站<br><span class="icon_end"></span>南宁</td>
    <td>大型普通卧10<br>KDBJNNN0001</td>
    <td class="price">
        <div class="railway_seat">
            <span class="seat_type"></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">250.00</span>
            </div>
        </div>
        <div class="railway_seat mobile_price" style="display:none;">
            <span class="seat_type"><span class="icon_cell"></span></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">0.01</span>
            </div>
        </div>
    </td>
    <td class="text_right">
        <input type="button" class="btn_book goBook" data-params="{from:'深圳',fromStation:'布吉汽车客运站',to:'南宁',busNo:'KDBJNNN0001',date:'2014-10-08',time:'13:00',hashkey:'468624003319d4b6534358a597398842'}" value="预订">
        <br><a href="javascript:void(0);" style="display:none;" class="check_more" data-trid="appTR15">查看<b class="icon_show"></b></a><!--  icon展开状态使用类名“icon_show" 收起状态“icon_hide”  -->
    </td>
</tr>

<tr class="appTR" name="appTR" style="display:none" id="appTR15">
    <td colspan="5" class="noborder">
        <div class="mobile_order">
            <div class="summary">
                <div class="title">
                    <i class="ico_phone"></i>
                    <i class="ico_arrow"></i>
                    1分钱购票,每天1000名额<br>赠10元礼品卡<br>免除5元服务费
                </div>
                <div class="type type_one">
                    <strong>方式1</strong>
                    <i class="ico_code"></i>
                    扫描下载<br>客户端预定
                </div>
                <div class="type type_two">
                    <strong>方式2</strong>
                    短信获取下载链接
                    <form>
                        <input type="text" name="txtMobileNo" data-trid="appTR15" tooltip="请输入手机号码" class="input_text txtMobileNo" value="请输入手机号码" style="width:115px;color:#999;">
                        <input type="button" class="btn_prebook" data-sendsms="0" data-trid="appTR15" name="btnSendSMS" value="免费发送">
                        <span class="tips_error wrongAppMobile" style="display:none;"><i class="ico_warn"></i>请输入正确的手机号码</span>
                        <span class="tips_error successAppMobile" style="display:none;"><i class="ico_suc"></i>短信发送成功，请稍后查看</span>
                    </form>
                </div>
            </div>
            <dl class="intro">
                <dt>活动时间 : </dt>
                <dd>2014.7.2 - 2014.9.30</dd>
                <dt>活动说明 :</dt>
                <dd>
                    <ol>
                        <li>1. 每天抽取1000名在携程App中首次注册并当天下单购买汽车票，且出票成功的用户，享1分钱购汽车票优惠。</li>
                        <li>2. 中奖用户将获短信通知，其购票费将在扣除一分钱后，按原支付渠道退回。</li>
                        <li>3. 符合条件但未中奖的用户，将获10元任我游礼品卡，可直接抵扣预付类酒店、团购及团队游产品。</li>
                    </ol>
                </dd>
            </dl>
        </div>
    </td>
</tr>
<tr class="train_result_list">
    <td><span class="railway_time">13:00</span><br>21:00 左右 今天</td>
    <td><span class="icon_start"></span>龙华汽车客运站<br><span class="icon_end"></span>南宁</td>
    <td>大型高一卧<br>LHCZNNN0060</td>
    <td class="price">
        <div class="railway_seat">
            <span class="seat_type"></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">240.00</span>
            </div>
        </div>
        <div class="railway_seat mobile_price" style="display:none;">
            <span class="seat_type"><span class="icon_cell"></span></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">0.01</span>
            </div>
        </div>
    </td>
    <td class="text_right">
        <input type="button" class="btn_book goBook" data-params="{from:'深圳',fromStation:'龙华汽车客运站',to:'南宁',busNo:'LHCZNNN0060',date:'2014-10-08',time:'13:00',hashkey:'f8de04e87e8ad7978f99030e1dd4487d'}" value="预订">
        <br><a href="javascript:void(0);" style="display:none;" class="check_more" data-trid="appTR16">查看<b class="icon_show"></b></a><!--  icon展开状态使用类名“icon_show" 收起状态“icon_hide”  -->
    </td>
</tr>

<tr class="appTR" name="appTR" style="display:none" id="appTR16">
    <td colspan="5" class="noborder">
        <div class="mobile_order">
            <div class="summary">
                <div class="title">
                    <i class="ico_phone"></i>
                    <i class="ico_arrow"></i>
                    1分钱购票,每天1000名额<br>赠10元礼品卡<br>免除5元服务费
                </div>
                <div class="type type_one">
                    <strong>方式1</strong>
                    <i class="ico_code"></i>
                    扫描下载<br>客户端预定
                </div>
                <div class="type type_two">
                    <strong>方式2</strong>
                    短信获取下载链接
                    <form>
                        <input type="text" name="txtMobileNo" data-trid="appTR16" tooltip="请输入手机号码" class="input_text txtMobileNo" value="请输入手机号码" style="width:115px;color:#999;">
                        <input type="button" class="btn_prebook" data-sendsms="0" data-trid="appTR16" name="btnSendSMS" value="免费发送">
                        <span class="tips_error wrongAppMobile" style="display:none;"><i class="ico_warn"></i>请输入正确的手机号码</span>
                        <span class="tips_error successAppMobile" style="display:none;"><i class="ico_suc"></i>短信发送成功，请稍后查看</span>
                    </form>
                </div>
            </div>
            <dl class="intro">
                <dt>活动时间 : </dt>
                <dd>2014.7.2 - 2014.9.30</dd>
                <dt>活动说明 :</dt>
                <dd>
                    <ol>
                        <li>1. 每天抽取1000名在携程App中首次注册并当天下单购买汽车票，且出票成功的用户，享1分钱购汽车票优惠。</li>
                        <li>2. 中奖用户将获短信通知，其购票费将在扣除一分钱后，按原支付渠道退回。</li>
                        <li>3. 符合条件但未中奖的用户，将获10元任我游礼品卡，可直接抵扣预付类酒店、团购及团队游产品。</li>
                    </ol>
                </dd>
            </dl>
        </div>
    </td>
</tr>
<tr class="train_result_list">
    <td><span class="railway_time">13:50</span><br>19:50 左右 今天</td>
    <td><span class="icon_start"></span>沙井中心客运站<br><span class="icon_end"></span>南宁</td>
    <td>大型客车<br>SJZXNNN0218</td>
    <td class="price">
        <div class="railway_seat">
            <span class="seat_type"></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">180.00</span>
            </div>
        </div>
        <div class="railway_seat mobile_price" style="display:none;">
            <span class="seat_type"><span class="icon_cell"></span></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">0.01</span>
            </div>
        </div>
    </td>
    <td class="text_right">
        <input type="button" class="btn_book goBook" data-params="{from:'深圳',fromStation:'沙井中心客运站',to:'南宁',busNo:'SJZXNNN0218',date:'2014-10-08',time:'13:50',hashkey:'0ddd1c9fefb702a633d2ddf59caf382a'}" value="预订">
        <br><a href="javascript:void(0);" style="display:none;" class="check_more" data-trid="appTR17">查看<b class="icon_show"></b></a><!--  icon展开状态使用类名“icon_show" 收起状态“icon_hide”  -->
    </td>
</tr>

<tr class="appTR" name="appTR" style="display:none" id="appTR17">
    <td colspan="5" class="noborder">
        <div class="mobile_order">
            <div class="summary">
                <div class="title">
                    <i class="ico_phone"></i>
                    <i class="ico_arrow"></i>
                    1分钱购票,每天1000名额<br>赠10元礼品卡<br>免除5元服务费
                </div>
                <div class="type type_one">
                    <strong>方式1</strong>
                    <i class="ico_code"></i>
                    扫描下载<br>客户端预定
                </div>
                <div class="type type_two">
                    <strong>方式2</strong>
                    短信获取下载链接
                    <form>
                        <input type="text" name="txtMobileNo" data-trid="appTR17" tooltip="请输入手机号码" class="input_text txtMobileNo" value="请输入手机号码" style="width:115px;color:#999;">
                        <input type="button" class="btn_prebook" data-sendsms="0" data-trid="appTR17" name="btnSendSMS" value="免费发送">
                        <span class="tips_error wrongAppMobile" style="display:none;"><i class="ico_warn"></i>请输入正确的手机号码</span>
                        <span class="tips_error successAppMobile" style="display:none;"><i class="ico_suc"></i>短信发送成功，请稍后查看</span>
                    </form>
                </div>
            </div>
            <dl class="intro">
                <dt>活动时间 : </dt>
                <dd>2014.7.2 - 2014.9.30</dd>
                <dt>活动说明 :</dt>
                <dd>
                    <ol>
                        <li>1. 每天抽取1000名在携程App中首次注册并当天下单购买汽车票，且出票成功的用户，享1分钱购汽车票优惠。</li>
                        <li>2. 中奖用户将获短信通知，其购票费将在扣除一分钱后，按原支付渠道退回。</li>
                        <li>3. 符合条件但未中奖的用户，将获10元任我游礼品卡，可直接抵扣预付类酒店、团购及团队游产品。</li>
                    </ol>
                </dd>
            </dl>
        </div>
    </td>
</tr>
<tr class="train_result_list">
    <td><span class="railway_time">14:00</span><br>20:10 左右 今天</td>
    <td><span class="icon_start"></span>宝安福永客运站<br><span class="icon_end"></span>南宁</td>
    <td>大型高一卧<br>FYCZNNN0036</td>
    <td class="price">
        <div class="railway_seat">
            <span class="seat_type"></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">185.00</span>
            </div>
        </div>
        <div class="railway_seat mobile_price" style="display:none;">
            <span class="seat_type"><span class="icon_cell"></span></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">0.01</span>
            </div>
        </div>
    </td>
    <td class="text_right">
        <input type="button" class="btn_book goBook" data-params="{from:'深圳',fromStation:'宝安福永客运站',to:'南宁',busNo:'FYCZNNN0036',date:'2014-10-08',time:'14:00',hashkey:'39e0a71a4033a1fa841e326d78db629f'}" value="预订">
        <br><a href="javascript:void(0);" style="display:none;" class="check_more" data-trid="appTR18">查看<b class="icon_show"></b></a><!--  icon展开状态使用类名“icon_show" 收起状态“icon_hide”  -->
    </td>
</tr>

<tr class="appTR" name="appTR" style="display:none" id="appTR18">
    <td colspan="5" class="noborder">
        <div class="mobile_order">
            <div class="summary">
                <div class="title">
                    <i class="ico_phone"></i>
                    <i class="ico_arrow"></i>
                    1分钱购票,每天1000名额<br>赠10元礼品卡<br>免除5元服务费
                </div>
                <div class="type type_one">
                    <strong>方式1</strong>
                    <i class="ico_code"></i>
                    扫描下载<br>客户端预定
                </div>
                <div class="type type_two">
                    <strong>方式2</strong>
                    短信获取下载链接
                    <form>
                        <input type="text" name="txtMobileNo" data-trid="appTR18" tooltip="请输入手机号码" class="input_text txtMobileNo" value="请输入手机号码" style="width:115px;color:#999;">
                        <input type="button" class="btn_prebook" data-sendsms="0" data-trid="appTR18" name="btnSendSMS" value="免费发送">
                        <span class="tips_error wrongAppMobile" style="display:none;"><i class="ico_warn"></i>请输入正确的手机号码</span>
                        <span class="tips_error successAppMobile" style="display:none;"><i class="ico_suc"></i>短信发送成功，请稍后查看</span>
                    </form>
                </div>
            </div>
            <dl class="intro">
                <dt>活动时间 : </dt>
                <dd>2014.7.2 - 2014.9.30</dd>
                <dt>活动说明 :</dt>
                <dd>
                    <ol>
                        <li>1. 每天抽取1000名在携程App中首次注册并当天下单购买汽车票，且出票成功的用户，享1分钱购汽车票优惠。</li>
                        <li>2. 中奖用户将获短信通知，其购票费将在扣除一分钱后，按原支付渠道退回。</li>
                        <li>3. 符合条件但未中奖的用户，将获10元任我游礼品卡，可直接抵扣预付类酒店、团购及团队游产品。</li>
                    </ol>
                </dd>
            </dl>
        </div>
    </td>
</tr>
<tr class="train_result_list">
    <td><span class="railway_time">14:00</span><br>02:21 左右 第二天</td>
    <td><span class="icon_start"></span>龙岗长途客运站<br><span class="icon_end"></span>南宁</td>
    <td>大型卧二<br>YFLGNNP0012</td>
    <td class="price">
        <div class="railway_seat">
            <span class="seat_type"></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">200.00</span>
            </div>
        </div>
        <div class="railway_seat mobile_price" style="display:none;">
            <span class="seat_type"><span class="icon_cell"></span></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">0.01</span>
            </div>
        </div>
    </td>
    <td class="text_right">
        <input type="button" class="btn_book goBook" data-params="{from:'深圳',fromStation:'龙岗长途客运站',to:'南宁',busNo:'YFLGNNP0012',date:'2014-10-08',time:'14:00',hashkey:'827c4c34b48b28a3755eade7d7088086'}" value="预订">
        <br><a href="javascript:void(0);" style="display:none;" class="check_more" data-trid="appTR19">查看<b class="icon_show"></b></a><!--  icon展开状态使用类名“icon_show" 收起状态“icon_hide”  -->
    </td>
</tr>

<tr class="appTR" name="appTR" style="display:none" id="appTR19">
    <td colspan="5" class="noborder">
        <div class="mobile_order">
            <div class="summary">
                <div class="title">
                    <i class="ico_phone"></i>
                    <i class="ico_arrow"></i>
                    1分钱购票,每天1000名额<br>赠10元礼品卡<br>免除5元服务费
                </div>
                <div class="type type_one">
                    <strong>方式1</strong>
                    <i class="ico_code"></i>
                    扫描下载<br>客户端预定
                </div>
                <div class="type type_two">
                    <strong>方式2</strong>
                    短信获取下载链接
                    <form>
                        <input type="text" name="txtMobileNo" data-trid="appTR19" tooltip="请输入手机号码" class="input_text txtMobileNo" value="请输入手机号码" style="width:115px;color:#999;">
                        <input type="button" class="btn_prebook" data-sendsms="0" data-trid="appTR19" name="btnSendSMS" value="免费发送">
                        <span class="tips_error wrongAppMobile" style="display:none;"><i class="ico_warn"></i>请输入正确的手机号码</span>
                        <span class="tips_error successAppMobile" style="display:none;"><i class="ico_suc"></i>短信发送成功，请稍后查看</span>
                    </form>
                </div>
            </div>
            <dl class="intro">
                <dt>活动时间 : </dt>
                <dd>2014.7.2 - 2014.9.30</dd>
                <dt>活动说明 :</dt>
                <dd>
                    <ol>
                        <li>1. 每天抽取1000名在携程App中首次注册并当天下单购买汽车票，且出票成功的用户，享1分钱购汽车票优惠。</li>
                        <li>2. 中奖用户将获短信通知，其购票费将在扣除一分钱后，按原支付渠道退回。</li>
                        <li>3. 符合条件但未中奖的用户，将获10元任我游礼品卡，可直接抵扣预付类酒店、团购及团队游产品。</li>
                    </ol>
                </dd>
            </dl>
        </div>
    </td>
</tr>
<tr class="train_result_list">
    <td><span class="railway_time">14:00</span><br>00:43 左右 第二天</td>
    <td><span class="icon_start"></span>深圳汽车客运站<br><span class="icon_end"></span>南宁</td>
    <td>大型卧铺1<br>YFYHNNN0008</td>
    <td class="price">
        <div class="railway_seat">
            <span class="seat_type"></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">180.00</span>
            </div>
        </div>
        <div class="railway_seat mobile_price" style="display:none;">
            <span class="seat_type"><span class="icon_cell"></span></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">0.01</span>
            </div>
        </div>
    </td>
    <td class="text_right">
        <input type="button" class="btn_book goBook" data-params="{from:'深圳',fromStation:'深圳汽车客运站',to:'南宁',busNo:'YFYHNNN0008',date:'2014-10-08',time:'14:00',hashkey:'bb41440b03736fe9ea47838c98040b31'}" value="预订">
        <br><a href="javascript:void(0);" style="display:none;" class="check_more" data-trid="appTR20">查看<b class="icon_show"></b></a><!--  icon展开状态使用类名“icon_show" 收起状态“icon_hide”  -->
    </td>
</tr>

<tr class="appTR" name="appTR" style="display:none" id="appTR20">
    <td colspan="5" class="noborder">
        <div class="mobile_order">
            <div class="summary">
                <div class="title">
                    <i class="ico_phone"></i>
                    <i class="ico_arrow"></i>
                    1分钱购票,每天1000名额<br>赠10元礼品卡<br>免除5元服务费
                </div>
                <div class="type type_one">
                    <strong>方式1</strong>
                    <i class="ico_code"></i>
                    扫描下载<br>客户端预定
                </div>
                <div class="type type_two">
                    <strong>方式2</strong>
                    短信获取下载链接
                    <form>
                        <input type="text" name="txtMobileNo" data-trid="appTR20" tooltip="请输入手机号码" class="input_text txtMobileNo" value="请输入手机号码" style="width:115px;color:#999;">
                        <input type="button" class="btn_prebook" data-sendsms="0" data-trid="appTR20" name="btnSendSMS" value="免费发送">
                        <span class="tips_error wrongAppMobile" style="display:none;"><i class="ico_warn"></i>请输入正确的手机号码</span>
                        <span class="tips_error successAppMobile" style="display:none;"><i class="ico_suc"></i>短信发送成功，请稍后查看</span>
                    </form>
                </div>
            </div>
            <dl class="intro">
                <dt>活动时间 : </dt>
                <dd>2014.7.2 - 2014.9.30</dd>
                <dt>活动说明 :</dt>
                <dd>
                    <ol>
                        <li>1. 每天抽取1000名在携程App中首次注册并当天下单购买汽车票，且出票成功的用户，享1分钱购汽车票优惠。</li>
                        <li>2. 中奖用户将获短信通知，其购票费将在扣除一分钱后，按原支付渠道退回。</li>
                        <li>3. 符合条件但未中奖的用户，将获10元任我游礼品卡，可直接抵扣预付类酒店、团购及团队游产品。</li>
                    </ol>
                </dd>
            </dl>
        </div>
    </td>
</tr>
<tr class="train_result_list">
    <td><span class="railway_time">14:30</span><br>20:30 左右 今天</td>
    <td><span class="icon_start"></span>龙岗汽车客运站<br><span class="icon_end"></span>南宁</td>
    <td>大型卧铺高<br>HCLGNNT0063</td>
    <td class="price">
        <div class="railway_seat">
            <span class="seat_type"></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">180.00</span>
            </div>
        </div>
        <div class="railway_seat mobile_price" style="display:none;">
            <span class="seat_type"><span class="icon_cell"></span></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">0.01</span>
            </div>
        </div>
    </td>
    <td class="text_right">
        <input type="button" class="btn_book goBook" data-params="{from:'深圳',fromStation:'龙岗汽车客运站',to:'南宁',busNo:'HCLGNNT0063',date:'2014-10-08',time:'14:30',hashkey:'ffbd017b759d74c181e78116d7016d30'}" value="预订">
        <br><a href="javascript:void(0);" style="display:none;" class="check_more" data-trid="appTR21">查看<b class="icon_show"></b></a><!--  icon展开状态使用类名“icon_show" 收起状态“icon_hide”  -->
    </td>
</tr>

<tr class="appTR" name="appTR" style="display:none" id="appTR21">
    <td colspan="5" class="noborder">
        <div class="mobile_order">
            <div class="summary">
                <div class="title">
                    <i class="ico_phone"></i>
                    <i class="ico_arrow"></i>
                    1分钱购票,每天1000名额<br>赠10元礼品卡<br>免除5元服务费
                </div>
                <div class="type type_one">
                    <strong>方式1</strong>
                    <i class="ico_code"></i>
                    扫描下载<br>客户端预定
                </div>
                <div class="type type_two">
                    <strong>方式2</strong>
                    短信获取下载链接
                    <form>
                        <input type="text" name="txtMobileNo" data-trid="appTR21" tooltip="请输入手机号码" class="input_text txtMobileNo" value="请输入手机号码" style="width:115px;color:#999;">
                        <input type="button" class="btn_prebook" data-sendsms="0" data-trid="appTR21" name="btnSendSMS" value="免费发送">
                        <span class="tips_error wrongAppMobile" style="display:none;"><i class="ico_warn"></i>请输入正确的手机号码</span>
                        <span class="tips_error successAppMobile" style="display:none;"><i class="ico_suc"></i>短信发送成功，请稍后查看</span>
                    </form>
                </div>
            </div>
            <dl class="intro">
                <dt>活动时间 : </dt>
                <dd>2014.7.2 - 2014.9.30</dd>
                <dt>活动说明 :</dt>
                <dd>
                    <ol>
                        <li>1. 每天抽取1000名在携程App中首次注册并当天下单购买汽车票，且出票成功的用户，享1分钱购汽车票优惠。</li>
                        <li>2. 中奖用户将获短信通知，其购票费将在扣除一分钱后，按原支付渠道退回。</li>
                        <li>3. 符合条件但未中奖的用户，将获10元任我游礼品卡，可直接抵扣预付类酒店、团购及团队游产品。</li>
                    </ol>
                </dd>
            </dl>
        </div>
    </td>
</tr>
<tr class="train_result_list">
    <td><span class="railway_time">14:30</span><br>22:30 左右 今天</td>
    <td><span class="icon_start"></span>龙华汽车客运站<br><span class="icon_end"></span>南宁</td>
    <td>大型高一卧<br>LHCZJXP0007</td>
    <td class="price">
        <div class="railway_seat">
            <span class="seat_type"></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">240.00</span>
            </div>
        </div>
        <div class="railway_seat mobile_price" style="display:none;">
            <span class="seat_type"><span class="icon_cell"></span></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">0.01</span>
            </div>
        </div>
    </td>
    <td class="text_right">
        <input type="button" class="btn_book goBook" data-params="{from:'深圳',fromStation:'龙华汽车客运站',to:'南宁',busNo:'LHCZJXP0007',date:'2014-10-08',time:'14:30',hashkey:'fbc2d45337ded424fec6834dcbf1876f'}" value="预订">
        <br><a href="javascript:void(0);" style="display:none;" class="check_more" data-trid="appTR22">查看<b class="icon_show"></b></a><!--  icon展开状态使用类名“icon_show" 收起状态“icon_hide”  -->
    </td>
</tr>

<tr class="appTR" name="appTR" style="display:none" id="appTR22">
    <td colspan="5" class="noborder">
        <div class="mobile_order">
            <div class="summary">
                <div class="title">
                    <i class="ico_phone"></i>
                    <i class="ico_arrow"></i>
                    1分钱购票,每天1000名额<br>赠10元礼品卡<br>免除5元服务费
                </div>
                <div class="type type_one">
                    <strong>方式1</strong>
                    <i class="ico_code"></i>
                    扫描下载<br>客户端预定
                </div>
                <div class="type type_two">
                    <strong>方式2</strong>
                    短信获取下载链接
                    <form>
                        <input type="text" name="txtMobileNo" data-trid="appTR22" tooltip="请输入手机号码" class="input_text txtMobileNo" value="请输入手机号码" style="width:115px;color:#999;">
                        <input type="button" class="btn_prebook" data-sendsms="0" data-trid="appTR22" name="btnSendSMS" value="免费发送">
                        <span class="tips_error wrongAppMobile" style="display:none;"><i class="ico_warn"></i>请输入正确的手机号码</span>
                        <span class="tips_error successAppMobile" style="display:none;"><i class="ico_suc"></i>短信发送成功，请稍后查看</span>
                    </form>
                </div>
            </div>
            <dl class="intro">
                <dt>活动时间 : </dt>
                <dd>2014.7.2 - 2014.9.30</dd>
                <dt>活动说明 :</dt>
                <dd>
                    <ol>
                        <li>1. 每天抽取1000名在携程App中首次注册并当天下单购买汽车票，且出票成功的用户，享1分钱购汽车票优惠。</li>
                        <li>2. 中奖用户将获短信通知，其购票费将在扣除一分钱后，按原支付渠道退回。</li>
                        <li>3. 符合条件但未中奖的用户，将获10元任我游礼品卡，可直接抵扣预付类酒店、团购及团队游产品。</li>
                    </ol>
                </dd>
            </dl>
        </div>
    </td>
</tr>
<tr class="train_result_list">
    <td><span class="railway_time">14:40</span><br>01:04 左右 第二天</td>
    <td><span class="icon_start"></span>观澜汽车客运站<br><span class="icon_end"></span>南宁</td>
    <td>高一卧<br>BLGLNNN0037</td>
    <td class="price">
        <div class="railway_seat">
            <span class="seat_type"></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">220.00</span>
            </div>
        </div>
        <div class="railway_seat mobile_price" style="display:none;">
            <span class="seat_type"><span class="icon_cell"></span></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">0.01</span>
            </div>
        </div>
    </td>
    <td class="text_right">
        <input type="button" class="btn_book goBook" data-params="{from:'深圳',fromStation:'观澜汽车客运站',to:'南宁',busNo:'BLGLNNN0037',date:'2014-10-08',time:'14:40',hashkey:'8612f936d0ea5bf89cc99e3476e4c46e'}" value="预订">
        <br><a href="javascript:void(0);" style="display:none;" class="check_more" data-trid="appTR23">查看<b class="icon_show"></b></a><!--  icon展开状态使用类名“icon_show" 收起状态“icon_hide”  -->
    </td>
</tr>

<tr class="appTR" name="appTR" style="display:none" id="appTR23">
    <td colspan="5" class="noborder">
        <div class="mobile_order">
            <div class="summary">
                <div class="title">
                    <i class="ico_phone"></i>
                    <i class="ico_arrow"></i>
                    1分钱购票,每天1000名额<br>赠10元礼品卡<br>免除5元服务费
                </div>
                <div class="type type_one">
                    <strong>方式1</strong>
                    <i class="ico_code"></i>
                    扫描下载<br>客户端预定
                </div>
                <div class="type type_two">
                    <strong>方式2</strong>
                    短信获取下载链接
                    <form>
                        <input type="text" name="txtMobileNo" data-trid="appTR23" tooltip="请输入手机号码" class="input_text txtMobileNo" value="请输入手机号码" style="width:115px;color:#999;">
                        <input type="button" class="btn_prebook" data-sendsms="0" data-trid="appTR23" name="btnSendSMS" value="免费发送">
                        <span class="tips_error wrongAppMobile" style="display:none;"><i class="ico_warn"></i>请输入正确的手机号码</span>
                        <span class="tips_error successAppMobile" style="display:none;"><i class="ico_suc"></i>短信发送成功，请稍后查看</span>
                    </form>
                </div>
            </div>
            <dl class="intro">
                <dt>活动时间 : </dt>
                <dd>2014.7.2 - 2014.9.30</dd>
                <dt>活动说明 :</dt>
                <dd>
                    <ol>
                        <li>1. 每天抽取1000名在携程App中首次注册并当天下单购买汽车票，且出票成功的用户，享1分钱购汽车票优惠。</li>
                        <li>2. 中奖用户将获短信通知，其购票费将在扣除一分钱后，按原支付渠道退回。</li>
                        <li>3. 符合条件但未中奖的用户，将获10元任我游礼品卡，可直接抵扣预付类酒店、团购及团队游产品。</li>
                    </ol>
                </dd>
            </dl>
        </div>
    </td>
</tr>
<tr class="train_result_list">
    <td><span class="railway_time">15:10</span><br>01:38 左右 第二天</td>
    <td><span class="icon_start"></span>宝安客运中心站<br><span class="icon_end"></span>南宁</td>
    <td>大型高一卧<br>BLKYNNN0008</td>
    <td class="price">
        <div class="railway_seat">
            <span class="seat_type"></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">210.00</span>
            </div>
        </div>
        <div class="railway_seat mobile_price" style="display:none;">
            <span class="seat_type"><span class="icon_cell"></span></span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">0.01</span>
            </div>
        </div>
    </td>
    <td class="text_right">
        <input type="button" class="btn_book goBook" data-params="{from:'深圳',fromStation:'宝安客运中心站',to:'南宁',busNo:'BLKYNNN0008',date:'2014-10-08',time:'15:10',hashkey:'bd3ec50d21774f485a4e8e96553013a3'}" value="预订">
        <br><a href="javascript:void(0);" style="display:none;" class="check_more" data-trid="appTR24">查看<b class="icon_show"></b></a><!--  icon展开状态使用类名“icon_show" 收起状态“icon_hide”  -->
    </td>
</tr>

<tr class="appTR" name="appTR" style="display:none" id="appTR24">
    <td colspan="5" class="noborder">
        <div class="mobile_order">
            <div class="summary">
                <div class="title">
                    <i class="ico_phone"></i>
                    <i class="ico_arrow"></i>
                    1分钱购票,每天1000名额<br>赠10元礼品卡<br>免除5元服务费
                </div>
                <div class="type type_one">
                    <strong>方式1</strong>
                    <i class="ico_code"></i>
                    扫描下载<br>客户端预定
                </div>
                <div class="type type_two">
                    <strong>方式2</strong>
                    短信获取下载链接
                    <form>
                        <input type="text" name="txtMobileNo" data-trid="appTR24" tooltip="请输入手机号码" class="input_text txtMobileNo" value="请输入手机号码" style="width:115px;color:#999;">
                        <input type="button" class="btn_prebook" data-sendsms="0" data-trid="appTR24" name="btnSendSMS" value="免费发送">
                        <span class="tips_error wrongAppMobile" style="display:none;"><i class="ico_warn"></i>请输入正确的手机号码</span>
                        <span class="tips_error successAppMobile" style="display:none;"><i class="ico_suc"></i>短信发送成功，请稍后查看</span>
                    </form>
                </div>
            </div>
            <dl class="intro">
                <dt>活动时间 : </dt>
                <dd>2014.7.2 - 2014.9.30</dd>
                <dt>活动说明 :</dt>
                <dd>
                    <ol>
                        <li>1. 每天抽取1000名在携程App中首次注册并当天下单购买汽车票，且出票成功的用户，享1分钱购汽车票优惠。</li>
                        <li>2. 中奖用户将获短信通知，其购票费将在扣除一分钱后，按原支付渠道退回。</li>
                        <li>3. 符合条件但未中奖的用户，将获10元任我游礼品卡，可直接抵扣预付类酒店、团购及团队游产品。</li>
                    </ol>
                </dd>
            </dl>
        </div>
    </td>
</tr>
<script type="text/javascript">
    jQuery('.check_more').live('click', function(){
        var tr = jQuery('#' + jQuery(this).attr('data-trid'));

        if (tr.is(':hidden')) {
            // 展开
            tr.show();
            $(this).html('查看<b class="icon_hide"></b>');
        } else {
            // 收起
            tr.hide();
            $(this).html('查看<b class="icon_show"></b>');
        }
    });

    function checkMobile(txtMobileNo) {
        var tr = jQuery('#' + txtMobileNo.attr('data-trid'));
        var wrongAppMobile = tr.find('.wrongAppMobile');

        if (txtMobileNo.val() == '' || txtMobileNo.val() == txtMobileNo.attr("tooltip")) {
            txtMobileNo.val(txtMobileNo.attr("tooltip")).css("color", "#999");
            if (!txtMobileNo.hasClass("input_error"))
                txtMobileNo.addClass("input_error");
            wrongAppMobile.show();
            return false;
        }

        if (!/^1[34578]\d{9}$/.test(txtMobileNo.val())) {
            wrongAppMobile.show();
            if (!txtMobileNo.hasClass("input_error"))
                txtMobileNo.addClass("input_error");
            return false;
        }

        txtMobileNo.removeClass("input_error");
        wrongAppMobile.hide();
        return true;
    }

    jQuery('.btn_prebook').live('mousedown', function(){
        var tr = jQuery('#' + jQuery(this).attr('data-trid'));
        var txtMobileNo = tr.find('.txtMobileNo');
        var self = jQuery(this);

        if (self.attr('data-sendsms') == 1) {
            return;
        }

        if (!checkMobile(txtMobileNo)) {
            return;
        }

        self.attr('data-sendsms', 1);

        var successAppMobile = tr.find('.successAppMobile');
        successAppMobile.show();
        self.addClass("btn_dis_prebook").val("(" + 60 + "秒后)重新获取短信");
        ajaxSendAppSMS(txtMobileNo.val());

        var second = 59;
        var t = setInterval(function () {
            if (second > 0) {
                self.val("(" + second + "秒后)重新获取短信");
                cQuery.pageStorage.set('afterSeconds', second);
            } else {
                cQuery.pageStorage.set('afterSeconds', 0);
                self.removeClass("btn_dis_prebook").val("免费获取").attr('data-sendsms', 0);
                successAppMobile.hide();
            }
            second--;
            if (second < 0)
                clearInterval(t);
        }, 1000);
    });

    function ajaxSendAppSMS(mobile) {
        var url = 'http://qiche.tieyou.com/index.php?param=/ajax/sendBusActivityPushAppSms&mobile='+ mobile +'&ref=ctrip&jsoncallback=?';
        jQuery.getJSON(
                url,
                function(data) {

                }
        );
    }

    jQuery('.txtMobileNo').live('focus', function(){
        jQuery(this).css("color", "#000");
        if (jQuery(this).val() == jQuery(this).attr("tooltip")) {
            jQuery(this).val('');
        }
    });

    jQuery('.txtMobileNo').live('blur', function(){
        checkMobile(jQuery(this));
    });
</script>				</tbody></table>
<div id="tuijian_train_html" style="display:none;">
    <td class="f_td">
        <div class="r_box">
            <span class="r_title z_up f-ora"><i class="i-prop i2"></i>火车票</span>
            <span class="railway_time">15:25</span>
            <br>
            06:18+1
        </div>
    </td>
    <td><span class="icon_start"></span>




        深圳东
























        <br><span class="icon_pass"></span>








        南宁




















    </td>
    <td><span class="f-bold">K1208/K1205</span></td>
    <td class="price">



























        <div class="railway_seat">
            <span class="seat_type">硬座</span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">124</span>
            </div>
        </div>

        <div class="railway_seat">
            <span class="seat_type">硬卧</span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">230</span>
            </div>
        </div>

        <div class="railway_seat">
            <span class="seat_type">软卧</span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">351</span>
            </div>
        </div>

        <div class="railway_seat">
            <span class="seat_type">无座</span>
            <div class="price_r">
                <dfn>¥</dfn><span class="base_price">124</span>
            </div>
        </div>



    </td>
    <td class="text_right">




























        <div class="railway_btn">

            <input type="button" data-params="{options:{tid:17333,did:3125,aid:909,date:&quot;2014-10-08&quot;,dname:&quot;&quot;,aname:&quot;&quot;,dpy:&quot;shenzhendong&quot;,apy:&quot;nanning&quot;,filter:0,number:&quot;&quot;,seatid:201}}" class="btn_book buy_train_ticket" value="预订">


        </div>

        <div class="railway_btn">

            <input type="button" data-params="{options:{tid:17333,did:3125,aid:909,date:&quot;2014-10-08&quot;,dname:&quot;&quot;,aname:&quot;&quot;,dpy:&quot;shenzhendong&quot;,apy:&quot;nanning&quot;,filter:0,number:&quot;&quot;,seatid:224}}" class="btn_book buy_train_ticket" value="预订">


        </div>

        <div class="railway_btn">

            <input type="button" class="btn_book disable" value="预订">


        </div>

        <div class="railway_btn">

            <input type="button" class="btn_book disable" value="预订">


            <a href="http://trains.ctrip.com/TrainBooking/Search.aspx?from=shenzhen&amp;to=nanning&amp;day=2#ctm_ref=bus_sr_rectra_sr_txt_df" target="_blank" style="padding-right:5px;position: absolute; right: 10px; bottom: 4px;">更多深圳到南宁火车票&gt;&gt;</a>

        </div>



    </td>
</div>
<form id="jump_form" target="_blank">
</form>
<input type="hidden" id="min_price" value="210.00">


				<div class="block_alert">
    <b></b> 到达时间为预估时间，实际到达时间可能会因为路况和天气等因素影响而变动。
</div>
<div class="date_flip">
    <a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-07"><b class="icon_arrow_left"></b>(10/07)前一天</a>
    <a href="/busList.html?from=深圳&amp;to=南宁&amp;date=2014-10-09">后一天(10/09)<b class="icon_arrow_right"></b></a>
</div>
<script type="text/javascript">
    function doPaging(obj) {
        cQuery("#showPage a").removeClass("current");
        cQuery(obj).addClass("current");
        cQuery("#page").value(obj.innerHTML);
        ajaxGetBusList();
    }
</script>
<input type="hidden" id="page" value="1">
<div class="page_box">
    <div class="c_page">
        <div class="c_page_list layoutfix" id="showPage">
            <a href="###" class="current" data-page="1" onclick="">1</a>

            <a href="###" data-page="2" onclick="">2</a>

            <a href="###" data-page="3" onclick="">3</a>

            <a href="###" data-page="4" onclick="">4</a>
        </div>
        <script type="text/template" id="page_template">


        </script>
        <script type="text/javascript">
            displayListPage('4', '1');
        </script>
    </div>
</div>
<div class="no_result_alert" id="no_result" style="display:none;">
    <b></b>
    <p style="font:22px 'Microsoft Yahei';">很抱歉，该条件下无车次信息。</p>
    <p style="margin-bottom:20px;">您可以放宽筛选条件或查询其他日期的车次信息。 </p>
</div>
<!--列表结束-->
</div>
</div>

</div>
</div>
<jsp:include page='footer.jsp'/>

</body>

</html>
