<%@ page import="cargo.UserRole" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code:
            'userRole.label', default: 'UserRole')}" />
    <title><g:message code="default.list.label"
                      args="[entityName]" /></title>
</head>
<body>
<h2><g:message code="default.list.label"
               args="[entityName]" /></h2>
<a href="#list-userRole" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri:'/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="logout"  action="index"  controller="logout"><g:message code="logout.label"/></g:link></li>
    </ul>
</div>

<div id="list-userRole" ng-controller="userRoleController" class="content scaffold-list" role="main">
    <rg:grid domainClass="${cargo.User}" caption="" width="1000px" maxColumns="4">
    </rg:grid>

</div>
</body>
</html>
