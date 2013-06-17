<%@ page import="cargo.CostEstimation" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'costEstimation.result.label', default: 'Transit Rate')}"/>
    <title><g:message code="costEstimation.result.label" args="[entityName]"/></title>
</head>

<body>
<h2><g:message code="costEstimation.result.label" args="[entityName]"/></h2>
<a href="#list-costEstimation" class="skip" tabindex="-1"><g:message code="costEstimation.result.label"
                                                                     default="costEstimation.result.label"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="logout"  action="index" controller="logout"><g:message code="logout.label"/></g:link></li>
    </ul>
</div>

<div id="list-costEstimation" ng-controller="costEstimationController" class="content scaffold-list" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <br>
    <p style="font-family: times;color: #00008b;font-size:large;text-align: left">
        Please note that the origin city is Bandar Abbas and the rate is based on this port.
    </p>
    <br>
    <rg:grid domainClass="${cargo.CostEstimation}">
        <rg:criteria>
            <rg:nest name='desCity'>
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
