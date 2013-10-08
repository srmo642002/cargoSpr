<%@ page import="cargo.City" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'city.label', default: 'City')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<h2><g:message code="default.list.label" args="[entityName]"/></h2>
<a href="#list-city" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                           default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
    </ul>
</div>

<div id="list-city" ng-controller="cityController" class="content scaffold-list" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <rg:grid domainClass="${City}" columns="[[name:'country'],[name:'title'],[name:'persianTitle'],[name:'port',formatter:'checkbox'],[name:'abbreviation']]">
    </rg:grid>
    <rg:dialog id="city" title="City Dialog">
        <rg:fields bean="${new cargo.City()}">
            <rg:modify>
                <rg:ignoreField field="airports"/>
            </rg:modify>
        </rg:fields>
        <rg:saveButton domainClass="${cargo.City}"/>
        <rg:cancelButton/>
    </rg:dialog>
    <sec:ifAnyGranted roles="Admin,Create BasicInfo">
        <input type="button" ng-click="openCityCreateDialog()" value="Create City"/>
        <input type="button" ng-click="openCityEditDialog()" value="Edit City"/>
    </sec:ifAnyGranted>
</div>
%{--<div ng-controller="cityController">--}%
%{--Angularjs test content:--}%
%{--<div>{{1+2}}</div>--}%
%{--<div>name: {{cityInstance.title}}</div>--}%
%{--<div>snippet: {{cityInstance.persianTitle}}</div>--}%
%{--<input ng-model="cityInstance.persianTitle">--}%
%{--</div>--}%
%{--<script type="text/javascript">--}%
%{--function PhoneListCtrl($scope) {--}%
%{--$scope.phone = {"name": "Nexus S", "snippet": "Fast just got faster with Nexus S."};--}%
%{--}--}%
%{--</script>--}%
</body>
</html>
