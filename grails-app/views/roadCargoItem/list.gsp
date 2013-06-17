<%@ page import="cargo.cargoItem.RoadCargoItem" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'roadCargoItem.label', default: 'RoadCargoItem')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<h2><g:message code="default.list.label" args="[entityName]"/></h2>
<a href="#list-roadCargoItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                   default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="logout" action="index" controller="logout"><g:message code="logout.label"/></g:link></li>
    </ul>
</div>

<div id="list-roadCargoItem" ng-controller="roadCargoItemController" class="content scaffold-list" role="main">
    <rg:criteria inline="true">
        <rg:eq name='user.id' value='${userid}' hidden='true'/>
        <rg:nest name='driver'>
            <rg:like name="family" label="driver"/>
        </rg:nest>
        <rg:nest name='truck'>
            <rg:like name="typeOfVehicle" label="truck"/>
        </rg:nest>
        <rg:filterGrid name='RoadCargoItemGrid' grid="RoadCargoItemGrid" label="Search"/>
        <input type="button" value="Refresh" onclick="refresh()"/>
        <g:javascript>
            function refresh() {
                $('#criteria_').find("input[type=text]").val('')
                $('#criteria_').find("input[type=button]").first().click()
            }
        </g:javascript>
    </rg:criteria>
    <br>
    <rg:grid domainClass="${cargo.cargoItem.RoadCargoItem}" caption="" width="1000px" maxColumns="15">
        <rg:criteria>
            <rg:eq name='user.id' value='${userid}'/>
        </rg:criteria>
    </rg:grid>
    <rg:dialog id="roadCargoItem" title="RoadCargoItem Dialog">
        <rg:fields bean="${new cargo.cargoItem.RoadCargoItem()}">
            <rg:modify>
                <rg:ignoreField field="user"/>
                <rg:ignoreField field="shipment"/>
            </rg:modify>
            <input type="hidden" name="shipment.id">
        </rg:fields>
        <rg:saveButton domainClass="${cargo.cargoItem.RoadCargoItem}"/>
        <rg:cancelButton/>
    </rg:dialog>
    <sec:ifAnyGranted roles="Admin,Head Shipment Creator,Shipment Creator">
        <input type="button" ng-click="openRoadCargoItemCreateDialog()" value="Create RoadCargoItem"/>
        <input type="button" ng-click="openRoadCargoItemEditDialog()" value="Edit RoadCargoItem"/>
    </sec:ifAnyGranted>


</div>
</body>
</html>
