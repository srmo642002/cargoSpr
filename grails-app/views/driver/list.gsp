<%@ page import="cargo.Driver" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'driver.label', default: 'Driver')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<h2><g:message code="default.list.label" args="[entityName]"/></h2>
<a href="#list-driver" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                             default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="logout" action="index" controller="logout"><g:message code="logout.label"/></g:link></li>
    </ul>
</div>

<div id="list-driver" ng-controller="driverController" class="content scaffold-list" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <rg:criteria inline="true">
        <rg:like name='name'/>
        <rg:like name='family'/>
        <rg:like name='idNumber'/>
        <rg:like name='mobile'/>
        <rg:filterGrid name='DriverGrid' grid="DriverGrid" label="Search"/>
        <input type="button" value="Refresh" onclick="refresh()"/>
        <g:javascript>
            function refresh() {
                $('#criteria_').find("input[type=text]").val('')
                $('#criteria_').find("input[type=button]").first().click()
            }
        </g:javascript>
    </rg:criteria>
    <br>
    <rg:grid domainClass="${cargo.Driver}" maxColumns="10"></rg:grid>
    <rg:dialog id="driver" title="Driver Dialog">
        <rg:fields bean="${new cargo.Driver()}"></rg:fields>
        <rg:saveButton domainClass="${cargo.Driver}"/>
        <rg:cancelButton/>
    </rg:dialog>
    <sec:ifAnyGranted roles="Admin,Head BasicInfo,BasicInfo Operator">
        <input type="button" ng-click="openDriverCreateDialog()" value="Create Driver"/>
        <input type="button" ng-click="openDriverEditDialog()" value="Edit Driver"/>
    </sec:ifAnyGranted>
</div>
</body>
</html>
