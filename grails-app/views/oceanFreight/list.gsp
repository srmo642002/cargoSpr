
<%@ page import="cargo.freight.OceanFreight" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'oceanFreight.label', default: 'OceanFreight')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<h2><g:message code="default.list.label" args="[entityName]" /></h2>
<a href="#list-oceanFreight" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="logout"  action="index" controller="logout"><g:message code="logout.label"/></g:link></li>
    </ul>
</div>

<div id="list-oceanFreight" ng-controller="oceanFreightController" class="content scaffold-list" role="main">
    <rg:criteria inline="true" id="OceanFreightCriteria">
        <rg:eq name='user.id' value='${userid}' hidden='true'/>
        <rg:like name='shippingCo'/>
        <rg:like name='vesselName'/>
        <rg:filterGrid name='OceanFreightGrid' grid="OceanFreightGrid" label="Search"/>
        <input type="button" value="Refresh" onclick="refresh()"/>
        <g:javascript>
            function refresh() {
                $('#criteria_OceanFreightCriteria').find("input[type=text]").val('')
                $('#criteria_OceanFreightCriteria').find("input[type=button]").first().click()
            }
        </g:javascript>
    </rg:criteria>
    <br>
    <rg:grid domainClass="${cargo.freight.OceanFreight}" caption="" width="800px" maxColumns="15">
        <rg:criteria>
            <rg:eq name='user.id' value='${userid}'/>
        </rg:criteria>
    </rg:grid>
    <rg:dialog id="oceanFreight" title="OceanFreight Dialog">
        <rg:fields bean="${new cargo.freight.OceanFreight()}">
            <rg:modify>
                <rg:ignoreField field="user"/>
                <rg:ignoreField field="shipment"/>
            </rg:modify>
            <input type="hidden" name="shipment.id">
        </rg:fields>
        <rg:saveButton domainClass="${cargo.freight.OceanFreight}" conroller="oceanFreight" action="saveOceanFreight"/>
        <rg:cancelButton/>
    </rg:dialog>
    <sec:ifAnyGranted roles="Admin,Head Shipment Creator,Shipment Creator">
    <input type="button" ng-click="openOceanFreightCreateDialog()" value="Create OceanFreight"/>
    <input type="button" ng-click="openOceanFreightEditDialog()" value="Edit OceanFreight"/>
    </sec:ifAnyGranted>
</div>
</body>
</html>
