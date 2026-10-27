.class public final Lcom/android/server/broadcastradio/aidl/TunerSession;
.super Landroid/hardware/radio/ITuner$Stub;
.source "TunerSession.java"


# instance fields
.field public final mCallback:Landroid/hardware/radio/ITunerCallback;

.field public mIsClosed:Z

.field public mIsMuted:Z

.field public final mLock:Ljava/lang/Object;

.field public final mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

.field public final mModule:Lcom/android/server/broadcastradio/aidl/RadioModule;

.field public mPlaceHolderConfig:Landroid/hardware/radio/RadioManager$BandConfig;

.field public mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

.field public final mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

.field public final mUid:I

.field public final mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$CIUKhrpSA7HPy1Rs0PJCplnlDFI(Landroid/hardware/radio/ITunerCallback;I)V
    .registers 2

    .line 266
    invoke-interface {p0}, Landroid/hardware/radio/ITunerCallback;->onBackgroundScanComplete()V

    return-void
.end method

.method public static synthetic $r8$lambda$LlRb_mmthzoz62ea7FJI-33v0jw(Landroid/hardware/radio/RadioManager$BandConfig;Landroid/hardware/radio/ITunerCallback;I)V
    .registers 3

    .line 141
    invoke-interface {p1, p0}, Landroid/hardware/radio/ITunerCallback;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/broadcastradio/aidl/RadioModule;Landroid/hardware/broadcastradio/IBroadcastRadio;Landroid/hardware/radio/ITunerCallback;Lcom/android/server/broadcastradio/RadioServiceUserController;)V
    .registers 6

    .line 70
    invoke-direct {p0}, Landroid/hardware/radio/ITuner$Stub;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    .line 71
    const-string/jumbo v0, "radioModule cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mModule:Lcom/android/server/broadcastradio/aidl/RadioModule;

    .line 72
    const-string/jumbo p1, "service cannot be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Landroid/hardware/broadcastradio/IBroadcastRadio;

    iput-object p2, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    .line 73
    const-string p1, "callback cannot be null"

    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Landroid/hardware/radio/ITunerCallback;

    iput-object p3, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    .line 74
    const-string p1, "User controller can not be null"

    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Lcom/android/server/broadcastradio/RadioServiceUserController;

    iput-object p4, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    .line 75
    invoke-interface {p4}, Lcom/android/server/broadcastradio/RadioServiceUserController;->getCallingUserId()I

    move-result p1

    iput p1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserId:I

    .line 76
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUid:I

    .line 77
    new-instance p1, Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string p2, "BcRadioAidlSrv.session"

    const/16 p3, 0x19

    invoke-direct {p1, p2, p3}, Lcom/android/server/broadcastradio/RadioEventLogger;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 4

    .line 231
    const-string v0, "BcRadioAidlSrv.session"

    const-string v1, "Cancel"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_17

    .line 233
    const-string p0, "BcRadioAidlSrv.session"

    const-string v0, "Cannot cancel on AIDL HAL client from non-current user"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 236
    :cond_17
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_1a
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_24

    .line 239
    :try_start_1d
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    invoke-interface {p0}, Landroid/hardware/broadcastradio/IBroadcastRadio;->cancel()V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_26
    .catchall {:try_start_1d .. :try_end_22} :catchall_24

    .line 244
    :try_start_22
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    goto :goto_33

    :catch_26
    move-exception p0

    .line 241
    const-string v1, "BcRadioAidlSrv.session"

    const-string v2, "Failed to cancel tuner session"

    invoke-static {v1, v2}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 244
    :goto_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_24

    throw p0
.end method

.method public cancelAnnouncement()V
    .registers 2

    .line 249
    const-string p0, "BcRadioAidlSrv.session"

    const-string v0, "Announcements control doesn\'t involve cancelling at the HAL level in AIDL"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final checkNotClosedLocked()V
    .registers 2

    .line 125
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mIsClosed:Z

    if-nez p0, :cond_5

    return-void

    .line 126
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Tuner is closed, no further operations are allowed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .registers 4

    .line 82
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Close tuner"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->close(Ljava/lang/Integer;)V

    return-void
.end method

.method public close(Ljava/lang/Integer;)V
    .registers 5

    if-nez p1, :cond_d

    .line 96
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v1, "Close tuner session on error null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_18

    .line 98
    :cond_d
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v1, "Close tuner session on error %d"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :goto_18
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_1b
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mIsClosed:Z

    if-eqz v1, :cond_23

    .line 102
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    goto :goto_46

    :cond_23
    const/4 v1, 0x1

    .line 104
    iput-boolean v1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mIsClosed:Z

    .line 105
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_21

    if-eqz p1, :cond_40

    .line 108
    :try_start_29
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/hardware/radio/ITunerCallback;->onError(I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_32} :catch_33

    goto :goto_40

    :catch_33
    move-exception v0

    .line 110
    const-string v1, "BcRadioAidlSrv.session"

    const-string/jumbo v2, "mCallback.onError(%s) failed"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v0, v2, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    :cond_40
    :goto_40
    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mModule:Lcom/android/server/broadcastradio/aidl/RadioModule;

    invoke-virtual {p1, p0}, Lcom/android/server/broadcastradio/aidl/RadioModule;->onTunerSessionClosed(Lcom/android/server/broadcastradio/aidl/TunerSession;)V

    return-void

    .line 105
    :goto_46
    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_21

    throw p0
.end method

.method public final dispatchClientUpdateChunks(Ljava/util/List;)V
    .registers 8

    if-nez p1, :cond_3

    goto :goto_44

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    .line 332
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_44

    .line 334
    :try_start_b
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->getUid()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->isAtLeastU(I)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 336
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/ProgramList$Chunk;

    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->getUid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->convertChunkToTargetSdkVersion(Landroid/hardware/radio/ProgramList$Chunk;I)Landroid/hardware/radio/ProgramList$Chunk;

    move-result-object v2

    .line 337
    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v3, v2}, Landroid/hardware/radio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V

    goto :goto_41

    :catch_29
    move-exception v2

    goto :goto_37

    .line 339
    :cond_2b
    iget-object v2, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/ProgramList$Chunk;

    invoke-interface {v2, v3}, Landroid/hardware/radio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_36} :catch_29

    goto :goto_41

    .line 342
    :goto_37
    const-string/jumbo v3, "mCallback.onProgramListUpdated() failed"

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "BcRadioAidlSrv.session"

    invoke-static {v5, v2, v3, v4}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_44
    :goto_44
    return-void
.end method

.method public dumpInfo(Landroid/util/IndentingPrintWriter;)V
    .registers 6

    .line 442
    const-string v0, "TunerSession\n"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 444
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 445
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 446
    :try_start_e
    const-string v2, "Is session closed? %s\n"

    iget-boolean v3, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mIsClosed:Z

    if-eqz v3, :cond_19

    const-string v3, "Yes"

    goto :goto_1b

    :catchall_17
    move-exception p0

    goto :goto_61

    :cond_19
    const-string v3, "No"

    :goto_1b
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 447
    const-string v2, "Is muted? %s\n"

    iget-boolean v3, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mIsMuted:Z

    if-eqz v3, :cond_2b

    const-string v3, "Yes"

    goto :goto_2d

    :cond_2b
    const-string v3, "No"

    :goto_2d
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 448
    const-string v2, "ProgramInfoCache: %s\n"

    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 449
    const-string v2, "Config: %s\n"

    iget-object v3, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mPlaceHolderConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 450
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_e .. :try_end_4b} :catchall_17

    .line 451
    const-string v0, "Tuner session events:\n"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 453
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 454
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/RadioEventLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 455
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 457
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    .line 450
    :goto_61
    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_17

    throw p0
.end method

.method public getConfiguration()Landroid/hardware/radio/RadioManager$BandConfig;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V

    .line 148
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mPlaceHolderConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    monitor-exit v0

    return-object p0

    :catchall_a
    move-exception p0

    .line 149
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public getImage(I)Landroid/graphics/Bitmap;
    .registers 5

    .line 254
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Get image for %d"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mModule:Lcom/android/server/broadcastradio/aidl/RadioModule;

    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/aidl/RadioModule;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getParameters(Ljava/util/List;)Ljava/util/Map;
    .registers 6

    .line 429
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v1, "Get parameters "

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 430
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 431
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_24

    .line 433
    :try_start_10
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    new-array v1, v2, [Ljava/lang/String;

    .line 434
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/IBroadcastRadio;->getParameters([Ljava/lang/String;)[Landroid/hardware/broadcastradio/VendorKeyValue;

    move-result-object p0

    .line 433
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;

    move-result-object p0
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_22} :catch_26
    .catchall {:try_start_10 .. :try_end_22} :catchall_24

    :try_start_22
    monitor-exit v0

    return-object p0

    :catchall_24
    move-exception p0

    goto :goto_2c

    :catch_26
    move-exception p0

    .line 436
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 438
    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_24

    throw p0
.end method

.method public getProgramListFilter()Landroid/hardware/radio/ProgramList$Filter;
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 301
    :try_start_3
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    if-nez p0, :cond_9

    const/4 p0, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->getFilter()Landroid/hardware/radio/ProgramList$Filter;

    move-result-object p0

    :goto_d
    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 302
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getUid()I
    .registers 1

    .line 296
    iget p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUid:I

    return p0
.end method

.method public isClosed()Z
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mIsClosed:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 120
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isConfigFlagSet(I)Z
    .registers 6

    .line 376
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v1, "is ConfigFlag %s set? "

    invoke-static {p1}, Landroid/hardware/broadcastradio/ConfigFlag$$;->toString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 378
    :try_start_12
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1d

    .line 381
    :try_start_15
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/IBroadcastRadio;->isConfigFlagSet(I)Z

    move-result p0
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_1b} :catch_21
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1b} :catch_1f
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1d

    :try_start_1b
    monitor-exit v0

    return p0

    :catchall_1d
    move-exception p0

    goto :goto_45

    :catch_1f
    move-exception p0

    goto :goto_23

    :catch_21
    move-exception p0

    goto :goto_3e

    .line 385
    :goto_23
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to check flag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/hardware/broadcastradio/ConfigFlag$$;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 383
    :goto_3e
    const-string p1, "isConfigFlagSet"

    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->throwOnError(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 388
    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_1b .. :try_end_46} :catchall_1d

    throw p0
.end method

.method public isConfigFlagSupported(I)Z
    .registers 2

    .line 367
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/aidl/TunerSession;->isConfigFlagSet(I)Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method public isMuted()Z
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V

    .line 167
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mIsMuted:Z

    monitor-exit v0

    return p0

    :catchall_a
    move-exception p0

    .line 168
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public onMergedProgramListUpdateFromHal(Landroid/hardware/broadcastradio/ProgramListChunk;)V
    .registers 4

    .line 307
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    :try_start_3
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    if-nez v1, :cond_b

    .line 309
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_14

    .line 311
    :cond_b
    invoke-virtual {v1, p1}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->filterAndApplyChunk(Landroid/hardware/broadcastradio/ProgramListChunk;)Ljava/util/List;

    move-result-object p1

    .line 312
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_9

    .line 313
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/aidl/TunerSession;->dispatchClientUpdateChunks(Ljava/util/List;)V

    return-void

    .line 312
    :goto_14
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_9

    throw p0
.end method

.method public seek(ZZ)V
    .registers 7

    .line 191
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v1, "Seek with direction %s, skipSubChannel? %s"

    if-eqz p1, :cond_9

    .line 192
    const-string v2, "down"

    goto :goto_c

    :cond_9
    const-string/jumbo v2, "up"

    :goto_c
    if-eqz p2, :cond_12

    const-string/jumbo v3, "yes"

    goto :goto_15

    :cond_12
    const-string/jumbo v3, "no"

    :goto_15
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 191
    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 194
    const-string p0, "BcRadioAidlSrv.session"

    const-string p1, "Cannot scan on AIDL HAL client from non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 197
    :cond_2c
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_2f
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3b

    .line 200
    :try_start_32
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1, p2}, Landroid/hardware/broadcastradio/IBroadcastRadio;->seek(ZZ)V
    :try_end_39
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_39} :catch_3d
    .catchall {:try_start_32 .. :try_end_39} :catchall_3b

    .line 204
    :try_start_39
    monitor-exit v0

    return-void

    :catchall_3b
    move-exception p0

    goto :goto_46

    :catch_3d
    move-exception p0

    .line 202
    const-string/jumbo p1, "seek"

    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->throwOnError(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 204
    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_39 .. :try_end_47} :catchall_3b

    throw p0
.end method

.method public setConfigFlag(IZ)V
    .registers 7

    .line 393
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string/jumbo v1, "set ConfigFlag %s to %b "

    .line 394
    invoke-static {p1}, Landroid/hardware/broadcastradio/ConfigFlag$$;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 393
    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_24

    .line 396
    const-string p0, "BcRadioAidlSrv.session"

    const-string p1, "Cannot set config flag for AIDL HAL client from non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 399
    :cond_24
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 400
    :try_start_27
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_31

    .line 402
    :try_start_2a
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    invoke-interface {p0, p1, p2}, Landroid/hardware/broadcastradio/IBroadcastRadio;->setConfigFlag(IZ)V
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2f} :catch_33
    .catchall {:try_start_2a .. :try_end_2f} :catchall_31

    .line 406
    :try_start_2f
    monitor-exit v0

    return-void

    :catchall_31
    move-exception p0

    goto :goto_3c

    :catch_33
    move-exception p0

    .line 404
    const-string/jumbo p1, "setConfigFlag"

    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->throwOnError(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 406
    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_2f .. :try_end_3d} :catchall_31

    throw p0
.end method

.method public setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_10

    .line 133
    const-string p0, "BcRadioAidlSrv.session"

    const-string p1, "Cannot set configuration for AIDL HAL client from non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 136
    :cond_10
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_13
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V

    .line 138
    const-string v1, "config cannot be null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/RadioManager$BandConfig;

    iput-object p1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mPlaceHolderConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    .line 139
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_33

    .line 140
    const-string v0, "BcRadioAidlSrv.session"

    const-string v1, "Ignoring setConfiguration - not applicable for broadcastradio HAL AIDL"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mModule:Lcom/android/server/broadcastradio/aidl/RadioModule;

    new-instance v0, Lcom/android/server/broadcastradio/aidl/TunerSession$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/broadcastradio/aidl/TunerSession$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/radio/RadioManager$BandConfig;)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/aidl/RadioModule;->fanoutAidlCallback(Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;)V

    return-void

    :catchall_33
    move-exception p0

    .line 139
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public setMuted(Z)V
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V

    .line 156
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mIsMuted:Z

    if-ne v1, p1, :cond_e

    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    goto :goto_21

    .line 157
    :cond_e
    iput-boolean p1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mIsMuted:Z

    .line 158
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_c

    .line 159
    const-string p0, "BcRadioAidlSrv.session"

    const-string v0, "Mute %b via RadioService is not implemented - please handle it via app"

    .line 160
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 159
    invoke-static {p0, v0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 158
    :goto_21
    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_c

    throw p0
.end method

.method public setParameters(Ljava/util/Map;)Ljava/util/Map;
    .registers 5

    .line 411
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v1, "Set parameters "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 413
    const-string p0, "BcRadioAidlSrv.session"

    const-string p1, "Cannot set parameters for AIDL HAL client from non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    return-object p0

    .line 416
    :cond_1f
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 417
    :try_start_22
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_35

    .line 419
    :try_start_25
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    .line 420
    invoke-static {p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->vendorInfoToHalVendorKeyValues(Ljava/util/Map;)[Landroid/hardware/broadcastradio/VendorKeyValue;

    move-result-object p1

    .line 419
    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/IBroadcastRadio;->setParameters([Landroid/hardware/broadcastradio/VendorKeyValue;)[Landroid/hardware/broadcastradio/VendorKeyValue;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;

    move-result-object p0
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_33} :catch_37
    .catchall {:try_start_25 .. :try_end_33} :catchall_35

    :try_start_33
    monitor-exit v0

    return-object p0

    :catchall_35
    move-exception p0

    goto :goto_3d

    :catch_37
    move-exception p0

    .line 422
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 424
    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_35

    throw p0
.end method

.method public startBackgroundScan()Z
    .registers 3

    .line 260
    const-string v0, "Explicit background scan trigger is not supported with HAL AIDL"

    const-string v1, "BcRadioAidlSrv.session"

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_16

    .line 262
    const-string p0, "Cannot start background scan on AIDL HAL client from non-current user"

    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 265
    :cond_16
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mModule:Lcom/android/server/broadcastradio/aidl/RadioModule;

    new-instance v0, Lcom/android/server/broadcastradio/aidl/TunerSession$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/broadcastradio/aidl/TunerSession$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/aidl/RadioModule;->fanoutAidlCallback(Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V
    .registers 6

    .line 273
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v1, "Start programList updates %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 275
    const-string p0, "BcRadioAidlSrv.session"

    const-string p1, "Cannot start program list updates on AIDL HAL client from non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1b
    if-nez p1, :cond_2e

    .line 282
    new-instance p1, Landroid/hardware/radio/ProgramList$Filter;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/hardware/radio/ProgramList$Filter;-><init>(Ljava/util/Set;Ljava/util/Set;ZZ)V

    .line 286
    :cond_2e
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_31
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V

    .line 288
    new-instance v1, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    invoke-direct {v1, p1}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;-><init>(Landroid/hardware/radio/ProgramList$Filter;)V

    iput-object v1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    .line 289
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_31 .. :try_end_3c} :catchall_42

    .line 292
    iget-object p1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mModule:Lcom/android/server/broadcastradio/aidl/RadioModule;

    invoke-virtual {p1, p0}, Lcom/android/server/broadcastradio/aidl/RadioModule;->onTunerSessionProgramListFilterChanged(Lcom/android/server/broadcastradio/aidl/TunerSession;)V

    return-void

    :catchall_42
    move-exception p0

    .line 289
    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public step(ZZ)V
    .registers 6

    .line 173
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v1, "Step with direction %s, skipSubChannel?  %s"

    if-eqz p1, :cond_9

    .line 174
    const-string v2, "down"

    goto :goto_c

    :cond_9
    const-string/jumbo v2, "up"

    :goto_c
    if-eqz p2, :cond_12

    const-string/jumbo p2, "yes"

    goto :goto_15

    :cond_12
    const-string/jumbo p2, "no"

    :goto_15
    filled-new-array {v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 173
    invoke-virtual {v0, v1, p2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iget-object p2, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {p2}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result p2

    if-nez p2, :cond_2c

    .line 176
    const-string p0, "BcRadioAidlSrv.session"

    const-string p1, "Cannot step on AIDL HAL client from non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 179
    :cond_2c
    iget-object p2, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 180
    :try_start_2f
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_3b

    .line 182
    :try_start_32
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/IBroadcastRadio;->step(Z)V
    :try_end_39
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_39} :catch_3d
    .catchall {:try_start_32 .. :try_end_39} :catchall_3b

    .line 186
    :try_start_39
    monitor-exit p2

    return-void

    :catchall_3b
    move-exception p0

    goto :goto_46

    :catch_3d
    move-exception p0

    .line 184
    const-string/jumbo p1, "step"

    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->throwOnError(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 186
    :goto_46
    monitor-exit p2
    :try_end_47
    .catchall {:try_start_39 .. :try_end_47} :catchall_3b

    throw p0
.end method

.method public stopProgramListUpdates()V
    .registers 4

    .line 349
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v1, "Stop programList updates"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 351
    const-string p0, "BcRadioAidlSrv.session"

    const-string v0, "Cannot stop program list updates on AIDL HAL client from non-current user"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 355
    :cond_1a
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V

    const/4 v1, 0x0

    .line 357
    iput-object v1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    .line 358
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_2a

    .line 361
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mModule:Lcom/android/server/broadcastradio/aidl/RadioModule;

    invoke-virtual {v0, p0}, Lcom/android/server/broadcastradio/aidl/RadioModule;->onTunerSessionProgramListFilterChanged(Lcom/android/server/broadcastradio/aidl/TunerSession;)V

    return-void

    :catchall_2a
    move-exception p0

    .line 358
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public tune(Landroid/hardware/radio/ProgramSelector;)V
    .registers 5

    .line 209
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v1, "Tune with selector %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 211
    const-string p0, "BcRadioAidlSrv.session"

    const-string p1, "Cannot tune on AIDL HAL client from non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 215
    :cond_1b
    invoke-static {p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programSelectorToHalProgramSelector(Landroid/hardware/radio/ProgramSelector;)Landroid/hardware/broadcastradio/ProgramSelector;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 219
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 220
    :try_start_24
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/aidl/TunerSession;->checkNotClosedLocked()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2e

    .line 222
    :try_start_27
    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mService:Landroid/hardware/broadcastradio/IBroadcastRadio;

    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/IBroadcastRadio;->tune(Landroid/hardware/broadcastradio/ProgramSelector;)V
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_2c} :catch_30
    .catchall {:try_start_27 .. :try_end_2c} :catchall_2e

    .line 226
    :try_start_2c
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    goto :goto_39

    :catch_30
    move-exception p0

    .line 224
    const-string/jumbo p1, "tune"

    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->throwOnError(Ljava/lang/RuntimeException;Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 226
    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_2e

    throw p0

    .line 217
    :cond_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "tune: INVALID_ARGUMENTS for program selector"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateProgramInfoFromHalCache(Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;)V
    .registers 5

    .line 318
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 319
    :try_start_3
    iget-object v1, p0, Lcom/android/server/broadcastradio/aidl/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    if-nez v1, :cond_b

    .line 320
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_15

    :cond_b
    const/4 v2, 0x1

    .line 322
    invoke-virtual {v1, p1, v2}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->filterAndUpdateFromInternal(Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;Z)Ljava/util/List;

    move-result-object p1

    .line 324
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_9

    .line 325
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/aidl/TunerSession;->dispatchClientUpdateChunks(Ljava/util/List;)V

    return-void

    .line 324
    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_9

    throw p0
.end method
