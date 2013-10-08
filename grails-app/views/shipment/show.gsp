<%@ page import="cargo.insuranceCertificate.CustomsOperations; cargo.freight.Freight; cargo.cargoItem.RoadCargoItem; cargo.cargoItem.RailCargoItem; cargo.cargoItem.OceanCargoItem; cargo.cargoItem.AirCargoItem; cargo.cargoItem.CargoItem; cargo.Shipment" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="shipment">
    <g:set var="entityName" value="${message(code: 'shipment.label', default: 'Shipment')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>

    <script type="text/javascript">
        jQuery.extend($.fn.fmatter , {
            generateCheckbox : function(cellvalue, options, rowdata) {
                return "<input name='chk_"+cellvalue+"' id='chk' type='checkbox'>";
            },
            generateRadio : function(cellvalue, options, rowdata) {
                return "<input id='rdo_"+cellvalue+"' name='rdo' type='radio'>";
            }
        });
    </script>
    <script  type="text/javascript">
        $('document').ready(function(){
            $("#btn-chk").click(function(){
                $("input[type=checkbox]").attr('checked', 'checked');
                });
            $("#btn-rchk").click(function(){
                $("input[type=checkbox]").removeAttr('checked','');
            });
        });
    </script>
</head>

<body>
<div id="list-cargoItem" ng-controller="cargoItemController" class="content scaffold-list" role="main" style="padding-top: 15px">
    <rg:grid domainClass="${CargoItem}" columns="[[name:'id',formatter:'generateCheckbox'],[name:'item'],[name:'nonContainerized'],[name:'containerized'],[name:'containerNo'],[name:'size'],[name:'type'],[name:'commodity'],[name:'typeOfPackage'],[name:'noOfPackage'],[name:'grade'],[name:'grossWeight'],[name:'totalWeight'],[name:'volume'],[name:'dg'],[name:'incoClass'],[name:'unNo',formatter: 'integer']]">
        <rg:criteria>
            <rg:eq name="shipment.id" value="${shipmentInstance.id}" />
        </rg:criteria>
    </rg:grid>
    <rg:dialog id="cargoItem" title="CargoItem Dialog">
        <rg:fields bean="${new CargoItem()}">
            <rg:modify>
                <rg:ignoreField field="user"/>
                <rg:ignoreField field="shipment"/>
            </rg:modify>
            <input type="hidden" name="shipment.id" value="${shipmentInstance.id}">
        </rg:fields>
        <rg:saveButton domainClass="${CargoItem}" conroller="cargoItem" action="saveCargoItem"/>
        <rg:cancelButton/>
    </rg:dialog>
    <input type="button" ng-click="openCargoItemCreateDialog()" value="Create CargoItem"/>
    <input type="button" ng-click="openCargoItemEditDialog()" value="Edit CargoItem"/>
    <g:form action="upload" controller="cargoItem" method="post" enctype="multipart/form-data" style="margin-top: -40px; padding-top: 0px; border-top-width: 0px; margin-left: 750px;">
    <span class="btn btn-file">
    <input type="file" name="file" id="file" />
    <g:hiddenField name="shipmentId" value="${shipmentInstance?.id}"/>
    <input class="save" type="submit" id="submitId" value="Import"/>
    </span>
    </g:form>
    <g:form action="xls" controller="cargoItem" method="post" enctype="multipart/form-data" style="margin-top: -40px; padding-top: 0px; border-top-width: 0px; margin-left: 885px;">
        <g:hiddenField name="id" value="${shipmentInstance?.id}"/>
        <input type="submit" value="Export" style="margin-left: 155px; margin-top: 9px;"/>
    </g:form>
    <g:form  style="margin-top: -40px; padding-top: 0px; border-top-width: 0px; margin-left: 310px;">
    <input type="button" value="Check All" id="btn-chk" style="width: 78px;background-color: #dfdfe3" />
    <input type="button" value="UnCheck All" id="btn-rchk" style="width: 78px;background-color: #dfdfe3"/>
    </g:form>


    <g:javascript>
        $("#cargoItem").find("#noOfPackage,#grossWeight").keyup(function () {
            var noOfPackage = parseFloat($("#cargoItem").find("#noOfPackage").val())
            var grossWeight = parseFloat($("#cargoItem").find("#grossWeight").val())
            var fini = $("#cargoItem").find("#totalWeight").val(noOfPackage * grossWeight)
            if(width==0||height==0||length==0){
                fini = 0;
            } else{
                fini = $("#cargoItem").find("#totalWeight").val(noOfPackage * grossWeight)
            }
        })
    </g:javascript>
    <g:javascript>
        $("[name$=containerized]").change(function(){
            if ($("[name$=containerized]").is(":checked")){
                $("[name$=containerNo]").parent().show();
                $("[name$=size]").parent().show();
                $("[name$=type]").parent().show();
            }
            else{
                $("[name$=containerNo]").parent().hide();
                $("[name$=size]").parent().hide();
                $("[name$=type]").parent().hide();
            }
        });
        $("[name$=containerized]").change();
    </g:javascript>
    <g:javascript>
        $("[name$=dg]").change(function(){
            if ($("[name$=dg]").is(":checked")){
                $("[name$=incoClass]").parent().show();
                $("[name$=unNo]").parent().show();
            }
            else{
                $("[name$=incoClass]").parent().hide();
                $("[name$=unNo]").parent().hide();

            }
        });
        $("[name$=dg]").change();
    </g:javascript>



</div>
<br>

<div id="list-freight" ng-controller="freightController" class="content scaffold-list" role="main">
    <rg:grid domainClass="${cargo.freight.Freight}" onSelectRow="loadCargoItems"
             columns="${[[name:"id",formatter:"generateRadio"],[name: "type", expression: "obj.metaClass.theClass.name.replace(\\'cargo.freight.\\', \\'\\')"], [name: "placeOfLoading"],[name: "placeOfDischarge"],[name: "placeOfDelivery"],[name: "placeOfReceipt"],[name: "freightAction"]]}">
        <rg:criteria>
            <rg:eq name="shipment.id" value="${shipmentInstance.id}"/>
        </rg:criteria>
    </rg:grid>
    <g:javascript>
        var loadCargoItems = function (rowId) {
            var rowData = freightsGrid.jqGrid('getRowData', rowId);
            var type = rowData.type.replace("Freight", "");

            var criteria = '[{\'op\':\'eq\', \'field\':\'' + type.toLowerCase() + 'Freight.id\', \'val\':\'' + rowId + '\'}]';
            loadGridWithCriteria(type + "CargoItemGrid", criteria);

            showCargoItem(type.toLowerCase());
        }
    </g:javascript>

    <rg:dialog id="airFreight" title="Air Freight Dialog">
        <rg:fields bean="${new cargo.freight.AirFreight()}" angular="false">
            <rg:modify>
                <rg:ignoreField field="user"/>
                <rg:ignoreField field="shipment"/>
            </rg:modify>
            <input type="hidden" name="shipment.id" value="${shipmentInstance.id}">
        </rg:fields>
        <rg:saveButton domainClass="${cargo.freight.AirFreight}" gridId="freight" conroller="airFreight" action="saveAirFreight"/>
        <rg:cancelButton/>
    </rg:dialog>
    <sec:ifAnyGranted roles="Admin,Create AirFreight,Edit AirFreight,Delete AirFreight">
    <input type="button" ng-click="openAirFreightCreateDialog()" value="Create Air Freight"/>
    </sec:ifAnyGranted>

    <rg:dialog id="oceanFreight" title="Ocean Freight Dialog">
        <rg:fields bean="${new cargo.freight.OceanFreight()}" angular="false">
            <rg:modify>
                <rg:ignoreField field="user"/>
                <rg:ignoreField field="shipment"/>
            </rg:modify>
            <input type="hidden" name="shipment.id" value="${shipmentInstance.id}">
        </rg:fields>
        <rg:saveButton domainClass="${cargo.freight.OceanFreight}" gridId="freight" conroller="oceanFreight" action="saveOceanFreight"/>
        <rg:cancelButton/>
    </rg:dialog>
    <sec:ifAnyGranted roles="Admin,Create OceanFreight,Edit OceanFreight,Delete OceanFreight">
    <input type="button" ng-click="openOceanFreightCreateDialog()" value="Create Ocean Freight"/>
    </sec:ifAnyGranted>

    <rg:dialog id="railFreight" title="Rail Freight Dialog">
        <rg:fields bean="${new cargo.freight.RailFreight()}" angular="false">
            <rg:modify>
                <rg:ignoreField field="user"/>
                <rg:ignoreField field="shipment"/>
            </rg:modify>
            <input type="hidden" name="shipment.id" value="${shipmentInstance.id}">
        </rg:fields>
        <rg:saveButton domainClass="${cargo.freight.RailFreight}" gridId="freight" conroller="railFreight" action="saveRailFreight"/>
        <rg:cancelButton/>
    </rg:dialog>
    <sec:ifAnyGranted roles="Admin,Create RailFreight,Edit RailFreight,Delete RailFreight">
    <input type="button" ng-click="openRailFreightCreateDialog()" value="Create Rail Freight"/>
    </sec:ifAnyGranted>

    <rg:dialog id="roadFreight" title="Road Freight Dialog">
        <rg:fields bean="${new cargo.freight.RoadFreight()}" angular="false">
            <rg:modify>
                <rg:ignoreField field="user"/>
                <rg:ignoreField field="shipment"/>
            </rg:modify>
            <input type="hidden" name="shipment.id" value="${shipmentInstance.id}">
        </rg:fields>
        <rg:saveButton domainClass="${cargo.freight.RoadFreight}" gridId="freight" conroller="roadFreight" action="saveRoadFreight"/>
        <rg:cancelButton/>
    </rg:dialog>
    <sec:ifAnyGranted roles="Admin,Create RoadFreight,Edit RoadFreight,Delete RoadFreight">
    <input type="button" ng-click="openRoadFreightCreateDialog()" value="Create Road Freight"/>
    </sec:ifAnyGranted>
    <rg:angularController domainClass="${cargo.freight.Freight}" subClasses="true" self="false"/>

    <input type="button" onclick="showAssignDialog()" value="Assign Cargo to Freight">
</div>

<br>
<div id="list-airCargoItem" ng-controller="airCargoItemController" class="content scaffold-list" role="main">
    <rg:grid domainClass="${AirCargoItem}" columns="${[[name: "aircraft"], [name: "flightNum",formatter:'Integer'],[name: "loadingDate"],[name: "etaDate"],[name: "arrivalDate"],[name: "deliveryDate"],[name: "cargoItem"]]}">
        <rg:criteria>
            <rg:eq name="airFreight.id" value="${0}"/>
        </rg:criteria>
        <rg:commands>
            <rg:deleteCommand/>
        </rg:commands>
    </rg:grid>
    <rg:dialog id="airCargoItem" title="Air Cargo Item Dialog">
        <rg:fields bean="${new AirCargoItem()}">

            <rg:modify>
                <rg:hiddenReference field="airFreight"></rg:hiddenReference>
                <rg:hiddenReference field="cargoItem"></rg:hiddenReference>
                <rg:ignoreField field="user"/>
            </rg:modify>

            <rg:interceptCreateDialog>
                $scope.airCargoItemInstance.airFreight = { id: $scope.freightId };
                $scope.airCargoItemInstance.cargoItem = { id: $scope.cargoItemId};
            </rg:interceptCreateDialog>

        </rg:fields>
        <rg:saveButton domainClass="${AirCargoItem}" conroller="shipment" action="saveAirCargoItem" params="[saveCallback:'airCargoSaveCallback']"/>
        <rg:cancelButton/>
    </rg:dialog>
    <g:javascript>
        function airCargoSaveCallback(resp){
            if(resp!='0')
                alert('<g:message code="something" />')
        }
    </g:javascript>
</div>

<div id="list-oceanCargoItem" ng-controller="oceanCargoItemController" class="content scaffold-list" role="main">
    <rg:grid domainClass="${OceanCargoItem}" columns="[[name:'loadingDate'],[name:'etaDate'],[name: 'arrivalDate'],[name: 'deliveryDate'],[name: 'cargoItem']]">
        <rg:criteria>
            <rg:eq name="oceanFreight.id" value="${0}"/>
        </rg:criteria>
        <rg:commands>
            <rg:deleteCommand/>
        </rg:commands>
    </rg:grid>
    <rg:dialog id="oceanCargoItem" title="Ocean Cargo Item Dialog">
        <rg:fields bean="${new OceanCargoItem()}">

            <rg:modify>
                <rg:hiddenReference field="oceanFreight"></rg:hiddenReference>
                <rg:hiddenReference field="cargoItem"></rg:hiddenReference>
                <rg:ignoreField field="user"/>
            </rg:modify>

            <rg:interceptCreateDialog>
                $scope.oceanCargoItemInstance.oceanFreight = { id: $scope.freightId };
                $scope.oceanCargoItemInstance.cargoItem = { id: $scope.cargoItemId };
            </rg:interceptCreateDialog>

        </rg:fields>
        <rg:saveButton domainClass="${OceanCargoItem}" conroller="shipment" action="saveOceanCargoItem" params="[saveCallback:'oceanCargoSaveCallback']"/>
        <rg:cancelButton/>
    </rg:dialog>
    <g:javascript>
        function oceanCargoSaveCallback(resp){
            if(resp!='0')
                alert('<g:message code="something" />')
        }
    </g:javascript>
</div>

<div id="list-railCargoItem" ng-controller="railCargoItemController" class="content scaffold-list" role="main">
    <rg:grid domainClass="${RailCargoItem}" maxColumns="8" columns="[[name:'wagonType'],[name:'wagonNum',formatter:'Integer'],[name:'wagonStatus'],[name:'loadingDate'],[name: 'etaDate'],[name:'arrivalDate'],[name: 'deliveryDate'],[name: 'cargoItem']]">
        <rg:criteria>
            <rg:eq name="railFreight.id" value="${0}"/>
        </rg:criteria>
        <rg:commands>
            <rg:deleteCommand/>
        </rg:commands>
    </rg:grid>
    <rg:dialog id="railCargoItem" title="Rail Cargo Item Dialog">
        <rg:fields bean="${new RailCargoItem()}">

            <rg:modify>
                <rg:hiddenReference field="railFreight"></rg:hiddenReference>
                <rg:hiddenReference field="cargoItem"></rg:hiddenReference>
                <rg:ignoreField field="user"/>
            </rg:modify>

            <rg:interceptCreateDialog>
                $scope.railCargoItemInstance.railFreight = { id: $scope.freightId };
                $scope.railCargoItemInstance.cargoItem =  { id: $scope.cargoItemId };
            </rg:interceptCreateDialog>

        </rg:fields>
        <rg:saveButton domainClass="${RailCargoItem}" conroller="shipment" action="saveRailCargoItem" params="[saveCallback:'railCargoSaveCallback']"/>
        <rg:cancelButton/>
    </rg:dialog>
    <g:javascript>
        function railCargoSaveCallback(resp){
            if(resp!='0')
                alert('<g:message code="something" />')
        }
    </g:javascript>
</div>

<div id="list-roadCargoItem" ng-controller="roadCargoItemController" class="content scaffold-list" role="main">
    <rg:grid domainClass="${RoadCargoItem}" maxColumns="9" columns="[[name:'truck'],[name:'plateNo'],[name:'containerNum',formatter:'integer'],[name:'containerType'],[name:'ftl',formatter: 'checkbox'],[name:'ltl',formatter: 'checkbox'],[name:'driver'],[name:'border'],[name:'loadingDate'],[name:'etaDate'],[name:'borderPass'],[name:'arrivalDate'],[name:'deliveryDate'],[name:'cargoItem']]">
        <rg:criteria>
            <rg:eq name="roadFreight.id" value="${0}"/>
        </rg:criteria>
        <rg:commands>
            <rg:deleteCommand/>
        </rg:commands>
    </rg:grid>
    <rg:dialog id="roadCargoItem" title="Road Cargo Item Dialog">
        <rg:fields bean="${new RoadCargoItem()}">

            <rg:modify>
                <rg:hiddenReference field="roadFreight"></rg:hiddenReference>
                <rg:hiddenReference field="cargoItem"></rg:hiddenReference>
                <rg:ignoreField field="user"/>
            </rg:modify>

            <rg:interceptCreateDialog>
                $scope.roadCargoItemInstance.roadFreight = { id: $scope.freightId };
                $scope.roadCargoItemInstance.cargoItem = { id: $scope.cargoItemId };
            </rg:interceptCreateDialog>

        </rg:fields>
        <rg:saveButton domainClass="${RoadCargoItem}" conroller="shipment" action="saveRoadCargoItem" params="[saveCallback:'roadCargoSaveCallback']"/>
        <rg:cancelButton/>
    </rg:dialog>
    <g:javascript>
        function roadCargoSaveCallback(resp){
            if(resp!='0')
                alert('<g:message code="something" />')
        }
    </g:javascript>
</div>


<g:javascript>
    var cargoItemsGrid = jQuery("#CargoItemGrid");
    var freightsGrid = jQuery("#FreightGrid");

    function makeCargoItemsDraggable() {
        var r = jQuery("#CargoItemGrid tr");
        r.draggable({
            appendTo: "body",
            cursorAt: { left: 0, top: 60 },
            helper: function (row) {
                var id = jQuery(row.currentTarget).attr("id");
                var rowData = cargoItemsGrid.jqGrid('getRowData', id);
                var tag = "<div style=\"background-color:#00ffff; padding: 5px; border-width: 1px; border-style: solid;\">";
                tag += "<p>Chargeable Weight: " + rowData.chargeableWeight + "</p>";
                tag += "<p>Commodity: " + rowData.commodity + "</p>";
                tag += "<p>Gross Weight: " + rowData.grossWeight + "</p>";
                tag += "<p>Height: " + rowData.height + "</p>";
                tag += "<p>Length: " + rowData.length + "</p>";
                tag += "<p>Width: " + rowData.width + "</p>";
                tag += "<p>Chargeable Rate: " + rowData.chargeableRate + "</p>";
                tag += "</div>";
                return tag;
            }
        });
    }

    function makeFreightsDroppable() {
        var r = jQuery("#FreightGrid tr");
        r.droppable({
            drop: function (event, ui) {
                var targetId = jQuery(this).attr("id");
                var sourceId = jQuery(ui.draggable).attr("id");

                var rowData = freightsGrid.jqGrid('getRowData', targetId);
                var type = rowData.type.replace("Freight", "");

                var scp = angular.element(jQuery('#list-' + type.toLowerCase() + 'CargoItem')).scope();

                scp.cargoItemId = sourceId;
                scp.freightId = targetId;

                showCargoItem(type);

                var fn;
                if (type == "Air")
                    fn = scp.openAirCargoItemCreateDialog;
                else if (type == "Ocean")
                    fn = scp.openOceanCargoItemCreateDialog;
                else if (type == "Rail")
                    fn = scp.openRailCargoItemCreateDialog;
                else if (type == "Road")
                    fn = scp.openRoadCargoItemCreateDialog;

                fn();

                var i = 0;
            },
            hoverClass: "ui-state-highlight"
        });
    }
    function showAssignDialog(){
        var targetId = jQuery("#FreightGrid").find("input[type=radio]").filter(":checked").attr("id").substr("4");
        var sourceId = jQuery("#CargoItemGrid").find("input[type=checkbox]").filter(":checked").map(function(){return $(this).attr("name").substr(4)}).get().join();

        var rowData = freightsGrid.jqGrid('getRowData', targetId);
        var type = rowData.type.replace("Freight", "");

        var scp = angular.element(jQuery('#list-' + type.toLowerCase() + 'CargoItem')).scope();

        scp.cargoItemId = sourceId;
        scp.freightId = targetId;

        showCargoItem(type);

        var fn;
        if (type == "Air")
            fn = scp.openAirCargoItemCreateDialog;
        else if (type == "Ocean")
            fn = scp.openOceanCargoItemCreateDialog;
        else if (type == "Rail")
            fn = scp.openRailCargoItemCreateDialog;
        else if (type == "Road")
            fn = scp.openRoadCargoItemCreateDialog;

        fn();

    }

    function showCargoItem(prefix) {
        prefix = prefix.toLowerCase();
        if (prefix != "air")
            jQuery("#list-airCargoItem").hide();
        if (prefix != "ocean")
            jQuery("#list-oceanCargoItem").hide();
        if (prefix != "rail")
            jQuery("#list-railCargoItem").hide();
        if (prefix != "road")
            jQuery("#list-roadCargoItem").hide();

        jQuery("#list-" + prefix + "CargoItem").show();
    }

    cargoItemsGrid.jqGrid('setGridParam', { loadComplete: function (data) {
        makeCargoItemsDraggable();
    }});
    cargoItemsGrid.jqGrid('setGridParam', { gridComplete: function () {
        makeCargoItemsDraggable();
    }});

    freightsGrid.jqGrid('setGridParam', { loadComplete: function (data) {
        makeFreightsDroppable();
    }});
    freightsGrid.jqGrid('setGridParam', { gridComplete: function () {
        makeFreightsDroppable();
    }});

    showCargoItem("");

</g:javascript>
<br>
<g:if test="${customsOperation?.oneSheetInsurance}">
    <div id="list-oneSheetInsuranceCert" ng-controller="oneSheetInsuranceCertController" class="content scaffold-list" role="main">
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <rg:grid domainClass="${cargo.insuranceCertificate.OneSheetInsuranceCert}" columns="${[[name: "insuranceNum",formatter:'Integer'],[name: "issueDate"],[name: "transitFrom"],[name: "transitTo"],[name: "totalCost"]]}">
            <rg:criteria>
                <rg:eq name='shipment.id' value='${shipmentInstance.id}'/>
            </rg:criteria>
        </rg:grid>
    </div>
</g:if>
<g:elseif test="${customsOperation?.multiSheetInsurance}">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <rg:grid domainClass="${cargo.insuranceCertificate.UsedInsuranceCert}" columns="${[[name: "assignedInsuranceCert"],[name: "usedDate"],[name: "shipment"],[name: "transitFrom"],[name: "transitTo"],[name: "coupons"],[name: "total",formatter:'Integer'],[name: "totalCost",formatter:'Integer']]}">
        <rg:criteria>
            <rg:eq name='shipment.id' value='${shipmentInstance.id}'/>
        </rg:criteria>
    </rg:grid>
</g:elseif>
<br>
<div id="list-documentType" ng-controller="documentTypeController" class="content scaffold-list" role="main">
    <rg:grid domainClass="${cargo.DocumentType}" columns="${[[name: "title"], [name: "persianTitle"],[name: "critical",formatter:'generateCheckbox']]}">
        <rg:criteria>
            <rg:eq name="shipment.id" value="${shipmentInstance.id}" />
        </rg:criteria>
    </rg:grid>
    <rg:dialog id="documentType" title="Document Type Dialog">
        <rg:fields bean="${new cargo.DocumentType()}">
            <rg:modify>
                <rg:ignoreField field="user"/>
                <rg:ignoreField field="shipment"/>
            </rg:modify>
            <input type="hidden" name="shipment.id" value="${shipmentInstance.id}">
        </rg:fields>
        <rg:saveButton domainClass="${cargo.DocumentType}" gridId="documentType" conroller="documentType" action="saveDocumentType"/>
        <rg:cancelButton/>
    </rg:dialog>
    <br>
    <input type="button" ng-click="openDocumentTypeCreateDialog()" value="Create Document Type"/>
    <input type="button" ng-click="openDocumentTypeEditDialog()" value="Edit Document Type"/>

</div>
</body>
</html>
