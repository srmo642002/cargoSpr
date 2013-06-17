<%@ page import="cargo.CostEstimation" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'costEstimation.label', default: 'Cost Estimation')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<h2><g:message code="default.list.label" args="[entityName]"/></h2>
<a href="#list-costEstimation" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                            default="Skip to content&hellip;"/></a>

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
    <rg:grid domainClass="${cargo.CostEstimation}" maxColumns="9">
    </rg:grid>
    <rg:dialog id="costEstimation" title="Cost Estimation Dialog" >
        <rg:fields bean="${new cargo.CostEstimation()}">
        </rg:fields>
        <rg:saveButton domainClass="${cargo.CostEstimation}" conroller="costEstimation" action="saveCost"  params="${[method:'post']}"/>
        <rg:cancelButton/>
    </rg:dialog>
    <sec:ifAnyGranted roles="Admin,Agent">
        <input type="button" ng-click="openCostEstimationCreateDialog()" value="Create Cost Estimation"/>
        <input type="button" ng-click="openCostEstimationEditDialog()" value="Edit Cost Estimation"/>
    </sec:ifAnyGranted>
</div>

</body>
</html>
