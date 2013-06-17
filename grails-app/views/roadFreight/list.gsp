
<%@ page import="cargo.freight.RoadFreight" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'roadFreight.label', default: 'RoadFreight')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<h2><g:message code="default.list.label" args="[entityName]" /></h2>
<a href="#list-roadFreight" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="logout"  action="index" controller="logout"><g:message code="logout.label"/></g:link></li>
    </ul>
</div>

<div id="list-roadFreight" ng-controller="roadFreightController" class="content scaffold-list" role="main">
    <rg:criteria inline="true" id="RoadFreightCriteria">
        <rg:eq name='user.id' value='${userid}' hidden='true'/>
        <rg:like name='CMR'/>
        <rg:filterGrid name='RoadFreightGrid' grid="RoadFreightGrid" label="Search"/>
        <input type="button" value="Refresh" onclick="refresh()"/>
        <g:javascript>
            function refresh() {
                $('#criteria_RoadFreightCriteria').find("input[type=text]").val('')
                $('#criteria_RoadFreightCriteria').find("input[type=button]").first().click()
            }
        </g:javascript>
    </rg:criteria>
    <br>
    <rg:grid domainClass="${cargo.freight.RoadFreight}" caption="" width="800px" maxColumns="15">
        <rg:criteria>
            <rg:eq name='user.id' value='${userid}'/>
        </rg:criteria>
    </rg:grid>
    <rg:dialog id="roadFreight" title="RoadFreight Dialog">
        <rg:fields bean="${new cargo.freight.RoadFreight()}">
            <rg:modify>
                <rg:ignoreField field="user"/>
                <rg:ignoreField field="shipment"/>
            </rg:modify>
            <input type="hidden" name="shipment.id">
        </rg:fields>
        <rg:saveButton domainClass="${cargo.freight.RoadFreight}" conroller="roadFreight" action="saveRoadFreight"/>
        <rg:cancelButton/>
    </rg:dialog>
    <sec:ifAnyGranted roles="Admin,Head Shipment Creator,Shipment Creator">
        <input type="button" ng-click="openRoadFreightCreateDialog()" value="Create RoadFreight"/>
        <input type="button" ng-click="openRoadFreightEditDialog()" value="Edit RoadFreight"/>
    </sec:ifAnyGranted>

</div>
</body>
</html>
