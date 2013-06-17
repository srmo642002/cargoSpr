<%@ page import="cargo.cargoItem.RailCargoItem" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'railCargoItem.label', default: 'RailCargoItem')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<h2><g:message code="default.list.label" args="[entityName]"/></h2>
<a href="#list-railCargoItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                   default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="logout" action="index" controller="logout"><g:message code="logout.label"/></g:link></li>
    </ul>
</div>

<div id="list-railCargoItem" ng-controller="railCargoItemController" class="content scaffold-list" role="main">
    <rg:criteria inline="true">
        <rg:eq name='user.id' value='${userid}' hidden='true'/>
        <rg:like name='wagonType'/>
        <rg:like name='wagonStatus'/>
        <rg:filterGrid name='RailCargoItemGrid' grid="RailCargoItemGrid" label="Search"/>
        <input type="button" value="Refresh" onclick="refresh()"/>
        <g:javascript>
            function refresh() {
                $('#criteria_').find("input[type=text]").val('')
                $('#criteria_').find("input[type=button]").first().click()
            }
        </g:javascript>
    </rg:criteria>
    <br>
    <rg:grid domainClass="${cargo.cargoItem.RailCargoItem}" caption="" width="1000px" maxColumns="15">
        <rg:criteria>
            <rg:eq name='user.id' value='${userid}'/>
        </rg:criteria>
    </rg:grid>
    <rg:dialog id="railCargoItem" title="RailCargoItem Dialog">
        <rg:fields bean="${new cargo.cargoItem.RailCargoItem()}">
            <rg:modify>
                <rg:ignoreField field="user"/>
                <rg:ignoreField field="shipment"/>
            </rg:modify>
            <input type="hidden" name="shipment.id">
        </rg:fields>
        <rg:saveButton domainClass="${cargo.cargoItem.RailCargoItem}"/>
        <rg:cancelButton/>
    </rg:dialog>
    <sec:ifAnyGranted roles="Admin,Head Shipment Creator,Shipment Creator">
        <input type="button" ng-click="openRailCargoItemCreateDialog()" value="Create RailCargoItem"/>
        <input type="button" ng-click="openRailCargoItemEditDialog()" value="Edit RailCargoItem"/>
    </sec:ifAnyGranted>


</div>
</body>
</html>
