.class public Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;
.super Ljava/lang/Object;
.source "GnssNative.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addGeofence(IDDDIIII)Z
    .registers 12

    .line 1562
    invoke-static/range {p1 .. p11}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_add_geofence(IDDDIIII)Z

    move-result p0

    return p0
.end method

.method public classInitOnce()V
    .registers 1

    .line 1396
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_class_init_once()V

    return-void
.end method

.method public cleanup()V
    .registers 1

    .line 1412
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_cleanup()V

    return-void
.end method

.method public cleanupBatching()V
    .registers 1

    .line 1539
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_cleanup_batching()V

    return-void
.end method

.method public deleteAidingData(I)V
    .registers 2

    .line 1435
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_delete_aiding_data(I)V

    return-void
.end method

.method public flushBatch()V
    .registers 1

    .line 1548
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_flush_batch()V

    return-void
.end method

.method public getBatchSize()I
    .registers 1

    .line 1531
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_get_batch_size()I

    move-result p0

    return p0
.end method

.method public getInternalState()Ljava/lang/String;
    .registers 1

    .line 1431
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_get_internal_state()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init()Z
    .registers 1

    .line 1408
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_init()Z

    move-result p0

    return p0
.end method

.method public initBatching()Z
    .registers 1

    .line 1535
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_init_batching()Z

    move-result p0

    return p0
.end method

.method public initOnce(Lcom/android/server/location/gnss/hal/GnssNative;Z)V
    .registers 3

    .line 1404
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$mnative_init_once(Lcom/android/server/location/gnss/hal/GnssNative;Z)V

    return-void
.end method

.method public injectBestLocation(IDDDFFFFFFJIJD)V
    .registers 21

    .line 1458
    invoke-static/range {p1 .. p20}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_best_location(IDDDFFFFFFJIJD)V

    return-void
.end method

.method public injectGnssAssistance(Landroid/location/GnssAssistance;)V
    .registers 2

    .line 1612
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_gnss_assistance(Landroid/location/GnssAssistance;)V

    return-void
.end method

.method public injectLocation(IDDDFFFFFFJIJD)V
    .registers 21

    .line 1447
    invoke-static/range {p1 .. p20}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_location(IDDDFFFFFFJIJD)V

    return-void
.end method

.method public injectMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)Z
    .registers 2

    .line 1511
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_measurement_corrections(Landroid/location/GnssMeasurementCorrections;)Z

    move-result p0

    return p0
.end method

.method public injectNiSuplMessageData([BII)V
    .registers 4

    .line 1608
    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_ni_supl_message_data([BII)V

    return-void
.end method

.method public injectPsdsData([BII)V
    .registers 4

    .line 1604
    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_psds_data([BII)V

    return-void
.end method

.method public injectTime(JJI)V
    .registers 6

    .line 1465
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_time(JJI)V

    return-void
.end method

.method public isAntennaInfoSupported()Z
    .registers 1

    .line 1481
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_antenna_info_supported()Z

    move-result p0

    return p0
.end method

.method public isGeofencingSupported()Z
    .registers 1

    .line 1556
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_geofence_supported()Z

    move-result p0

    return p0
.end method

.method public isGnssVisibilityControlSupported()Z
    .registers 1

    .line 1579
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_gnss_visibility_control_supported()Z

    move-result p0

    return p0
.end method

.method public isMeasurementCorrectionsSupported()Z
    .registers 1

    .line 1507
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_measurement_corrections_supported()Z

    move-result p0

    return p0
.end method

.method public isMeasurementSupported()Z
    .registers 1

    .line 1493
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_measurement_supported()Z

    move-result p0

    return p0
.end method

.method public isNavigationMessageCollectionSupported()Z
    .registers 1

    .line 1469
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_navigation_message_supported()Z

    move-result p0

    return p0
.end method

.method public isPsdsSupported()Z
    .registers 1

    .line 1600
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_supports_psds()Z

    move-result p0

    return p0
.end method

.method public isSupported()Z
    .registers 1

    .line 1400
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_supported()Z

    move-result p0

    return p0
.end method

.method public pauseGeofence(I)Z
    .registers 2

    .line 1571
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_pause_geofence(I)Z

    move-result p0

    return p0
.end method

.method public readNmea([BI)I
    .registers 3

    .line 1439
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_read_nmea([BI)I

    move-result p0

    return p0
.end method

.method public removeGeofence(I)Z
    .registers 2

    .line 1575
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_remove_geofence(I)Z

    move-result p0

    return p0
.end method

.method public requestPowerStats()V
    .registers 1

    .line 1583
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_request_power_stats()V

    return-void
.end method

.method public resumeGeofence(II)Z
    .registers 3

    .line 1567
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_resume_geofence(II)Z

    move-result p0

    return p0
.end method

.method public setAgpsReferenceLocationCellId(IIIIJIII)V
    .registers 10

    .line 1596
    invoke-static/range {p1 .. p9}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_agps_set_ref_location_cellid(IIIIJIII)V

    return-void
.end method

.method public setAgpsServer(ILjava/lang/String;I)V
    .registers 4

    .line 1587
    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_set_agps_server(ILjava/lang/String;I)V

    return-void
.end method

.method public setAgpsSetId(ILjava/lang/String;)V
    .registers 3

    .line 1591
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_agps_set_id(ILjava/lang/String;)V

    return-void
.end method

.method public setPositionMode(IIIIIZ)Z
    .registers 7

    .line 1426
    invoke-static/range {p1 .. p6}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_set_position_mode(IIIIIZ)Z

    move-result p0

    return p0
.end method

.method public start()Z
    .registers 1

    .line 1416
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start()Z

    move-result p0

    return p0
.end method

.method public startAntennaInfoListening()Z
    .registers 1

    .line 1485
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_antenna_info_listening()Z

    move-result p0

    return p0
.end method

.method public startBatch(JFZ)Z
    .registers 5

    .line 1544
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_batch(JFZ)Z

    move-result p0

    return p0
.end method

.method public startMeasurementCollection(ZZI)Z
    .registers 4

    .line 1498
    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_measurement_collection(ZZI)Z

    move-result p0

    return p0
.end method

.method public startNavigationMessageCollection()Z
    .registers 1

    .line 1473
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_navigation_message_collection()Z

    move-result p0

    return p0
.end method

.method public startNmeaMessageCollection()Z
    .registers 1

    .line 1523
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_nmea_message_collection()Z

    move-result p0

    return p0
.end method

.method public startSvStatusCollection()Z
    .registers 1

    .line 1515
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_sv_status_collection()Z

    move-result p0

    return p0
.end method

.method public stop()Z
    .registers 1

    .line 1420
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop()Z

    move-result p0

    return p0
.end method

.method public stopAntennaInfoListening()Z
    .registers 1

    .line 1489
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_antenna_info_listening()Z

    move-result p0

    return p0
.end method

.method public stopBatch()V
    .registers 1

    .line 1552
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_batch()Z

    return-void
.end method

.method public stopMeasurementCollection()Z
    .registers 1

    .line 1503
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_measurement_collection()Z

    move-result p0

    return p0
.end method

.method public stopNavigationMessageCollection()Z
    .registers 1

    .line 1477
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_navigation_message_collection()Z

    move-result p0

    return p0
.end method

.method public stopNmeaMessageCollection()Z
    .registers 1

    .line 1527
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_nmea_message_collection()Z

    move-result p0

    return p0
.end method

.method public stopSvStatusCollection()Z
    .registers 1

    .line 1519
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_sv_status_collection()Z

    move-result p0

    return p0
.end method
