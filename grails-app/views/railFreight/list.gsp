<%@ page import="cargo.freight.RailFreight" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'railFreight.label', default: 'RailFreight')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<h2><g:message code="default.list.label" args="[entityName]"/></h2>
<a href="#list-railFreight" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                  default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="logout"  action="index" controller="logout"><g:message code="logout.label"/></g:link></li>
    </ul>
</div>

<div id="list-railFreight" ng-controller="railFreightController" class="content scaffold-list" role="main">
    <rg:criteria inline="true" id="RailFreightCriteria">
        <rg:eq name='user.id' value='${userid}' hidden='true'/>
        <rg:like name='railWayCo'/>
        <rg:filterGrid name='RailFreightGrid' grid="RailFreightGrid" label="Search"/>
        <input type="button" value="Refresh" onclick="refresh()"/>
        <g:javascript>
            function refresh() {
                $('#criteria_RailFreightCriteria').find("input[type=text]").val('')
                $('#criteria_RailFreightCriteria').find("input[type=button]").first().click()
            }
        </g:javascript>
    </rg:criteria>
    <br>
    <rg:grid domainClass="${cargo.freight.RailFreight}" caption="" width="800px" maxColumns="15">
        <rg:criteria>
            <rg:eq name='user.id' value='${userid}'/>
        </rg:criteria>
    </rg:grid>
    <rg:dialog id="railFreight" title="RailFreight Dialog">
        <rg:fields bean="${new cargo.freight.RailFreight()}">
            <rg:modify>
                <rg:ignoreField field="user"/>
                <rg:ignoreField field="shipment"/>
            </rg:modify>
            <input type="hidden" name="shipment.id">
        </rg:fields>
        <rg:saveButton domainClass="${cargo.freight.RailFreight}" conroller="railFreight" action="saveRailFreight"/>
        <rg:cancelButton/>
    </rg:dialog>
    <sec:ifAnyGranted roles="Admin,Head Shipment Creator,Shipment Creator">
        <input type="button" ng-click="openRailFreightCreateDialog()" value="Create RailFreight"/>
        <input type="button" ng-click="openRailFreightEditDialog()" value="Edit RailFreight"/>
    </sec:ifAnyGranted>
</div>
</body>
</html>
