<%@ page import="cargo.cargoItem.OceanCargoItem" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'oceanCargoItem.label', default: 'OceanCargoItem')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<h2><g:message code="default.list.label" args="[entityName]"/></h2>
<a href="#list-oceanCargoItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="logout" action="index" controller="logout"><g:message code="logout.label"/></g:link></li>
    </ul>
</div>
<div id="list-oceanCargoItem" ng-controller="oceanCargoItemController" class="content scaffold-list" role="main">
    <rg:grid domainClass="${cargo.cargoItem.OceanCargoItem}" caption="" width="1000px" maxColumns="15">
        <rg:criteria>
            <rg:nest name="user" >
                <rg:nest name="groups">
                    <rg:eq name='id' value='${groupid}' hidden='true' />
                </rg:nest>
            </rg:nest>
        </rg:criteria>
    </rg:grid>
    <rg:dialog id="oceanCargoItem" title="OceanCargoItem Dialog">
        <rg:fields bean="${new cargo.cargoItem.OceanCargoItem()}">
            <rg:modify>
                <rg:ignoreField field="user"/>
                <rg:ignoreField field="shipment"/>
            </rg:modify>
            <input type="hidden" name="shipment.id">
        </rg:fields>
        <rg:saveButton domainClass="${cargo.cargoItem.OceanCargoItem}"/>
        <rg:cancelButton/>
    </rg:dialog>
    <sec:ifAnyGranted roles="Admin,Create Shipment,Edit Shipment">
        <input type="button" ng-click="openOceanCargoItemCreateDialog()" value="Create OceanCargoItem"/>
        <input type="button" ng-click="openOceanCargoItemEditDialog()" value="Edit OceanCargoItem"/>
    </sec:ifAnyGranted>


</div>
</body>
</html>
