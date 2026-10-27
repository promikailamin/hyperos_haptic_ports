.class public final Lcom/android/server/broadcastradio/hal2/TunerSession;
.super Landroid/hardware/radio/ITuner$Stub;
.source "TunerSession.java"


# instance fields
.field public final mCallback:Landroid/hardware/radio/ITunerCallback;

.field public mDummyConfig:Landroid/hardware/radio/RadioManager$BandConfig;

.field public final mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

.field public final mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

.field public mIsClosed:Z

.field public mIsMuted:Z

.field public final mLock:Ljava/lang/Object;

.field public final mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

.field public mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

.field public final mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$32HyT637mUFXYhXqQmwK1vi2lhc(Landroid/hardware/radio/RadioManager$BandConfig;Landroid/hardware/radio/ITunerCallback;)V
    .registers 2

    .line 133
    invoke-interface {p1, p0}, Landroid/hardware/radio/ITunerCallback;->onConfigurationChanged(Landroid/hardware/radio/RadioManager$BandConfig;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R7hFKT2u1zS0hB99go57D3DzA_U(Landroid/hardware/radio/ITunerCallback;)V
    .registers 1

    .line 239
    invoke-interface {p0}, Landroid/hardware/radio/ITunerCallback;->onBackgroundScanComplete()V

    return-void
.end method

.method public static synthetic $r8$lambda$c--upVp1FJJb1PlFIL1p6tslYtE(Landroid/util/MutableInt;Landroid/util/MutableBoolean;IZ)V
    .registers 4

    .line 344
    iput p2, p0, Landroid/util/MutableInt;->value:I

    .line 345
    iput-boolean p3, p1, Landroid/util/MutableBoolean;->value:Z

    return-void
.end method

.method public static synthetic $r8$lambda$nW3DtDUdEMMGaFUnNLuDT7YotH0(Lcom/android/server/broadcastradio/hal2/TunerSession;Ljava/util/Map;)Ljava/util/ArrayList;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->lambda$setParameters$3(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xirdvsyqNHa1wixy2_cdrMxtECE(Lcom/android/server/broadcastradio/hal2/TunerSession;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->lambda$getParameters$4(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/broadcastradio/V2_0/ITunerSession;Landroid/hardware/radio/ITunerCallback;Lcom/android/server/broadcastradio/RadioServiceUserController;)V
    .registers 6

    .line 70
    invoke-direct {p0}, Landroid/hardware/radio/ITuner$Stub;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsMuted:Z

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    .line 66
    iput-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mDummyConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    .line 71
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 72
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    .line 73
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Landroid/hardware/radio/ITunerCallback;

    iput-object p3, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    .line 74
    const-string p1, "User controller can not be null"

    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p4, Lcom/android/server/broadcastradio/RadioServiceUserController;

    iput-object p4, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    .line 75
    invoke-interface {p4}, Lcom/android/server/broadcastradio/RadioServiceUserController;->getCallingUserId()I

    move-result p1

    iput p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mUserId:I

    .line 76
    new-instance p1, Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string p2, "BcRadio2Srv.session"

    const/16 p3, 0x19

    invoke-direct {p1, p2, p3}, Lcom/android/server/broadcastradio/RadioEventLogger;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 208
    const-string v0, "BcRadio2Srv.session"

    const-string v1, "Cancel"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_17

    .line 210
    const-string p0, "BcRadio2Srv.session"

    const-string v0, "Cannot cancel on HAL 2.0 client from non-current user"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 213
    :cond_17
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_1a
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 215
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/broadcastradio/V2_0/ITunerSession;)V

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Utils;->maybeRethrow(Lcom/android/server/broadcastradio/hal2/Utils$VoidFuncThrowingRemoteException;)V

    .line 216
    monitor-exit v0

    return-void

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1a .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public cancelAnnouncement()V
    .registers 2

    .line 221
    const-string p0, "BcRadio2Srv.session"

    const-string v0, "Announcements control doesn\'t involve cancelling at the HAL level in HAL 2.0"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final checkNotClosedLocked()V
    .registers 2

    .line 117
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    if-nez p0, :cond_5

    return-void

    .line 118
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Tuner is closed, no further operations are allowed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Close"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->close(Ljava/lang/Integer;)V

    return-void
.end method

.method public close(Ljava/lang/Integer;)V
    .registers 5

    .line 93
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v1, "Close on error %d"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_e
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    if-eqz v1, :cond_16

    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    goto :goto_35

    :cond_16
    const/4 v1, 0x1

    .line 96
    iput-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    .line 97
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_14

    if-eqz p1, :cond_2f

    .line 100
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Landroid/hardware/radio/ITunerCallback;->onError(I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_25} :catch_26

    goto :goto_2f

    :catch_26
    move-exception p1

    .line 102
    const-string v0, "BcRadio2Srv.session"

    const-string/jumbo v1, "mCallback.onError() failed: "

    invoke-static {v0, v1, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    :cond_2f
    :goto_2f
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-virtual {p1, p0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->onTunerSessionClosed(Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    return-void

    .line 97
    :goto_35
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_14

    throw p0
.end method

.method public final dispatchClientUpdateChunks(Ljava/util/List;)V
    .registers 5

    if-nez p1, :cond_3

    goto :goto_23

    .line 298
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/ProgramList$Chunk;

    .line 300
    :try_start_13
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v1, v0}, Landroid/hardware/radio/ITunerCallback;->onProgramListUpdated(Landroid/hardware/radio/ProgramList$Chunk;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_18} :catch_19

    goto :goto_7

    :catch_19
    move-exception v0

    .line 302
    const-string v1, "BcRadio2Srv.session"

    const-string/jumbo v2, "mCallback.onProgramListUpdated() failed: "

    invoke-static {v1, v2, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :cond_23
    :goto_23
    return-void
.end method

.method public dumpInfo(Landroid/util/IndentingPrintWriter;)V
    .registers 6

    .line 393
    const-string v0, "TunerSession\n"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 394
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 395
    const-string v0, "HIDL HAL Session: %s\n"

    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 396
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 397
    :try_start_19
    const-string v2, "Is session closed? %s\n"

    iget-boolean v3, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    if-eqz v3, :cond_24

    const-string v3, "Yes"

    goto :goto_26

    :catchall_22
    move-exception p0

    goto :goto_6c

    :cond_24
    const-string v3, "No"

    :goto_26
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 398
    const-string v2, "Is muted? %s\n"

    iget-boolean v3, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsMuted:Z

    if-eqz v3, :cond_36

    const-string v3, "Yes"

    goto :goto_38

    :cond_36
    const-string v3, "No"

    :goto_38
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 399
    const-string v2, "ProgramInfoCache: %s\n"

    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 400
    const-string v2, "Config: %s\n"

    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mDummyConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 401
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_19 .. :try_end_56} :catchall_22

    .line 402
    const-string v0, "Tuner session events:\n"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 403
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 404
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/RadioEventLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 405
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 406
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    .line 401
    :goto_6c
    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_22

    throw p0
.end method

.method public getConfiguration()Landroid/hardware/radio/RadioManager$BandConfig;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 140
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mDummyConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    monitor-exit v0

    return-object p0

    :catchall_a
    move-exception p0

    .line 141
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public getImage(I)Landroid/graphics/Bitmap;
    .registers 5

    .line 227
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Get image for %d"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getParameters(Ljava/util/List;)Ljava/util/Map;
    .registers 4

    .line 385
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 386
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 387
    new-instance v1, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/broadcastradio/hal2/TunerSession;Ljava/util/List;)V

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Utils;->maybeRethrow(Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_17
    move-exception p0

    .line 389
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public getProgramListFilter()Landroid/hardware/radio/ProgramList$Filter;
    .registers 2

    .line 267
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_3
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    if-nez p0, :cond_9

    const/4 p0, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->getFilter()Landroid/hardware/radio/ProgramList$Filter;

    move-result-object p0

    :goto_d
    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 269
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public isClosed()Z
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 111
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsClosed:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 112
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isConfigFlagSet(I)Z
    .registers 6

    .line 336
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v1, "Is ConfigFlagSet for %s"

    invoke-static {p1}, Landroid/hardware/broadcastradio/V2_0/ConfigFlag;->toString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_12
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 340
    new-instance v1, Landroid/util/MutableInt;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/MutableInt;-><init>(I)V

    .line 341
    new-instance v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/util/MutableBoolean;-><init>(Z)V
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_36

    .line 343
    :try_start_21
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    new-instance v3, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v2}, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;-><init>(Landroid/util/MutableInt;Landroid/util/MutableBoolean;)V

    invoke-interface {p0, p1, v3}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->isConfigFlagSet(ILandroid/hardware/broadcastradio/V2_0/ITunerSession$isConfigFlagSetCallback;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2b} :catch_38
    .catchall {:try_start_21 .. :try_end_2b} :catchall_36

    .line 350
    :try_start_2b
    const-string p0, "isConfigFlagSet"

    iget p1, v1, Landroid/util/MutableInt;->value:I

    invoke-static {p0, p1}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 352
    iget-boolean p0, v2, Landroid/util/MutableBoolean;->value:Z

    monitor-exit v0

    return p0

    :catchall_36
    move-exception p0

    goto :goto_54

    :catch_38
    move-exception p0

    .line 348
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to check flag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/hardware/broadcastradio/V2_0/ConfigFlag;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 353
    :goto_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_2b .. :try_end_55} :catchall_36

    throw p0
.end method

.method public isConfigFlagSupported(I)Z
    .registers 2

    .line 327
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->isConfigFlagSet(I)Z
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

    .line 156
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 158
    iget-boolean p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsMuted:Z

    monitor-exit v0

    return p0

    :catchall_a
    move-exception p0

    .line 159
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public final synthetic lambda$getParameters$4(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 2

    .line 388
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->listToArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->getParameters(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$setParameters$3(Ljava/util/Map;)Ljava/util/ArrayList;
    .registers 2

    .line 379
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoToHal(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->setParameters(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public onMergedProgramListUpdateFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V
    .registers 4

    .line 274
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_3
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    if-nez v1, :cond_b

    .line 276
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_14

    .line 278
    :cond_b
    invoke-virtual {v1, p1}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->filterAndApplyChunk(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)Ljava/util/List;

    move-result-object p1

    .line 279
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_9

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->dispatchClientUpdateChunks(Ljava/util/List;)V

    return-void

    .line 279
    :goto_14
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_9

    throw p0
.end method

.method public seek(ZZ)V
    .registers 7

    .line 179
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v1, "Seek with direction %s, skipSubChannel? %s"

    if-eqz p1, :cond_9

    .line 180
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

    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 182
    const-string p0, "BcRadio2Srv.session"

    const-string p1, "Cannot scan on HAL 2.0 client from non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 185
    :cond_2c
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_2f
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 187
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1, p2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->scan(ZZ)I

    move-result p0

    .line 188
    const-string/jumbo p1, "step"

    invoke-static {p1, p0}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 189
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_2f .. :try_end_44} :catchall_42

    throw p0
.end method

.method public setConfigFlag(IZ)V
    .registers 7

    .line 358
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v1, "Set ConfigFlag  %s = %b"

    invoke-static {p1}, Landroid/hardware/broadcastradio/V2_0/ConfigFlag;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_23

    .line 360
    const-string p0, "BcRadio2Srv.session"

    const-string p1, "Cannot set config flag for HAL 2.0 client from non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 363
    :cond_23
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_26
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 365
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-interface {p0, p1, p2}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->setConfigFlag(IZ)I

    move-result p0

    .line 366
    const-string/jumbo p1, "setConfigFlag"

    invoke-static {p1, p0}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 367
    monitor-exit v0

    return-void

    :catchall_37
    move-exception p0

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_37

    throw p0
.end method

.method public setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .registers 4

    .line 124
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_10

    .line 125
    const-string p0, "BcRadio2Srv.session"

    const-string p1, "Cannot set configuration for HAL 2.0 client from non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 128
    :cond_10
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_13
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 130
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/hardware/radio/RadioManager$BandConfig;

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mDummyConfig:Landroid/hardware/radio/RadioManager$BandConfig;

    .line 131
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_31

    .line 132
    const-string v0, "BcRadio2Srv.session"

    const-string v1, "Ignoring setConfiguration - not applicable for broadcastradio HAL 2.0"

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v0, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/radio/RadioManager$BandConfig;)V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fanoutAidlCallback(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    return-void

    :catchall_31
    move-exception p0

    .line 131
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public setMuted(Z)V
    .registers 4

    .line 146
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 148
    iget-boolean v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsMuted:Z

    if-ne v1, p1, :cond_e

    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    goto :goto_19

    .line 149
    :cond_e
    iput-boolean p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mIsMuted:Z

    .line 150
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_c

    .line 151
    const-string p0, "BcRadio2Srv.session"

    const-string p1, "Mute via RadioService is not implemented - please handle it via app"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 150
    :goto_19
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_c

    throw p0
.end method

.method public setParameters(Ljava/util/Map;)Ljava/util/Map;
    .registers 4

    .line 372
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_15

    .line 373
    const-string p0, "BcRadio2Srv.session"

    const-string p1, "Cannot set parameters for HAL 2.0 client from non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    return-object p0

    .line 376
    :cond_15
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 377
    :try_start_18
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 378
    new-instance v1, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/broadcastradio/hal2/TunerSession;Ljava/util/Map;)V

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/Utils;->maybeRethrow(Lcom/android/server/broadcastradio/hal2/Utils$FuncThrowingRemoteException;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_2c
    move-exception p0

    .line 380
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_18 .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public startBackgroundScan()Z
    .registers 3

    .line 233
    const-string v0, "Explicit background scan trigger is not supported with HAL 2.0"

    const-string v1, "BcRadio2Srv.session"

    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_16

    .line 235
    const-string p0, "Cannot start background scan on HAL 2.0 client from non-current user"

    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 239
    :cond_16
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v0, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->fanoutAidlCallback(Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public startProgramListUpdates(Landroid/hardware/radio/ProgramList$Filter;)V
    .registers 6

    .line 245
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string/jumbo v1, "start programList updates %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 247
    const-string p0, "BcRadio2Srv.session"

    const-string p1, "Cannot start program list updates on HAL 2.0 client from non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    if-nez p1, :cond_2f

    .line 254
    new-instance p1, Landroid/hardware/radio/ProgramList$Filter;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/hardware/radio/ProgramList$Filter;-><init>(Ljava/util/Set;Ljava/util/Set;ZZ)V

    .line 257
    :cond_2f
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_32
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 259
    new-instance v1, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    invoke-direct {v1, p1}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;-><init>(Landroid/hardware/radio/ProgramList$Filter;)V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    .line 260
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_43

    .line 263
    iget-object p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-virtual {p1, p0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->onTunerSessionProgramListFilterChanged(Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    return-void

    :catchall_43
    move-exception p0

    .line 260
    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public step(ZZ)V
    .registers 6

    .line 164
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v1, "Step with direction %s, skipSubChannel?  %s"

    if-eqz p1, :cond_9

    .line 165
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

    .line 164
    invoke-virtual {v0, v1, p2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget-object p2, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {p2}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result p2

    if-nez p2, :cond_2c

    .line 167
    const-string p0, "BcRadio2Srv.session"

    const-string p1, "Cannot step on HAL 2.0 client from non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 170
    :cond_2c
    iget-object p2, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 171
    :try_start_2f
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 172
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->step(Z)I

    move-result p0

    .line 173
    const-string/jumbo p1, "step"

    invoke-static {p1, p0}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 174
    monitor-exit p2

    return-void

    :catchall_42
    move-exception p0

    monitor-exit p2
    :try_end_44
    .catchall {:try_start_2f .. :try_end_44} :catchall_42

    throw p0
.end method

.method public stopProgramListUpdates()V
    .registers 4

    .line 309
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v1, "Stop programList updates"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 311
    const-string p0, "BcRadio2Srv.session"

    const-string v0, "Cannot stop program list updates on HAL 2.0 client from non-current user"

    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 315
    :cond_1a
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    const/4 v1, 0x0

    .line 317
    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    .line 318
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_2a

    .line 321
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mModule:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-virtual {v0, p0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->onTunerSessionProgramListFilterChanged(Lcom/android/server/broadcastradio/hal2/TunerSession;)V

    return-void

    :catchall_2a
    move-exception p0

    .line 318
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public tune(Landroid/hardware/radio/ProgramSelector;)V
    .registers 5

    .line 194
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mEventLogger:Lcom/android/server/broadcastradio/RadioEventLogger;

    const-string v1, "Tune with selector %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/broadcastradio/RadioEventLogger;->logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mUserController:Lcom/android/server/broadcastradio/RadioServiceUserController;

    invoke-interface {v0}, Lcom/android/server/broadcastradio/RadioServiceUserController;->isCurrentOrSystemUser()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 196
    const-string p0, "BcRadio2Srv.session"

    const-string p1, "Cannot tune on HAL 2.0 client from non-current user"

    invoke-static {p0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 199
    :cond_1b
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->checkNotClosedLocked()V

    .line 201
    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mHwSession:Landroid/hardware/broadcastradio/V2_0/ITunerSession;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programSelectorToHal(Landroid/hardware/radio/ProgramSelector;)Landroid/hardware/broadcastradio/V2_0/ProgramSelector;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/hardware/broadcastradio/V2_0/ITunerSession;->tune(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)I

    move-result p0

    .line 202
    const-string/jumbo p1, "tune"

    invoke-static {p1, p0}, Lcom/android/server/broadcastradio/hal2/Convert;->throwOnError(Ljava/lang/String;I)V

    .line 203
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_1e .. :try_end_35} :catchall_33

    throw p0
.end method

.method public updateProgramInfoFromHalCache(Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;)V
    .registers 5

    .line 285
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_3
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    if-nez v1, :cond_b

    .line 287
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_15

    :cond_b
    const/4 v2, 0x1

    .line 289
    invoke-virtual {v1, p1, v2}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->filterAndUpdateFrom(Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;Z)Ljava/util/List;

    move-result-object p1

    .line 290
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_9

    .line 291
    invoke-virtual {p0, p1}, Lcom/android/server/broadcastradio/hal2/TunerSession;->dispatchClientUpdateChunks(Ljava/util/List;)V

    return-void

    .line 290
    :goto_15
    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_9

    throw p0
.end method
