<%@ page import="cargo.LocalAgent" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'localAgent.label', default: 'LocalAgent')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<h2><g:message code="default.list.label" args="[entityName]"/></h2>
<a href="#list-localAgent" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                 default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="logout" action="index" controller="logout"><g:message code="logout.label"/></g:link></li>
    </ul>
</div>

<div id="list-localAgent" ng-controller="localAgentController" class="content scaffold-list" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <rg:criteria inline="true">
        <rg:like name='agent'/>
        <rg:nest name='city'>
            <rg:like name="title" label="city"/>
        </rg:nest>
        <rg:filterGrid name='LocalAgentGrid' grid="LocalAgentGrid" label="Search"/>
        <input type="button" value="Refresh" onclick="refresh()"/>
        <g:javascript>
            function refresh() {

                $('#criteria_').find("input[type=text]").val('')
                $('#criteria_').find("input[type=button]").first().click()
            }
        </g:javascript>
    </rg:criteria>
    <br>
    <rg:grid domainClass="${cargo.LocalAgent}"></rg:grid>
    <rg:dialog id="localAgent" title="Local Agent Dialog">
        <rg:fields bean="${new cargo.LocalAgent()}"></rg:fields>
        <rg:saveButton domainClass="${cargo.LocalAgent}"/>
        <rg:cancelButton/>
    </rg:dialog>
    <sec:ifAnyGranted roles="Admin,Head BasicInfo,BasicInfo Operator">
        <input type="button" ng-click="openLocalAgentCreateDialog()" value="Create Local Agent"/>
        <input type="button" ng-click="openLocalAgentEditDialog()" value="Edit Local Agent"/>
    </sec:ifAnyGranted>
</div>
</body>
</html>
