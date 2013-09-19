<%@ page import="cargo.Shipment" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'shipment.label', default: 'Shipment')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<h2><g:message code="default.list.label" args="[entityName]"/></h2>
<a href="#list-shipment" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                               default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="logout" action="index" controller="logout"><g:message code="logout.label"/></g:link></li>
    </ul>
</div>

<div id="list-shipment" ng-controller="shipmentController" class="content scaffold-list" role="main">
    <rg:criteria inline="true">
        <rg:nest name="user" >
            <rg:nest name="groups">
                <rg:eq name='id' value='${groupid}' hidden='true' />
            </rg:nest>
        </rg:nest>
        <rg:like name='title'/>
        <rg:nest name='shipper'>
            <rg:like name="title" label="shipper"/>
        </rg:nest>
        <rg:nest name='consignee'>
            <rg:like name="title" label="consignee"/>
        </rg:nest>
        <rg:nest name='notifyParty'>
            <rg:like name="title" label="notify party"/>
        </rg:nest>
        <rg:filterGrid name='ShipmentGrid' grid="ShipmentGrid" label="Search"/>
        <input type="button" value="Refresh" onclick="refresh()"/>
        <g:javascript>
            function refresh() {
                $('#criteria_').find("input[type=text]").val('')
                $('#criteria_').find("input[type=button]").first().click()
            }
        </g:javascript>
    </rg:criteria>
    <br>
    <rg:grid domainClass="${cargo.Shipment}" caption="" width="1000px" maxColumns="15">
        <rg:criteria>
            <rg:nest name="user" >
                <rg:nest name="groups">
                    <rg:eq name='id' value='${groupid}' />
                </rg:nest>
            </rg:nest>
        </rg:criteria>
    </rg:grid>
    <rg:dialog id="shipment" title="Shipment Dialog">
        <rg:fields bean="${new cargo.Shipment()}">
            <rg:modify>
                <rg:ignoreField field="frieghts"/>
                <rg:ignoreField field="cargoItems"/>
                <rg:ignoreField field="user"/>
                <rg:ignoreField field="referenceCode"/>
            </rg:modify>
        </rg:fields>
        <rg:saveButton domainClass="${cargo.Shipment}" conroller="shipment" action="saveShipment"/>
        <rg:cancelButton/>
    </rg:dialog>
    <g:javascript>
                $("#shipment").find("[name='originCnt.id']").change(function(){
                    var cnt = $(this).val()
                    $.ajax({
                        url:'<g:createLink action="getCities"/>',
                        data:{
                            id:cnt
                        }
                    }).success(function(data){
                        $("#shipment").find("[name='originCty.id']").html("")
                        $(data).each(function(){
                            $("#shipment").find("[name='originCty.id']").append("<option value='" +this.id +"'>"+this.title+"</option>")
                        })
                    })
                })
    </g:javascript>
    <g:javascript>
                $("#shipment").find("[name='destinationCnt.id']").change(function(){
                    var cnt = $(this).val()
                    $.ajax({
                        url:'<g:createLink action="getCities"/>',
                        data:{
                            id:cnt
                        }
                    }).success(function(data){
                        $("#shipment").find("[name='destinationCty.id']").html("")
                        $(data).each(function(){
                            $("#shipment").find("[name='destinationCty.id']").append("<option value='" +this.id +"'>"+this.title+"</option>")
                        })
                    })
                })
    </g:javascript>
    <sec:ifAnyGranted roles="Admin,Create Shipment,Edit Shipment">
        <input type="button" ng-click="openShipmentCreateDialog()" value="Create Shipment"/>
        <input type="button" ng-click="openShipmentEditDialog()" value="Edit Shipment"/>
    </sec:ifAnyGranted>
</div>
</body>
</html>
