.class public final Lcom/android/server/audio/RecordingActivityMonitor;
.super Ljava/lang/Object;
.source "RecordingActivityMonitor.java"

# interfaces
.implements Landroid/media/AudioSystem$AudioRecordingCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;,
        Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;,
        Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;,
        Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AudioService.RecordingActivityMonitor"

.field private static final sEventLogger:Lcom/android/server/audio/AudioEventLogger;


# instance fields
.field private mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHasPublicClients:Z

.field private mLegacyRemoteSubmixActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLegacyRemoteSubmixRiid:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mPackMan:Landroid/content/pm/PackageManager;

.field private mRecordStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 687
    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v1, 0x32

    const-string/jumbo v2, "recording activity received by AudioService"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "ctxt"    # Landroid/content/Context;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    .line 72
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mLegacyRemoteSubmixRiid:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 74
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mLegacyRemoteSubmixActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 147
    sput-object p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 148
    sput-object p0, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 150
    iput-object p1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mContext:Landroid/content/Context;

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mPackMan:Landroid/content/pm/PackageManager;

    .line 153
    return-void
.end method

.method private static anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    .line 301
    .local p0, "sysConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v0, "publicConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioRecordingConfiguration;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioRecordingConfiguration;

    .line 305
    .local v2, "config":Landroid/media/AudioRecordingConfiguration;
    invoke-static {v2}, Landroid/media/AudioRecordingConfiguration;->anonymizedCopy(Landroid/media/AudioRecordingConfiguration;)Landroid/media/AudioRecordingConfiguration;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    .end local v2    # "config":Landroid/media/AudioRecordingConfiguration;
    goto :goto_9

    .line 307
    :cond_1d
    return-object v0
.end method

.method private createRecordingConfiguration(III[IIZI[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;)Landroid/media/AudioRecordingConfiguration;
    .registers 29
    .param p1, "uid"    # I
    .param p2, "session"    # I
    .param p3, "source"    # I
    .param p4, "recordingInfo"    # [I
    .param p5, "portId"    # I
    .param p6, "silenced"    # Z
    .param p7, "activeSource"    # I
    .param p8, "clientEffects"    # [Landroid/media/audiofx/AudioEffect$Descriptor;
    .param p9, "effects"    # [Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 421
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v1, 0x0

    aget v2, p4, v1

    .line 422
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const/4 v2, 0x1

    aget v2, p4, v2

    .line 424
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const/4 v2, 0x2

    aget v2, p4, v2

    .line 425
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 426
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    .line 427
    .local v0, "clientFormat":Landroid/media/AudioFormat;
    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v3, 0x3

    aget v3, p4, v3

    .line 428
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    const/4 v3, 0x4

    aget v3, p4, v3

    .line 430
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    const/4 v3, 0x5

    aget v3, p4, v3

    .line 431
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 432
    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v15

    .line 433
    .local v15, "deviceFormat":Landroid/media/AudioFormat;
    const/4 v2, 0x6

    aget v16, p4, v2

    .line 434
    .local v16, "patchHandle":I
    move-object/from16 v14, p0

    iget-object v2, v14, Lcom/android/server/audio/RecordingActivityMonitor;->mPackMan:Landroid/content/pm/PackageManager;

    move/from16 v13, p1

    invoke-virtual {v2, v13}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    .line 436
    .local v12, "packages":[Ljava/lang/String;
    if-eqz v12, :cond_51

    array-length v2, v12

    if-lez v2, :cond_51

    .line 437
    aget-object v1, v12, v1

    .local v1, "packageName":Ljava/lang/String;
    goto :goto_53

    .line 439
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_51
    const-string v1, ""

    .line 441
    .restart local v1    # "packageName":Ljava/lang/String;
    :goto_53
    new-instance v17, Landroid/media/AudioRecordingConfiguration;

    move-object/from16 v2, v17

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object v6, v0

    move-object v7, v15

    move/from16 v8, v16

    move-object v9, v1

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v18, v12

    .end local v12    # "packages":[Ljava/lang/String;
    .local v18, "packages":[Ljava/lang/String;
    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-direct/range {v2 .. v14}, Landroid/media/AudioRecordingConfiguration;-><init>(IIILandroid/media/AudioFormat;Landroid/media/AudioFormat;ILjava/lang/String;IZI[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;)V

    return-object v17
.end method

.method private dispatchCallbacks(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 262
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    if-nez p1, :cond_3

    .line 263
    return-void

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 268
    :try_start_6
    iget-boolean v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    if-eqz v1, :cond_f

    .line 269
    invoke-static {p1}, Lcom/android/server/audio/RecordingActivityMonitor;->anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_14

    .line 270
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_14
    nop

    .line 271
    .local v1, "configsPublic":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_42

    .line 273
    .local v3, "rmc":Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    :try_start_27
    iget-boolean v4, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mIsPrivileged:Z

    if-eqz v4, :cond_31

    .line 274
    iget-object v4, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v4, p1}, Landroid/media/IRecordingConfigDispatcher;->dispatchRecordingConfigChange(Ljava/util/List;)V

    goto :goto_36

    .line 276
    :cond_31
    iget-object v4, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v4, v1}, Landroid/media/IRecordingConfigDispatcher;->dispatchRecordingConfigChange(Ljava/util/List;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_36} :catch_37
    .catchall {:try_start_27 .. :try_end_36} :catchall_42

    .line 280
    :goto_36
    goto :goto_3f

    .line 278
    :catch_37
    move-exception v4

    .line 279
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_38
    const-string v5, "AudioService.RecordingActivityMonitor"

    const-string v6, "Could not call dispatchRecordingConfigChange() on client"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    .end local v3    # "rmc":Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_3f
    goto :goto_1b

    .line 282
    .end local v1    # "configsPublic":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    :cond_40
    monitor-exit v0

    .line 283
    return-void

    .line 282
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_42

    throw v1
.end method

.method private findStateByPortId(I)I
    .registers 5
    .param p1, "portId"    # I

    .line 551
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    .line 552
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 553
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->hasDeathHandler()Z

    move-result v2

    if-nez v2, :cond_2a

    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 554
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getPortId()I

    move-result v2

    if-ne v2, p1, :cond_2a

    .line 555
    monitor-exit v0

    return v1

    .line 552
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 558
    .end local v1    # "i":I
    :cond_2d
    monitor-exit v0

    .line 559
    const/4 v0, -0x1

    return v0

    .line 558
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_30

    throw v1
.end method

.method private findStateByRiid(I)I
    .registers 5
    .param p1, "riid"    # I

    .line 539
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    .line 540
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 541
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getRiid()I

    move-result v2

    if-ne v2, p1, :cond_1c

    .line 542
    monitor-exit v0

    return v1

    .line 540
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 545
    .end local v1    # "i":I
    :cond_1f
    monitor-exit v0

    .line 546
    const/4 v0, -0x1

    return v0

    .line 545
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v1
.end method

.method private updateSnapshot(IILandroid/media/AudioRecordingConfiguration;)Ljava/util/List;
    .registers 15
    .param p1, "event"    # I
    .param p2, "riid"    # I
    .param p3, "config"    # Landroid/media/AudioRecordingConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/media/AudioRecordingConfiguration;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v1

    .line 458
    const/4 v2, -0x1

    .line 459
    .local v2, "stateIndex":I
    const/4 v3, -0x1

    if-eq p2, v3, :cond_11

    .line 460
    :try_start_8
    invoke-direct {p0, p2}, Lcom/android/server/audio/RecordingActivityMonitor;->findStateByRiid(I)I

    move-result v4

    move v2, v4

    goto :goto_1c

    .line 533
    .end local v2    # "stateIndex":I
    :catchall_e
    move-exception v2

    goto/16 :goto_10d

    .line 461
    .restart local v2    # "stateIndex":I
    :cond_11
    if-eqz p3, :cond_1c

    .line 462
    invoke-virtual {p3}, Landroid/media/AudioRecordingConfiguration;->getClientPortId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/audio/RecordingActivityMonitor;->findStateByPortId(I)I

    move-result v4

    move v2, v4

    .line 464
    :cond_1c
    :goto_1c
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v3, :cond_55

    .line 465
    if-nez p1, :cond_38

    if-eqz p3, :cond_38

    .line 467
    iget-object v3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    new-instance v7, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-direct {v7, p3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;-><init>(Landroid/media/AudioRecordingConfiguration;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    iget-object v3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    goto :goto_55

    .line 470
    :cond_38
    if-nez p3, :cond_53

    .line 472
    const-string v3, "AudioService.RecordingActivityMonitor"

    const-string v7, "Unexpected event %d for riid %d"

    new-array v4, v4, [Ljava/lang/Object;

    .line 473
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 472
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_53
    monitor-exit v1

    return-object v0

    .line 478
    :cond_55
    :goto_55
    iget-object v3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 480
    .local v3, "state":Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    if-eqz p3, :cond_6e

    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object v7

    if-eqz v7, :cond_67

    if-eq p1, v4, :cond_6e

    .line 482
    :cond_67
    invoke-static {}, Landroid/media/MediaFunctionStub;->get()Landroid/media/MediaFunctionStub;

    move-result-object v7

    invoke-interface {v7, p1, p3}, Landroid/media/MediaFunctionStub;->broadcastRecorderState(ILandroid/media/AudioRecordingConfiguration;)V

    .line 487
    :cond_6e
    packed-switch p1, :pswitch_data_110

    .line 525
    const-string v7, "AudioService.RecordingActivityMonitor"

    goto :goto_d3

    .line 516
    :pswitch_74
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    move-result v4

    .line 518
    .local v4, "configChanged":Z
    invoke-static {}, Lcom/android/server/audio/AudioServiceStub;->get()Lcom/android/server/audio/AudioServiceStub;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object v8

    invoke-interface {v5, v7, v8, p2}, Lcom/android/server/audio/AudioServiceStub;->stopCameraRecordService(Landroid/content/Context;Landroid/media/AudioRecordingConfiguration;I)V

    .line 521
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->release()V

    .line 522
    iget-object v5, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 523
    goto :goto_f6

    .line 496
    .end local v4    # "configChanged":Z
    :pswitch_8e
    invoke-virtual {v3, p3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->setConfig(Landroid/media/AudioRecordingConfiguration;)Z

    move-result v4

    .line 498
    .restart local v4    # "configChanged":Z
    invoke-static {}, Lcom/android/server/audio/AudioServiceStub;->get()Lcom/android/server/audio/AudioServiceStub;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object v8

    invoke-interface {v5, v7, v8, p1, p2}, Lcom/android/server/audio/AudioServiceStub;->startCameraRecordService(Landroid/content/Context;Landroid/media/AudioRecordingConfiguration;II)V

    .line 501
    goto :goto_f6

    .line 503
    .end local v4    # "configChanged":Z
    :pswitch_a0
    invoke-virtual {v3, v5}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->setActive(Z)Z

    move-result v4

    .line 504
    .restart local v4    # "configChanged":Z
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->hasDeathHandler()Z

    move-result v5

    if-nez v5, :cond_f6

    .line 507
    invoke-virtual {v3, p3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->setConfig(Landroid/media/AudioRecordingConfiguration;)Z

    move-result v5

    move v4, v5

    .line 509
    invoke-static {}, Lcom/android/server/audio/AudioServiceStub;->get()Lcom/android/server/audio/AudioServiceStub;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object v8

    invoke-interface {v5, v7, v8, p2}, Lcom/android/server/audio/AudioServiceStub;->stopCameraRecordService(Landroid/content/Context;Landroid/media/AudioRecordingConfiguration;I)V

    .line 512
    iget-object v5, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_f6

    .line 489
    .end local v4    # "configChanged":Z
    :pswitch_c2
    invoke-virtual {v3, v6}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->setActive(Z)Z

    move-result v4

    .line 490
    .restart local v4    # "configChanged":Z
    if-eqz p3, :cond_f6

    .line 491
    invoke-virtual {v3, p3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->setConfig(Landroid/media/AudioRecordingConfiguration;)Z

    move-result v7

    if-nez v7, :cond_d0

    if-eqz v4, :cond_d1

    :cond_d0
    move v5, v6

    :cond_d1
    move v4, v5

    goto :goto_f6

    .line 525
    .end local v4    # "configChanged":Z
    :goto_d3
    const-string v8, "Unknown event %d for riid %d / portid %d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    .line 526
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v6

    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getPortId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v4

    .line 525
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/4 v4, 0x0

    .line 529
    .restart local v4    # "configChanged":Z
    :cond_f6
    :goto_f6
    if-eqz v4, :cond_10b

    .line 530
    sget-object v5, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v7, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object v8

    invoke-direct {v7, p1, p2, v8}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    invoke-virtual {v5, v7}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 531
    invoke-virtual {p0, v6}, Lcom/android/server/audio/RecordingActivityMonitor;->getActiveRecordingConfigurations(Z)Ljava/util/List;

    move-result-object v5

    move-object v0, v5

    .line 533
    .end local v2    # "stateIndex":I
    .end local v3    # "state":Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    .end local v4    # "configChanged":Z
    :cond_10b
    monitor-exit v1

    .line 534
    return-object v0

    .line 533
    :goto_10d
    monitor-exit v1
    :try_end_10e
    .catchall {:try_start_8 .. :try_end_10e} :catchall_e

    throw v2

    nop

    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_c2
        :pswitch_a0
        :pswitch_8e
        :pswitch_74
    .end packed-switch
.end method


# virtual methods
.method protected dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nRecordActivityMonitor dump time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 288
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    .line 290
    :try_start_26
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 291
    .local v2, "state":Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    invoke-virtual {v2, p1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->dump(Ljava/io/PrintWriter;)V

    .line 292
    .end local v2    # "state":Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    goto :goto_2c

    .line 293
    :cond_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_26 .. :try_end_3d} :catchall_48

    .line 294
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 296
    sget-object v0, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 297
    return-void

    .line 293
    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method getActiveRecordingConfigurations(Z)Ljava/util/List;
    .registers 7
    .param p1, "isPrivileged"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v1

    .line 380
    :try_start_8
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 381
    .local v3, "state":Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 382
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 384
    .end local v3    # "state":Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    :cond_27
    goto :goto_e

    .line 385
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_30

    .line 388
    if-nez p1, :cond_2f

    .line 389
    invoke-static {v0}, Lcom/android/server/audio/RecordingActivityMonitor;->anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 391
    :cond_2f
    return-object v0

    .line 385
    :catchall_30
    move-exception v2

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v2
.end method

.method initMonitor()V
    .registers 1

    .line 311
    invoke-static {p0}, Landroid/media/AudioSystem;->setRecordingCallback(Landroid/media/AudioSystem$AudioRecordingCallback;)V

    .line 312
    return-void
.end method

.method isLegacyRemoteSubmixActive()Z
    .registers 2

    .line 398
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mLegacyRemoteSubmixActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isRecordingActiveForUid(I)Z
    .registers 6
    .param p1, "uid"    # I

    .line 249
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    .line 250
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 252
    .local v2, "state":Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 253
    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioRecordingConfiguration;->getClientUid()I

    move-result v3

    if-ne v3, p1, :cond_28

    .line 254
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 256
    .end local v2    # "state":Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    :cond_28
    goto :goto_9

    .line 257
    :cond_29
    monitor-exit v0

    .line 258
    const/4 v0, 0x0

    return v0

    .line 257
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method onAudioServerDied()V
    .registers 11

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v1

    .line 320
    const/4 v2, 0x0

    .line 321
    .local v2, "configChanged":Z
    :try_start_5
    iget-object v3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;>;"
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 322
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 323
    .local v4, "state":Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    invoke-virtual {v4}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->hasDeathHandler()Z

    move-result v5

    if-nez v5, :cond_3a

    .line 324
    invoke-virtual {v4}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 325
    const/4 v2, 0x1

    .line 326
    sget-object v5, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v6, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    const/4 v7, 0x3

    .line 328
    invoke-virtual {v4}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getRiid()I

    move-result v8

    invoke-virtual {v4}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    .line 326
    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 330
    :cond_37
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 332
    .end local v4    # "state":Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    :cond_3a
    goto :goto_b

    .line 333
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;>;"
    :cond_3b
    if-eqz v2, :cond_43

    .line 334
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/audio/RecordingActivityMonitor;->getActiveRecordingConfigurations(Z)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    .line 336
    .end local v2    # "configChanged":Z
    :cond_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_5 .. :try_end_44} :catchall_48

    .line 337
    invoke-direct {p0, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->dispatchCallbacks(Ljava/util/List;)V

    .line 338
    return-void

    .line 336
    :catchall_48
    move-exception v2

    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v2
.end method

.method public onRecordingConfigurationChanged(IIIIIIZ[I[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;ILjava/lang/String;)V
    .registers 26
    .param p1, "event"    # I
    .param p2, "riid"    # I
    .param p3, "uid"    # I
    .param p4, "session"    # I
    .param p5, "source"    # I
    .param p6, "portId"    # I
    .param p7, "silenced"    # Z
    .param p8, "recordingInfo"    # [I
    .param p9, "clientEffects"    # [Landroid/media/audiofx/AudioEffect$Descriptor;
    .param p10, "effects"    # [Landroid/media/audiofx/AudioEffect$Descriptor;
    .param p11, "activeSource"    # I
    .param p12, "packName"    # Ljava/lang/String;

    .line 164
    move-object v10, p0

    move v11, p1

    move v12, p2

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p8

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p11

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/server/audio/RecordingActivityMonitor;->createRecordingConfiguration(III[IIZI[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;)Landroid/media/AudioRecordingConfiguration;

    move-result-object v0

    .line 167
    .local v0, "config":Landroid/media/AudioRecordingConfiguration;
    const/16 v1, 0x8

    move/from16 v2, p5

    if-ne v2, v1, :cond_42

    if-eqz v11, :cond_25

    const/4 v1, 0x2

    if-ne v11, v1, :cond_42

    .line 170
    :cond_25
    invoke-virtual {v0}, Landroid/media/AudioRecordingConfiguration;->getAudioDevice()Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 171
    .local v1, "device":Landroid/media/AudioDeviceInfo;
    if-eqz v1, :cond_42

    .line 172
    invoke-virtual {v1}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 173
    iget-object v3, v10, Lcom/android/server/audio/RecordingActivityMonitor;->mLegacyRemoteSubmixRiid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 174
    iget-object v3, v10, Lcom/android/server/audio/RecordingActivityMonitor;->mLegacyRemoteSubmixActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 177
    .end local v1    # "device":Landroid/media/AudioDeviceInfo;
    :cond_42
    invoke-static/range {p5 .. p5}, Landroid/media/MediaRecorder;->isSystemOnlyAudioSource(I)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 179
    sget-object v1, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    invoke-direct {v3, p1, p2, v0}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    const-string v4, "AudioService.RecordingActivityMonitor"

    invoke-virtual {v3, v4}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 180
    return-void

    .line 182
    :cond_59
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->updateSnapshot(IILandroid/media/AudioRecordingConfiguration;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/RecordingActivityMonitor;->dispatchCallbacks(Ljava/util/List;)V

    .line 183
    return-void
.end method

.method public recorderEvent(II)V
    .registers 7
    .param p1, "riid"    # I
    .param p2, "event"    # I

    .line 216
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mLegacyRemoteSubmixRiid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_14

    .line 217
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mLegacyRemoteSubmixActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p2, :cond_10

    move v3, v2

    goto :goto_11

    :cond_10
    move v3, v1

    :goto_11
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 219
    :cond_14
    const/4 v0, -0x1

    if-nez p2, :cond_18

    .line 220
    goto :goto_1d

    .line 221
    :cond_18
    if-ne p2, v2, :cond_1c

    .line 222
    move v1, v2

    goto :goto_1d

    :cond_1c
    move v1, v0

    :goto_1d
    nop

    .line 223
    .local v1, "configEvent":I
    const/4 v2, 0x0

    if-eq p1, v0, :cond_37

    if-ne v1, v0, :cond_24

    goto :goto_37

    .line 229
    :cond_24
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-interface {v0, v3, p1, p2}, Lcom/android/server/am/SmartPowerServiceStub;->onRecorderEvent(III)V

    .line 230
    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/audio/RecordingActivityMonitor;->updateSnapshot(IILandroid/media/AudioRecordingConfiguration;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->dispatchCallbacks(Ljava/util/List;)V

    .line 231
    return-void

    .line 225
    :cond_37
    :goto_37
    sget-object v0, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    invoke-direct {v3, p2, p1, v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    const-string v2, "AudioService.RecordingActivityMonitor"

    invoke-virtual {v3, v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 226
    return-void
.end method

.method registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;Z)V
    .registers 6
    .param p1, "rcdb"    # Landroid/media/IRecordingConfigDispatcher;
    .param p2, "isPrivileged"    # Z

    .line 341
    if-nez p1, :cond_3

    .line 342
    return-void

    .line 344
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 345
    :try_start_6
    new-instance v1, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;-><init>(Landroid/media/IRecordingConfigDispatcher;Z)V

    .line 346
    .local v1, "rmc":Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->init()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 347
    if-nez p2, :cond_16

    .line 348
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    .line 350
    :cond_16
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    .end local v1    # "rmc":Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    :cond_1b
    monitor-exit v0

    .line 353
    return-void

    .line 352
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public releaseRecorder(I)V
    .registers 4
    .param p1, "riid"    # I

    .line 238
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/server/am/SmartPowerServiceStub;->onRecorderRlease(II)V

    .line 239
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/audio/RecordingActivityMonitor;->updateSnapshot(IILandroid/media/AudioRecordingConfiguration;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->dispatchCallbacks(Ljava/util/List;)V

    .line 240
    return-void
.end method

.method public trackRecorder(Landroid/os/IBinder;)I
    .registers 7
    .param p1, "recorder"    # Landroid/os/IBinder;

    .line 189
    const/4 v0, -0x1

    if-nez p1, :cond_c

    .line 190
    const-string v1, "AudioService.RecordingActivityMonitor"

    const-string/jumbo v2, "trackRecorder called with null token"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return v0

    .line 193
    :cond_c
    invoke-static {}, Landroid/media/AudioSystem;->newAudioRecorderId()I

    move-result v1

    .line 194
    .local v1, "newRiid":I
    new-instance v2, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;

    invoke-direct {v2, v1, p1}, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;-><init>(ILandroid/os/IBinder;)V

    .line 195
    .local v2, "handler":Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;
    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->init()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 197
    return v0

    .line 199
    :cond_1c
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    .line 200
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    new-instance v4, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-direct {v4, v1, v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;-><init>(ILcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_49

    .line 203
    invoke-static {}, Lcom/android/server/audio/AudioServiceStub;->get()Lcom/android/server/audio/AudioServiceStub;

    move-result-object v0

    .line 204
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-interface {v0, v3, v4}, Lcom/android/server/audio/AudioServiceStub;->handleNewRecorderTracked(II)V

    .line 205
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    .line 206
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 205
    invoke-interface {v0, v3, v4, v1}, Lcom/android/server/am/SmartPowerServiceStub;->onRecorderTrack(III)V

    .line 209
    return v1

    .line 201
    :catchall_49
    move-exception v3

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v3
.end method

.method unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .registers 8
    .param p1, "rcdb"    # Landroid/media/IRecordingConfigDispatcher;

    .line 356
    if-nez p1, :cond_3

    .line 357
    return-void

    .line 359
    :cond_3
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 360
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 361
    .local v1, "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;>;"
    const/4 v2, 0x0

    .line 362
    .local v2, "hasPublicClients":Z
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 363
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;

    .line 364
    .local v3, "rmc":Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    invoke-interface {p1}, Landroid/media/IRecordingConfigDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v5}, Landroid/media/IRecordingConfigDispatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 365
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->release()V

    .line 366
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_35

    .line 368
    :cond_30
    iget-boolean v4, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mIsPrivileged:Z

    if-nez v4, :cond_35

    .line 369
    const/4 v2, 0x1

    .line 372
    .end local v3    # "rmc":Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    :cond_35
    :goto_35
    goto :goto_d

    .line 373
    :cond_36
    iput-boolean v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    .line 374
    .end local v1    # "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;>;"
    .end local v2    # "hasPublicClients":Z
    monitor-exit v0

    .line 375
    return-void

    .line 374
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_6 .. :try_end_3c} :catchall_3a

    throw v1
.end method
