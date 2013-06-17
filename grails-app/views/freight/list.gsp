
<%@ page import="cargo.freight.Freight" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'freight.label', default: 'Freight')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<h2><g:message code="default.list.label" args="[entityName]" /></h2>
<a href="#list-freight" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="logout" action="index" controller="logout"><g:message code="logout.label"/></g:link></li>
    </ul>
</div>

<div id="list-freight" ng-controller="freightController" class="content scaffold-list" role="main">
    <rg:grid domainClass="${cargo.freight.Freight}" caption="" width="800px" maxColumns="15">
    </rg:grid>
    <rg:dialog id="freight" title="Freight Dialog">
        <rg:fields bean="${new cargo.freight.Freight()}">
            <rg:criteria>
                <rg:eq name='user.id' value='${userid}'/>
            </rg:criteria>
        </rg:fields>
        <rg:saveButton domainClass="${cargo.freight.Freight}"/>
        <rg:cancelButton/>
    </rg:dialog>
    <input type="button" ng-click="openFreightCreateDialog()" value="Create Freight"/>
    <input type="button" ng-click="openFreightEditDialog()" value="Edit Freight"/>
</div>
</body>
</html>
