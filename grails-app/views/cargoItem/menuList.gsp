<%@ page import="cargo.Shipment; cargo.cargoItem.CargoItem" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'cargoItem.label', default: 'CargoItem')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<h2><g:message code="default.list.label" args="[entityName]"/></h2>
<a href="#list-cargoItem" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="logout" action="index" controller="logout"><g:message code="logout.label"/></g:link></li>
    </ul>
</div>

<div id="list-cargoItem" ng-controller="cargoItemController" class="content scaffold-list" role="main">
    <rg:criteria inline="true">
        <rg:eq name='user.id' value='${userid}' hidden='true'/>
        <rg:like name='commodity'/>
        <rg:like name='unitOfMeasure'/>
        <rg:like name='kindOfPackage'/>
        <rg:filterGrid name='CargoItemGrid' grid="CargoItemGrid" label="Search"/>
        <input type="button" value="Refresh" onclick="refresh()"/>
        <g:javascript>
            function refresh() {
                $('#criteria_').find("input[type=text]").val('')
                $('#criteria_').find("input[type=button]").first().click()
            }
        </g:javascript>
    </rg:criteria>
    <br>
    <rg:grid domainClass="${cargo.cargoItem.CargoItem}" caption="" width="1000px" maxColumns="17">
        <rg:criteria>
            <rg:eq name='user.id' value='${userid}'/>
            <rg:eq name='shipment.id' value='${shipmentid}'/>
        </rg:criteria>
    </rg:grid>
    <rg:dialog id="cargoItem" title="CargoItem Dialog">
        <rg:fields bean="${new cargo.cargoItem.CargoItem()}">
            <rg:modify>
                <rg:ignoreField field="shipment"/>
                <rg:ignoreField field="user"/>
                <rg:extraField field="shipment" title="shipment">
                    <label for="shipment">
                        <g:message code="cargoItem.shipment.label" default="Shipment" />
                        <span class="required-indicator">*</span>
                    </label>
                    <br>
                    <g:select name="shipment.id" from="${Shipment.findAllByUser(user)}">
                    </g:select>
                </rg:extraField>
            </rg:modify>
            <input type="hidden" name="shipment.id">
        </rg:fields>
        <rg:saveButton domainClass="${cargo.cargoItem.CargoItem}" conroller="cargoItem" action="saveCargoItem"/>
        <rg:cancelButton/>
    </rg:dialog>
    <sec:ifAnyGranted roles="Admin,Head Shipment Creator,Shipment Creator">
        <input type="button" ng-click="openCargoItemCreateDialog()" value="Create CargoItem"/>
        <input type="button" ng-click="openCargoItemEditDialog()" value="Edit CargoItem"/>
    </sec:ifAnyGranted>

    <g:javascript>
        $("#cargoItem").find("#width,#height,#length").keyup(function () {
            var width = parseFloat($("#cargoItem").find("#width").val())
            var height = parseFloat($("#cargoItem").find("#height").val())
            var length = parseFloat($("#cargoItem").find("#length").val())
            $("#cargoItem").find("#volume").val(width * height * length)
        })
    </g:javascript>
    <g:javascript>
        $("#cargoItem").find("#noOfPackage,#grossWeight").keyup(function () {
            var noOfPackage = parseFloat($("#cargoItem").find("#noOfPackage").val())
            var grossWeight = parseFloat($("#cargoItem").find("#grossWeight").val())
            $("#cargoItem").find("#totalWeight").val(noOfPackage * grossWeight)
        })
    </g:javascript>
    <g:javascript>
        $("#cargoItem").find("#totalWeight,#rateOrCharge").keyup(function () {
            var totalWeight = parseFloat($("#cargoItem").find("#totalWeight").val())
            var rateOrCharge = parseFloat($("#cargoItem").find("#rateOrCharge").val())
            $("#cargoItem").find("#chargeableWeight").val(totalWeight * rateOrCharge)
        })
    </g:javascript>
    <g:javascript>
        $("#cargoItem").find("#noOfPackage,#volume").keyup(function () {
            var noOfPackage = parseFloat($("#cargoItem").find("#noOfPackage").val())
            var volume = parseFloat($("#cargoItem").find("#volume").val())
            $("#cargoItem").find("#totalVolume").val(noOfPackage * volume)
        })
    </g:javascript>
    <g:javascript>
        $("#cargoItem").find("#totalVolume,#rateOrCharge").keyup(function () {
            var totalVolume = parseFloat($("#cargoItem").find("#totalVolume").val())
            var rateOrCharge = parseFloat($("#cargoItem").find("#rateOrCharge").val())
            $("#cargoItem").find("#chargeableRate").val(totalVolume * rateOrCharge)
        })
    </g:javascript>
</div>

</body>
</html>
