databaseChangeLog = {

    changeSet(author: "Farshid (generated)", id: "1353062611333-1") {
        createTable(tableName: "air_cargo_item") {
            column(autoIncrement: "true", name: "id", type: "bigint") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "air_cargo_itePK")
            }

            column(name: "version", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "air_freight_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "cargo_item_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "testing", type: "varchar(255)") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-2") {
        createTable(tableName: "air_waybill_air_cargo_item") {
            column(name: "air_waybill_cargo_items_id", type: "bigint")

            column(name: "air_cargo_item_id", type: "bigint")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-3") {
        createTable(tableName: "airport") {
            column(autoIncrement: "true", name: "id", type: "bigint") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "airportPK")
            }

            column(name: "version", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "abbreviation", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "city_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "title", type: "varchar(255)") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-4") {
        createTable(tableName: "bill_of_lading") {
            column(autoIncrement: "true", name: "id", type: "bigint") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "bill_of_ladinPK")
            }

            column(name: "version", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "agent_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "consignee_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "date_of_issue", type: "datetime") {
                constraints(nullable: "false")
            }

            column(name: "freight_payable_at", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "notify_party_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "number_of_bills", type: "integer") {
                constraints(nullable: "false")
            }

            column(name: "place_of_delivery_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "place_of_discharge_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "place_of_issue_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "place_of_loading_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "place_of_receipt_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "shipper_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "signature", type: "varchar(512)") {
                constraints(nullable: "false")
            }

            column(name: "signed_as", type: "varchar(10)") {
                constraints(nullable: "false")
            }

            column(name: "class", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "cc_charges_in_dest_currency", type: "double")

            column(name: "charges_at_destination", type: "double")

            column(name: "collect_tax", type: "double")

            column(name: "collect_total_other_charges_due_agent", type: "double")

            column(name: "collect_total_other_charges_due_carrier", type: "double")

            column(name: "collect_valuation_charges", type: "double")

            column(name: "collect_weight_charge", type: "double")

            column(name: "currency_conversion_rates", type: "double")

            column(name: "execution_date", type: "datetime")

            column(name: "execution_place", type: "datetime")

            column(name: "insurance_premium", type: "varchar(255)")

            column(name: "other_charges", type: "varchar(255)")

            column(name: "prepaid_tax", type: "double")

            column(name: "prepaid_total_other_charges_due_agent", type: "double")

            column(name: "prepaid_total_other_charges_due_carrier", type: "double")

            column(name: "prepaid_valuation_charges", type: "double")

            column(name: "prepaid_weight_charge", type: "double")

            column(name: "signature_of_issuing_carrier_or_its_agent", type: "varchar(255)")

            column(name: "signature_of_shipper_or_his_agent", type: "varchar(255)")

            column(name: "total_collect", type: "double")

            column(name: "total_collect_charges", type: "double")

            column(name: "total_prepaid", type: "double")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-5") {
        createTable(tableName: "cargo_item") {
            column(autoIncrement: "true", name: "id", type: "bigint") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "cargo_itemPK")
            }

            column(name: "version", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "chargeable_weight", type: "double") {
                constraints(nullable: "false")
            }

            column(name: "commodity_item_no", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "gross_weight", type: "double") {
                constraints(nullable: "false")
            }

            column(name: "height", type: "double") {
                constraints(nullable: "false")
            }

            column(name: "length", type: "double") {
                constraints(nullable: "false")
            }

            column(name: "nature_and_quantity_of_goods", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "no_of_package", type: "integer") {
                constraints(nullable: "false")
            }

            column(name: "rate", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "rate_or_charge", type: "double") {
                constraints(nullable: "false")
            }

            column(name: "shipment_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "total", type: "double") {
                constraints(nullable: "false")
            }

            column(name: "unit_of_measure", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "width", type: "double") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-6") {
        createTable(tableName: "city") {
            column(autoIncrement: "true", name: "id", type: "bigint") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "cityPK")
            }

            column(name: "version", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "abbreviation", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "country_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "persian_title", type: "varchar(50)") {
                constraints(nullable: "false")
            }

            column(name: "port", type: "bit") {
                constraints(nullable: "false")
            }

            column(name: "title", type: "varchar(50)") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-7") {
        createTable(tableName: "country") {
            column(autoIncrement: "true", name: "id", type: "bigint") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "countryPK")
            }

            column(name: "version", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "abbreviation", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "persian_title", type: "varchar(50)") {
                constraints(nullable: "false")
            }

            column(name: "title", type: "varchar(50)") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-8") {
        createTable(tableName: "document_type") {
            column(autoIncrement: "true", name: "id", type: "bigint") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "document_typePK")
            }

            column(name: "version", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "critical", type: "bit") {
                constraints(nullable: "false")
            }

            column(name: "persian_title", type: "varchar(50)") {
                constraints(nullable: "false")
            }

            column(name: "title", type: "varchar(50)") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-9") {
        createTable(tableName: "driver") {
            column(autoIncrement: "true", name: "id", type: "bigint") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "driverPK")
            }

            column(name: "version", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "address", type: "varchar(1024)") {
                constraints(nullable: "false")
            }

            column(name: "birth_date", type: "datetime") {
                constraints(nullable: "false")
            }

            column(name: "exit_permission_date_of_issue", type: "datetime") {
                constraints(nullable: "false")
            }

            column(name: "exit_permission_number", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "exit_permission_validity", type: "datetime") {
                constraints(nullable: "false")
            }

            column(name: "family", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "father_name", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "home_tel", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "id_number", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "mobile", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "name", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "passport_date_of_issure", type: "datetime") {
                constraints(nullable: "false")
            }

            column(name: "passport_number", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "passport_validity", type: "datetime") {
                constraints(nullable: "false")
            }

            column(name: "place_of_birth", type: "varchar(255)") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-10") {
        createTable(tableName: "forwarding_reference") {
            column(autoIncrement: "true", name: "id", type: "bigint") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "forwarding_rePK")
            }

            column(name: "version", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "address", type: "varchar(512)") {
                constraints(nullable: "false")
            }

            column(name: "asacarrier", type: "bit") {
                constraints(nullable: "false")
            }

            column(name: "asaconsignee", type: "bit") {
                constraints(nullable: "false")
            }

            column(name: "asanotify_party", type: "bit") {
                constraints(nullable: "false")
            }

            column(name: "asashipper", type: "bit") {
                constraints(nullable: "false")
            }

            column(name: "as_an_agent", type: "bit") {
                constraints(nullable: "false")
            }

            column(name: "contact_person", type: "varchar(50)") {
                constraints(nullable: "false")
            }

            column(name: "fax", type: "varchar(12)") {
                constraints(nullable: "false")
            }

            column(name: "telephone", type: "varchar(12)") {
                constraints(nullable: "false")
            }

            column(name: "title", type: "varchar(50)") {
                constraints(nullable: "false")
            }

            column(name: "web_site", type: "varchar(50)") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-11") {
        createTable(tableName: "freight") {
            column(autoIncrement: "true", name: "id", type: "bigint") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "freightPK")
            }

            column(name: "version", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "agent_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "consignee_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "date_of_issue", type: "datetime") {
                constraints(nullable: "false")
            }

            column(name: "freight_payable_at", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "notify_party_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "number_of_bills", type: "integer") {
                constraints(nullable: "false")
            }

            column(name: "place_of_delivery_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "place_of_discharge_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "place_of_issue_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "place_of_loading_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "place_of_receipt_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "shipment_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "shipper_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "signature", type: "varchar(512)") {
                constraints(nullable: "false")
            }

            column(name: "signed_as", type: "varchar(10)") {
                constraints(nullable: "false")
            }

            column(name: "class", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "cc_charges_in_dest_currency", type: "double")

            column(name: "charges_at_destination", type: "double")

            column(name: "collect_tax", type: "double")

            column(name: "collect_total_other_charges_due_agent", type: "double")

            column(name: "collect_total_other_charges_due_carrier", type: "double")

            column(name: "collect_valuation_charges", type: "double")

            column(name: "collect_weight_charge", type: "double")

            column(name: "currency_conversion_rates", type: "double")

            column(name: "execution_date", type: "datetime")

            column(name: "execution_place", type: "datetime")

            column(name: "insurance_premium", type: "varchar(255)")

            column(name: "other_charges", type: "varchar(255)")

            column(name: "prepaid_tax", type: "double")

            column(name: "prepaid_total_other_charges_due_agent", type: "double")

            column(name: "prepaid_total_other_charges_due_carrier", type: "double")

            column(name: "prepaid_valuation_charges", type: "double")

            column(name: "prepaid_weight_charge", type: "double")

            column(name: "signature_of_issuing_carrier_or_its_agent", type: "varchar(255)")

            column(name: "signature_of_shipper_or_his_agent", type: "varchar(255)")

            column(name: "total_collect", type: "double")

            column(name: "total_collect_charges", type: "double")

            column(name: "total_prepaid", type: "double")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-12") {
        createTable(tableName: "ocean_cargo_item") {
            column(autoIncrement: "true", name: "id", type: "bigint") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "ocean_cargo_iPK")
            }

            column(name: "version", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "cargo_item_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "ocean_freight_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "test_property", type: "varchar(255)") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-13") {
        createTable(tableName: "rail_cargo_item") {
            column(autoIncrement: "true", name: "id", type: "bigint") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "rail_cargo_itPK")
            }

            column(name: "version", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "cargo_item_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "rail_freight_id", type: "bigint") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-14") {
        createTable(tableName: "road_cargo_item") {
            column(autoIncrement: "true", name: "id", type: "bigint") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "road_cargo_itPK")
            }

            column(name: "version", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "cargo_item_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "road_freight_id", type: "bigint") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-15") {
        createTable(tableName: "shipment") {
            column(autoIncrement: "true", name: "id", type: "bigint") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "shipmentPK")
            }

            column(name: "version", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "description", type: "varchar(1024)") {
                constraints(nullable: "false")
            }

            column(name: "title", type: "varchar(255)") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-16") {
        createTable(tableName: "truck") {
            column(autoIncrement: "true", name: "id", type: "bigint") {
                constraints(nullable: "false", primaryKey: "true", primaryKeyName: "truckPK")
            }

            column(name: "version", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "carrier_id", type: "bigint") {
                constraints(nullable: "false")
            }

            column(name: "chassis_no", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "kind_of_vehicle", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "other_particulars", type: "varchar(128)") {
                constraints(nullable: "false")
            }

            column(name: "registration_no", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "trademark", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "trailer_number", type: "varchar(255)") {
                constraints(nullable: "false")
            }

            column(name: "type_of_vehicle", type: "varchar(255)") {
                constraints(nullable: "false")
            }
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-17") {
        addForeignKeyConstraint(baseColumnNames: "air_freight_id", baseTableName: "air_cargo_item", constraintName: "FKAD3CBCB37547F62", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "freight", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-18") {
        addForeignKeyConstraint(baseColumnNames: "cargo_item_id", baseTableName: "air_cargo_item", constraintName: "FKAD3CBCBD2FA89A2", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "cargo_item", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-19") {
        addForeignKeyConstraint(baseColumnNames: "air_cargo_item_id", baseTableName: "air_waybill_air_cargo_item", constraintName: "FK656152494C4BF205", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "air_cargo_item", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-20") {
        addForeignKeyConstraint(baseColumnNames: "air_waybill_cargo_items_id", baseTableName: "air_waybill_air_cargo_item", constraintName: "FK65615249495131F9", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "bill_of_lading", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-21") {
        addForeignKeyConstraint(baseColumnNames: "city_id", baseTableName: "airport", constraintName: "FKC4E45CCB201FB0EC", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "city", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-22") {
        addForeignKeyConstraint(baseColumnNames: "agent_id", baseTableName: "bill_of_lading", constraintName: "FKDF85923E87DAC11", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "forwarding_reference", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-23") {
        addForeignKeyConstraint(baseColumnNames: "consignee_id", baseTableName: "bill_of_lading", constraintName: "FKDF859235185F9B7", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "forwarding_reference", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-24") {
        addForeignKeyConstraint(baseColumnNames: "notify_party_id", baseTableName: "bill_of_lading", constraintName: "FKDF859236DB878C6", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "forwarding_reference", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-25") {
        addForeignKeyConstraint(baseColumnNames: "place_of_delivery_id", baseTableName: "bill_of_lading", constraintName: "FKDF85923A9BB1D93", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "city", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-26") {
        addForeignKeyConstraint(baseColumnNames: "place_of_discharge_id", baseTableName: "bill_of_lading", constraintName: "FKDF859234B818465", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "city", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-27") {
        addForeignKeyConstraint(baseColumnNames: "place_of_issue_id", baseTableName: "bill_of_lading", constraintName: "FKDF85923D226ECEE", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "city", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-28") {
        addForeignKeyConstraint(baseColumnNames: "place_of_loading_id", baseTableName: "bill_of_lading", constraintName: "FKDF85923BED3E9AB", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "city", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-29") {
        addForeignKeyConstraint(baseColumnNames: "place_of_receipt_id", baseTableName: "bill_of_lading", constraintName: "FKDF85923B2AAE72F", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "city", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-30") {
        addForeignKeyConstraint(baseColumnNames: "shipper_id", baseTableName: "bill_of_lading", constraintName: "FKDF85923EAFA435", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "forwarding_reference", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-31") {
        addForeignKeyConstraint(baseColumnNames: "shipment_id", baseTableName: "cargo_item", constraintName: "FKF412C1B61E8E358C", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "shipment", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-32") {
        addForeignKeyConstraint(baseColumnNames: "country_id", baseTableName: "city", constraintName: "FK2E996B122C55A8", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "country", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-33") {
        addForeignKeyConstraint(baseColumnNames: "agent_id", baseTableName: "freight", constraintName: "FKDC04A343E87DAC11", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "forwarding_reference", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-34") {
        addForeignKeyConstraint(baseColumnNames: "consignee_id", baseTableName: "freight", constraintName: "FKDC04A3435185F9B7", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "forwarding_reference", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-35") {
        addForeignKeyConstraint(baseColumnNames: "notify_party_id", baseTableName: "freight", constraintName: "FKDC04A3436DB878C6", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "forwarding_reference", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-36") {
        addForeignKeyConstraint(baseColumnNames: "place_of_delivery_id", baseTableName: "freight", constraintName: "FKDC04A343A9BB1D93", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "city", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-37") {
        addForeignKeyConstraint(baseColumnNames: "place_of_discharge_id", baseTableName: "freight", constraintName: "FKDC04A3434B818465", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "city", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-38") {
        addForeignKeyConstraint(baseColumnNames: "place_of_issue_id", baseTableName: "freight", constraintName: "FKDC04A343D226ECEE", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "city", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-39") {
        addForeignKeyConstraint(baseColumnNames: "place_of_loading_id", baseTableName: "freight", constraintName: "FKDC04A343BED3E9AB", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "city", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-40") {
        addForeignKeyConstraint(baseColumnNames: "place_of_receipt_id", baseTableName: "freight", constraintName: "FKDC04A343B2AAE72F", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "city", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-41") {
        addForeignKeyConstraint(baseColumnNames: "shipment_id", baseTableName: "freight", constraintName: "FKDC04A3431E8E358C", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "shipment", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-42") {
        addForeignKeyConstraint(baseColumnNames: "shipper_id", baseTableName: "freight", constraintName: "FKDC04A343EAFA435", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "forwarding_reference", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-43") {
        addForeignKeyConstraint(baseColumnNames: "cargo_item_id", baseTableName: "ocean_cargo_item", constraintName: "FK8D857397D2FA89A2", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "cargo_item", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-44") {
        addForeignKeyConstraint(baseColumnNames: "ocean_freight_id", baseTableName: "ocean_cargo_item", constraintName: "FK8D857397303A41BA", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "freight", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-45") {
        addForeignKeyConstraint(baseColumnNames: "cargo_item_id", baseTableName: "rail_cargo_item", constraintName: "FKE05F3C83D2FA89A2", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "cargo_item", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-46") {
        addForeignKeyConstraint(baseColumnNames: "rail_freight_id", baseTableName: "rail_cargo_item", constraintName: "FKE05F3C83DB527238", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "freight", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-47") {
        addForeignKeyConstraint(baseColumnNames: "cargo_item_id", baseTableName: "road_cargo_item", constraintName: "FK88DAE435D2FA89A2", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "cargo_item", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-48") {
        addForeignKeyConstraint(baseColumnNames: "road_freight_id", baseTableName: "road_cargo_item", constraintName: "FK88DAE435FEA56A9C", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "freight", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-49") {
        addForeignKeyConstraint(baseColumnNames: "carrier_id", baseTableName: "truck", constraintName: "FK6983C5FC0FEA73E", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "forwarding_reference", referencesUniqueColumn: "false")
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-50") {
        createIndex(indexName: "FKAD3CBCB37547F62", tableName: "air_cargo_item") {
            column(name: "air_freight_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-51") {
        createIndex(indexName: "FKAD3CBCBD2FA89A2", tableName: "air_cargo_item") {
            column(name: "cargo_item_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-52") {
        createIndex(indexName: "FK65615249495131F9", tableName: "air_waybill_air_cargo_item") {
            column(name: "air_waybill_cargo_items_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-53") {
        createIndex(indexName: "FK656152494C4BF205", tableName: "air_waybill_air_cargo_item") {
            column(name: "air_cargo_item_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-54") {
        createIndex(indexName: "FKC4E45CCB201FB0EC", tableName: "airport") {
            column(name: "city_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-55") {
        createIndex(indexName: "FKDF859234B818465", tableName: "bill_of_lading") {
            column(name: "place_of_discharge_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-56") {
        createIndex(indexName: "FKDF859235185F9B7", tableName: "bill_of_lading") {
            column(name: "consignee_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-57") {
        createIndex(indexName: "FKDF859236DB878C6", tableName: "bill_of_lading") {
            column(name: "notify_party_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-58") {
        createIndex(indexName: "FKDF85923A9BB1D93", tableName: "bill_of_lading") {
            column(name: "place_of_delivery_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-59") {
        createIndex(indexName: "FKDF85923B2AAE72F", tableName: "bill_of_lading") {
            column(name: "place_of_receipt_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-60") {
        createIndex(indexName: "FKDF85923BED3E9AB", tableName: "bill_of_lading") {
            column(name: "place_of_loading_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-61") {
        createIndex(indexName: "FKDF85923D226ECEE", tableName: "bill_of_lading") {
            column(name: "place_of_issue_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-62") {
        createIndex(indexName: "FKDF85923E87DAC11", tableName: "bill_of_lading") {
            column(name: "agent_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-63") {
        createIndex(indexName: "FKDF85923EAFA435", tableName: "bill_of_lading") {
            column(name: "shipper_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-64") {
        createIndex(indexName: "FKF412C1B61E8E358C", tableName: "cargo_item") {
            column(name: "shipment_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-65") {
        createIndex(indexName: "FK2E996B122C55A8", tableName: "city") {
            column(name: "country_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-66") {
        createIndex(indexName: "FKDC04A3431E8E358C", tableName: "freight") {
            column(name: "shipment_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-67") {
        createIndex(indexName: "FKDC04A3434B818465", tableName: "freight") {
            column(name: "place_of_discharge_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-68") {
        createIndex(indexName: "FKDC04A3435185F9B7", tableName: "freight") {
            column(name: "consignee_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-69") {
        createIndex(indexName: "FKDC04A3436DB878C6", tableName: "freight") {
            column(name: "notify_party_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-70") {
        createIndex(indexName: "FKDC04A343A9BB1D93", tableName: "freight") {
            column(name: "place_of_delivery_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-71") {
        createIndex(indexName: "FKDC04A343B2AAE72F", tableName: "freight") {
            column(name: "place_of_receipt_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-72") {
        createIndex(indexName: "FKDC04A343BED3E9AB", tableName: "freight") {
            column(name: "place_of_loading_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-73") {
        createIndex(indexName: "FKDC04A343D226ECEE", tableName: "freight") {
            column(name: "place_of_issue_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-74") {
        createIndex(indexName: "FKDC04A343E87DAC11", tableName: "freight") {
            column(name: "agent_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-75") {
        createIndex(indexName: "FKDC04A343EAFA435", tableName: "freight") {
            column(name: "shipper_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-76") {
        createIndex(indexName: "FK8D857397303A41BA", tableName: "ocean_cargo_item") {
            column(name: "ocean_freight_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-77") {
        createIndex(indexName: "FK8D857397D2FA89A2", tableName: "ocean_cargo_item") {
            column(name: "cargo_item_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-78") {
        createIndex(indexName: "FKE05F3C83D2FA89A2", tableName: "rail_cargo_item") {
            column(name: "cargo_item_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-79") {
        createIndex(indexName: "FKE05F3C83DB527238", tableName: "rail_cargo_item") {
            column(name: "rail_freight_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-80") {
        createIndex(indexName: "FK88DAE435D2FA89A2", tableName: "road_cargo_item") {
            column(name: "cargo_item_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-81") {
        createIndex(indexName: "FK88DAE435FEA56A9C", tableName: "road_cargo_item") {
            column(name: "road_freight_id")
        }
    }

    changeSet(author: "Farshid (generated)", id: "1353062611333-82") {
        createIndex(indexName: "FK6983C5FC0FEA73E", tableName: "truck") {
            column(name: "carrier_id")
        }
    }
}
