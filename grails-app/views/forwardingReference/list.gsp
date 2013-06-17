<%@ page import="cargo.ForwardingReference" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'forwardingReference.label', default:
            'ForwardingReference')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<h2><g:message code="default.list.label" args="[entityName]"/></h2>
<a href="#list-forwardingReference" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                          default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="logout" action="index" controller="logout"><g:message code="logout.label"/></g:link></li>

    </ul>
</div>

<div id="list-forwardingReference" ng-controller="forwardingReferenceController" class="content scaffold-list" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <rg:criteria inline="true">
        <rg:like name='title'/>
        <rg:like name='webSite'/>
        <rg:filterGrid name='ForwardingReferenceGrid' grid="ForwardingReferenceGrid" label="Search"/>
        <input type="button" value="Refresh" onclick="refresh()"/>
        <g:javascript>
            function refresh() {
                $('#criteria_').find("input[type=text]").val('')
                $('#criteria_').find("input[type=button]").first().click()
            }
        </g:javascript>
    </rg:criteria>
    <br>
    <rg:grid domainClass="${cargo.ForwardingReference}" maxColumns="11"></rg:grid>
    <rg:dialog id="forwardingReference" title="ForwardingReference Dialog">
        <rg:fields bean="${new cargo.ForwardingReference()}"></rg:fields>
        <rg:saveButton domainClass="${cargo.ForwardingReference}"/>
        <rg:cancelButton/>
    </rg:dialog>
    <sec:ifAnyGranted roles="Admin,Head BasicInfo,BasicInfo Operator">
        <input type="button" ng-click="openForwardingReferenceCreateDialog()" value="Create ForwardingReference"/>
        <input type="button" ng-click="openForwardingReferenceEditDialog()" value="Edit ForwardingReference"/>
    </sec:ifAnyGranted>
</div>
</body>
</html>
