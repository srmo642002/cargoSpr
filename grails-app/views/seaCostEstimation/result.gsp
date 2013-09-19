<%@ page import="cargo.SeaCostEstimation" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'seaCostEstimation.result.label', default: 'Transit Rate')}"/>
    <title><g:message code="seaCostEstimation.result.label" args="[entityName]"/></title>
</head>

<body>
<h2><g:message code="seaCostEstimation.result.label" args="[entityName]"/></h2>
<a href="#list-seaCostEstimation" class="skip" tabindex="-1"><g:message code="seaCostEstimation.result.label"
                                                                     default="seaCostEstimation.result.label"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="logout"  action="index" controller="logout"><g:message code="logout.label"/></g:link></li>
    </ul>
</div>

<div id="list-seaCostEstimation" ng-controller="seaCostEstimationController" class="content scaffold-list" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <br>
    <br>
    <rg:grid domainClass="${cargo.SeaCostEstimation}" maxColumns="11">
        <rg:criteria>
            <rg:nest name='portOfLoading'>
                <rg:like name="title"  value="${params.search}"/>
            </rg:nest>
            <rg:eq name='deprecated' value='${'false'}'/>
        </rg:criteria>
    </rg:grid>

</div>
<br>
<div>
    <g:link action="search" style="font-family: times;color: #00008b;font-size: 18px;">Search Again</g:link>
</div>
</body>
</html>