.class public final Lcom/android/server/audio/RecordingActivityMonitor;
.super Ljava/lang/Object;
.source "RecordingActivityMonitor.java"

# interfaces
.implements Landroid/media/AudioSystem$AudioRecordingCallback;


# static fields
.field public static final sEventLogger:Lcom/android/server/utils/EventLogger;


# instance fields
.field public mClients:Ljava/util/ArrayList;

.field public mHasPublicClients:Z

.field public mLegacyRemoteSubmixActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mLegacyRemoteSubmixRiid:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mPackMan:Landroid/content/pm/PackageManager;

.field public mRecordStates:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 647
    new-instance v0, Lcom/android/server/utils/EventLogger;

    const/16 v1, 0x32

    const-string/jumbo v2, "recording activity received by AudioService"

    invoke-direct {v0, v1, v2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    .line 63
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mLegacyRemoteSubmixRiid:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mLegacyRemoteSubmixActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 138
    sput-object p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 139
    sput-object p0, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mPackMan:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public static anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 3

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 282
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioRecordingConfiguration;

    .line 283
    invoke-static {v1}, Landroid/media/AudioRecordingConfiguration;->anonymizedCopy(Landroid/media/AudioRecordingConfiguration;)Landroid/media/AudioRecordingConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    return-object v0
.end method


# virtual methods
.method public final createRecordingConfiguration(III[IIZI[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;)Landroid/media/AudioRecordingConfiguration;
    .registers 25

    .line 399
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v1, 0x0

    aget v2, p4, v1

    .line 400
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const/4 v2, 0x1

    aget v2, p4, v2

    .line 402
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const/4 v2, 0x2

    aget v2, p4, v2

    .line 403
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v6

    .line 405
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v2, 0x3

    aget v2, p4, v2

    .line 406
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const/4 v2, 0x4

    aget v2, p4, v2

    .line 408
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const/4 v2, 0x5

    aget v2, p4, v2

    .line 409
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v7

    const/4 v0, 0x6

    .line 411
    aget v8, p4, v0

    .line 412
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mPackMan:Landroid/content/pm/PackageManager;

    move/from16 v3, p1

    invoke-virtual {p0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_50

    .line 414
    array-length v0, p0

    if-lez v0, :cond_50

    .line 415
    aget-object p0, p0, v1

    :goto_4e
    move-object v9, p0

    goto :goto_53

    .line 417
    :cond_50
    const-string p0, ""

    goto :goto_4e

    .line 419
    :goto_53
    new-instance v2, Landroid/media/AudioRecordingConfiguration;

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-direct/range {v2 .. v14}, Landroid/media/AudioRecordingConfiguration;-><init>(IIILandroid/media/AudioFormat;Landroid/media/AudioFormat;ILjava/lang/String;IZI[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;)V

    return-object v2
.end method

.method public final dispatchCallbacks(Ljava/util/List;)V
    .registers 9

    if-nez p1, :cond_3

    goto :goto_42

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 246
    :try_start_6
    iget-boolean v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    if-eqz v1, :cond_11

    .line 247
    invoke-static {p1}, Lcom/android/server/audio/RecordingActivityMonitor;->anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_16

    :catchall_f
    move-exception p0

    goto :goto_43

    .line 248
    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 249
    :goto_16
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1d
    if-ge v3, v2, :cond_41

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_f

    .line 251
    :try_start_27
    iget-boolean v5, v4, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mIsPrivileged:Z

    if-eqz v5, :cond_33

    .line 252
    iget-object v4, v4, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v4, p1}, Landroid/media/IRecordingConfigDispatcher;->dispatchRecordingConfigChange(Ljava/util/List;)V

    goto :goto_1d

    :catch_31
    move-exception v4

    goto :goto_39

    .line 254
    :cond_33
    iget-object v4, v4, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v4, v1}, Landroid/media/IRecordingConfigDispatcher;->dispatchRecordingConfigChange(Ljava/util/List;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_38} :catch_31
    .catchall {:try_start_27 .. :try_end_38} :catchall_f

    goto :goto_1d

    .line 257
    :goto_39
    :try_start_39
    const-string v5, "AudioService.RecordingActivityMonitor"

    const-string v6, "Could not call dispatchRecordingConfigChange() on client"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 260
    :cond_41
    monitor-exit v0

    :goto_42
    return-void

    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_39 .. :try_end_44} :catchall_f

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nRecordActivityMonitor dump time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    .line 268
    :try_start_24
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 269
    invoke-virtual {v1, p1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->dump(Ljava/io/PrintWriter;)V

    goto :goto_2a

    :catchall_3a
    move-exception p0

    goto :goto_48

    .line 271
    :cond_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_24 .. :try_end_3d} :catchall_3a

    .line 272
    const-string p0, "\n"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    sget-object p0, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->dump(Ljava/io/PrintWriter;)V

    return-void

    .line 271
    :goto_48
    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_3a

    throw p0
.end method

.method public final findStateByPortId(I)I
    .registers 5

    .line 510
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 511
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 512
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->hasDeathHandler()Z

    move-result v2

    if-nez v2, :cond_2c

    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 513
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getPortId()I

    move-result v2

    if-ne v2, p1, :cond_2c

    .line 514
    monitor-exit v0

    return v1

    :catchall_2a
    move-exception p0

    goto :goto_32

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 517
    :cond_2f
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_2a

    throw p0
.end method

.method public final findStateByRiid(I)I
    .registers 5

    .line 498
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 499
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 500
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getRiid()I

    move-result v2

    if-ne v2, p1, :cond_1e

    .line 501
    monitor-exit v0

    return v1

    :catchall_1c
    move-exception p0

    goto :goto_24

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 504
    :cond_21
    monitor-exit v0

    const/4 p0, -0x1

    return p0

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_1c

    throw p0
.end method

.method public getActiveRecordingConfigurations(Z)Ljava/util/List;
    .registers 6

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 357
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v1

    .line 358
    :try_start_8
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 359
    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 360
    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :catchall_28
    move-exception p0

    goto :goto_33

    .line 363
    :cond_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_28

    if-nez p1, :cond_32

    .line 367
    invoke-static {v0}, Lcom/android/server/audio/RecordingActivityMonitor;->anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_32
    return-object v0

    .line 363
    :goto_33
    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_28

    throw p0
.end method

.method public initMonitor()V
    .registers 1

    .line 289
    invoke-static {p0}, Landroid/media/AudioSystem;->setRecordingCallback(Landroid/media/AudioSystem$AudioRecordingCallback;)V

    return-void
.end method

.method public isLegacyRemoteSubmixActive()Z
    .registers 1

    .line 376
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mLegacyRemoteSubmixActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public isRecordingActiveForUid(I)Z
    .registers 5

    .line 227
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    .line 228
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 230
    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioRecordingConfiguration;->getClientUid()I

    move-result v2

    if-ne v2, p1, :cond_9

    .line 231
    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioRecordingConfiguration;->isClientSilenced()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 p0, 0x1

    .line 232
    monitor-exit v0

    return p0

    :catchall_32
    move-exception p0

    goto :goto_37

    .line 235
    :cond_34
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_32

    throw p0
.end method

.method public onAudioServerDied()V
    .registers 9

    .line 297
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    .line 299
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3e

    .line 300
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 301
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->hasDeathHandler()Z

    move-result v5

    if-nez v5, :cond_a

    .line 302
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 304
    sget-object v2, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v5, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    .line 306
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getRiid()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object v3

    const/4 v7, 0x3

    invoke-direct {v5, v7, v6, v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    .line 304
    invoke-virtual {v2, v5}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    move v2, v4

    goto :goto_3a

    :catchall_38
    move-exception p0

    goto :goto_4b

    .line 308
    :cond_3a
    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_3e
    if-eqz v2, :cond_45

    .line 312
    invoke-virtual {p0, v4}, Lcom/android/server/audio/RecordingActivityMonitor;->getActiveRecordingConfigurations(Z)Ljava/util/List;

    move-result-object v1

    goto :goto_46

    :cond_45
    const/4 v1, 0x0

    .line 314
    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_38

    .line 315
    invoke-virtual {p0, v1}, Lcom/android/server/audio/RecordingActivityMonitor;->dispatchCallbacks(Ljava/util/List;)V

    return-void

    .line 314
    :goto_4b
    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_38

    throw p0
.end method

.method public onRecordingConfigurationChanged(IIIIIIZ[I[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;ILjava/lang/String;)V
    .registers 13

    move-object p12, p10

    move p10, p11

    move-object p11, p9

    move p9, p7

    move-object p7, p8

    move p8, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move-object p3, p0

    .line 152
    invoke-virtual/range {p3 .. p12}, Lcom/android/server/audio/RecordingActivityMonitor;->createRecordingConfiguration(III[IIZI[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;)Landroid/media/AudioRecordingConfiguration;

    move-result-object p0

    const/16 p4, 0x8

    if-ne p6, p4, :cond_34

    if-eqz p1, :cond_17

    const/4 p4, 0x2

    if-ne p1, p4, :cond_34

    .line 158
    :cond_17
    invoke-virtual {p0}, Landroid/media/AudioRecordingConfiguration;->getAudioDevice()Landroid/media/AudioDeviceInfo;

    move-result-object p4

    if-eqz p4, :cond_34

    .line 159
    const-string p5, "0"

    .line 160
    invoke-virtual {p4}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_34

    .line 161
    iget-object p4, p3, Lcom/android/server/audio/RecordingActivityMonitor;->mLegacyRemoteSubmixRiid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 162
    iget-object p4, p3, Lcom/android/server/audio/RecordingActivityMonitor;->mLegacyRemoteSubmixActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p5, 0x1

    invoke-virtual {p4, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 165
    :cond_34
    invoke-static {p6}, Landroid/media/MediaRecorder;->isSystemOnlyAudioSource(I)Z

    move-result p4

    if-eqz p4, :cond_4b

    .line 167
    sget-object p3, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance p4, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    invoke-direct {p4, p1, p2, p0}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    const-string p0, "AudioService.RecordingActivityMonitor"

    invoke-virtual {p4, p0}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return-void

    .line 170
    :cond_4b
    invoke-virtual {p3, p1, p2, p0}, Lcom/android/server/audio/RecordingActivityMonitor;->updateSnapshot(IILandroid/media/AudioRecordingConfiguration;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/android/server/audio/RecordingActivityMonitor;->dispatchCallbacks(Ljava/util/List;)V

    return-void
.end method

.method public recorderEvent(II)V
    .registers 7

    .line 198
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mLegacyRemoteSubmixRiid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_14

    .line 199
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mLegacyRemoteSubmixActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p2, :cond_10

    move v3, v2

    goto :goto_11

    :cond_10
    move v3, v1

    :goto_11
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_14
    const/4 v0, -0x1

    if-nez p2, :cond_18

    goto :goto_1d

    :cond_18
    if-ne p2, v2, :cond_1c

    move v1, v2

    goto :goto_1d

    :cond_1c
    move v1, v0

    :goto_1d
    const/4 v2, 0x0

    if-eq p1, v0, :cond_2b

    if-ne v1, v0, :cond_23

    goto :goto_2b

    .line 210
    :cond_23
    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/audio/RecordingActivityMonitor;->updateSnapshot(IILandroid/media/AudioRecordingConfiguration;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->dispatchCallbacks(Ljava/util/List;)V

    return-void

    .line 207
    :cond_2b
    :goto_2b
    sget-object p0, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    invoke-direct {v0, p2, p1, v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    const-string p1, "AudioService.RecordingActivityMonitor"

    invoke-virtual {v0, p1}, Lcom/android/server/utils/EventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/utils/EventLogger$Event;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return-void
.end method

.method public registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;Z)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 322
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 323
    :try_start_6
    new-instance v1, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;-><init>(Landroid/media/IRecordingConfigDispatcher;Z)V

    .line 324
    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->init()Z

    move-result p1

    if-eqz p1, :cond_1e

    if-nez p2, :cond_19

    const/4 p1, 0x1

    .line 326
    iput-boolean p1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    goto :goto_19

    :catchall_17
    move-exception p0

    goto :goto_20

    .line 328
    :cond_19
    :goto_19
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_1e
    monitor-exit v0

    return-void

    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_17

    throw p0
.end method

.method public releaseRecorder(I)V
    .registers 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 217
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/audio/RecordingActivityMonitor;->updateSnapshot(IILandroid/media/AudioRecordingConfiguration;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/RecordingActivityMonitor;->dispatchCallbacks(Ljava/util/List;)V

    return-void
.end method

.method public trackRecorder(Landroid/os/IBinder;)I
    .registers 5

    const/4 v0, -0x1

    if-nez p1, :cond_c

    .line 178
    const-string p0, "AudioService.RecordingActivityMonitor"

    const-string/jumbo p1, "trackRecorder called with null token"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 181
    :cond_c
    invoke-static {}, Landroid/media/AudioSystem;->newAudioRecorderId()I

    move-result v1

    .line 182
    new-instance v2, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;

    invoke-direct {v2, v1, p1}, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;-><init>(ILandroid/os/IBinder;)V

    .line 183
    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->init()Z

    move-result p1

    if-nez p1, :cond_1c

    return v0

    .line 187
    :cond_1c
    iget-object p1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter p1

    .line 188
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    new-instance v0, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;-><init>(ILcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    monitor-exit p1

    return v1

    :catchall_2b
    move-exception p0

    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 337
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 338
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 340
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 341
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;

    .line 342
    invoke-interface {p1}, Landroid/media/IRecordingConfigDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v5}, Landroid/media/IRecordingConfigDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 343
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->release()V

    .line 344
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    :catchall_30
    move-exception p0

    goto :goto_3c

    .line 346
    :cond_32
    iget-boolean v3, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mIsPrivileged:Z

    if-nez v3, :cond_d

    const/4 v2, 0x1

    goto :goto_d

    .line 351
    :cond_38
    iput-boolean v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    .line 352
    monitor-exit v0

    return-void

    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_6 .. :try_end_3d} :catchall_30

    throw p0
.end method

.method public final updateSnapshot(IILandroid/media/AudioRecordingConfiguration;)Ljava/util/List;
    .registers 13

    .line 435
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_e

    .line 438
    :try_start_6
    invoke-virtual {p0, p2}, Lcom/android/server/audio/RecordingActivityMonitor;->findStateByRiid(I)I

    move-result v2

    goto :goto_1a

    :catchall_b
    move-exception p0

    goto/16 :goto_cc

    :cond_e
    if-eqz p3, :cond_19

    .line 440
    invoke-virtual {p3}, Landroid/media/AudioRecordingConfiguration;->getClientPortId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/audio/RecordingActivityMonitor;->findStateByPortId(I)I

    move-result v2

    goto :goto_1a

    :cond_19
    move v2, v1

    :goto_1a
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v1, :cond_50

    if-nez p1, :cond_35

    if-eqz p3, :cond_35

    .line 445
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    new-instance v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-direct {v2, p3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;-><init>(Landroid/media/AudioRecordingConfiguration;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    goto :goto_50

    :cond_35
    if-nez p3, :cond_4e

    .line 450
    const-string p0, "AudioService.RecordingActivityMonitor"

    const-string p3, "Unexpected event %d for riid %d"

    .line 451
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 450
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_4e
    monitor-exit v0

    return-object v4

    .line 456
    :cond_50
    :goto_50
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    const/4 v5, 0x0

    if-eqz p1, :cond_a5

    if-eq p1, v3, :cond_95

    const/4 v6, 0x2

    if-eq p1, v6, :cond_90

    const/4 p3, 0x3

    if-eq p1, p3, :cond_83

    .line 484
    const-string p3, "AudioService.RecordingActivityMonitor"

    const-string v2, "Unknown event %d for riid %d / portid %d"

    .line 485
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getPortId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v6

    .line 484
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b6

    .line 479
    :cond_83
    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    move-result v5

    .line 480
    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->release()V

    .line 481
    iget-object p3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_b6

    .line 468
    :cond_90
    invoke-virtual {v1, p3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->setConfig(Landroid/media/AudioRecordingConfiguration;)Z

    move-result v5

    goto :goto_b6

    .line 471
    :cond_95
    invoke-virtual {v1, v5}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->setActive(Z)Z

    move-result v5

    .line 472
    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->hasDeathHandler()Z

    move-result p3

    if-nez p3, :cond_b6

    .line 475
    iget-object p3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {p3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_b6

    .line 461
    :cond_a5
    invoke-virtual {v1, v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->setActive(Z)Z

    move-result v2

    if-eqz p3, :cond_b5

    .line 463
    invoke-virtual {v1, p3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->setConfig(Landroid/media/AudioRecordingConfiguration;)Z

    move-result p3

    if-nez p3, :cond_b3

    if-eqz v2, :cond_b6

    :cond_b3
    move v5, v3

    goto :goto_b6

    :cond_b5
    move v5, v2

    :cond_b6
    :goto_b6
    if-eqz v5, :cond_ca

    .line 489
    sget-object p3, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object v1

    invoke-direct {v2, p1, p2, v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    invoke-virtual {p3, v2}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 490
    invoke-virtual {p0, v3}, Lcom/android/server/audio/RecordingActivityMonitor;->getActiveRecordingConfigurations(Z)Ljava/util/List;

    move-result-object v4

    .line 492
    :cond_ca
    monitor-exit v0

    return-object v4

    :goto_cc
    monitor-exit v0
    :try_end_cd
    .catchall {:try_start_6 .. :try_end_cd} :catchall_b

    throw p0
.end method
