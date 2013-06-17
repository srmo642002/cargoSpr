<%@ page import="cargo.Airport" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'airport.label', default: 'Airport')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<h2><g:message code="default.list.label" args="[entityName]"/></h2>
<a href="#list-airport" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                              default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list" controller="country"><g:message code="country.list.label"
                                                                               args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-airport" ng-controller="airportController" class="content scaffold-list" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <rg:grid domainClass="${cargo.Airport}"/>
    <rg:dialog id="airport" title="Airport Dialog">
        <rg:fields bean="${new cargo.Airport()}"></rg:fields>
        <rg:saveButton domainClass="${cargo.Airport}"/>
        <rg:cancelButton/>
    </rg:dialog>
    <sec:ifAnyGranted roles="Admin,BasicInfo Head,BasicInfo Operator">
        <input type="button" ng-click="openAirportCreateDialog()" value="Create Airport"/>
        <input type="button" ng-click="openAirportEditDialog()" value="Edit Airport"/>
    </sec:ifAnyGranted>
</div>

</body>
</html>
