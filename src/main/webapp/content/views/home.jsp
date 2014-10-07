<%--
  Created by IntelliJ IDEA.
  User: apple
  Date: 10/7/14
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>

<%@page language="java" contentType="text/html; charset=GB2312" pageEncoding="GB2312"%>
<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html charset=GB2312">
    <link rel="stylesheet" href="content/static/css/travel/home/home.css" />
</head>
<jsp:include page='header.jsp'/>
<jsp:include page='navbar.jsp'/>
<body marginwidth="0" marginheight="0">
<div class="base_top">
<iframe id="iframeCrmAds" scrolling="no" frameborder="0" style="width: 100%; height: 360px;" marginwidth="0" marginheight="0" src="http://bus.ctrip.com/banner.html"></iframe>
<form action="http://bus.ctrip.com/busList.html" id="searchBusForm" method="get" accept-charset="utf-8">
    <div class="s_wrapper">
        <div class="s_box">
            <div class="search_box_tab">
                <span class="search_for_b"><b></b>汽车票查询</span>
            </div>
            <div id="searchBox1" class="search_box">
                <div class="search_form">
                    <table width="100%" cellspacing="0" cellpadding="0" class="searchbox">
                        <tbody><tr>
                            <th>出发城市</th>
                            <td><input type="text" tabindex="1" name="from" id="notice01" class="input_txt" autocomplete="on" _cqnotice="中文/拼音/首字母"></td>
                        </tr>
                        <tr>
                            <th>到达城市</th>
                            <td><input type="text" tabindex="2" name="to" id="notice02" class="input_txt" autocomplete="on" _cqnotice="中文/拼音/首字母"></td>
                        </tr>
                        <tr>
                            <th>出发日期</th>
                            <td><input type="text" tabindex="3" name="date" value="2014-10-08" id="dateObj" class="input_txt" readonly="readonly" placeholder="yyyy-mm-dd" _cqnotice="yyyy-mm-dd"></td>
                        </tr>
                        </tbody></table>
                    <div class="search_btn_box">
                        <input type="button" value="搜 索" id="searchBusTicket" class="btn_search">
                    </div>
                </div>
            </div>
        </div>
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

    // 判断是否有历史搜索
    var bus_from = cQuery.storage.get('bus_from');
    var bus_to = cQuery.storage.get('bus_to');
    if (bus_from && bus_to) {
        cQuery('#notice01').value(bus_from);
        cQuery('#notice02').value(bus_to);
    }

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

            cQuery.storage.set('bus_from', notice01.value().trim());
            cQuery.storage.set('bus_to', notice02.value().trim());

            document.getElementById("searchBusForm").submit();
            return false;
        });

        cQuery("#searchBusShike").bind('click', function (e) {
            var notice01 = cQuery("#notice03"),
                    notice02 = cQuery("#notice04");

            if (notice01.value().trim() == "中文/拼音/首字母" || notice01.value().trim() == "") {
                validateShow(notice01, "请输入出发城市名称");
                return false;
            } else if (notice02.value().trim() == "中文/拼音/首字母" || notice02.value().trim() == "") {
                validateShow(notice02, "请输入到达城市名称");
                return false;
            }

            document.getElementById('searchBusShikeForm').submit();
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
</div>
</body>
<jsp:include page='footer.jsp'/>
</html>
