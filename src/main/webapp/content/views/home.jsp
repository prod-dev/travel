<%--
  Created by IntelliJ IDEA.
  User: Bright Huang
  Date: 10/7/14
  Time: 10:29
  To change this template use File | Settings | File Templates.
--%>
<%@page language="java" contentType="text/html; charset=GB2312" pageEncoding="GB2312" %>
<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html charset=GB2312">
    <link rel="stylesheet" href="content/static/css/bootstrap-3.2.0/bootstrap.min.css"/>
    <link rel="stylesheet" href="content/static/css/bootstrap-datepicker-1.3.0/datepicker.css"/>
    <link rel="stylesheet" href="content/static/css/travel/home/home.css"/>
    <link rel="stylesheet" href="content/static/css/travel/home/citypicker.css"/>
</head>
<jsp:include page='header.jsp'/>
<jsp:include page='navbar.jsp'/>


<body marginwidth="0" marginheight="0">
<div class="base_top">
<iframe id="iframeCrmAds" scrolling="no" frameborder="0" style="width: 100%; height: 360px;" marginwidth="0"
        marginheight="0" src="http://bus.ctrip.com/banner.html"></iframe>
<form action="http://bus.ctrip.com/busList.html" id="searchBusForm" method="get" accept-charset="utf-8">
    <div class="s_wrapper">
        <div class="s_box">
            <div class="search_box_tab">
                <span class="search_for_b"><b></b>����Ʊ��ѯ</span>
            </div>
            <div id="searchBox1" class="search_box">
                <div class="search_form">
                    <table width="100%" cellspacing="0" cellpadding="0" class="searchbox">
                        <tbody>
                        <tr>
                            <th>��������</th>
                            <td><input type="text" tabindex="1" name="from" id="notice01" class="input_txt"
                                       autocomplete="on" _cqnotice="����/ƴ��/����ĸ"></td>
                        </tr>
                        <tr>
                            <th>�������</th>
                            <td><input type="text" tabindex="2" name="to" id="notice02" class="input_txt"
                                       autocomplete="on" _cqnotice="����/ƴ��/����ĸ"></td>
                        </tr>
                        <tr>
                            <th>��������</th>
                            <td><input type="text" tabindex="3" name="date" value="" id="dateObj"
                                       class="input_txt" readonly="readonly" placeholder="yyyy-mm-dd"
                                       _cqnotice="yyyy-mm-dd">
                            </td>
                        </tr>
                        </tbody>
                    </table>
                    <div class="search_btn_box">
                        <input type="button" value="�� ��" id="searchBusTicket" class="btn_search">
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>


<div style="position: absolute; z-index: 2000; top: 320px; left: 480px;" winstyle="hot">
    <div style="width:430px;display:block " class="com_hotrenew">
        <div style="width:100%;">
            <div class="ac_title"><span>֧������/ƴ��/��ƴ����</span></div>
            <ul method="hotTab" class="AbcSearchnew clx">
                <li method="liHotTab" index="0" class="action">����</li>
                <li method="liHotTab" index="1">ABCD</li>
                <li method="liHotTab" index="2">EFGHJ</li>
                <li method="liHotTab" index="3">KLMN</li>
                <li method="liHotTab" index="4" class="">PQRSTW</li>
                <li method="liHotTab" index="5">XYZ</li>
            </ul>
            <ul method="hotData" class="popcitylistnew" style="">
                <li method="liHotData" data="0|0" title="����" class="ac_even ac_over">����</li>
                <li method="liHotData" data="0|1" title="�Ϻ�" class="ac_odd">�Ϻ�</li>
                <li method="liHotData" data="0|2" title="���" class="ac_even">���</li>
                <li method="liHotData" data="0|3" title="����" class="ac_odd">����</li>
                <li method="liHotData" data="0|4" title="��ɳ" class="ac_even">��ɳ</li>
                <li method="liHotData" data="0|5" title="����" class="ac_odd">����</li>
                <li method="liHotData" data="0|6" title="�ɶ�" class="ac_even">�ɶ�</li>
                <li method="liHotData" data="0|7" title="����" class="ac_odd">����</li>
                <li method="liHotData" data="0|8" title="����" class="ac_even">����</li>
                <li method="liHotData" data="0|9" title="����" class="ac_odd">����</li>
                <li method="liHotData" data="0|10" title="���ͺ���" class="ac_even">���ͺ���</li>
                <li method="liHotData" data="0|11" title="������" class="ac_odd">������</li>
                <li method="liHotData" data="0|12" title="�Ϸ�" class="ac_even">�Ϸ�</li>
                <li method="liHotData" data="0|13" title="����" class="ac_odd">����</li>
                <li method="liHotData" data="0|14" title="����" class="ac_even">����</li>
                <li method="liHotData" data="0|15" title="����" class="ac_odd">����</li>
                <li method="liHotData" data="0|16" title="����" class="ac_even">����</li>
                <li method="liHotData" data="0|17" title="����" class="ac_odd">����</li>
                <li method="liHotData" data="0|18" title="����" class="ac_even">����</li>
                <li method="liHotData" data="0|19" title="����" class="ac_odd">����</li>
                <li method="liHotData" data="0|20" title="�Ͼ�" class="ac_even">�Ͼ�</li>
                <li method="liHotData" data="0|21" title="�ϲ�" class="ac_odd">�ϲ�</li>
                <li method="liHotData" data="0|22" title="����" class="ac_even">����</li>
                <li method="liHotData" data="0|23" title="ʯ��ׯ" class="ac_odd">ʯ��ׯ</li>
                <li method="liHotData" data="0|24" title="̫ԭ" class="ac_even">̫ԭ</li>
                <li method="liHotData" data="0|25" title="��³ľ��" class="ac_odd">��³ľ��</li>
                <li method="liHotData" data="0|26" title="�人" class="ac_even">�人</li>
                <li method="liHotData" data="0|27" title="������" class="ac_odd">������</li>
                <li method="liHotData" data="0|28" title="����" class="ac_even">����</li>
                <li method="liHotData" data="0|29" title="����" class="ac_odd">����</li>
                <li method="liHotData" data="0|30" title="֣��" class="ac_even">֣��</li>
                <li method="liHotData" data="0|31" title="����" class="ac_odd">����</li>
            </ul>
        </div>
        <div class="clear"></div>
        <div class="clear"></div>
    </div>
</div>

</div>
</body>
<jsp:include page='footer.jsp'/>

<script src="content/static/js/lib/require-2.1.15.min.js" defer async="true" data-main="content/static/js/travel/main"></script>

<!--
<script src="content/static/js/lib/jquery-2.1.1.min.js"></script>
<script src="content/static/js/travel/home/cQuery.js"></script>
<script type="text/javascript" charset="utf-8" async="" src="http://bus.ctrip.com/index.php?param=/data/skCityList&callback=busSkFromCityCallback"></script>
<script type="text/javascript" charset="utf-8" async="" src="http://bus.ctrip.com/index.php?param=/data/cityList&callback=busFromCityCallback"></script>
<script src="content/static/js/travel/home/address-1.0.js"></script>
<script src="content/static/js/travel/home/notice-1.0.js"></script>
<script src="content/static/js/travel/home/calendar-3.0.js"></script>
-->
<!--
<script src="content/static/js/lib/require-2.1.15.min.js" defer async="true" data-main="content/static/js/travel/main"></script>
<script src="content/static/js/lib/jquery-2.1.1.min.js"></script>
<script src="content/static/js/travel/home/home.js"></script>
<script src="content/static/js/lib/bootstrap-datepicker-1.3.0.js"></script>
-->
</html>
