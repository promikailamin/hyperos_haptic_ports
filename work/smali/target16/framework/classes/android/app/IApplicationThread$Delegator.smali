.class public Landroid/app/IApplicationThread$Delegator;
.super Landroid/app/IApplicationThread$Stub;
.source "IApplicationThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IApplicationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Delegator"
.end annotation


# instance fields
.field blacklist mImpl:Landroid/app/IApplicationThread;


# direct methods
.method public constructor blacklist <init>(Landroid/app/IApplicationThread;)V
    .registers 2

    .line 228
    invoke-direct {p0}, Landroid/app/IApplicationThread$Stub;-><init>()V

    .line 229
    iput-object p1, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    .line 230
    return-void
.end method


# virtual methods
.method public blacklist attachAgent(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 433
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->attachAgent(Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method public blacklist attachStartupAgents(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 437
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->attachStartupAgents(Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public blacklist bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/pm/ProviderInfoList;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/AutofillOptions;Landroid/content/ContentCaptureOptions;[J[JZLandroid/os/SharedMemory;Ljava/io/FileDescriptor;JJ)V
    .registers 66
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-wide/from16 v29, p29

    move-wide/from16 v31, p31

    invoke-interface/range {v0 .. v32}, Landroid/app/IApplicationThread;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/pm/ProviderInfoList;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/AutofillOptions;Landroid/content/ContentCaptureOptions;[J[JZLandroid/os/SharedMemory;Ljava/io/FileDescriptor;JJ)V

    .line 250
    return-void
.end method

.method public blacklist clearDnsCache()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->clearDnsCache()V

    .line 338
    return-void
.end method

.method public blacklist dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public blacklist dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public blacklist dumpBitmapsProto(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 369
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->dumpBitmapsProto(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public blacklist dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 373
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method public blacklist dumpDbInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 381
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->dumpDbInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public blacklist dumpGfxInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 365
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->dumpGfxInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method public blacklist dumpHeap(ZZZLjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    move-object p0, v0

    invoke-interface/range {p0 .. p7}, Landroid/app/IApplicationThread;->dumpHeap(ZZZLjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V

    .line 326
    return-void
.end method

.method public blacklist dumpMemInfo(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZZ[Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 357
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    move-object p0, v0

    invoke-interface/range {p0 .. p9}, Landroid/app/IApplicationThread;->dumpMemInfo(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZZ[Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public blacklist dumpMemInfoProto(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 361
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    move-object p0, v0

    invoke-interface/range {p0 .. p7}, Landroid/app/IApplicationThread;->dumpMemInfoProto(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public blacklist dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IApplicationThread;->dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method public blacklist dumpResources(Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->dumpResources(Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V

    .line 334
    return-void
.end method

.method public blacklist dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IApplicationThread;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public blacklist getExecutableMethodFileOffsets(Landroid/os/instrumentation/MethodDescriptor;Landroid/os/instrumentation/IOffsetCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 489
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->getExecutableMethodFileOffsets(Landroid/os/instrumentation/MethodDescriptor;Landroid/os/instrumentation/IOffsetCallback;)V

    .line 490
    return-void
.end method

.method public blacklist handleTrustStorageUpdate()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 429
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->handleTrustStorageUpdate()V

    .line 430
    return-void
.end method

.method public blacklist instrumentWithoutRestart(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;Landroid/content/pm/ApplicationInfo;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 469
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/app/IApplicationThread;->instrumentWithoutRestart(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;Landroid/content/pm/ApplicationInfo;)V

    .line 470
    return-void
.end method

.method public blacklist notifyCleartextNetwork([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 413
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V

    .line 414
    return-void
.end method

.method public blacklist notifyContentProviderPublishStatus(Landroid/app/ContentProviderHolder;Ljava/lang/String;IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 465
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IApplicationThread;->notifyContentProviderPublishStatus(Landroid/app/ContentProviderHolder;Ljava/lang/String;IZ)V

    .line 466
    return-void
.end method

.method public blacklist performDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 461
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/app/IApplicationThread;->performDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 462
    return-void
.end method

.method public blacklist processInBackground()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 269
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->processInBackground()V

    .line 270
    return-void
.end method

.method public blacklist profilerControl(ZLandroid/app/ProfilerInfo;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IApplicationThread;->profilerControl(ZLandroid/app/ProfilerInfo;I)V

    .line 294
    return-void
.end method

.method public blacklist requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 389
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    move-object p0, v0

    invoke-interface/range {p0 .. p5}, Landroid/app/IApplicationThread;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V

    .line 390
    return-void
.end method

.method public blacklist requestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 457
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IApplicationThread;->requestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 458
    return-void
.end method

.method public blacklist requestHandoffActivityData(Landroid/os/IBinder;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 493
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->requestHandoffActivityData(Landroid/os/IBinder;Ljava/util/List;)V

    .line 494
    return-void
.end method

.method public blacklist runIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 253
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->runIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method public blacklist scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 441
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 442
    return-void
.end method

.method public blacklist scheduleBindService(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;ZIJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    move-object p0, v0

    invoke-interface/range {p0 .. p7}, Landroid/app/IApplicationThread;->scheduleBindService(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;ZIJ)V

    .line 274
    return-void
.end method

.method public blacklist scheduleCrash(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IApplicationThread;->scheduleCrash(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 322
    return-void
.end method

.method public blacklist scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;III)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IApplicationThread;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;III)V

    .line 302
    return-void
.end method

.method public blacklist scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 241
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/app/IApplicationThread;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 242
    return-void
.end method

.method public blacklist scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;I)V

    .line 306
    return-void
.end method

.method public blacklist scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 409
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 410
    return-void
.end method

.method public blacklist scheduleExit()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->scheduleExit()V

    .line 258
    return-void
.end method

.method public blacklist scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 401
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    .line 402
    return-void
.end method

.method public blacklist scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 425
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 426
    return-void
.end method

.method public blacklist scheduleLowMemory()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->scheduleLowMemory()V

    .line 290
    return-void
.end method

.method public blacklist scheduleOnNewSceneTransitionInfo(Landroid/os/IBinder;Landroid/app/ActivityOptions$SceneTransitionInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->scheduleOnNewSceneTransitionInfo(Landroid/os/IBinder;Landroid/app/ActivityOptions$SceneTransitionInfo;)V

    .line 310
    return-void
.end method

.method public blacklist schedulePing(Landroid/os/RemoteCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 485
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->schedulePing(Landroid/os/RemoteCallback;)V

    .line 486
    return-void
.end method

.method public blacklist scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    move-object p0, v0

    invoke-interface/range {p0 .. p12}, Landroid/app/IApplicationThread;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZZIIILjava/lang/String;)V

    .line 234
    return-void
.end method

.method public blacklist scheduleReceiverList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ReceiverInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->scheduleReceiverList(Ljava/util/List;)V

    .line 238
    return-void
.end method

.method public blacklist scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    move-object p0, v0

    invoke-interface/range {p0 .. p12}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V

    .line 286
    return-void
.end method

.method public blacklist scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V

    .line 262
    return-void
.end method

.method public blacklist scheduleStopService(Landroid/os/IBinder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->scheduleStopService(Landroid/os/IBinder;)V

    .line 246
    return-void
.end method

.method public blacklist scheduleSuicide()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->scheduleSuicide()V

    .line 314
    return-void
.end method

.method public blacklist scheduleTaskFragmentTransaction(Landroid/window/ITaskFragmentOrganizer;Landroid/window/TaskFragmentTransaction;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->scheduleTaskFragmentTransaction(Landroid/window/ITaskFragmentOrganizer;Landroid/window/TaskFragmentTransaction;)V

    .line 454
    return-void
.end method

.method public blacklist scheduleTimeoutService(Landroid/os/IBinder;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 477
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->scheduleTimeoutService(Landroid/os/IBinder;I)V

    .line 478
    return-void
.end method

.method public blacklist scheduleTimeoutServiceForType(Landroid/os/IBinder;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 481
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IApplicationThread;->scheduleTimeoutServiceForType(Landroid/os/IBinder;II)V

    .line 482
    return-void
.end method

.method public blacklist scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 450
    return-void
.end method

.method public blacklist scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    .line 394
    return-void
.end method

.method public blacklist scheduleTrimMemory(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 353
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V

    .line 354
    return-void
.end method

.method public blacklist scheduleUnbindService(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IApplicationThread;->scheduleUnbindService(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 278
    return-void
.end method

.method public blacklist setCoreSettings(Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V

    .line 346
    return-void
.end method

.method public blacklist setNetworkBlockSeq(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 445
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->setNetworkBlockSeq(J)V

    .line 446
    return-void
.end method

.method public blacklist setProcessState(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->setProcessState(I)V

    .line 398
    return-void
.end method

.method public blacklist setSchedulingGroup(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->setSchedulingGroup(I)V

    .line 298
    return-void
.end method

.method public blacklist startBinderTracking()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 417
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->startBinderTracking()V

    .line 418
    return-void
.end method

.method public blacklist stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 421
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V

    .line 422
    return-void
.end method

.method public blacklist unstableProviderDied(Landroid/os/IBinder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 385
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 386
    return-void
.end method

.method public blacklist updateHttpProxy()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->updateHttpProxy()V

    .line 342
    return-void
.end method

.method public blacklist updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1, p2}, Landroid/app/IApplicationThread;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    .line 350
    return-void
.end method

.method public blacklist updateTimePrefs(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 405
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0, p1}, Landroid/app/IApplicationThread;->updateTimePrefs(I)V

    .line 406
    return-void
.end method

.method public blacklist updateTimeZone()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->updateTimeZone()V

    .line 266
    return-void
.end method

.method public blacklist updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/view/translation/TranslationSpec;",
            "Landroid/view/translation/TranslationSpec;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Landroid/view/translation/UiTranslationSpec;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    iget-object v0, p0, Landroid/app/IApplicationThread$Delegator;->mImpl:Landroid/app/IApplicationThread;

    move-object p0, v0

    invoke-interface/range {p0 .. p6}, Landroid/app/IApplicationThread;->updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V

    .line 474
    return-void
.end method
