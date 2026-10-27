.class public Lcom/android/server/location/gnss/hal/GnssNative$GnssHal;
.super Ljava/lang/Object;
.source "GnssNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/hal/GnssNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GnssHal"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 1373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected addGeofence(IDDDIIII)Z
    .registers 13
    .param p1, "geofenceId"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "radius"    # D
    .param p8, "lastTransition"    # I
    .param p9, "monitorTransitions"    # I
    .param p10, "notificationResponsiveness"    # I
    .param p11, "unknownTimer"    # I

    .line 1572
    invoke-static/range {p1 .. p11}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_add_geofence(IDDDIIII)Z

    move-result v0

    return v0
.end method

.method protected classInitOnce()V
    .registers 1

    .line 1376
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_class_init_once()V

    .line 1377
    return-void
.end method

.method protected cleanup()V
    .registers 1

    .line 1392
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_cleanup()V

    .line 1393
    return-void
.end method

.method protected cleanupBatching()V
    .registers 1

    .line 1549
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_cleanup_batching()V

    .line 1550
    return-void
.end method

.method protected deleteAidingData(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 1445
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_delete_aiding_data(I)V

    .line 1446
    return-void
.end method

.method protected flushBatch()V
    .registers 1

    .line 1558
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_flush_batch()V

    .line 1559
    return-void
.end method

.method protected getBatchSize()I
    .registers 2

    .line 1541
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_get_batch_size()I

    move-result v0

    return v0
.end method

.method protected getInternalState()Ljava/lang/String;
    .registers 2

    .line 1441
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_get_internal_state()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected init()Z
    .registers 2

    .line 1388
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_init()Z

    move-result v0

    return v0
.end method

.method protected initBatching()Z
    .registers 2

    .line 1545
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_init_batching()Z

    move-result v0

    return v0
.end method

.method protected initOnce(Lcom/android/server/location/gnss/hal/GnssNative;Z)V
    .registers 3
    .param p1, "gnssNative"    # Lcom/android/server/location/gnss/hal/GnssNative;
    .param p2, "reinitializeGnssServiceHandle"    # Z

    .line 1384
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$mnative_init_once(Lcom/android/server/location/gnss/hal/GnssNative;Z)V

    .line 1385
    return-void
.end method

.method protected injectBestLocation(IDDDFFFFFFJIJD)V
    .registers 21
    .param p1, "gnssLocationFlags"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "speed"    # F
    .param p9, "bearing"    # F
    .param p10, "horizontalAccuracy"    # F
    .param p11, "verticalAccuracy"    # F
    .param p12, "speedAccuracy"    # F
    .param p13, "bearingAccuracy"    # F
    .param p14, "timestamp"    # J
    .param p16, "elapsedRealtimeFlags"    # I
    .param p17, "elapsedRealtimeNanos"    # J
    .param p19, "elapsedRealtimeUncertaintyNanos"    # D

    .line 1468
    invoke-static/range {p1 .. p20}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_best_location(IDDDFFFFFFJIJD)V

    .line 1472
    return-void
.end method

.method protected injectLocation(IDDDFFFFFFJIJD)V
    .registers 21
    .param p1, "gnssLocationFlags"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "speed"    # F
    .param p9, "bearing"    # F
    .param p10, "horizontalAccuracy"    # F
    .param p11, "verticalAccuracy"    # F
    .param p12, "speedAccuracy"    # F
    .param p13, "bearingAccuracy"    # F
    .param p14, "timestamp"    # J
    .param p16, "elapsedRealtimeFlags"    # I
    .param p17, "elapsedRealtimeNanos"    # J
    .param p19, "elapsedRealtimeUncertaintyNanos"    # D

    .line 1457
    invoke-static/range {p1 .. p20}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_location(IDDDFFFFFFJIJD)V

    .line 1461
    return-void
.end method

.method protected injectMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)Z
    .registers 3
    .param p1, "corrections"    # Landroid/location/GnssMeasurementCorrections;

    .line 1521
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_measurement_corrections(Landroid/location/GnssMeasurementCorrections;)Z

    move-result v0

    return v0
.end method

.method protected injectPsdsData([BII)V
    .registers 4
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .param p3, "psdsType"    # I

    .line 1618
    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_psds_data([BII)V

    .line 1619
    return-void
.end method

.method protected injectTime(JJI)V
    .registers 6
    .param p1, "time"    # J
    .param p3, "timeReference"    # J
    .param p5, "uncertainty"    # I

    .line 1475
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_inject_time(JJI)V

    .line 1476
    return-void
.end method

.method protected isAntennaInfoSupported()Z
    .registers 2

    .line 1491
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_antenna_info_supported()Z

    move-result v0

    return v0
.end method

.method protected isGeofencingSupported()Z
    .registers 2

    .line 1566
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_geofence_supported()Z

    move-result v0

    return v0
.end method

.method protected isGnssVisibilityControlSupported()Z
    .registers 2

    .line 1589
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_gnss_visibility_control_supported()Z

    move-result v0

    return v0
.end method

.method protected isMeasurementCorrectionsSupported()Z
    .registers 2

    .line 1517
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_measurement_corrections_supported()Z

    move-result v0

    return v0
.end method

.method protected isMeasurementSupported()Z
    .registers 2

    .line 1503
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_measurement_supported()Z

    move-result v0

    return v0
.end method

.method protected isNavigationMessageCollectionSupported()Z
    .registers 2

    .line 1479
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_navigation_message_supported()Z

    move-result v0

    return v0
.end method

.method protected isPsdsSupported()Z
    .registers 2

    .line 1614
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_supports_psds()Z

    move-result v0

    return v0
.end method

.method protected isSupported()Z
    .registers 2

    .line 1380
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_is_supported()Z

    move-result v0

    return v0
.end method

.method protected pauseGeofence(I)Z
    .registers 3
    .param p1, "geofenceId"    # I

    .line 1581
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_pause_geofence(I)Z

    move-result v0

    return v0
.end method

.method protected readNmea([BI)I
    .registers 4
    .param p1, "buffer"    # [B
    .param p2, "bufferSize"    # I

    .line 1449
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_read_nmea([BI)I

    move-result v0

    return v0
.end method

.method protected removeGeofence(I)Z
    .registers 3
    .param p1, "geofenceId"    # I

    .line 1585
    invoke-static {p1}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_remove_geofence(I)Z

    move-result v0

    return v0
.end method

.method protected requestPowerStats()V
    .registers 1

    .line 1597
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_request_power_stats()V

    .line 1598
    return-void
.end method

.method protected resumeGeofence(II)Z
    .registers 4
    .param p1, "geofenceId"    # I
    .param p2, "monitorTransitions"    # I

    .line 1577
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_resume_geofence(II)Z

    move-result v0

    return v0
.end method

.method protected sendNiResponse(II)V
    .registers 3
    .param p1, "notificationId"    # I
    .param p2, "userResponse"    # I

    .line 1593
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_send_ni_response(II)V

    .line 1594
    return-void
.end method

.method protected setAgpsReferenceLocationCellId(IIIIJIII)V
    .registers 10
    .param p1, "type"    # I
    .param p2, "mcc"    # I
    .param p3, "mnc"    # I
    .param p4, "lac"    # I
    .param p5, "cid"    # J
    .param p7, "tac"    # I
    .param p8, "pcid"    # I
    .param p9, "arfcn"    # I

    .line 1610
    invoke-static/range {p1 .. p9}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_agps_set_ref_location_cellid(IIIIJIII)V

    .line 1611
    return-void
.end method

.method protected setAgpsServer(ILjava/lang/String;I)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "port"    # I

    .line 1601
    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_set_agps_server(ILjava/lang/String;I)V

    .line 1602
    return-void
.end method

.method protected setAgpsSetId(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "setId"    # Ljava/lang/String;

    .line 1605
    invoke-static {p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_agps_set_id(ILjava/lang/String;)V

    .line 1606
    return-void
.end method

.method protected setPositionMode(IIIIIZ)Z
    .registers 8
    .param p1, "mode"    # I
    .param p2, "recurrence"    # I
    .param p3, "minInterval"    # I
    .param p4, "preferredAccuracy"    # I
    .param p5, "preferredTime"    # I
    .param p6, "lowPowerMode"    # Z

    .line 1436
    invoke-static/range {p1 .. p6}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_set_position_mode(IIIIIZ)Z

    move-result v0

    return v0
.end method

.method protected start()Z
    .registers 6

    .line 1397
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->getInstance()Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->getEngineStatus()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_d

    return v1

    .line 1399
    :cond_d
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/server/location/LocationDumpLogStub;->setRecordLoseLocation(Z)V

    .line 1401
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->getInstance()Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->setEngineStatus(I)V

    .line 1402
    invoke-static {}, Lcom/android/server/location/gnss/GnssEventTrackingStub;->getInstance()Lcom/android/server/location/gnss/GnssEventTrackingStub;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Lcom/android/server/location/gnss/GnssEventTrackingStub;->recordEngineUsage(IJ)V

    .line 1404
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start()Z

    move-result v0

    return v0
.end method

.method protected startAntennaInfoListening()Z
    .registers 2

    .line 1495
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_antenna_info_listening()Z

    move-result v0

    return v0
.end method

.method protected startBatch(JFZ)Z
    .registers 6
    .param p1, "periodNanos"    # J
    .param p3, "minUpdateDistanceMeters"    # F
    .param p4, "wakeOnFifoFull"    # Z

    .line 1554
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_batch(JFZ)Z

    move-result v0

    return v0
.end method

.method protected startMeasurementCollection(ZZI)Z
    .registers 5
    .param p1, "enableFullTracking"    # Z
    .param p2, "enableCorrVecOutputs"    # Z
    .param p3, "intervalMillis"    # I

    .line 1508
    invoke-static {p1, p2, p3}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_measurement_collection(ZZI)Z

    move-result v0

    return v0
.end method

.method protected startNavigationMessageCollection()Z
    .registers 2

    .line 1483
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method protected startNmeaMessageCollection()Z
    .registers 2

    .line 1533
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_nmea_message_collection()Z

    move-result v0

    return v0
.end method

.method protected startSvStatusCollection()Z
    .registers 2

    .line 1525
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_start_sv_status_collection()Z

    move-result v0

    return v0
.end method

.method protected stop()Z
    .registers 6

    .line 1411
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->getInstance()Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->engineStoppedByGpo()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_22

    .line 1414
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->getInstance()Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->setEngineStatus(I)V

    .line 1415
    invoke-static {}, Lcom/android/server/location/gnss/GnssEventTrackingStub;->getInstance()Lcom/android/server/location/gnss/GnssEventTrackingStub;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/location/gnss/GnssEventTrackingStub;->recordEngineUsage(IJ)V

    .line 1416
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop()Z

    move-result v0

    return v0

    .line 1419
    :cond_22
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->getInstance()Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->clearLocationRequest()V

    .line 1421
    const/4 v0, 0x0

    .line 1422
    .local v0, "isEngineBlocked":Z
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->getInstance()Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->getEngineStatus()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3f

    .line 1423
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->getInstance()Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->getEngineStatus()I

    move-result v2

    if-ne v2, v1, :cond_40

    .line 1424
    :cond_3f
    const/4 v0, 0x1

    .line 1427
    :cond_40
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->getInstance()Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/android/server/location/gnss/hal/GnssPowerOptimizeStub;->setEngineStatus(I)V

    .line 1428
    invoke-static {}, Lcom/android/server/location/gnss/GnssEventTrackingStub;->getInstance()Lcom/android/server/location/gnss/GnssEventTrackingStub;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lcom/android/server/location/gnss/GnssEventTrackingStub;->recordEngineUsage(IJ)V

    .line 1429
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop()Z

    move-result v1

    return v1
.end method

.method protected stopAntennaInfoListening()Z
    .registers 2

    .line 1499
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_antenna_info_listening()Z

    move-result v0

    return v0
.end method

.method protected stopBatch()V
    .registers 1

    .line 1562
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_batch()Z

    .line 1563
    return-void
.end method

.method protected stopMeasurementCollection()Z
    .registers 2

    .line 1513
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_measurement_collection()Z

    move-result v0

    return v0
.end method

.method protected stopNavigationMessageCollection()Z
    .registers 2

    .line 1487
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method protected stopNmeaMessageCollection()Z
    .registers 2

    .line 1537
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_nmea_message_collection()Z

    move-result v0

    return v0
.end method

.method protected stopSvStatusCollection()Z
    .registers 2

    .line 1529
    invoke-static {}, Lcom/android/server/location/gnss/hal/GnssNative;->-$$Nest$smnative_stop_sv_status_collection()Z

    move-result v0

    return v0
.end method
