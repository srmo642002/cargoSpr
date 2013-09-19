<%@ page import="grails.converters.JSON; cargo.User; cargo.Shipment" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'shipment.label', default: 'Shipment')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<h2><g:message code="default.list.label" args="[entityName]"/></h2>
<a href="#list-shipment" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                               default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="logout" action="index" controller="logout"><g:message code="logout.label"/></g:link></li>
    </ul>
</div>

<div id="list-shipment" class="content scaffold-list" role="main">
    <script type="text/javascript">
        jQuery.extend($.fn.fmatter , {
            chkbox : function(cellvalue, options, rowdata) {
                return "<input name='chk_"+cellvalue+"' type='checkbox'>";
            }
        });
    </script>
    <rg:grid domainClass="${User}" columns="${[[name:"id",formatter:"chkbox"]]}"></rg:grid>
    <input type="button" onclick="showValues()">
    <g:javascript>
        function showValues(){
            var ids=$("#UserGrid").find("input[type=checkbox]").filter(":checked").map(function(){return $(this).attr("name").substr(4)}).get()
            alert(ids.join())
        }
    </g:javascript>
</div>
</body>
</html>
