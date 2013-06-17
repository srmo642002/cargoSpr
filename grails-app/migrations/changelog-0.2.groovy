databaseChangeLog = {

	changeSet(author: "roohi (generated)", id: "1360230296142-1") {
		createTable(tableName: "assigned_insurance_cert") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "assigned_insuPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "agent_id", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "assign_range", type: "tinyblob(255)") {
				constraints(nullable: "false")
			}

			column(name: "sending_date", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "serial_num_end", type: "double") {
				constraints(nullable: "false")
			}

			column(name: "serial_num_start", type: "double") {
				constraints(nullable: "false")
			}

			column(name: "total_count", type: "double") {
				constraints(nullable: "false")
			}

			column(name: "total_depreciated", type: "double")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-2") {
		createTable(tableName: "available_insurance_cert") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "available_insPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "assigned_insurance_cert_id", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "avl_end", type: "double") {
				constraints(nullable: "false")
			}

			column(name: "avl_start", type: "double") {
				constraints(nullable: "false")
			}

			column(name: "insurance_cert_id", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-3") {
		createTable(tableName: "insurance_cert") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "insurance_cerPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "purchase_code", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "purchase_date", type: "datetime") {
				constraints(nullable: "false")
			}

			column(name: "serial_num_end", type: "double") {
				constraints(nullable: "false")
			}

			column(name: "serial_num_start", type: "double") {
				constraints(nullable: "false")
			}

			column(name: "total_count", type: "double") {
				constraints(nullable: "false")
			}

			column(name: "total_depreciated", type: "double")

			column(name: "total_remaining", type: "double")

			column(name: "total_sending", type: "double")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-4") {
		createTable(tableName: "local_agent") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "local_agentPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "address", type: "varchar(1024)") {
				constraints(nullable: "false")
			}

			column(name: "agent", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "city_id", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "fax", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "telephone", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-5") {
		createTable(tableName: "rail_insurance_cert") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "rail_insurancPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "smgsno", type: "double") {
				constraints(nullable: "false")
			}

			column(name: "rail_cargo_item_id", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-6") {
		createTable(tableName: "road_insurance_cert") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "road_insurancPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "cmr", type: "double") {
				constraints(nullable: "false")
			}

			column(name: "road_cargo_item_id", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-7") {
		addColumn(tableName: "air_cargo_item") {
			column(name: "aircraft", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-8") {
		addColumn(tableName: "air_cargo_item") {
			column(name: "arrival_date", type: "datetime") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-9") {
		addColumn(tableName: "air_cargo_item") {
			column(name: "delivery_order_date", type: "datetime") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-10") {
		addColumn(tableName: "air_cargo_item") {
			column(name: "eta_date", type: "datetime") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-11") {
		addColumn(tableName: "air_cargo_item") {
			column(name: "flight_num", type: "double") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-12") {
		addColumn(tableName: "air_cargo_item") {
			column(name: "loading_date", type: "datetime") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-13") {
		addColumn(tableName: "cargo_item") {
			column(name: "chargeable_rate", type: "double") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-14") {
		addColumn(tableName: "cargo_item") {
			column(name: "commodity", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-15") {
		addColumn(tableName: "cargo_item") {
			column(name: "kind_of_package", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-16") {
		addColumn(tableName: "cargo_item") {
			column(name: "total_volume", type: "double") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-17") {
		addColumn(tableName: "cargo_item") {
			column(name: "total_weight", type: "double") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-18") {
		addColumn(tableName: "cargo_item") {
			column(name: "volume", type: "double") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-19") {
		addColumn(tableName: "freight") {
			column(name: "airport_departure_id", type: "bigint")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-20") {
		addColumn(tableName: "freight") {
			column(name: "airport_destination_id", type: "bigint")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-21") {
		addColumn(tableName: "freight") {
			column(name: "cmr", type: "varchar(255)")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-22") {
		addColumn(tableName: "freight") {
			column(name: "mbl", type: "varchar(255)")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-23") {
		addColumn(tableName: "freight") {
			column(name: "rail_way_co", type: "varchar(255)")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-24") {
		addColumn(tableName: "freight") {
			column(name: "shipping_co", type: "varchar(255)")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-25") {
		addColumn(tableName: "freight") {
			column(name: "smgsno", type: "double")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-26") {
		addColumn(tableName: "freight") {
			column(name: "station_code", type: "double")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-27") {
		addColumn(tableName: "freight") {
			column(name: "vessel_name", type: "varchar(255)")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-28") {
		addColumn(tableName: "freight") {
			column(name: "vessel_voy_no", type: "double")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-29") {
		addColumn(tableName: "ocean_cargo_item") {
			column(name: "arrival_date", type: "datetime") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-30") {
		addColumn(tableName: "ocean_cargo_item") {
			column(name: "delivery_order_date", type: "datetime") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-31") {
		addColumn(tableName: "ocean_cargo_item") {
			column(name: "eta_date", type: "datetime") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-32") {
		addColumn(tableName: "ocean_cargo_item") {
			column(name: "loading_date", type: "datetime") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-33") {
		addColumn(tableName: "rail_cargo_item") {
			column(name: "arrival_date", type: "datetime") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-34") {
		addColumn(tableName: "rail_cargo_item") {
			column(name: "delivery_order_date", type: "datetime") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-35") {
		addColumn(tableName: "rail_cargo_item") {
			column(name: "eta_date", type: "datetime") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-36") {
		addColumn(tableName: "rail_cargo_item") {
			column(name: "loading_date", type: "datetime") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-37") {
		addColumn(tableName: "rail_cargo_item") {
			column(name: "wagon_num", type: "double") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-38") {
		addColumn(tableName: "rail_cargo_item") {
			column(name: "wagon_status", type: "varchar(7)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-39") {
		addColumn(tableName: "rail_cargo_item") {
			column(name: "wagon_type", type: "varchar(7)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-40") {
		addColumn(tableName: "road_cargo_item") {
			column(name: "arrival_date", type: "datetime") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-41") {
		addColumn(tableName: "road_cargo_item") {
			column(name: "cntr_no", type: "double") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-42") {
		addColumn(tableName: "road_cargo_item") {
			column(name: "delivery_order_date", type: "datetime") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-43") {
		addColumn(tableName: "road_cargo_item") {
			column(name: "driver_id", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-44") {
		addColumn(tableName: "road_cargo_item") {
			column(name: "eta_date", type: "datetime") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-45") {
		addColumn(tableName: "road_cargo_item") {
			column(name: "loading_date", type: "datetime") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-46") {
		addColumn(tableName: "road_cargo_item") {
			column(name: "truck_id", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-47") {
		addColumn(tableName: "shipment") {
			column(name: "agent_id", type: "bigint")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-48") {
		addColumn(tableName: "shipment") {
			column(name: "charge", type: "double")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-49") {
		addColumn(tableName: "shipment") {
			column(name: "consignee_id", type: "bigint")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-50") {
		addColumn(tableName: "shipment") {
			column(name: "currency", type: "varchar(3)")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-51") {
		addColumn(tableName: "shipment") {
			column(name: "destination_cnt_id", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-52") {
		addColumn(tableName: "shipment") {
			column(name: "destination_cty_id", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-53") {
		addColumn(tableName: "shipment") {
			column(name: "freight_charge", type: "varchar(7)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-54") {
		addColumn(tableName: "shipment") {
			column(name: "hbl", type: "varchar(255)")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-55") {
		addColumn(tableName: "shipment") {
			column(name: "notify_party_id", type: "bigint")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-56") {
		addColumn(tableName: "shipment") {
			column(name: "origin_cnt_id", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-57") {
		addColumn(tableName: "shipment") {
			column(name: "origin_cty_id", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-58") {
		addColumn(tableName: "shipment") {
			column(name: "reference_code", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-59") {
		addColumn(tableName: "shipment") {
			column(name: "shipper_id", type: "bigint")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-60") {
		dropNotNullConstraint(columnDataType: "integer", columnName: "number_of_bills", tableName: "freight")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-61") {
		dropNotNullConstraint(columnDataType: "varchar(512)", columnName: "signature", tableName: "freight")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-62") {
		dropForeignKeyConstraint(baseTableName: "freight", baseTableSchemaName: "cargo", constraintName: "FKDC04A343E87DAC11")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-63") {
		dropForeignKeyConstraint(baseTableName: "freight", baseTableSchemaName: "cargo", constraintName: "FKDC04A3435185F9B7")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-64") {
		dropForeignKeyConstraint(baseTableName: "freight", baseTableSchemaName: "cargo", constraintName: "FKDC04A3436DB878C6")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-65") {
		dropForeignKeyConstraint(baseTableName: "freight", baseTableSchemaName: "cargo", constraintName: "FKDC04A343EAFA435")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-66") {
		addForeignKeyConstraint(baseColumnNames: "agent_id", baseTableName: "assigned_insurance_cert", constraintName: "FK15641EFA4921881", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "local_agent", referencesUniqueColumn: "false")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-67") {
		addForeignKeyConstraint(baseColumnNames: "assigned_insurance_cert_id", baseTableName: "available_insurance_cert", constraintName: "FK78F3AC9FDCF8BDF1", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "assigned_insurance_cert", referencesUniqueColumn: "false")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-68") {
		addForeignKeyConstraint(baseColumnNames: "insurance_cert_id", baseTableName: "available_insurance_cert", constraintName: "FK78F3AC9FDF30EE50", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "insurance_cert", referencesUniqueColumn: "false")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-69") {
		addForeignKeyConstraint(baseColumnNames: "airport_departure_id", baseTableName: "freight", constraintName: "FKDC04A343509233B3", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "airport", referencesUniqueColumn: "false")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-70") {
		addForeignKeyConstraint(baseColumnNames: "airport_destination_id", baseTableName: "freight", constraintName: "FKDC04A343A78FD59", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "airport", referencesUniqueColumn: "false")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-71") {
		addForeignKeyConstraint(baseColumnNames: "city_id", baseTableName: "local_agent", constraintName: "FK67E10931201FB0EC", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "city", referencesUniqueColumn: "false")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-72") {
		addForeignKeyConstraint(baseColumnNames: "rail_cargo_item_id", baseTableName: "rail_insurance_cert", constraintName: "FKA8F20B677CEE8C3", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "rail_cargo_item", referencesUniqueColumn: "false")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-73") {
		addForeignKeyConstraint(baseColumnNames: "driver_id", baseTableName: "road_cargo_item", constraintName: "FK88DAE43589AA5F4C", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "driver", referencesUniqueColumn: "false")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-74") {
		addForeignKeyConstraint(baseColumnNames: "truck_id", baseTableName: "road_cargo_item", constraintName: "FK88DAE435A75A4888", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "truck", referencesUniqueColumn: "false")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-75") {
		addForeignKeyConstraint(baseColumnNames: "road_cargo_item_id", baseTableName: "road_insurance_cert", constraintName: "FK38AB9F6827F4B803", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "road_cargo_item", referencesUniqueColumn: "false")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-76") {
		addForeignKeyConstraint(baseColumnNames: "agent_id", baseTableName: "shipment", constraintName: "FKE139719AE87DAC11", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "forwarding_reference", referencesUniqueColumn: "false")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-77") {
		addForeignKeyConstraint(baseColumnNames: "consignee_id", baseTableName: "shipment", constraintName: "FKE139719A5185F9B7", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "forwarding_reference", referencesUniqueColumn: "false")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-78") {
		addForeignKeyConstraint(baseColumnNames: "destination_cnt_id", baseTableName: "shipment", constraintName: "FKE139719AE82B2446", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "country", referencesUniqueColumn: "false")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-79") {
		addForeignKeyConstraint(baseColumnNames: "destination_cty_id", baseTableName: "shipment", constraintName: "FKE139719A8AFF6060", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "city", referencesUniqueColumn: "false")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-80") {
		addForeignKeyConstraint(baseColumnNames: "notify_party_id", baseTableName: "shipment", constraintName: "FKE139719A6DB878C6", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "forwarding_reference", referencesUniqueColumn: "false")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-81") {
		addForeignKeyConstraint(baseColumnNames: "origin_cnt_id", baseTableName: "shipment", constraintName: "FKE139719A458D8E2E", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "country", referencesUniqueColumn: "false")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-82") {
		addForeignKeyConstraint(baseColumnNames: "origin_cty_id", baseTableName: "shipment", constraintName: "FKE139719AE861CA48", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "city", referencesUniqueColumn: "false")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-83") {
		addForeignKeyConstraint(baseColumnNames: "shipper_id", baseTableName: "shipment", constraintName: "FKE139719AEAFA435", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "forwarding_reference", referencesUniqueColumn: "false")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-84") {
		createIndex(indexName: "FK15641EFA4921881", tableName: "assigned_insurance_cert") {
			column(name: "agent_id")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-85") {
		createIndex(indexName: "FK78F3AC9FDCF8BDF1", tableName: "available_insurance_cert") {
			column(name: "assigned_insurance_cert_id")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-86") {
		createIndex(indexName: "FK78F3AC9FDF30EE50", tableName: "available_insurance_cert") {
			column(name: "insurance_cert_id")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-87") {
		createIndex(indexName: "FKDC04A343509233B3", tableName: "freight") {
			column(name: "airport_departure_id")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-88") {
		createIndex(indexName: "FKDC04A343A78FD59", tableName: "freight") {
			column(name: "airport_destination_id")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-89") {
		createIndex(indexName: "FK67E10931201FB0EC", tableName: "local_agent") {
			column(name: "city_id")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-90") {
		createIndex(indexName: "FKA8F20B677CEE8C3", tableName: "rail_insurance_cert") {
			column(name: "rail_cargo_item_id")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-91") {
		createIndex(indexName: "FK88DAE43589AA5F4C", tableName: "road_cargo_item") {
			column(name: "driver_id")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-92") {
		createIndex(indexName: "FK88DAE435A75A4888", tableName: "road_cargo_item") {
			column(name: "truck_id")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-93") {
		createIndex(indexName: "FK38AB9F6827F4B803", tableName: "road_insurance_cert") {
			column(name: "road_cargo_item_id")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-94") {
		createIndex(indexName: "FKE139719A458D8E2E", tableName: "shipment") {
			column(name: "origin_cnt_id")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-95") {
		createIndex(indexName: "FKE139719A5185F9B7", tableName: "shipment") {
			column(name: "consignee_id")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-96") {
		createIndex(indexName: "FKE139719A6DB878C6", tableName: "shipment") {
			column(name: "notify_party_id")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-97") {
		createIndex(indexName: "FKE139719A8AFF6060", tableName: "shipment") {
			column(name: "destination_cty_id")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-98") {
		createIndex(indexName: "FKE139719AE82B2446", tableName: "shipment") {
			column(name: "destination_cnt_id")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-99") {
		createIndex(indexName: "FKE139719AE861CA48", tableName: "shipment") {
			column(name: "origin_cty_id")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-100") {
		createIndex(indexName: "FKE139719AE87DAC11", tableName: "shipment") {
			column(name: "agent_id")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-101") {
		createIndex(indexName: "FKE139719AEAFA435", tableName: "shipment") {
			column(name: "shipper_id")
		}
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-102") {
		dropColumn(columnName: "testing", tableName: "air_cargo_item")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-103") {
		dropColumn(columnName: "commodity_item_no", tableName: "cargo_item")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-104") {
		dropColumn(columnName: "nature_and_quantity_of_goods", tableName: "cargo_item")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-105") {
		dropColumn(columnName: "rate", tableName: "cargo_item")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-106") {
		dropColumn(columnName: "total", tableName: "cargo_item")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-107") {
		dropColumn(columnName: "agent_id", tableName: "freight")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-108") {
		dropColumn(columnName: "consignee_id", tableName: "freight")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-109") {
		dropColumn(columnName: "execution_date", tableName: "freight")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-110") {
		dropColumn(columnName: "execution_place", tableName: "freight")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-111") {
		dropColumn(columnName: "notify_party_id", tableName: "freight")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-112") {
		dropColumn(columnName: "shipper_id", tableName: "freight")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-113") {
		dropColumn(columnName: "test_property", tableName: "ocean_cargo_item")
	}

	changeSet(author: "roohi (generated)", id: "1360230296142-114") {
		dropColumn(columnName: "kind_of_vehicle", tableName: "truck")
	}
}
