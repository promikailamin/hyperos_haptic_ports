.class Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;
.super Ljava/lang/Object;
.source "GnssManagerService.java"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnssGeofenceHalModule"
.end annotation


# instance fields
.field private mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

.field final synthetic this$0:Lcom/android/server/location/gnss/GnssManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/location/gnss/GnssManagerService;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .registers 3
    .param p2, "gnssNative"    # Lcom/android/server/location/gnss/hal/GnssNative;

    .line 383
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->this$0:Lcom/android/server/location/gnss/GnssManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->setGeofenceCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;)V

    .line 385
    return-void
.end method

.method private declared-synchronized getGeofenceHardware()Landroid/hardware/location/GeofenceHardwareImpl;
    .registers 2

    monitor-enter p0

    .line 388
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_f

    .line 389
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->this$0:Lcom/android/server/location/gnss/GnssManagerService;

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 391
    .end local p0    # "this":Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;
    :cond_f
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    .line 387
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private translateGeofenceStatus(I)I
    .registers 3
    .param p1, "status"    # I

    .line 467
    sparse-switch p1, :sswitch_data_12

    .line 481
    const/4 v0, -0x1

    return v0

    .line 477
    :sswitch_5
    const/4 v0, 0x1

    return v0

    .line 469
    :sswitch_7
    const/4 v0, 0x0

    return v0

    .line 473
    :sswitch_9
    const/4 v0, 0x2

    return v0

    .line 479
    :sswitch_b
    const/4 v0, 0x3

    return v0

    .line 475
    :sswitch_d
    const/4 v0, 0x4

    return v0

    .line 471
    :sswitch_f
    const/4 v0, 0x5

    return v0

    nop

    :sswitch_data_12
    .sparse-switch
        -0x95 -> :sswitch_f
        -0x67 -> :sswitch_d
        -0x66 -> :sswitch_b
        -0x65 -> :sswitch_9
        0x0 -> :sswitch_7
        0x64 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method synthetic lambda$onReportGeofenceAddStatus$2$com-android-server-location-gnss-GnssManagerService$GnssGeofenceHalModule(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 426
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->getGeofenceHardware()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    .line 427
    invoke-direct {p0, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->translateGeofenceStatus(I)I

    move-result v1

    .line 426
    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    return-void
.end method

.method synthetic lambda$onReportGeofencePauseStatus$4$com-android-server-location-gnss-GnssManagerService$GnssGeofenceHalModule(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 450
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->getGeofenceHardware()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    .line 451
    invoke-direct {p0, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->translateGeofenceStatus(I)I

    move-result v1

    .line 450
    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    return-void
.end method

.method synthetic lambda$onReportGeofenceRemoveStatus$3$com-android-server-location-gnss-GnssManagerService$GnssGeofenceHalModule(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 438
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->getGeofenceHardware()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    .line 439
    invoke-direct {p0, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->translateGeofenceStatus(I)I

    move-result v1

    .line 438
    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    return-void
.end method

.method synthetic lambda$onReportGeofenceResumeStatus$5$com-android-server-location-gnss-GnssManagerService$GnssGeofenceHalModule(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 462
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->getGeofenceHardware()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    .line 463
    invoke-direct {p0, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->translateGeofenceStatus(I)I

    move-result v1

    .line 462
    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    return-void
.end method

.method synthetic lambda$onReportGeofenceStatus$1$com-android-server-location-gnss-GnssManagerService$GnssGeofenceHalModule(ILandroid/location/Location;)V
    .registers 7
    .param p1, "status"    # I
    .param p2, "location"    # Landroid/location/Location;

    .line 406
    const/4 v0, 0x1

    .line 407
    .local v0, "monitorStatus":I
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 408
    const/4 v0, 0x0

    .line 410
    :cond_5
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->getGeofenceHardware()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    invoke-virtual {v1, v2, v0, p2, v3}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    .line 415
    return-void
.end method

.method synthetic lambda$onReportGeofenceTransition$0$com-android-server-location-gnss-GnssManagerService$GnssGeofenceHalModule(ILandroid/location/Location;IJ)V
    .registers 14
    .param p1, "geofenceId"    # I
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "transition"    # I
    .param p4, "timestamp"    # J

    .line 397
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->getGeofenceHardware()Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    sget v7, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    const/4 v6, 0x0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    return-void
.end method

.method public onReportGeofenceAddStatus(II)V
    .registers 6
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 422
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AOSP geofencing, someone add a fence, ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 424
    invoke-direct {p0, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->translateGeofenceStatus(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 422
    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 426
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 428
    return-void
.end method

.method public onReportGeofencePauseStatus(II)V
    .registers 6
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 446
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AOSP geofencing, someone pause a fence, ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 448
    invoke-direct {p0, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->translateGeofenceStatus(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 446
    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 450
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 452
    return-void
.end method

.method public onReportGeofenceRemoveStatus(II)V
    .registers 6
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 434
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AOSP geofencing, someone remove a fence, ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 436
    invoke-direct {p0, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->translateGeofenceStatus(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 434
    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 438
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 440
    return-void
.end method

.method public onReportGeofenceResumeStatus(II)V
    .registers 6
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .line 458
    invoke-static {}, Lcom/android/server/location/LocationDumpLogStub;->getInstance()Lcom/android/server/location/LocationDumpLogStub;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AOSP geofencing, someone resume a fence, ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 460
    invoke-direct {p0, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;->translateGeofenceStatus(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 458
    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Lcom/android/server/location/LocationDumpLogStub;->addToBugreport(ILjava/lang/String;)V

    .line 462
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 464
    return-void
.end method

.method public onReportGeofenceStatus(ILandroid/location/Location;)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "location"    # Landroid/location/Location;

    .line 405
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;ILandroid/location/Location;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 416
    return-void
.end method

.method public onReportGeofenceTransition(ILandroid/location/Location;IJ)V
    .registers 15
    .param p1, "geofenceId"    # I
    .param p2, "location"    # Landroid/location/Location;
    .param p3, "transition"    # I
    .param p4, "timestamp"    # J

    .line 397
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda3;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/gnss/GnssManagerService$GnssGeofenceHalModule;ILandroid/location/Location;IJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 401
    return-void
.end method
