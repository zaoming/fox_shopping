<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%int i=30; session.setAttribute("i",i);session.setAttribute("a11","计算机");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>HTML5 Chart jQuery Plugin - Axis Settings </title>
    <link rel="stylesheet" type="text/css" href="../css/jquery.jqChart.css" />
    <script src="./js/jquery-1.5.1.min.js" type="text/javascript"></script>
    <script src="./js/jquery.jqChart.min.js" type="text/javascript"></script>
    <!--[if IE]><script lang="javascript" type="text/javascript" src="../js/excanvas.js"></script><![endif]-->
    <script lang="javascript" type="text/javascript">
        $(document).ready(function () {
        	var id1 = document.getElementById("1").value;
            $('#jqChart').jqChart({
                title: { text: '销售排行' },
                axes: [
                        {
                            location: 'left',
                            minimum: 1,
                            maximum: 200,
                            interval: 20
                        }
                      ],
                series: [
                            {
                                type: 'column',
                                data:  [['${a1 }', ${b21 }], ['${a2 }', ${b22 }], ['${a3 }', ${b23 }], ['${a4 }', ${b24 }], ['${a5 }', ${b25 }],['${a6 }', ${b26 }],['${a7 }', ${b27 }],['${a8 }', ${b28 }]]
                            }
                        ]
            });
        });
    </script>
</head>
<body>
    <div>
    	<input type="hidden" value="25" id="1"/>
        <div id="jqChart" style="width: 1100px; height: 400px;" />
    </div>
</body>
</html>
