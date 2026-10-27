.class public Lcom/android/server/am/BroadcastController;
.super Ljava/lang/Object;
.source "BroadcastController.java"


# instance fields
.field public volatile mAreStickyCachesInvalidated:Z

.field public mBackgroundLaunchBroadcasts:Landroid/util/ArraySet;

.field public mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

.field public final mContext:Landroid/content/Context;

.field public mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

.field public mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

.field public final mReceiverResolver:Lcom/android/server/am/BroadcastController$BroadcastIntentResolver;

.field public final mRegisteredReceivers:Ljava/util/HashMap;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public final mStickyBroadcasts:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/BroadcastQueue;)V
    .registers 5

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lcom/android/server/am/BroadcastController;->mAreStickyCachesInvalidated:Z

    .line 262
    new-instance v0, Lcom/android/server/am/BroadcastController$BroadcastIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/server/am/BroadcastController$BroadcastIntentResolver;-><init>(Lcom/android/server/am/BroadcastController;)V

    iput-object v0, p0, Lcom/android/server/am/BroadcastController;->mReceiverResolver:Lcom/android/server/am/BroadcastController$BroadcastIntentResolver;

    .line 265
    iput-object p1, p0, Lcom/android/server/am/BroadcastController;->mContext:Landroid/content/Context;

    .line 266
    iput-object p2, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 267
    iput-object p3, p0, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    return-void
.end method

.method public static getIntArg(Ljava/io/PrintWriter;[Ljava/lang/String;II)I
    .registers 5

    .line 2396
    array-length v0, p1

    if-le p2, v0, :cond_9

    .line 2397
    const-string p1, "Missing argument"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return p3

    .line 2400
    :cond_9
    aget-object p1, p1, p2

    .line 2402
    :try_start_b
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_10

    return p0

    .line 2404
    :catch_10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Non-numeric argument at index %d: %s\n"

    invoke-virtual {p0, p2, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return p3
.end method

.method public static traceBroadcastIntentBegin(Landroid/content/Intent;Landroid/content/IIntentReceiver;ZZIII)I
    .registers 12

    const-wide/16 v0, 0x40

    .line 828
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 829
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "broadcastIntent: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 830
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 831
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1e

    const/4 v4, 0x0

    .line 832
    :cond_1e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 833
    const-string v4, "0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 834
    const-string v4, "_"

    if-eqz p2, :cond_3e

    const-string p2, "O"

    goto :goto_3f

    :cond_3e
    move-object p2, v4

    :goto_3f
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_47

    .line 835
    const-string p2, "S"

    goto :goto_48

    :cond_47
    move-object p2, v4

    :goto_48
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4f

    .line 836
    const-string v4, "C"

    :cond_4f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0x75

    .line 838
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eq p4, p5, :cond_6b

    .line 840
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 841
    const-string/jumbo p1, "sender="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 843
    :cond_6b
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_7a

    .line 844
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    goto :goto_7e

    .line 845
    :cond_7a
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    .line 846
    :goto_7e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "broadcastIntentTarget:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 847
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_9b
    const/4 p0, 0x0

    return p0
.end method

.method public static traceBroadcastIntentEnd(I)V
    .registers 3

    const-wide/16 v0, 0x40

    .line 853
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 854
    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    :cond_b
    return-void
.end method

.method public static traceRegistrationBegin(Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;I)V
    .registers 11

    const-wide/16 v0, 0x40

    .line 289
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "registerReceiver: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    const-string/jumbo v4, "null"

    if-nez p0, :cond_22

    move-object p0, v4

    :cond_22
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    const-string/jumbo p0, "p:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/IntentFilter;->getPriority()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {p2}, Landroid/content/IntentFilter;->safeCountActions()I

    move-result p0

    if-lez p0, :cond_54

    const/4 v5, 0x0

    :goto_3f
    if-ge v5, p0, :cond_57

    .line 297
    invoke-virtual {p2, v5}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, p0, -0x1

    if-eq v5, v6, :cond_51

    const/16 v6, 0x2c

    .line 298
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_51
    add-int/lit8 v5, v5, 0x1

    goto :goto_3f

    .line 301
    :cond_54
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x75

    .line 304
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez p1, :cond_68

    goto :goto_6c

    .line 305
    :cond_68
    invoke-interface {p1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_6c
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_76
    return-void
.end method

.method public static traceRegistrationEnd()V
    .registers 3

    const-wide/16 v0, 0x40

    .line 311
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 312
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_b
    return-void
.end method

.method public static traceUnregistrationBegin(Landroid/content/IIntentReceiver;)V
    .registers 4

    const-wide/16 v0, 0x40

    .line 645
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 647
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez p0, :cond_16

    .line 648
    const-string/jumbo p0, "null"

    goto :goto_1a

    :cond_16
    invoke-interface {p0}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    :goto_1a
    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 647
    const-string/jumbo v2, "unregisterReceiver: %d/%s"

    invoke-static {v2, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 646
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_28
    return-void
.end method

.method public static traceUnregistrationEnd()V
    .registers 3

    const-wide/16 v0, 0x40

    .line 653
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 654
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_b
    return-void
.end method


# virtual methods
.method public final addBackgroundCheckViolationLocked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1882
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastController;->rotateBroadcastStatsIfNeededLocked()V

    .line 1883
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastStats;->addBackgroundCheckViolation(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final addBroadcastStatLocked(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .registers 7

    .line 1877
    invoke-virtual {p0}, Lcom/android/server/am/BroadcastController;->rotateBroadcastStatsIfNeededLocked()V

    .line 1878
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/BroadcastStats;->addBroadcast(Ljava/lang/String;Ljava/lang/String;IIJ)V

    return-void
.end method

.method public broadcastIntentInPackage(Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZILandroid/app/BackgroundStartPrivileges;[I)I
    .registers 50

    move-object/from16 v2, p0

    .line 771
    iget-object v1, v2, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    move-object/from16 v0, p6

    .line 772
    :try_start_a
    invoke-virtual {v2, v0}, Lcom/android/server/am/BroadcastController;->verifyBroadcastLocked(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    .line 774
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    if-nez p13, :cond_17

    const/4 v0, 0x0

    :goto_15
    move-object v13, v0

    goto :goto_1c

    .line 776
    :cond_17
    filled-new-array/range {p13 .. p13}, [Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_5e

    goto :goto_15

    :goto_1c
    const/16 v20, -0x1

    const/16 v27, 0x0

    const/4 v3, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v21, p3

    move/from16 v22, p4

    move/from16 v23, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move/from16 v24, p17

    move-object/from16 v25, p18

    move-object/from16 v26, p19

    .line 778
    :try_start_47
    invoke-virtual/range {v2 .. v27}, Lcom/android/server/am/BroadcastController;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIIILandroid/app/BackgroundStartPrivileges;[ILjava/util/function/BiFunction;)I

    move-result v0
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_60

    .line 785
    :try_start_4b
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 787
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_5e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz p16, :cond_5d

    if-nez v0, :cond_5d

    .line 790
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/BroadcastStickyCache;->invalidateCache(Ljava/lang/String;)V

    :cond_5d
    return v0

    :catchall_5e
    move-exception v0

    goto :goto_65

    :catchall_60
    move-exception v0

    .line 785
    :try_start_61
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 786
    throw v0

    .line 787
    :goto_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_5e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public final broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIIILandroid/app/BackgroundStartPrivileges;[ILjava/util/function/BiFunction;)I
    .registers 56

    move-object/from16 v0, p4

    move-object/from16 v1, p7

    move/from16 v2, p16

    move/from16 v3, p17

    move/from16 v4, p19

    move/from16 v5, p20

    move/from16 v6, p22

    .line 806
    invoke-static/range {v0 .. v6}, Lcom/android/server/am/BroadcastController;->traceBroadcastIntentBegin(Landroid/content/Intent;Landroid/content/IIntentReceiver;ZZIII)I

    move-result v29

    .line 809
    :try_start_12
    new-instance v28, Lcom/android/server/am/BroadcastSentEventRecord;

    invoke-direct/range {v28 .. v28}, Lcom/android/server/am/BroadcastSentEventRecord;-><init>()V

    .line 814
    invoke-static/range {p15 .. p15}, Landroid/app/BroadcastOptions;->fromBundleNullable(Landroid/os/Bundle;)Landroid/app/BroadcastOptions;

    move-result-object v17

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move/from16 v16, p14

    move/from16 v18, p16

    move/from16 v19, p17

    move/from16 v20, p18

    move/from16 v21, p19

    move/from16 v22, p20

    move/from16 v23, p21

    move/from16 v24, p22

    move-object/from16 v25, p23

    move-object/from16 v26, p24

    move-object/from16 v27, p25

    .line 811
    invoke-virtual/range {v2 .. v28}, Lcom/android/server/am/BroadcastController;->broadcastIntentLockedTraced(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;ZZIIIIILandroid/app/BackgroundStartPrivileges;[ILjava/util/function/BiFunction;Lcom/android/server/am/BroadcastSentEventRecord;)I

    move-result v0

    move-object/from16 v1, v28

    .line 818
    invoke-virtual {v1, v0}, Lcom/android/server/am/BroadcastSentEventRecord;->setResult(I)V

    .line 819
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastSentEventRecord;->logToStatsd()V
    :try_end_59
    .catchall {:try_start_12 .. :try_end_59} :catchall_5d

    .line 822
    invoke-static/range {v29 .. v29}, Lcom/android/server/am/BroadcastController;->traceBroadcastIntentEnd(I)V

    return v0

    :catchall_5d
    move-exception v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/am/BroadcastController;->traceBroadcastIntentEnd(I)V

    .line 823
    throw v0
.end method

.method public final broadcastIntentLockedTraced(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;ZZIIIIILandroid/app/BackgroundStartPrivileges;[ILjava/util/function/BiFunction;Lcom/android/server/am/BroadcastSentEventRecord;)I
    .registers 72

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move-object/from16 v2, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p11

    move/from16 v12, p16

    move/from16 v13, p17

    move/from16 v5, p18

    move/from16 v7, p19

    move/from16 v14, p20

    move/from16 v15, p21

    move-object/from16 v3, p26

    .line 872
    invoke-static {}, Lcom/android/server/am/BroadcastLoopers;->addMyLooper()V

    .line 874
    invoke-static {v14}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 875
    const-class v4, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    invoke-static {v4}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    if-eqz v4, :cond_74

    .line 881
    invoke-interface {v4, v2}, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;->canSendBroadcast(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_34

    goto :goto_7c

    .line 882
    :cond_34
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 883
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " may not be broadcast from an SDK sandbox uid. Given caller package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", realCallingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", callingUid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 878
    :cond_74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SdkSandboxManagerLocal not found when sending a broadcast from an SDK sandbox uid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    :goto_7c
    if-eqz p7, :cond_ac

    if-nez p6, :cond_ac

    .line 891
    invoke-interface/range {p7 .. p7}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    instance-of v6, v6, Landroid/os/BinderProxy;

    if-eqz v6, :cond_af

    .line 893
    const-string v6, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending broadcast "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with resultTo requires resultToApp"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6, v4, v9}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_ac
    const/16 v9, 0x3e8

    goto :goto_bd

    .line 898
    :cond_af
    iget-object v4, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v6, "system"

    const/16 v9, 0x3e8

    invoke-virtual {v4, v6, v9}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    move-object/from16 v16, v4

    goto :goto_bf

    :goto_bd
    move-object/from16 v16, p6

    .line 902
    :goto_bf
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 903
    invoke-virtual {v3, v4}, Lcom/android/server/am/BroadcastSentEventRecord;->setIntent(Landroid/content/Intent;)V

    .line 904
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/server/am/BroadcastSentEventRecord;->setOriginalIntentFlags(I)V

    .line 905
    invoke-virtual {v3, v7}, Lcom/android/server/am/BroadcastSentEventRecord;->setSenderUid(I)V

    .line 906
    invoke-virtual {v3, v14}, Lcom/android/server/am/BroadcastSentEventRecord;->setRealSenderUid(I)V

    .line 907
    invoke-virtual {v3, v13}, Lcom/android/server/am/BroadcastSentEventRecord;->setSticky(Z)V

    .line 908
    invoke-virtual {v3, v12}, Lcom/android/server/am/BroadcastSentEventRecord;->setOrdered(Z)V

    if-eqz p7, :cond_de

    const/4 v2, 0x1

    goto :goto_df

    :cond_de
    const/4 v2, 0x0

    .line 909
    :goto_df
    invoke-virtual {v3, v2}, Lcom/android/server/am/BroadcastSentEventRecord;->setResultRequested(Z)V

    .line 910
    invoke-virtual {v1, v0, v15}, Lcom/android/server/am/BroadcastController;->getRealProcessStateLocked(Lcom/android/server/am/ProcessRecord;I)I

    move-result v2

    .line 911
    invoke-virtual {v3, v2}, Lcom/android/server/am/BroadcastSentEventRecord;->setSenderProcState(I)V

    .line 912
    invoke-virtual {v1, v0, v15}, Lcom/android/server/am/BroadcastController;->getRealUidStateLocked(Lcom/android/server/am/ProcessRecord;I)I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/android/server/am/BroadcastSentEventRecord;->setSenderUidState(I)V

    .line 915
    invoke-virtual {v1, v0, v8, v7}, Lcom/android/server/am/BroadcastController;->isInstantApp(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)Z

    move-result v18

    const v19, -0x200001

    if-eqz v18, :cond_102

    .line 918
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v9

    and-int v9, v9, v19

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_102
    const/4 v9, -0x1

    move/from16 v6, p22

    if-ne v6, v9, :cond_114

    if-eqz p24, :cond_114

    .line 922
    const-string v9, "ActivityManager"

    const-string v0, "broadcastAllowList only applies when sending to individual users. Assuming restrictive whitelist."

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    .line 924
    new-array v0, v9, [I

    goto :goto_117

    :cond_114
    const/4 v9, 0x0

    move-object/from16 v0, p24

    :goto_117
    const/16 v6, 0x10

    .line 928
    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 931
    iget-object v6, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    const/high16 v21, 0x2000000

    move/from16 v22, v6

    const/high16 v6, 0x40000000    # 2.0f

    if-nez v22, :cond_133

    .line 932
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v22

    and-int v22, v22, v21

    if-nez v22, :cond_133

    .line 933
    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_133
    if-eqz p7, :cond_162

    if-nez v12, :cond_162

    .line 943
    invoke-static {v7}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v22

    if-eqz v22, :cond_13e

    goto :goto_162

    .line 944
    :cond_13e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unauthorized unordered resultTo broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " sent from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 946
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 951
    :cond_162
    :goto_162
    iget-object v6, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const/4 v7, 0x0

    const-string v8, "broadcast"

    move/from16 v30, v2

    move-object v2, v6

    const/4 v6, 0x1

    move-object/from16 v9, p2

    move-object/from16 v22, v0

    move-object/from16 p4, v4

    move v3, v5

    move/from16 v32, v30

    const/4 v0, -0x1

    const/16 v13, 0x3e8

    const/16 v17, 0x10

    move/from16 v4, p19

    move/from16 v5, p22

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v9, v3

    move v7, v4

    if-eq v5, v0, :cond_19c

    .line 956
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v2, v5}, Lcom/android/server/am/UserController;->isUserOrItsParentRunning(I)Z

    move-result v2

    if-nez v2, :cond_19c

    if-ne v7, v13, :cond_1a5

    .line 959
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int v2, v2, v21

    if-nez v2, :cond_19c

    goto :goto_1a5

    :cond_19c
    move-object/from16 v8, p2

    move-object/from16 v4, p4

    move-object/from16 v6, p15

    move-object/from16 v2, v16

    goto :goto_1e3

    :cond_1a5
    :goto_1a5
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    .line 960
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19c

    .line 961
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping broadcast of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and its parent (if any) are stopped"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v8, p2

    move-object/from16 v3, p7

    move-object/from16 v6, p15

    move-object/from16 v2, v16

    .line 963
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastController;->scheduleCanceledResultTo(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILandroid/app/BroadcastOptions;ILjava/lang/String;)V

    const/4 v0, -0x2

    return v0

    .line 969
    :goto_1e3
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-wide/16 v23, 0x0

    if-eqz v6, :cond_332

    .line 971
    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->getTemporaryAppAllowlistDuration()J

    move-result-wide v25

    cmp-long v21, v25, v23

    if-lez v21, :cond_268

    const/16 p4, -0x60

    .line 975
    const-string v3, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    move-object/from16 p24, v2

    const/4 v0, -0x1

    const/4 v2, 0x1

    invoke-static {v3, v15, v14, v0, v2}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v3

    if-eqz v3, :cond_26c

    const-string v3, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    .line 978
    invoke-static {v3, v15, v14, v0, v2}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v3

    if-eqz v3, :cond_26c

    const-string v3, "android.permission.START_FOREGROUND_SERVICES_FROM_BACKGROUND"

    .line 981
    invoke-static {v3, v15, v14, v0, v2}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v3

    if-nez v3, :cond_212

    goto :goto_26c

    .line 984
    :cond_212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " broadcast from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.START_FOREGROUND_SERVICES_FROM_BACKGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 991
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_268
    move-object/from16 p24, v2

    const/16 p4, -0x60

    .line 995
    :cond_26c
    :goto_26c
    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->isDontSendToRestrictedApps()Z

    move-result v0

    if-eqz v0, :cond_2a6

    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 996
    invoke-virtual {v0, v7}, Lcom/android/server/am/ActivityManagerService;->isUidActiveLOSP(I)Z

    move-result v0

    if-nez v0, :cond_2a6

    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 997
    invoke-virtual {v0, v7, v8}, Lcom/android/server/am/ActivityManagerService;->isBackgroundRestrictedNoCheck(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a6

    .line 998
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not sending broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has background restrictions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 1002
    :cond_2a6
    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->allowsBackgroundActivityStarts()Z

    move-result v0

    if-eqz v0, :cond_2fb

    .line 1006
    const-string v0, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-static {v0, v15, v14, v2, v3}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-nez v0, :cond_2b9

    .line 1019
    sget-object v0, Landroid/app/BackgroundStartPrivileges;->ALLOW_BAL:Landroid/app/BackgroundStartPrivileges;

    goto :goto_2fd

    .line 1010
    :cond_2b9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " broadcast from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.START_ACTIVITIES_FROM_BACKGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1015
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2fb
    move-object/from16 v0, p23

    .line 1023
    :goto_2fd
    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->getIdForResponseEvent()J

    move-result-wide v2

    cmp-long v2, v2, v23

    if-lez v2, :cond_30f

    .line 1024
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.permission.ACCESS_BROADCAST_RESPONSE_STATS"

    const-string/jumbo v15, "recordResponseEventWhileInBackground"

    invoke-virtual {v2, v3, v9, v7, v15}, Lcom/android/server/am/ActivityManagerService;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1029
    :cond_30f
    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->isDebugLogEnabled()Z

    move-result v2

    if-eqz v2, :cond_327

    .line 1030
    invoke-virtual {v1, v7}, Lcom/android/server/am/BroadcastController;->isShellOrRoot(I)Z

    move-result v2

    if-nez v2, :cond_327

    if-eqz p1, :cond_323

    .line 1031
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActiveInstrumentation()Z

    move-result v2

    if-nez v2, :cond_327

    :cond_323
    const/4 v2, 0x0

    .line 1032
    invoke-virtual {v6, v2}, Landroid/app/BroadcastOptions;->setDebugLogEnabled(Z)Landroid/app/BroadcastOptions;

    .line 1036
    :cond_327
    invoke-static {v7}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v2

    const/4 v15, 0x0

    if-nez v2, :cond_339

    .line 1037
    invoke-virtual {v6, v15}, Landroid/app/BroadcastOptions;->setDebugReason(Ljava/lang/String;)Landroid/app/BroadcastOptions;

    goto :goto_339

    :cond_332
    move-object/from16 p24, v2

    const/16 p4, -0x60

    const/4 v15, 0x0

    move-object/from16 v0, p23

    .line 1045
    :cond_339
    :goto_339
    :try_start_339
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, v13}, Landroid/content/pm/IPackageManager;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v21
    :try_end_341
    .catch Landroid/os/RemoteException; {:try_start_339 .. :try_end_341} :catch_e90

    .line 1054
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-eqz v2, :cond_364

    const/16 v3, 0x403

    if-eq v2, v3, :cond_364

    const/16 v3, 0x42c

    if-eq v2, v3, :cond_364

    const/16 v3, 0x431

    if-eq v2, v3, :cond_364

    packed-switch v2, :pswitch_data_eaa

    if-eqz p1, :cond_360

    .line 1065
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_360

    const/4 v2, 0x1

    goto :goto_361

    :cond_360
    const/4 v2, 0x0

    :goto_361
    move/from16 v31, v2

    goto :goto_366

    :cond_364
    :pswitch_364
    const/16 v31, 0x1

    :goto_366
    if-nez v31, :cond_417

    if-nez v21, :cond_3eb

    .line 1079
    const-string v2, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-virtual {v2, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37a

    const-string v2, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 1080
    invoke-virtual {v2, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_417

    :cond_37a
    if-eqz v8, :cond_3ca

    .line 1090
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_3c6

    .line 1093
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_392

    goto/16 :goto_417

    .line 1095
    :cond_392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: not allowed to send broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1099
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1104
    :cond_3c6
    invoke-virtual {v4, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_417

    .line 1086
    :cond_3ca
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: not allowed to send broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from unknown caller."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1088
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1073
    :cond_3eb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: not allowed to send broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1076
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_417
    :goto_417
    if-eqz v13, :cond_a1b

    .line 1112
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastController;->getBackgroundLaunchBroadcasts()Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_428

    const/high16 v2, 0x1000000

    .line 1116
    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1121
    :cond_428
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45c

    .line 1122
    invoke-virtual {v1}, Lcom/android/server/am/BroadcastController;->getWearRemoteIntentAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45c

    move-object v2, v4

    const-wide/32 v3, 0x18fb0f01

    .line 1123
    invoke-static {v3, v4, v7}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v3

    if-eqz v3, :cond_45d

    if-eqz p1, :cond_451

    .line 1127
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result v3

    goto :goto_453

    :cond_451
    const/16 v3, 0x14

    .line 1129
    :goto_453
    invoke-static {v3}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_45d

    return p4

    :cond_45c
    move-object v2, v4

    .line 1135
    :cond_45d
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/16 v25, 0x6

    const/16 v26, 0x5

    const/16 v27, 0x4

    const/4 v15, 0x3

    const/16 v28, 0x2

    sparse-switch v3, :sswitch_data_eb4

    :goto_470
    move/from16 v42, v5

    const/4 v3, -0x1

    goto/16 :goto_598

    :sswitch_475
    const-string v3, "android.security.action.TRUST_STORE_CHANGED"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47e

    goto :goto_470

    :cond_47e
    move/from16 v42, v5

    const/16 v3, 0x14

    goto/16 :goto_598

    :sswitch_484
    const-string v3, "android.net.action.CLEAR_DNS_CACHE"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48d

    goto :goto_470

    :cond_48d
    const/16 v3, 0x13

    goto/16 :goto_52f

    :sswitch_491
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_49a

    goto :goto_470

    :cond_49a
    const/16 v3, 0x12

    goto/16 :goto_52f

    :sswitch_49e
    const-string v3, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a7

    goto :goto_470

    :cond_4a7
    const/16 v3, 0x11

    goto/16 :goto_52f

    :sswitch_4ab
    const-string v3, "android.hardware.action.NEW_PICTURE"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b4

    goto :goto_470

    :cond_4b4
    move/from16 v42, v5

    move/from16 v3, v17

    goto/16 :goto_598

    :sswitch_4ba
    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c3

    goto :goto_470

    :cond_4c3
    move/from16 v42, v5

    const/16 v3, 0xf

    goto/16 :goto_598

    :sswitch_4c9
    const-string v3, "android.intent.action.PRE_BOOT_COMPLETED"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d2

    goto :goto_470

    :cond_4d2
    const/16 v3, 0xe

    goto :goto_52f

    :sswitch_4d5
    const-string v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4de

    goto :goto_470

    :cond_4de
    move/from16 v42, v5

    const/16 v3, 0xd

    goto/16 :goto_598

    :sswitch_4e4
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4ed

    goto :goto_470

    :cond_4ed
    const/16 v3, 0xc

    goto :goto_52f

    :sswitch_4f0
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4fa

    goto/16 :goto_470

    :cond_4fa
    const/16 v3, 0xb

    goto :goto_52f

    :sswitch_4fd
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_507

    goto/16 :goto_470

    :cond_507
    const/16 v3, 0xa

    goto :goto_52f

    :sswitch_50a
    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_514

    goto/16 :goto_470

    :cond_514
    const/16 v3, 0x9

    goto :goto_52f

    :sswitch_517
    const-string v3, "android.intent.action.PROXY_CHANGE"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_521

    goto/16 :goto_470

    :cond_521
    const/16 v3, 0x8

    goto :goto_52f

    :sswitch_524
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52e

    goto/16 :goto_470

    :cond_52e
    const/4 v3, 0x7

    :goto_52f
    move/from16 v42, v5

    goto/16 :goto_598

    :sswitch_533
    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53d

    goto/16 :goto_470

    :cond_53d
    move/from16 v42, v5

    move/from16 v3, v25

    goto :goto_598

    :sswitch_542
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54c

    goto/16 :goto_470

    :cond_54c
    move/from16 v42, v5

    move/from16 v3, v26

    goto :goto_598

    :sswitch_551
    const-string v3, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55b

    goto/16 :goto_470

    :cond_55b
    move/from16 v42, v5

    move/from16 v3, v27

    goto :goto_598

    :sswitch_560
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56a

    goto/16 :goto_470

    :cond_56a
    move/from16 v42, v5

    move v3, v15

    goto :goto_598

    :sswitch_56e
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_578

    goto/16 :goto_470

    :cond_578
    move/from16 v42, v5

    move/from16 v3, v28

    goto :goto_598

    :sswitch_57d
    const-string v3, "android.intent.action.UID_REMOVED"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_587

    goto/16 :goto_470

    :cond_587
    move/from16 v42, v5

    const/4 v3, 0x1

    goto :goto_598

    :sswitch_58b
    const-string v3, "android.hardware.action.NEW_VIDEO"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_595

    goto/16 :goto_470

    :cond_595
    move/from16 v42, v5

    const/4 v3, 0x0

    :goto_598
    packed-switch v3, :pswitch_data_f0a

    :goto_59b
    move-object/from16 p23, v0

    move-object v4, v2

    move/from16 v5, v42

    goto :goto_609

    .line 1392
    :pswitch_5a1
    iget-object v3, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_59b

    .line 1376
    :pswitch_5ab
    iget-object v3, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x1c

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_59b

    .line 1327
    :pswitch_5b5
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_5e7

    .line 1329
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5e7

    .line 1330
    const-string v15, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    .line 1331
    invoke-virtual {v2, v15, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 1332
    iget-object v15, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v15, v3, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onPackageAdded(Ljava/lang/String;Z)V

    .line 1335
    :try_start_5cf
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const-wide/16 v6, 0x400

    .line 1336
    invoke-interface {v5, v3, v6, v7, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 1337
    iget-object v4, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    if-eqz v5, :cond_5e2

    .line 1338
    iget-wide v5, v5, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    goto :goto_5e4

    :cond_5e2
    move-wide/from16 v5, v23

    .line 1337
    :goto_5e4
    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/am/BatteryStatsService;->notePackageInstalled(Ljava/lang/String;J)V
    :try_end_5e7
    .catch Landroid/os/RemoteException; {:try_start_5cf .. :try_end_5e7} :catch_5e7

    :catch_5e7
    :cond_5e7
    move/from16 v7, p19

    goto :goto_59b

    .line 1137
    :pswitch_5ea
    const-class v3, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/UserManagerInternal;

    move/from16 v5, v42

    .line 1139
    invoke-virtual {v3, v5}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    if-eqz v4, :cond_60e

    .line 1140
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isCloneProfile()Z

    move-result v4

    if-eqz v4, :cond_60e

    .line 1141
    invoke-virtual {v3, v5}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v5

    move/from16 v7, p19

    move-object/from16 p23, v0

    move-object v4, v2

    :cond_609
    :goto_609
    const/high16 v0, 0x40000000    # 2.0f

    :goto_60b
    const/4 v2, 0x0

    goto/16 :goto_9ec

    :cond_60e
    move/from16 v7, p19

    move-object/from16 p23, v0

    move-object v4, v2

    goto :goto_609

    :pswitch_614
    move/from16 v5, v42

    move/from16 v7, p19

    move-object/from16 p23, v0

    move-object v4, v2

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v2, 0x1

    goto/16 :goto_9ec

    :pswitch_620
    move/from16 v5, v42

    .line 1397
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Broadcast "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " no longer supported. It will not be delivered."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p7

    move-object/from16 v6, p15

    move/from16 v7, p19

    move-object v4, v2

    move-object/from16 v2, p24

    .line 1399
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastController;->scheduleCanceledResultTo(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILandroid/app/BroadcastOptions;ILjava/lang/String;)V

    :goto_649
    const/4 v2, 0x0

    return v2

    :pswitch_64b
    move-object/from16 v4, p24

    move-object v3, v2

    move/from16 v5, v42

    const/4 v2, 0x0

    .line 1363
    const-string v6, "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

    const/4 v15, -0x1

    invoke-virtual {v3, v6, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v15, :cond_66e

    .line 1368
    iget-object v15, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    move-object/from16 p23, v0

    const/16 v0, 0x29

    .line 1369
    invoke-virtual {v15, v0, v6, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1371
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_670

    :cond_66e
    move-object/from16 p23, v0

    .line 1373
    :goto_670
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryStatsService;->noteCurrentTimeChanged()V

    :cond_677
    :goto_677
    move-object/from16 p24, v4

    :goto_679
    const/high16 v0, 0x40000000    # 2.0f

    move-object v4, v3

    goto :goto_60b

    :pswitch_67d
    move-object/from16 v4, p24

    move-object/from16 p23, v0

    move-object v3, v2

    move/from16 v5, v42

    .line 1356
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_679

    :pswitch_68e
    move-object/from16 v4, p24

    move-object/from16 p23, v0

    move-object v3, v2

    move/from16 v5, v42

    .line 1345
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_677

    .line 1347
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_677

    .line 1348
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v2, v0, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onPackageDataCleared(Ljava/lang/String;I)V

    goto :goto_677

    :pswitch_6a9
    move-object/from16 v4, p24

    move-object/from16 p23, v0

    move-object v3, v2

    move/from16 v5, v42

    .line 1379
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x1d

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_679

    :pswitch_6be
    move-object/from16 v4, p24

    move-object/from16 p23, v0

    move-object v3, v2

    move/from16 v5, v42

    .line 1406
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, v9, v7, v8}, Lcom/android/server/wm/ActivityTaskManagerInternal;->checkCanCloseSystemDialogs(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6da

    move-object/from16 v6, p15

    move-object v2, v4

    move-object v4, v3

    move-object/from16 v3, p7

    .line 1408
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastController;->scheduleCanceledResultTo(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILandroid/app/BroadcastOptions;ILjava/lang/String;)V

    goto/16 :goto_649

    :cond_6da
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move/from16 v7, p19

    goto :goto_677

    :pswitch_6e1
    move-object/from16 p23, v0

    move-object v4, v2

    move/from16 v5, v42

    move-object/from16 v2, p24

    .line 1301
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_754

    .line 1303
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_754

    .line 1306
    :try_start_6f4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-wide/16 v6, 0x400

    .line 1307
    invoke-interface {v3, v1, v6, v7, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_6fe
    .catch Landroid/os/RemoteException; {:try_start_6f4 .. :try_end_6fe} :catch_6ff

    goto :goto_700

    :catch_6ff
    const/4 v3, 0x0

    :goto_700
    if-nez v3, :cond_72f

    .line 1311
    const-string v3, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dropping ACTION_PACKAGE_REPLACED for non-existent pkg: ssp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " data="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object/from16 v3, p7

    move-object/from16 v6, p15

    move/from16 v7, p19

    .line 1313
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastController;->scheduleCanceledResultTo(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILandroid/app/BroadcastOptions;ILjava/lang/String;)V

    goto/16 :goto_649

    :cond_72f
    move-object/from16 v8, p2

    move/from16 v7, p19

    move-object v0, v1

    move-object/from16 v1, p0

    .line 1317
    iget-object v6, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v3}, Lcom/android/server/am/ActivityManagerService;->updateAssociationForApp(Landroid/content/pm/ApplicationInfo;)V

    .line 1318
    iget-object v6, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onPackageReplaced(Landroid/content/pm/ApplicationInfo;)V

    .line 1319
    iget-object v6, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v6, v3}, Lcom/android/server/am/ActiveServices;->updateServiceApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 1320
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v15, v0, v5}, Lcom/android/server/am/BroadcastController;->sendPackageBroadcastLocked(I[Ljava/lang/String;I)V

    :cond_750
    :goto_750
    move-object/from16 p24, v2

    goto/16 :goto_609

    :cond_754
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move/from16 v7, p19

    goto :goto_750

    :pswitch_75b
    move-object/from16 p23, v0

    move-object v4, v2

    move/from16 v5, v42

    move-object/from16 v2, p24

    .line 1154
    const-string v0, "android.permission.BROADCAST_PACKAGE_REMOVED"

    const/4 v3, -0x1

    const/4 v6, 0x1

    invoke-static {v0, v9, v7, v3, v6}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-nez v0, :cond_99e

    .line 1166
    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_f38

    :goto_776
    const/16 v25, -0x1

    goto :goto_7c9

    :sswitch_779
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c9

    goto :goto_776

    :sswitch_782
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78b

    goto :goto_776

    :cond_78b
    move/from16 v25, v26

    goto :goto_7c9

    :sswitch_78e
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_797

    goto :goto_776

    :cond_797
    move/from16 v25, v27

    goto :goto_7c9

    :sswitch_79a
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a3

    goto :goto_776

    :cond_7a3
    move/from16 v25, v15

    goto :goto_7c9

    :sswitch_7a6
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7af

    goto :goto_776

    :cond_7af
    move/from16 v25, v28

    goto :goto_7c9

    :sswitch_7b2
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7bb

    goto :goto_776

    :cond_7bb
    const/16 v25, 0x1

    goto :goto_7c9

    :sswitch_7be
    const-string v0, "android.intent.action.UID_REMOVED"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7c7

    goto :goto_776

    :cond_7c7
    const/16 v25, 0x0

    :cond_7c9
    :goto_7c9
    packed-switch v25, :pswitch_data_f56

    goto :goto_750

    .line 1202
    :pswitch_7cd
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_750

    .line 1204
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_750

    .line 1205
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1206
    const-string v3, "android.intent.extra.REPLACING"

    const/4 v6, 0x0

    .line 1207
    invoke-virtual {v4, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1208
    const-string v15, "android.intent.extra.DONT_KILL_APP"

    .line 1209
    invoke-virtual {v4, v15, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v0, :cond_7f3

    if-nez v3, :cond_7f3

    const/16 v40, 0x1

    goto :goto_7f5

    :cond_7f3
    const/16 v40, 0x0

    :goto_7f5
    if-eqz v0, :cond_874

    if-nez v15, :cond_82a

    .line 1214
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.intent.extra.UID"

    const/4 v6, -0x1

    .line 1215
    invoke-virtual {v4, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1214
    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v35

    const/16 v41, 0x0

    const-string/jumbo v43, "pkg removed"

    const/16 v36, 0x0

    const/16 v37, 0x1

    const/16 v38, 0x1

    const/16 v39, 0x0

    move-object/from16 v33, v0

    move/from16 v42, v5

    move-object/from16 v34, v24

    invoke-virtual/range {v33 .. v43}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZZILjava/lang/String;)Z

    move-object/from16 v0, v34

    .line 1218
    iget-object v3, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    .line 1219
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManagerInternal;->onPackageProcessKilledForUninstall(Ljava/lang/String;)V

    move-object/from16 p24, v2

    goto :goto_83e

    :cond_82a
    move-object/from16 v0, v24

    .line 1223
    iget-object v3, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v6, "android.intent.extra.UID"

    move-object/from16 p24, v2

    const/4 v2, -0x1

    .line 1224
    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1223
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {v3, v0, v2, v5}, Lcom/android/server/am/ActivityManagerService;->forceStopAppZygoteLocked(Ljava/lang/String;II)V

    :goto_83e
    if-nez v15, :cond_842

    const/4 v6, 0x0

    goto :goto_844

    :cond_842
    move/from16 v6, v28

    .line 1230
    :goto_844
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2, v5}, Lcom/android/server/am/BroadcastController;->sendPackageBroadcastLocked(I[Ljava/lang/String;I)V

    if-eqz v40, :cond_609

    .line 1234
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    const/4 v3, 0x0

    const/4 v6, 0x1

    invoke-interface {v2, v0, v5, v6, v3}, Lcom/android/server/uri/UriGrantsManagerInternal;->removeUriPermissionsForPackage(Ljava/lang/String;IZZ)V

    .line 1237
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v2, v0, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->removeRecentTasksByPackageName(Ljava/lang/String;I)V

    .line 1240
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v2, v0, v5}, Lcom/android/server/am/ActiveServices;->forceStopPackageLocked(Ljava/lang/String;I)V

    .line 1241
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v2, v0, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onPackageUninstalled(Ljava/lang/String;I)V

    .line 1242
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v2, v0}, Lcom/android/server/am/BatteryStatsService;->notePackageUninstalled(Ljava/lang/String;)V

    goto/16 :goto_609

    :cond_874
    move-object/from16 p24, v2

    move-object/from16 v0, v24

    if-nez v15, :cond_8c1

    if-eqz v3, :cond_87f

    move/from16 v28, v17

    goto :goto_881

    :cond_87f
    const/16 v28, 0xf

    .line 1257
    :goto_881
    const-string v2, "android.intent.extra.UID"

    const/4 v6, -0x1

    invoke-virtual {v4, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1259
    iget-object v3, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v3

    .line 1260
    :try_start_890
    iget-object v6, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 1261
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "change "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    const/16 v29, 0x0

    const/16 v27, -0x2710

    move-object/from16 v24, v0

    move/from16 v26, v5

    move-object/from16 v23, v6

    .line 1260
    invoke-virtual/range {v23 .. v30}, Lcom/android/server/am/ProcessList;->killPackageProcessesLSP(Ljava/lang/String;IIIIILjava/lang/String;)Z

    .line 1266
    monitor-exit v3
    :try_end_8b7
    .catchall {:try_start_890 .. :try_end_8b7} :catchall_8bb

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_8c1

    :catchall_8bb
    move-exception v0

    :try_start_8bc
    monitor-exit v3
    :try_end_8bd
    .catchall {:try_start_8bc .. :try_end_8bd} :catchall_8bb

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 1268
    :cond_8c1
    :goto_8c1
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.intent.extra.changed_component_name_list"

    .line 1269
    invoke-virtual {v4, v3}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1268
    invoke-virtual {v2, v0, v5, v3}, Lcom/android/server/am/ActivityManagerService;->cleanupDisabledPackageComponentsLocked(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 1271
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v2, v0, v5}, Lcom/android/server/am/ActiveServices;->schedulePendingServiceStartLocked(Ljava/lang/String;I)V

    goto/16 :goto_609

    :pswitch_8d5
    move-object/from16 p24, v2

    .line 1278
    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    .line 1279
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1278
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1280
    const-string v2, "android.intent.extra.changed_package_list"

    invoke-virtual {v4, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1282
    const-string v3, "android.intent.extra.user_handle"

    const/16 v6, -0x2710

    invoke-virtual {v4, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1285
    iget-object v6, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v6, v2, v0, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onPackagesSuspendedChanged([Ljava/lang/String;ZI)V

    .line 1288
    const-string v3, "android.intent.extra.quarantined"

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v0, :cond_609

    if-eqz v3, :cond_609

    if-eqz v2, :cond_609

    const/4 v6, 0x0

    .line 1291
    :goto_904
    array-length v0, v2

    if-ge v6, v0, :cond_609

    .line 1292
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    aget-object v3, v2, v6

    const-string/jumbo v15, "quarantined"

    move-object/from16 p4, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v5, v2, v15}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;IILjava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, p4

    goto :goto_904

    :pswitch_919
    move-object/from16 p24, v2

    .line 1198
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->cleanupRecentTasksForUser(I)V

    goto/16 :goto_609

    :pswitch_925
    move-object/from16 p24, v2

    .line 1183
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_609

    .line 1185
    array-length v2, v0

    if-lez v2, :cond_609

    const/4 v6, 0x0

    .line 1186
    :goto_933
    array-length v2, v0

    if-ge v6, v2, :cond_955

    .line 1187
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    aget-object v34, v0, v6

    const/16 v41, 0x0

    const-string/jumbo v43, "storage unmount"

    const/16 v35, -0x1

    const/16 v36, 0x0

    const/16 v37, 0x1

    const/16 v38, 0x1

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v33, v2

    move/from16 v42, v5

    invoke-virtual/range {v33 .. v43}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZZILjava/lang/String;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_933

    .line 1190
    :cond_955
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v6, -0x1

    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->cleanupRecentTasksForUser(I)V

    const/4 v6, 0x1

    .line 1192
    invoke-virtual {v1, v6, v0, v5}, Lcom/android/server/am/BroadcastController;->sendPackageBroadcastLocked(I[Ljava/lang/String;I)V

    goto/16 :goto_609

    :pswitch_963
    move-object/from16 p24, v2

    .line 1168
    invoke-virtual {v1, v4}, Lcom/android/server/am/BroadcastController;->getUidFromIntent(Landroid/content/Intent;)I

    move-result v0

    if-ltz v0, :cond_609

    .line 1170
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v2, v0}, Lcom/android/server/am/BatteryStatsService;->removeUid(I)V

    .line 1171
    const-string v2, "android.intent.extra.REPLACING"

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_98e

    .line 1172
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string v3, "android.intent.extra.PACKAGE_NAME"

    .line 1173
    invoke-virtual {v4, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1172
    invoke-virtual {v2, v0, v3}, Lcom/android/server/appop/AppOpsService;->resetAllModes(ILjava/lang/String;)V

    goto/16 :goto_609

    .line 1175
    :cond_98e
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v2, v0}, Lcom/android/server/appop/AppOpsService;->uidRemoved(I)V

    .line 1176
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActiveServices;->onUidRemovedLocked(I)V

    goto/16 :goto_609

    .line 1158
    :cond_99e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " broadcast from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.BROADCAST_PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1163
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_9e0
    move-object/from16 p23, v0

    move-object v4, v2

    move/from16 v5, v42

    const/high16 v0, 0x40000000    # 2.0f

    .line 1389
    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_60b

    .line 1416
    :goto_9ec
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a04

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 1417
    invoke-virtual {v3, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a04

    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    .line 1418
    invoke-virtual {v3, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a18

    .line 1419
    :cond_a04
    invoke-virtual {v1, v4}, Lcom/android/server/am/BroadcastController;->getUidFromIntent(Landroid/content/Intent;)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_a18

    .line 1421
    iget-object v6, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v6, v3}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    if-eqz v3, :cond_a18

    .line 1423
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->updateHasInternetPermission()V

    :cond_a18
    move/from16 v28, v2

    goto :goto_a21

    :cond_a1b
    move-object/from16 p23, v0

    const/high16 v0, 0x40000000    # 2.0f

    const/16 v28, 0x0

    :goto_a21
    if-eqz p17, :cond_b85

    .line 1431
    iget-object v2, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.permission.BROADCAST_STICKY"

    invoke-virtual {v2, v3, v9, v7}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_b57

    if-eqz v11, :cond_a5f

    .line 1445
    array-length v2, v11

    if-lez v2, :cond_a5f

    .line 1446
    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t broadcast sticky intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " and enforce permissions "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1447
    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1446
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p7

    move-object/from16 v6, p15

    move-object/from16 v2, p24

    .line 1448
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastController;->scheduleCanceledResultTo(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILandroid/app/BroadcastOptions;ILjava/lang/String;)V

    const/4 v6, -0x1

    return v6

    :cond_a5f
    move-object/from16 v13, p7

    move-object/from16 v14, p15

    move-object/from16 v15, p24

    move-object v8, v1

    move v1, v5

    const/4 v6, -0x1

    .line 1452
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_b4f

    .line 1456
    iget-object v2, v8, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    monitor-enter v2

    if-eq v1, v6, :cond_ace

    .line 1463
    :try_start_a73
    iget-object v3, v8, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-eqz v3, :cond_ace

    .line 1466
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_ace

    .line 1468
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_a8e
    if-ge v6, v5, :cond_ace

    .line 1471
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 p24, v0

    move-object/from16 v0, v17

    check-cast v0, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    iget-object v0, v0, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_aa7

    add-int/lit8 v6, v6, 0x1

    move/from16 v0, p24

    goto :goto_a8e

    .line 1472
    :cond_aa7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sticky broadcast "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " conflicts with existing global broadcast"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_acb
    move-exception v0

    goto/16 :goto_b4d

    :cond_ace
    move/from16 p24, v0

    .line 1480
    iget-object v0, v8, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    .line 1481
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_ae4

    .line 1483
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1484
    iget-object v3, v8, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1486
    :cond_ae4
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_afc

    .line 1488
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1489
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    :cond_afc
    invoke-static {v4, v14}, Lcom/android/server/am/BroadcastRecord;->calculateUrgent(Landroid/content/Intent;Landroid/app/BroadcastOptions;)Z

    move-result v0

    .line 1491
    invoke-static {v7, v14, v13, v12, v0}, Lcom/android/server/am/BroadcastRecord;->calculateDeferUntilActive(ILandroid/app/BroadcastOptions;Landroid/content/IIntentReceiver;ZZ)Z

    move-result v0

    .line 1494
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_b09
    if-ge v6, v5, :cond_b33

    .line 1497
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v11, v17

    check-cast v11, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    iget-object v11, v11, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v11}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v11

    if-eqz v11, :cond_b2a

    .line 1499
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move/from16 v12, v32

    invoke-static {v11, v0, v7, v12, v10}, Lcom/android/server/am/BroadcastController$StickyBroadcast;->create(Landroid/content/Intent;ZIILjava/lang/String;)Lcom/android/server/am/BroadcastController$StickyBroadcast;

    move-result-object v11

    invoke-virtual {v3, v6, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_b35

    :cond_b2a
    move/from16 v12, v32

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v11, p11

    move/from16 v12, p16

    goto :goto_b09

    :cond_b33
    move/from16 v12, v32

    :goto_b35
    if-lt v6, v5, :cond_b43

    .line 1505
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-static {v5, v0, v7, v12, v10}, Lcom/android/server/am/BroadcastController$StickyBroadcast;->create(Landroid/content/Intent;ZIILjava/lang/String;)Lcom/android/server/am/BroadcastController$StickyBroadcast;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1508
    :cond_b43
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/app/BroadcastStickyCache;->invalidateCache(Ljava/lang/String;)V

    .line 1509
    monitor-exit v2

    :goto_b4b
    const/4 v6, -0x1

    goto :goto_b92

    :goto_b4d
    monitor-exit v2
    :try_end_b4e
    .catchall {:try_start_a73 .. :try_end_b4e} :catchall_acb

    throw v0

    .line 1453
    :cond_b4f
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Sticky broadcasts can\'t target a specific component"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1434
    :cond_b57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: broadcastIntent() requesting a sticky broadcast from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "android.permission.BROADCAST_STICKY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1442
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b85
    move-object/from16 v13, p7

    move-object/from16 v14, p15

    move-object/from16 v15, p24

    move/from16 p24, v0

    move-object v8, v1

    move v1, v5

    move/from16 v12, v32

    goto :goto_b4b

    :goto_b92
    if-ne v1, v6, :cond_b9e

    .line 1515
    iget-object v0, v8, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getStartedUserArray()[I

    move-result-object v0

    :goto_b9c
    move v5, v1

    goto :goto_ba5

    :cond_b9e
    const/4 v6, 0x1

    .line 1518
    new-array v0, v6, [I

    const/4 v2, 0x0

    aput v1, v0, v2

    goto :goto_b9c

    .line 1521
    :goto_ba5
    new-instance v1, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;

    move-object v2, v4

    const/4 v4, 0x1

    move v6, v5

    const/4 v5, 0x1

    move v3, v9

    move v9, v6

    move v6, v7

    move v7, v3

    move-object v3, v10

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;-><init>(Landroid/content/Intent;Ljava/lang/String;ZZII)V

    move-object v10, v1

    move-object v4, v2

    .line 1523
    iget-object v1, v8, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    iput-object v1, v10, Lcom/android/server/pm/SaferIntentUtils$IntentArgs;->platformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 1526
    const-string/jumbo v1, "queryReceivers"

    invoke-static {v1}, Lcom/android/server/am/BroadcastQueue;->traceBegin(Ljava/lang/String;)I

    move-result v11

    .line 1530
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int v1, v1, p24

    if-nez v1, :cond_bec

    if-nez v14, :cond_bd9

    move-object v1, v8

    const/4 v8, 0x0

    :goto_bce
    move-object/from16 v3, p5

    move/from16 v5, p18

    move-object v6, v0

    move-object v2, v4

    move-object/from16 v7, v22

    move/from16 v4, p19

    goto :goto_be1

    .line 1533
    :cond_bd9
    invoke-virtual {v14}, Landroid/app/BroadcastOptions;->getIncludedPackages()[Ljava/lang/String;

    move-result-object v1

    move-object v2, v8

    move-object v8, v1

    move-object v1, v2

    goto :goto_bce

    .line 1531
    :goto_be1
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastController;->collectReceiverComponents(Landroid/content/Intent;Ljava/lang/String;II[I[I[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object v8, v1

    move v1, v4

    move-object/from16 v22, v7

    move-object v4, v2

    move-object v2, v6

    goto :goto_bf0

    :cond_bec
    move/from16 v1, p19

    move-object v2, v0

    const/4 v0, 0x0

    .line 1535
    :goto_bf0
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_c87

    .line 1536
    iget-object v3, v8, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManagerInternal;->snapshot()Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    move-result-object v3

    if-eqz v14, :cond_c09

    .line 1538
    invoke-virtual {v14}, Landroid/app/BroadcastOptions;->getIncludedPackages()[Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    :goto_c07
    const/4 v6, -0x1

    goto :goto_c0b

    :cond_c09
    const/4 v7, 0x0

    goto :goto_c07

    :goto_c0b
    if-ne v9, v6, :cond_c6c

    const/16 v5, 0x7d0

    if-ne v1, v5, :cond_c6c

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1541
    :goto_c13
    array-length v1, v2

    if-ge v5, v1, :cond_c64

    .line 1542
    iget-object v1, v8, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object/from16 v16, v2

    const-string/jumbo v2, "no_debugging_features"

    move-object/from16 p4, v3

    aget v3, v16, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_c35

    move-object/from16 v2, p4

    move/from16 v17, v5

    move/from16 v24, v9

    move/from16 p4, v11

    move-object/from16 v11, v22

    move-object v9, v6

    goto :goto_c57

    .line 1546
    :cond_c35
    iget-object v1, v8, Lcom/android/server/am/BroadcastController;->mReceiverResolver:Lcom/android/server/am/BroadcastController$BroadcastIntentResolver;

    move v2, v5

    const/4 v5, 0x0

    move-object v3, v6

    aget v6, v16, v2

    move/from16 v17, v2

    move/from16 v24, v9

    move-object/from16 v2, p4

    move-object v9, v3

    move-object v3, v4

    move/from16 p4, v11

    move-object/from16 v11, v22

    move-object/from16 v4, p5

    .line 1547
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BroadcastController$BroadcastIntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI[Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    move-object v4, v3

    if-nez v9, :cond_c52

    goto :goto_c58

    :cond_c52
    if-eqz v6, :cond_c57

    .line 1552
    invoke-interface {v9, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_c57
    :goto_c57
    move-object v6, v9

    :goto_c58
    add-int/lit8 v5, v17, 0x1

    move-object v3, v2

    move-object/from16 v22, v11

    move-object/from16 v2, v16

    move/from16 v9, v24

    move/from16 v11, p4

    goto :goto_c13

    :cond_c64
    move/from16 v24, v9

    move/from16 p4, v11

    move-object/from16 v11, v22

    move-object v9, v6

    goto :goto_c81

    :cond_c6c
    move-object v2, v3

    move/from16 v24, v9

    move/from16 p4, v11

    move-object/from16 v11, v22

    .line 1556
    iget-object v1, v8, Lcom/android/server/am/BroadcastController;->mReceiverResolver:Lcom/android/server/am/BroadcastController$BroadcastIntentResolver;

    const/4 v5, 0x0

    move-object v3, v4

    move/from16 v6, v24

    move-object/from16 v4, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BroadcastController$BroadcastIntentResolver;->queryIntent(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Landroid/content/Intent;Ljava/lang/String;ZI[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    move-object v4, v3

    move-object v6, v1

    :goto_c81
    if-eqz v6, :cond_c8e

    .line 1560
    invoke-static {v10, v6}, Lcom/android/server/pm/SaferIntentUtils;->blockNullAction(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    goto :goto_c8e

    :cond_c87
    move/from16 v24, v9

    move/from16 p4, v11

    move-object/from16 v11, v22

    const/4 v6, 0x0

    .line 1563
    :cond_c8e
    :goto_c8e
    invoke-static/range {p4 .. p4}, Lcom/android/server/am/BroadcastQueue;->traceEnd(I)V

    .line 1566
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    if-eqz v6, :cond_cbe

    if-eqz v11, :cond_cbe

    .line 1575
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/16 v20, 0x1

    add-int/lit8 v1, v1, -0x1

    :goto_ca0
    if-ltz v1, :cond_cbe

    .line 1576
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastFilter;

    iget v2, v2, Lcom/android/server/am/BroadcastFilter;->owningUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_cbb

    .line 1578
    invoke-static {v11, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-gez v2, :cond_cbb

    .line 1579
    invoke-interface {v6, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_cbb
    add-int/lit8 v1, v1, -0x1

    goto :goto_ca0

    :cond_cbe
    if-eqz v6, :cond_cc5

    .line 1584
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_cc6

    :cond_cc5
    const/4 v1, 0x0

    :goto_cc6
    if-eqz v0, :cond_d95

    .line 1596
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d03

    const-string v2, "android.intent.action.PACKAGE_RESTARTED"

    .line 1597
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d03

    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 1598
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ced

    goto :goto_d03

    .line 1606
    :cond_ced
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d01

    .line 1607
    const-string v2, "android.intent.extra.changed_package_list"

    invoke-virtual {v4, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :goto_cff
    const/4 v9, 0x0

    goto :goto_d19

    :cond_d01
    const/4 v2, 0x0

    goto :goto_cff

    .line 1599
    :cond_d03
    :goto_d03
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_d17

    .line 1601
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d17

    const/4 v3, 0x1

    .line 1603
    new-array v5, v3, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v2, v5, v9

    move-object v2, v5

    goto :goto_d19

    :cond_d17
    const/4 v9, 0x0

    const/4 v2, 0x0

    :goto_d19
    if-eqz v2, :cond_d5d

    .line 1609
    array-length v3, v2

    if-lez v3, :cond_d5d

    .line 1610
    array-length v3, v2

    move v5, v9

    :goto_d20
    if-ge v5, v3, :cond_d5d

    aget-object v7, v2, v5

    if-eqz v7, :cond_d53

    .line 1612
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    move/from16 v44, v11

    move v11, v9

    move/from16 v9, v44

    :goto_d2f
    if-ge v11, v9, :cond_d53

    .line 1614
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 p4, v2

    move-object/from16 v2, v16

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1615
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4c

    .line 1616
    invoke-interface {v0, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v9, v9, -0x1

    :cond_d4c
    const/16 v20, 0x1

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p4

    goto :goto_d2f

    :cond_d53
    move-object/from16 p4, v2

    const/16 v20, 0x1

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, p4

    const/4 v9, 0x0

    goto :goto_d20

    .line 1625
    :cond_d5d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_d64
    const/4 v9, 0x0

    :goto_d65
    if-ge v3, v2, :cond_d93

    if-ge v5, v1, :cond_d93

    if-nez v7, :cond_d71

    .line 1631
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    :cond_d71
    if-nez v9, :cond_d79

    .line 1634
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/BroadcastFilter;

    .line 1636
    :cond_d79
    invoke-virtual {v9}, Landroid/content/IntentFilter;->getPriority()I

    move-result v11

    move/from16 v16, v2

    iget v2, v7, Landroid/content/pm/ResolveInfo;->priority:I

    if-lt v11, v2, :cond_d8d

    .line 1638
    invoke-interface {v0, v3, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v16, 0x1

    goto :goto_d64

    :cond_d8d
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v16

    const/4 v7, 0x0

    goto :goto_d65

    :cond_d93
    move-object v7, v0

    goto :goto_d97

    :cond_d95
    move-object v7, v0

    const/4 v5, 0x0

    :goto_d97
    if-ge v5, v1, :cond_db6

    if-eqz v18, :cond_da4

    .line 1653
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int v0, v0, v19

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_da4
    if-nez v7, :cond_dac

    .line 1656
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 1658
    :cond_dac
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_d97

    :cond_db6
    if-eqz v31, :cond_dc7

    move-object/from16 v3, p1

    move/from16 v5, p19

    move-object v2, v4

    move-object v1, v8

    move/from16 v6, v21

    move-object/from16 v4, p2

    .line 1663
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BroadcastController;->checkBroadcastFromSystem(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IZLjava/util/List;)V

    move-object v4, v2

    goto :goto_dc8

    :cond_dc7
    move-object v1, v8

    :goto_dc8
    if-eqz v7, :cond_dd0

    .line 1667
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_dd2

    :cond_dd0
    if-eqz v13, :cond_e3d

    .line 1669
    :cond_dd2
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    .line 1670
    invoke-static {v10, v7}, Lcom/android/server/pm/SaferIntentUtils;->filterNonExportedComponents(Lcom/android/server/pm/SaferIntentUtils$IntentArgs;Ljava/util/List;)V

    move-object v2, v0

    .line 1671
    new-instance v0, Lcom/android/server/am/BroadcastRecord;

    iget-object v1, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const/16 v23, 0x0

    const/16 v25, -0x1

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v9, p5

    move-object/from16 v19, p9

    move-object/from16 v20, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move/from16 v21, p16

    move/from16 v22, p17

    move/from16 v6, p18

    move/from16 v26, p20

    move-object/from16 v27, p23

    move-object/from16 v29, p25

    move-object/from16 v31, v1

    move-object v1, v2

    move-object v2, v4

    move/from16 v30, v12

    move-object/from16 v17, v13

    move-object/from16 v16, v15

    move/from16 v8, v18

    const/16 v32, 0x0

    move-object/from16 v4, p2

    move/from16 v18, p8

    move-object/from16 v12, p13

    move/from16 v13, p14

    move-object v15, v7

    move/from16 v7, p19

    invoke-direct/range {v0 .. v31}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILandroid/app/BackgroundStartPrivileges;ZLjava/util/function/BiFunction;ILcom/android/server/compat/PlatformCompat;)V

    move-object/from16 v3, p26

    .line 1678
    invoke-virtual {v3, v0}, Lcom/android/server/am/BroadcastSentEventRecord;->setBroadcastRecord(Lcom/android/server/am/BroadcastRecord;)V

    .line 1680
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastRecord;->debugLog()Z

    move-result v2

    if-eqz v2, :cond_e39

    .line 1681
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enqueueing broadcast "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    :cond_e39
    invoke-virtual {v1, v0}, Lcom/android/server/am/BroadcastQueue;->enqueueBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    goto :goto_e8f

    :cond_e3d
    const/16 v32, 0x0

    .line 1687
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_e6a

    invoke-virtual {v4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e6a

    .line 1688
    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int v0, v0, p24

    if-nez v0, :cond_e6a

    .line 1690
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    move-object/from16 p5, p2

    move-object/from16 p4, v0

    move-object/from16 p3, v1

    move/from16 p7, v2

    move/from16 p6, v3

    move-wide/from16 p8, v5

    invoke-virtual/range {p3 .. p9}, Lcom/android/server/am/BroadcastController;->addBroadcastStatLocked(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 1692
    :cond_e6a
    invoke-static/range {p15 .. p15}, Lcom/android/server/am/BroadcastRecord;->debugLog(Landroid/app/BroadcastOptions;)Z

    move-result v0

    if-eqz v0, :cond_e8f

    .line 1693
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/am/BroadcastRecord;->intentToString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to no receivers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e8f
    :goto_e8f
    return v32

    :catch_e90
    move-exception v0

    move-object/from16 v2, p24

    const/16 v32, 0x0

    .line 1047
    const-string v1, "ActivityManager"

    const-string v3, "Remote exception"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object/from16 v3, p7

    move-object/from16 v6, p15

    move/from16 v7, p19

    .line 1048
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/BroadcastController;->scheduleCanceledResultTo(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILandroid/app/BroadcastOptions;ILjava/lang/String;)V

    return v32

    :pswitch_data_eaa
    .packed-switch 0x3e8
        :pswitch_364
        :pswitch_364
        :pswitch_364
    .end packed-switch

    :sswitch_data_eb4
    .sparse-switch
        -0x7d14f855 -> :sswitch_58b
        -0x6849e2b4 -> :sswitch_57d
        -0x53ae571d -> :sswitch_56e
        -0x4fc097e4 -> :sswitch_560
        -0x3bb3e592 -> :sswitch_551
        -0x304ed112 -> :sswitch_542
        -0x1808c879 -> :sswitch_533
        0xa480416 -> :sswitch_524
        0xaf62806 -> :sswitch_517
        0xff13fb5 -> :sswitch_50a
        0x1df32313 -> :sswitch_4fd
        0x1e1f7f95 -> :sswitch_4f0
        0x1f50b9c2 -> :sswitch_4e4
        0x2114f460 -> :sswitch_4d5
        0x2f126fdf -> :sswitch_4c9
        0x32c98ebd -> :sswitch_4ba
        0x36db402e -> :sswitch_4ab
        0x4cef8b35 -> :sswitch_49e
        0x5c1076e2 -> :sswitch_491
        0x6331ebb2 -> :sswitch_484
        0x6f08f706 -> :sswitch_475
    .end sparse-switch

    :pswitch_data_f0a
    .packed-switch 0x0
        :pswitch_9e0
        :pswitch_75b
        :pswitch_75b
        :pswitch_75b
        :pswitch_75b
        :pswitch_6e1
        :pswitch_6be
        :pswitch_75b
        :pswitch_6a9
        :pswitch_68e
        :pswitch_67d
        :pswitch_64b
        :pswitch_75b
        :pswitch_620
        :pswitch_614
        :pswitch_5ea
        :pswitch_9e0
        :pswitch_75b
        :pswitch_5b5
        :pswitch_5ab
        :pswitch_5a1
    .end packed-switch

    :sswitch_data_f38
    .sparse-switch
        -0x6849e2b4 -> :sswitch_7be
        -0x53ae571d -> :sswitch_7b2
        -0x4fc097e4 -> :sswitch_7a6
        -0x3bb3e592 -> :sswitch_79a
        0xa480416 -> :sswitch_78e
        0x1f50b9c2 -> :sswitch_782
        0x4cef8b35 -> :sswitch_779
    .end sparse-switch

    :pswitch_data_f56
    .packed-switch 0x0
        :pswitch_963
        :pswitch_925
        :pswitch_919
        :pswitch_8d5
        :pswitch_7cd
        :pswitch_7cd
        :pswitch_8d5
    .end packed-switch
.end method

.method public broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    .registers 47

    move-object/from16 v2, p0

    .line 727
    iget-object v0, v2, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "broadcastIntent"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 730
    iget-object v1, v2, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    move-object/from16 v0, p3

    .line 731
    :try_start_11
    invoke-virtual {v2, v0}, Lcom/android/server/am/BroadcastController;->verifyBroadcastLocked(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    .line 733
    iget-object v0, v2, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 734
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v20

    .line 735
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move-object/from16 v4, p13

    .line 741
    invoke-virtual {v2, v4, v0}, Lcom/android/server/am/BroadcastController;->enforceBroadcastOptionPermissionsInternal(Landroid/os/Bundle;I)V

    .line 743
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_79

    if-eqz v3, :cond_37

    .line 746
    :try_start_30
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_38

    :catchall_35
    move-exception v0

    goto :goto_7b

    :cond_37
    const/4 v5, 0x0

    :goto_38
    sget-object v25, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v8, v3

    move/from16 v22, v0

    move/from16 v23, v20

    move-object/from16 v7, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move/from16 v16, p12

    move/from16 v18, p14

    move/from16 v19, p15

    move/from16 v24, p16

    move/from16 v21, v0

    move-object/from16 v17, v4

    move-object v4, v5

    move-object/from16 v5, p2

    .line 745
    invoke-virtual/range {v2 .. v27}, Lcom/android/server/am/BroadcastController;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIIILandroid/app/BackgroundStartPrivileges;[ILjava/util/function/BiFunction;)I

    move-result v0
    :try_end_66
    .catchall {:try_start_30 .. :try_end_66} :catchall_35

    .line 752
    :try_start_66
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 754
    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_66 .. :try_end_6a} :catchall_79

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz p15, :cond_78

    if-nez v0, :cond_78

    .line 757
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/app/BroadcastStickyCache;->invalidateCache(Ljava/lang/String;)V

    :cond_78
    return v0

    :catchall_79
    move-exception v0

    goto :goto_7f

    .line 752
    :goto_7b
    :try_start_7b
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 753
    throw v0

    .line 754
    :goto_7f
    monitor-exit v1
    :try_end_80
    .catchall {:try_start_7b .. :try_end_80} :catchall_79

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public final checkBroadcastFromSystem(Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IZLjava/util/List;)V
    .registers 8

    .line 2091
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v0, 0x400000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    goto/16 :goto_117

    .line 2096
    :cond_b
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-nez p5, :cond_117

    .line 2097
    const-string p5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 2098
    invoke-virtual {p5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_117

    const-string p5, "com.android.intent.action.DISMISS_KEYBOARD_SHORTCUTS"

    .line 2099
    invoke-virtual {p5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_117

    const-string p5, "android.intent.action.MEDIA_BUTTON"

    .line 2100
    invoke-virtual {p5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_117

    const-string p5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 2101
    invoke-virtual {p5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_117

    const-string p5, "com.android.intent.action.SHOW_KEYBOARD_SHORTCUTS"

    .line 2102
    invoke-virtual {p5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_117

    const-string p5, "android.intent.action.MASTER_CLEAR"

    .line 2103
    invoke-virtual {p5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_117

    const-string p5, "android.intent.action.FACTORY_RESET"

    .line 2104
    invoke-virtual {p5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_117

    const-string p5, "android.appwidget.action.APPWIDGET_CONFIGURE"

    .line 2105
    invoke-virtual {p5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_117

    const-string p5, "android.appwidget.action.APPWIDGET_UPDATE"

    .line 2106
    invoke-virtual {p5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_117

    const-string p5, "com.android.omadm.service.CONFIGURATION_UPDATE"

    .line 2107
    invoke-virtual {p5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_117

    const-string p5, "android.text.style.SUGGESTION_PICKED"

    .line 2108
    invoke-virtual {p5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_117

    const-string p5, "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

    .line 2109
    invoke-virtual {p5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_117

    const-string p5, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    .line 2110
    invoke-virtual {p5, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_7b

    goto/16 :goto_117

    .line 2121
    :cond_7b
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p5

    if-nez p5, :cond_87

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_b8

    :cond_87
    if-eqz p6, :cond_117

    .line 2122
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_91

    goto/16 :goto_117

    .line 2132
    :cond_91
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_97
    if-ltz p1, :cond_117

    .line 2133
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    .line 2134
    instance-of v0, p5, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_ae

    .line 2135
    check-cast p5, Landroid/content/pm/ResolveInfo;

    .line 2136
    iget-object p5, p5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, p5, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v0, :cond_114

    iget-object p5, p5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-nez p5, :cond_114

    goto :goto_b8

    .line 2141
    :cond_ae
    check-cast p5, Lcom/android/server/am/BroadcastFilter;

    .line 2142
    iget-boolean v0, p5, Lcom/android/server/am/BroadcastFilter;->exported:Z

    if-eqz v0, :cond_114

    iget-object p5, p5, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    if-nez p5, :cond_114

    .line 2157
    :cond_b8
    :goto_b8
    const-string p1, " pkg "

    const-string p5, "Sending non-protected broadcast "

    const-string p6, "ActivityManager"

    if-eqz p2, :cond_ea

    .line 2158
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " from system "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2159
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 2158
    invoke-static {p6, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 2162
    :cond_ea
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " from system uid "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2163
    invoke-static {p4}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    .line 2162
    invoke-static {p6, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_114
    add-int/lit8 p1, p1, -0x1

    goto :goto_97

    :cond_117
    :goto_117
    return-void
.end method

.method public final collectReceiverComponents(Landroid/content/Intent;Ljava/lang/String;II[I[I[Ljava/lang/String;)Ljava/util/List;
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 1992
    array-length v3, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_b
    const/4 v10, 0x1

    if-ge v6, v3, :cond_122

    aget v11, v1, v6

    const/16 v12, 0x7d0

    move/from16 v13, p3

    if-ne v13, v12, :cond_25

    .line 1994
    iget-object v12, v0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    const-string/jumbo v14, "no_debugging_features"

    .line 1995
    invoke-virtual {v12, v14, v11}, Lcom/android/server/am/UserController;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_25

    goto/16 :goto_11e

    .line 1999
    :cond_25
    iget-object v12, v0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/16 v19, 0x1

    const-wide/32 v14, 0x10000400

    move/from16 v17, p4

    move-object/from16 v20, p7

    move/from16 v18, v11

    move-object v11, v12

    move/from16 v16, v13

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual/range {v11 .. v20}, Landroid/content/pm/PackageManagerInternal;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JIIIZ[Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    move/from16 v17, v18

    if-eqz v17, :cond_63

    if-eqz v11, :cond_63

    const/4 v12, 0x0

    .line 2005
    :goto_46
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_63

    .line 2006
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 2007
    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v13, v13, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v16, 0x20000000

    and-int v13, v13, v16

    if-eqz v13, :cond_61

    .line 2008
    invoke-interface {v11, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v12, v12, -0x1

    :cond_61
    add-int/2addr v12, v10

    goto :goto_46

    :cond_63
    if-eqz v11, :cond_a1

    .line 2015
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v10

    :goto_6a
    if-ltz v12, :cond_a1

    .line 2016
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    .line 2017
    iget-object v4, v0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mComponentAliasResolver:Lcom/android/server/am/ComponentAliasResolver;

    move-object v5, v11

    move-object v11, v4

    move-object v4, v5

    move/from16 v18, p3

    move/from16 v19, p4

    move v5, v12

    move-wide v15, v14

    move-object/from16 v12, p1

    move-object/from16 v14, p2

    .line 2018
    invoke-virtual/range {v11 .. v19}, Lcom/android/server/am/ComponentAliasResolver;->resolveReceiver(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/String;JIII)Lcom/android/server/am/ComponentAliasResolver$Resolution;

    move-result-object v11

    move-wide v14, v15

    if-nez v11, :cond_8e

    .line 2022
    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_9d

    .line 2025
    :cond_8e
    invoke-virtual {v11}, Lcom/android/server/am/ComponentAliasResolver$Resolution;->isAlias()Z

    move-result v12

    if-eqz v12, :cond_9d

    .line 2026
    invoke-virtual {v11}, Lcom/android/server/am/ComponentAliasResolver$Resolution;->getTarget()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    invoke-interface {v4, v5, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_9d
    :goto_9d
    add-int/lit8 v12, v5, -0x1

    move-object v11, v4

    goto :goto_6a

    :cond_a1
    move-object v4, v11

    if-eqz v4, :cond_ac

    .line 2030
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_ac

    const/4 v11, 0x0

    goto :goto_ad

    :cond_ac
    move-object v11, v4

    :goto_ad
    if-nez v7, :cond_b2

    move-object v7, v11

    goto/16 :goto_11e

    :cond_b2
    if-eqz v11, :cond_11e

    const/high16 v4, 0x40000000    # 2.0f

    if-nez v8, :cond_e5

    const/4 v5, 0x0

    .line 2044
    :goto_b9
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_e4

    .line 2045
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 2046
    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/2addr v12, v4

    if-eqz v12, :cond_e1

    .line 2047
    new-instance v12, Landroid/content/ComponentName;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v12, v13, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v9, :cond_de

    .line 2050
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 2052
    :cond_de
    invoke-virtual {v9, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_e1
    add-int/lit8 v5, v5, 0x1

    goto :goto_b9

    :cond_e4
    move v8, v10

    :cond_e5
    const/4 v5, 0x0

    .line 2058
    :goto_e6
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_11e

    .line 2059
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 2060
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v12, v12, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/2addr v12, v4

    if-eqz v12, :cond_118

    .line 2061
    new-instance v12, Landroid/content/ComponentName;

    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v12, v14, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v9, :cond_10b

    .line 2064
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 2066
    :cond_10b
    invoke-virtual {v9, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_11b

    .line 2067
    invoke-virtual {v9, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2068
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11b

    .line 2071
    :cond_118
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11b
    :goto_11b
    add-int/lit8 v5, v5, 0x1

    goto :goto_e6

    :cond_11e
    :goto_11e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_b

    :cond_122
    if-eqz v7, :cond_14d

    if-eqz v2, :cond_14d

    .line 2077
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v10

    :goto_12b
    if-ltz v0, :cond_14d

    .line 2079
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2078
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v3, 0x2710

    if-lt v1, v3, :cond_14a

    .line 2081
    invoke-static {v2, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-gez v1, :cond_14a

    .line 2082
    invoke-interface {v7, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_14a
    add-int/lit8 v0, v0, -0x1

    goto :goto_12b

    :cond_14d
    return-object v7
.end method

.method public dumpBroadcastStatsCheckinLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V
    .registers 7
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2446
    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    if-nez p1, :cond_5

    goto :goto_1b

    .line 2450
    :cond_5
    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    const/4 p3, 0x0

    if-eqz p1, :cond_12

    .line 2451
    invoke-virtual {p1, p2, p6}, Lcom/android/server/am/BroadcastStats;->dumpCheckinStats(Ljava/io/PrintWriter;Ljava/lang/String;)V

    if-eqz p5, :cond_12

    .line 2453
    iput-object p3, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    return-void

    .line 2457
    :cond_12
    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    invoke-virtual {p1, p2, p6}, Lcom/android/server/am/BroadcastStats;->dumpCheckinStats(Ljava/io/PrintWriter;Ljava/lang/String;)V

    if-eqz p5, :cond_1b

    .line 2459
    iput-object p3, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    :cond_1b
    :goto_1b
    return-void
.end method

.method public dumpBroadcastStatsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V
    .registers 13
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 2412
    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    if-nez p1, :cond_5

    goto :goto_7b

    .line 2416
    :cond_5
    const-string p1, "ACTIVITY MANAGER BROADCAST STATS STATE (dumpsys activity broadcast-stats)"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2417
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    .line 2418
    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    const-string p5, "    (nothing)"

    const-string v0, "    "

    const-string v1, " uptime):"

    if-eqz p1, :cond_50

    .line 2419
    const-string p1, "  Last stats (from "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2420
    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    iget-wide v2, p1, Lcom/android/server/am/BroadcastStats;->mStartRealtime:J

    invoke-static {v2, v3, p3, p4, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2421
    const-string p1, " to "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2422
    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    iget-wide v2, p1, Lcom/android/server/am/BroadcastStats;->mEndRealtime:J

    invoke-static {v2, v3, p3, p4, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2423
    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2424
    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    iget-wide v2, p1, Lcom/android/server/am/BroadcastStats;->mEndUptime:J

    iget-wide v4, p1, Lcom/android/server/am/BroadcastStats;->mStartUptime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2426
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2427
    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    invoke-virtual {p1, p2, v0, p6}, Lcom/android/server/am/BroadcastStats;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4d

    .line 2428
    invoke-virtual {p2, p5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2430
    :cond_4d
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2432
    :cond_50
    const-string p1, "  Current stats (from "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2433
    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    iget-wide v2, p1, Lcom/android/server/am/BroadcastStats;->mStartRealtime:J

    invoke-static {v2, v3, p3, p4, p2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2434
    const-string p1, " to now, "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2435
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    iget-wide v2, p1, Lcom/android/server/am/BroadcastStats;->mStartUptime:J

    sub-long/2addr p3, v2

    invoke-static {p3, p4, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2437
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2438
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    invoke-virtual {p0, p2, v0, p6}, Lcom/android/server/am/BroadcastStats;->dumpStats(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_7b

    .line 2439
    invoke-virtual {p2, p5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7b
    :goto_7b
    return-void
.end method

.method public dumpBroadcastsLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;)V
    .registers 31
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v8, p3

    move/from16 v1, p4

    move-object/from16 v3, p6

    .line 2227
    const-string v4, "history"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v13, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_30

    .line 2228
    array-length v3, v8

    if-ge v1, v3, :cond_24

    const-string v3, "-s"

    aget-object v4, v8, v1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    move v3, v13

    goto :goto_26

    :cond_24
    move/from16 v3, p5

    :goto_26
    move v9, v1

    move v8, v3

    move v4, v5

    move-object v10, v6

    move v15, v13

    move/from16 v16, v15

    const/4 v14, 0x1

    goto/16 :goto_c7

    .line 2233
    :cond_30
    const-string/jumbo v4, "receivers"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7a

    add-int/lit8 v3, v1, 0x2

    .line 2236
    array-length v4, v8

    if-gt v3, v4, :cond_75

    move v3, v1

    move v4, v5

    .line 2237
    :goto_40
    array-length v7, v8

    if-ge v3, v7, :cond_6b

    .line 2238
    aget-object v4, v8, v3

    .line 2239
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    const-string v7, "--uid"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5e

    .line 2247
    const-string v0, "Invalid argument at index %d: %s\n"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void

    :cond_5e
    add-int/lit8 v4, v3, 0x1

    .line 2241
    invoke-static {v2, v8, v4, v5}, Lcom/android/server/am/BroadcastController;->getIntArg(Ljava/io/PrintWriter;[Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v5, :cond_68

    goto/16 :goto_297

    :cond_68
    add-int/lit8 v3, v3, 0x2

    goto :goto_40

    :cond_6b
    move/from16 v8, p5

    move v9, v1

    :goto_6e
    move-object v10, v6

    move v14, v13

    move v15, v14

    const/16 v16, 0x1

    goto/16 :goto_c7

    :cond_75
    move/from16 v8, p5

    move v9, v1

    move v4, v5

    goto :goto_6e

    .line 2252
    :cond_7a
    const-string v4, "filter"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bd

    add-int/lit8 v3, v1, 0x2

    .line 2255
    array-length v4, v8

    if-gt v3, v4, :cond_b7

    .line 2256
    const-string v3, "--action"

    add-int/lit8 v4, v1, 0x1

    aget-object v7, v8, v1

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    add-int/lit8 v1, v1, 0x2

    .line 2257
    aget-object v3, v8, v4

    if-nez v3, :cond_a1

    .line 2259
    const-string v0, "Missing argument for --action option\n"

    new-array v1, v13, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void

    :cond_a1
    move/from16 v8, p5

    move v9, v1

    move-object v10, v3

    move v4, v5

    :goto_a6
    move v14, v13

    move/from16 v16, v14

    const/4 v15, 0x1

    goto :goto_c7

    .line 2263
    :cond_ab
    const-string v0, "Unknown argument: %s\n"

    aget-object v1, v8, v4

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void

    :cond_b7
    move/from16 v8, p5

    move v9, v1

    move v4, v5

    move-object v10, v6

    goto :goto_a6

    :cond_bd
    move/from16 v8, p5

    move v9, v1

    move v4, v5

    move-object v10, v6

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move-object v6, v3

    .line 2275
    :goto_c7
    const-string v1, "ACTIVITY MANAGER BROADCAST STATE (dumpsys activity broadcasts)"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez v14, :cond_14f

    if-nez v15, :cond_14f

    if-eqz v8, :cond_14f

    .line 2277
    iget-object v1, v0, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_12b

    .line 2279
    iget-object v1, v0, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v13

    move v7, v3

    move v11, v7

    .line 2280
    :goto_e7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_128

    .line 2281
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, Lcom/android/server/am/ReceiverList;

    if-eqz v6, :cond_106

    .line 2282
    iget-object v13, v12, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v13, :cond_10e

    iget-object v13, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2283
    invoke-virtual {v6, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_106

    goto :goto_10e

    :cond_106
    if-eq v4, v5, :cond_110

    .line 2286
    iget-object v13, v12, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget v13, v13, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    if-eq v4, v13, :cond_110

    :cond_10e
    :goto_10e
    const/4 v13, 0x0

    goto :goto_e7

    :cond_110
    if-nez v11, :cond_11a

    .line 2294
    const-string v3, "  Registered Receivers:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v7, 0x1

    const/4 v11, 0x1

    .line 2299
    :cond_11a
    const-string v13, "  * "

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2300
    const-string v13, "    "

    invoke-virtual {v12, v2, v13}, Lcom/android/server/am/ReceiverList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_10e

    :cond_128
    move v11, v3

    move v12, v7

    goto :goto_134

    :cond_12b
    if-eqz v16, :cond_132

    .line 2304
    const-string v1, "  (no registered receivers)"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_132
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_134
    if-nez v16, :cond_14d

    .line 2309
    iget-object v1, v0, Lcom/android/server/am/BroadcastController;->mReceiverResolver:Lcom/android/server/am/BroadcastController$BroadcastIntentResolver;

    if-eqz v11, :cond_13d

    .line 2310
    const-string v3, "\n  Receiver Resolver Table:"

    goto :goto_13f

    :cond_13d
    const-string v3, "  Receiver Resolver Table:"

    :goto_13f
    const-string v4, "    "

    move-object v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 2309
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/IntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v1

    if-eqz v1, :cond_152

    const/4 v11, 0x1

    const/4 v12, 0x1

    goto :goto_152

    :cond_14d
    move-object v5, v6

    goto :goto_152

    :cond_14f
    move-object v5, v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    :cond_152
    :goto_152
    if-nez v16, :cond_169

    .line 2319
    iget-object v1, v0, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    const/4 v6, 0x1

    const/4 v7, 0x1

    move v2, v9

    move-object v9, v5

    move v5, v2

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v11}, Lcom/android/server/am/BroadcastQueue;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    move-object v2, v3

    move-object v5, v9

    or-int/2addr v12, v1

    goto :goto_16b

    :cond_169
    move-object/from16 v2, p2

    .line 2326
    :goto_16b
    iget-object v1, v0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    monitor-enter v1

    if-nez v14, :cond_24c

    if-nez v16, :cond_24c

    if-nez v15, :cond_24c

    .line 2327
    :try_start_174
    iget-object v3, v0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    if-eqz v3, :cond_24c

    if-nez v5, :cond_24c

    const/4 v3, 0x0

    .line 2329
    :goto_17b
    iget-object v4, v0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_24c

    .line 2331
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 2335
    const-string v4, "  Sticky broadcasts for user "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2336
    iget-object v4, v0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2337
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2338
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2340
    iget-object v5, v0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1b0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_246

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2341
    const-string v7, "  * Sticky action "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2342
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v8, :cond_23e

    .line 2344
    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2345
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 2346
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v9, 0x0

    :goto_1dc
    if-ge v9, v7, :cond_23b

    .line 2348
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    iget-object v10, v10, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    .line 2349
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    iget-boolean v11, v11, Lcom/android/server/am/BroadcastController$StickyBroadcast;->deferUntilActive:Z

    const/4 v12, 0x0

    .line 2350
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2351
    const-string v13, "    Intent: "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v19, v4

    move-object/from16 v18, v10

    .line 2352
    invoke-virtual/range {v18 .. v23}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 2353
    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz v11, :cond_214

    .line 2355
    const-string v10, " [D]"

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_214

    :catchall_211
    move-exception v0

    goto/16 :goto_298

    .line 2357
    :cond_214
    :goto_214
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 2358
    const-string v10, "      originalCallingUid: "

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2359
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    iget v10, v10, Lcom/android/server/am/BroadcastController$StickyBroadcast;->originalCallingUid:I

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 2360
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 2361
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_238

    .line 2363
    const-string v11, "      extras: "

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2364
    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_238
    add-int/lit8 v9, v9, 0x1

    goto :goto_1dc

    :cond_23b
    const/4 v12, 0x0

    goto/16 :goto_1b0

    :cond_23e
    const/4 v12, 0x0

    .line 2368
    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1b0

    :cond_246
    const/4 v12, 0x0

    add-int/lit8 v3, v3, 0x1

    const/4 v12, 0x1

    goto/16 :goto_17b

    .line 2373
    :cond_24c
    monitor-exit v1
    :try_end_24d
    .catchall {:try_start_174 .. :try_end_24d} :catchall_211

    if-nez v14, :cond_290

    if-nez v16, :cond_290

    if-nez v15, :cond_290

    if-eqz v8, :cond_290

    .line 2376
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    .line 2377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Queue "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    .line 2378
    invoke-virtual {v3}, Lcom/android/server/am/BroadcastQueue;->describeStateLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2377
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2379
    const-string v1, "  mHandler:"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2380
    iget-object v0, v0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, v2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v3, "    "

    invoke-virtual {v0, v1, v3}, Landroid/os/Handler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    const/4 v12, 0x1

    :cond_290
    if-nez v12, :cond_297

    .line 2385
    const-string v0, "  (nothing)"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_297
    :goto_297
    return-void

    .line 2373
    :goto_298
    :try_start_298
    monitor-exit v1
    :try_end_299
    .catchall {:try_start_298 .. :try_end_299} :catchall_211

    throw v0
.end method

.method public final enforceBroadcastOptionPermissionsInternal(Landroid/app/BroadcastOptions;I)V
    .registers 4

    if-eqz p1, :cond_25

    const/16 v0, 0x3e8

    if-eq p2, v0, :cond_25

    .line 2179
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->isAlarmBroadcast()Z

    move-result p2

    if-nez p2, :cond_1d

    .line 2187
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->isInteractive()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 2188
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string p1, "android.permission.BROADCAST_OPTION_INTERACTIVE"

    const-string/jumbo p2, "setInteractive"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2184
    :cond_1d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Non-system callers may not flag broadcasts as alarm"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_25
    return-void
.end method

.method public enforceBroadcastOptionPermissionsInternal(Landroid/os/Bundle;I)V
    .registers 3

    .line 2172
    invoke-static {p1}, Landroid/app/BroadcastOptions;->fromBundleNullable(Landroid/os/Bundle;)Landroid/app/BroadcastOptions;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastController;->enforceBroadcastOptionPermissionsInternal(Landroid/app/BroadcastOptions;I)V

    return-void
.end method

.method public finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V
    .registers 18

    if-eqz p4, :cond_11

    .line 1826
    invoke-virtual {p4}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_11

    .line 1827
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File descriptors passed in Bundle"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1830
    :cond_11
    :goto_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1832
    :try_start_15
    iget-object v3, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_5e

    .line 1833
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/os/IBinder;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    if-nez v5, :cond_44

    .line 1835
    const-string p0, "ActivityManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "finishReceiver: no app for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_1b .. :try_end_3a} :catchall_41

    .line 1846
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_41
    move-exception v0

    move-object p0, v0

    goto :goto_61

    .line 1839
    :cond_44
    :try_start_44
    iget-object v4, p0, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    const/4 v10, 0x1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    .line 1842
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 p1, 0x0

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->trimApplicationsLocked(ZI)V

    .line 1843
    monitor-exit v3
    :try_end_57
    .catchall {:try_start_44 .. :try_end_57} :catchall_41

    :try_start_57
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5e

    .line 1846
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_5e
    move-exception v0

    move-object p0, v0

    goto :goto_66

    .line 1843
    :goto_61
    :try_start_61
    monitor-exit v3
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_41

    :try_start_62
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_66
    .catchall {:try_start_62 .. :try_end_66} :catchall_5e

    .line 1846
    :goto_66
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1847
    throw p0
.end method

.method public final getBackgroundLaunchBroadcasts()Landroid/util/ArraySet;
    .registers 2

    .line 1941
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mBackgroundLaunchBroadcasts:Landroid/util/ArraySet;

    if-nez v0, :cond_e

    .line 1942
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowImplicitBroadcasts()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BroadcastController;->mBackgroundLaunchBroadcasts:Landroid/util/ArraySet;

    .line 1944
    :cond_e
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mBackgroundLaunchBroadcasts:Landroid/util/ArraySet;

    return-object p0
.end method

.method public final getRealProcessStateLocked(Lcom/android/server/am/ProcessRecord;I)I
    .registers 4

    if-nez p1, :cond_14

    .line 1735
    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 1736
    :try_start_7
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    .line 1737
    monitor-exit v0

    goto :goto_14

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw p0

    :cond_14
    :goto_14
    if-eqz p1, :cond_27

    .line 1739
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object p0

    if-eqz p0, :cond_27

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilled()Z

    move-result p0

    if-nez p0, :cond_27

    .line 1740
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getCurProcState()I

    move-result p0

    return p0

    :cond_27
    const/16 p0, 0x14

    return p0
.end method

.method public final getRealUidStateLocked(Lcom/android/server/am/ProcessRecord;I)I
    .registers 4

    if-nez p1, :cond_14

    .line 1748
    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 1749
    :try_start_7
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    .line 1750
    monitor-exit v0

    goto :goto_14

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_11

    throw p0

    :cond_14
    :goto_14
    if-eqz p1, :cond_2d

    .line 1752
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object p0

    if-eqz p0, :cond_2d

    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->isKilled()Z

    move-result p0

    if-nez p0, :cond_2d

    .line 1753
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 1755
    invoke-virtual {p0}, Lcom/android/server/am/psc/UidRecordInternal;->getCurProcState()I

    move-result p0

    return p0

    :cond_2d
    const/16 p0, 0x14

    return p0
.end method

.method public getRegisteredIntentFilters(Landroid/content/IIntentReceiver;)Ljava/util/List;
    .registers 6

    .line 707
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 708
    :try_start_6
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ReceiverList;

    if-nez p0, :cond_1c

    .line 710
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_1a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return-object p0

    :catchall_1a
    move-exception p0

    goto :goto_39

    .line 712
    :cond_1c
    :try_start_1c
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 713
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_26
    if-ge v2, v1, :cond_34

    .line 715
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 717
    :cond_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_1c .. :try_end_35} :catchall_1a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    .line 718
    :goto_39
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_1a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getStickyBroadcastsForTest(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastController$StickyBroadcast;",
            ">;"
        }
    .end annotation

    .line 1763
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1764
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    .line 1765
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_12

    const/4 p0, 0x0

    .line 1767
    monitor-exit v0

    return-object p0

    :catchall_10
    move-exception p0

    goto :goto_1a

    .line 1769
    :cond_12
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    monitor-exit v0

    return-object p0

    .line 1770
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_10

    throw p0
.end method

.method public final getUidFromIntent(Landroid/content/Intent;)I
    .registers 4

    const/4 p0, -0x1

    if-nez p1, :cond_4

    return p0

    .line 1857
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1858
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 1859
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    :cond_14
    return p0
.end method

.method public final getWearRemoteIntentAction()Ljava/lang/String;
    .registers 2

    .line 1975
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1040319

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isInstantApp(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)Z
    .registers 7

    .line 1948
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    const/4 v2, 0x0

    if-ge v0, v1, :cond_a

    return v2

    :cond_a
    if-eqz p1, :cond_13

    .line 1953
    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result p0

    return p0

    .line 1956
    :cond_13
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    if-nez p2, :cond_2f

    .line 1959
    :try_start_19
    invoke-interface {p1, p3}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 1960
    array-length v1, v0

    if-eqz v1, :cond_27

    .line 1964
    aget-object p2, v0, v2

    goto :goto_2f

    :catch_25
    move-exception p0

    goto :goto_3f

    .line 1961
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to determine caller package name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1966
    :cond_2f
    :goto_2f
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {p0, p3, p2}, Lcom/android/server/appop/AppOpsService;->checkPackage(ILjava/lang/String;)I

    .line 1967
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-interface {p1, p2, p0}, Landroid/content/pm/IPackageManager;->isInstantApp(Ljava/lang/String;I)Z

    move-result p0
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_3e} :catch_25

    return p0

    .line 1969
    :goto_3f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error looking up if "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is an instant app."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityManager"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final isShellOrRoot(I)Z
    .registers 2

    .line 0
    const/16 p0, 0x7d0

    if-eq p1, p0, :cond_9

    if-nez p1, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_9
    const/4 p0, 0x1

    return p0
.end method

.method public final notifyBroadcastFinishedLocked(Lcom/android/server/am/BroadcastRecord;)V
    .registers 5

    .line 1887
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_d

    .line 1888
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_f

    :cond_d
    iget-object v0, p1, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    :goto_f
    if-eqz v0, :cond_21

    .line 1890
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget p1, p1, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/4 v1, 0x0

    const/16 v2, 0x4a

    invoke-virtual {p0, v2, p1, v1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1891
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_21
    return-void
.end method

.method public registerReceiverWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;
    .registers 11

    .line 278
    invoke-static {p4, p5, p6, p8}, Lcom/android/server/am/BroadcastController;->traceRegistrationBegin(Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;I)V

    .line 280
    :try_start_3
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/am/BroadcastController;->registerReceiverWithFeatureTraced(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_b

    .line 283
    invoke-static {}, Lcom/android/server/am/BroadcastController;->traceRegistrationEnd()V

    return-object p0

    :catchall_b
    move-exception v0

    move-object p0, v0

    invoke-static {}, Lcom/android/server/am/BroadcastController;->traceRegistrationEnd()V

    .line 284
    throw p0
.end method

.method public final registerReceiverWithFeatureTraced(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;
    .registers 65

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p6

    move/from16 v12, p9

    .line 320
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "registerReceiver"

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 322
    iget-boolean v0, v1, Lcom/android/server/am/BroadcastController;->mAreStickyCachesInvalidated:Z

    const/4 v13, 0x1

    if-nez v0, :cond_1c

    .line 323
    invoke-static {}, Landroid/app/BroadcastStickyCache;->invalidateAllCaches()V

    .line 324
    iput-boolean v13, v1, Lcom/android/server/am/BroadcastController;->mAreStickyCachesInvalidated:Z

    :cond_1c
    and-int/lit8 v14, v12, 0x1

    if-eqz v14, :cond_23

    move/from16 v16, v13

    goto :goto_25

    :cond_23
    const/16 v16, 0x0

    .line 334
    :goto_25
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v3

    .line 335
    :try_start_2d
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_55

    .line 337
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerReceiverWithFeature: no app for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_2d .. :try_end_4e} :catchall_52

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-object v5

    :catchall_52
    move-exception v0

    goto/16 :goto_544

    .line 340
    :cond_55
    :try_start_55
    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_89

    .line 341
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    goto :goto_89

    .line 342
    :cond_6a
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given caller package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not running in process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_89
    :goto_89
    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 346
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    .line 348
    invoke-virtual {v1, v4, v10, v8}, Lcom/android/server/am/BroadcastController;->isInstantApp(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)Z

    move-result v17

    .line 349
    monitor-exit v3
    :try_end_96
    .catchall {:try_start_55 .. :try_end_96} :catchall_52

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 350
    iget-object v0, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move v9, v8

    const/4 v8, 0x2

    move-object v6, v5

    move v5, v9

    const-string/jumbo v9, "registerReceiver"

    move-object/from16 v18, v4

    move v4, v7

    const/4 v7, 0x1

    move-object v15, v6

    move/from16 v6, p8

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v20

    move v7, v4

    move v4, v5

    move-object v3, v10

    .line 356
    invoke-static {v4}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    const/16 v5, 0x3e8

    if-eqz v0, :cond_109

    .line 357
    invoke-virtual {v11}, Landroid/content/IntentFilter;->getPriority()I

    move-result v0

    if-ge v0, v5, :cond_109

    const/16 v6, -0x3e8

    if-gt v0, v6, :cond_c5

    goto :goto_109

    .line 361
    :cond_c5
    invoke-virtual {v11}, Landroid/content/IntentFilter;->countActions()I

    move-result v6

    const/4 v8, 0x0

    :goto_ca
    if-ge v8, v6, :cond_109

    .line 364
    invoke-virtual {v11, v8}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v9

    .line 365
    const-string v10, "android.intent.action.USER_"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_104

    const-string v10, "android.intent.action.PACKAGE_"

    .line 366
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_104

    const-string v10, "android.intent.action.UID_"

    .line 367
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_104

    const-string v10, "android.intent.action.EXTERNAL_"

    .line 368
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_104

    const-string v10, "android.bluetooth."

    .line 369
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_104

    const-string v10, "android.intent.action.ACTION_SHUTDOWN"

    .line 370
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_101

    goto :goto_104

    :cond_101
    add-int/lit8 v8, v8, 0x1

    goto :goto_ca

    :cond_104
    :goto_104
    if-nez v0, :cond_109

    .line 382
    invoke-virtual {v11, v5}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 390
    :cond_109
    :goto_109
    invoke-virtual {v11}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v0

    if-nez v0, :cond_11b

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 393
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11b
    move-object v6, v0

    const/4 v0, -0x1

    .line 400
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    filled-new-array {v0, v8}, [I

    move-result-object v8

    .line 401
    iget-object v9, v1, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    monitor-enter v9

    move v10, v13

    move-object v0, v15

    .line 402
    :goto_12a
    :try_start_12a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    const/4 v5, 0x2

    if-eqz v21, :cond_189

    .line 403
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v15, v21

    check-cast v15, Ljava/lang/String;

    move-object/from16 v21, v0

    const/4 v0, 0x0

    :goto_13c
    if-ge v0, v5, :cond_16c

    move/from16 v23, v5

    .line 404
    aget v5, v8, v0

    .line 405
    iget-object v13, v1, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    .line 406
    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    if-eqz v5, :cond_166

    .line 408
    invoke-virtual {v5, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_166

    if-nez v21, :cond_15b

    .line 411
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    :cond_15b
    move-object/from16 v13, v21

    goto :goto_161

    :catchall_15e
    move-exception v0

    goto/16 :goto_542

    .line 413
    :goto_161
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_164
    .catchall {:try_start_12a .. :try_end_164} :catchall_15e

    move-object/from16 v21, v13

    :cond_166
    add-int/lit8 v0, v0, 0x1

    move/from16 v5, v23

    const/4 v13, 0x1

    goto :goto_13c

    :cond_16c
    if-eqz v10, :cond_182

    .line 420
    :try_start_16e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v15}, Landroid/content/pm/IPackageManager;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v0
    :try_end_176
    .catch Landroid/os/RemoteException; {:try_start_16e .. :try_end_176} :catch_179
    .catchall {:try_start_16e .. :try_end_176} :catchall_15e

    and-int/2addr v0, v10

    move v10, v0

    goto :goto_182

    :catch_179
    move-exception v0

    .line 423
    :try_start_17a
    const-string v5, "ActivityManager"

    const-string v10, "Remote exception"

    invoke-static {v5, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v10, 0x0

    :cond_182
    :goto_182
    move-object/from16 v0, v21

    const/16 v5, 0x3e8

    const/4 v13, 0x1

    const/4 v15, 0x0

    goto :goto_12a

    :cond_189
    move/from16 v23, v5

    .line 427
    monitor-exit v9
    :try_end_18c
    .catchall {:try_start_17a .. :try_end_18c} :catchall_15e

    .line 429
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v5

    if-eqz v5, :cond_1ca

    .line 430
    const-class v5, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    .line 431
    invoke-static {v5}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    if-eqz v5, :cond_1c2

    .line 436
    invoke-interface {v5, v11, v12, v10}, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;->canRegisterBroadcastReceiver(Landroid/content/IntentFilter;IZ)Z

    move-result v5

    if-eqz v5, :cond_1a7

    goto :goto_1ca

    .line 438
    :cond_1a7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDK sandbox not allowed to register receiver with the given IntentFilter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v11}, Landroid/content/IntentFilter;->toLongString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_1c2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SdkSandboxManagerLocal not found when checking whether SDK sandbox uid can register to broadcast receivers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1ca
    :goto_1ca
    and-int/lit8 v5, v12, 0x6

    if-eqz v5, :cond_1d0

    const/4 v5, 0x1

    goto :goto_1d1

    :cond_1d0
    const/4 v5, 0x0

    :goto_1d1
    and-int/lit8 v6, v12, 0x2

    if-eqz v6, :cond_1e2

    and-int/lit8 v6, v12, 0x4

    if-nez v6, :cond_1da

    goto :goto_1e2

    .line 451
    :cond_1da
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Receiver can\'t specify both RECEIVER_EXPORTED and RECEIVER_NOT_EXPORTEDflag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e2
    :goto_1e2
    const-wide/32 v8, 0x99ae1c7

    .line 459
    invoke-static {v8, v9, v4}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v6

    if-eqz v14, :cond_1fa

    and-int/lit8 v8, v12, 0x4

    if-eqz v8, :cond_1fa

    if-nez v6, :cond_1f2

    goto :goto_1fa

    .line 467
    :cond_1f2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Receiver can\'t specify both RECEIVER_VISIBLE_TO_INSTANT_APPS and RECEIVER_NOT_EXPORTED flag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1fa
    :goto_1fa
    if-nez v10, :cond_226

    if-nez p5, :cond_203

    if-nez v5, :cond_203

    :goto_200
    or-int/lit8 v5, v12, 0x2

    goto :goto_22c

    :cond_203
    if-eqz v6, :cond_21f

    if-eqz v5, :cond_208

    goto :goto_21f

    .line 477
    :cond_208
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": One of RECEIVER_EXPORTED or RECEIVER_NOT_EXPORTED should be specified when a receiver isn\'t being registered exclusively for system broadcasts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21f
    :goto_21f
    if-nez v6, :cond_22b

    and-int/lit8 v5, v12, 0x4

    if-nez v5, :cond_22b

    goto :goto_200

    :cond_226
    and-int/lit8 v5, v12, 0x4

    if-nez v5, :cond_22b

    goto :goto_200

    :cond_22b
    move v5, v12

    :goto_22c
    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_232

    const/4 v13, 0x1

    goto :goto_233

    :cond_232
    const/4 v13, 0x0

    :goto_233
    if-eqz v0, :cond_2c5

    .line 496
    iget-object v5, v1, Lcom/android/server/am/BroadcastController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 498
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v5, 0x0

    const/4 v15, 0x0

    :goto_240
    if-ge v5, v14, :cond_2ba

    .line 499
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    .line 500
    iget-object v8, v6, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    if-eqz v17, :cond_265

    .line 502
    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v9

    const/high16 v10, 0x200000

    and-int/2addr v9, v10

    if-nez v9, :cond_265

    move-object/from16 v21, v0

    move-object v2, v3

    move/from16 v25, v4

    move/from16 v26, v5

    move-object v3, v11

    move/from16 p8, v13

    move/from16 p9, v14

    const/16 v14, 0x3e8

    move v13, v7

    goto :goto_2aa

    :cond_265
    move v9, v4

    .line 510
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    move v10, v5

    iget-object v5, v6, Lcom/android/server/am/BroadcastController$StickyBroadcast;->resolvedDataType:Ljava/lang/String;

    move-object v12, v6

    .line 511
    invoke-virtual {v8}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v6

    move/from16 v21, v7

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v23, v8

    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    move/from16 v25, v9

    const-string v9, "ActivityManager"

    const/4 v11, 0x0

    .line 513
    invoke-virtual/range {v23 .. v23}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    move/from16 v26, v10

    const/4 v10, 0x0

    move-object v2, v3

    move/from16 p8, v13

    move/from16 p9, v14

    move/from16 v13, v21

    const/16 v14, 0x3e8

    move-object/from16 v3, p6

    move-object/from16 v21, v0

    move-object v0, v12

    move-object/from16 v12, v23

    .line 510
    invoke-virtual/range {v3 .. v12}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;ZLjava/util/Collection;Landroid/os/Bundle;)I

    move-result v4

    if-ltz v4, :cond_2aa

    if-nez v15, :cond_2a7

    .line 516
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 518
    :cond_2a7
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2aa
    :goto_2aa
    add-int/lit8 v5, v26, 0x1

    move/from16 v14, p9

    move-object v11, v3

    move v7, v13

    move-object/from16 v0, v21

    move/from16 v4, v25

    move/from16 v13, p8

    move-object v3, v2

    move-object/from16 v2, p1

    goto :goto_240

    :cond_2ba
    move-object v0, v15

    :goto_2bb
    move-object v2, v3

    move/from16 v25, v4

    move-object v3, v11

    move/from16 p8, v13

    const/16 v14, 0x3e8

    move v13, v7

    goto :goto_2c7

    :cond_2c5
    const/4 v0, 0x0

    goto :goto_2bb

    :goto_2c7
    if-eqz v0, :cond_2d5

    const/4 v4, 0x0

    .line 524
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    iget-object v5, v5, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    move-object/from16 v21, v5

    goto :goto_2d7

    :cond_2d5
    const/16 v21, 0x0

    :goto_2d7
    if-nez p5, :cond_2da

    return-object v21

    .line 532
    :cond_2da
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    if-eq v13, v4, :cond_302

    .line 533
    const-string v4, "com.android.server.net.action.SNOOZE_WARNING"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2f0

    const-string v4, "com.android.server.net.action.SNOOZE_RAPID"

    .line 534
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_302

    .line 535
    :cond_2f0
    const-string v4, "177931370"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, ""

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x534e4554

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 539
    :cond_302
    iget-object v11, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v11

    .line 541
    :try_start_308
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    if-eqz v4, :cond_318

    .line 542
    invoke-interface {v4}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-eq v4, v5, :cond_31e

    :cond_318
    move-object/from16 v16, v11

    const/16 v22, 0x0

    goto/16 :goto_538

    .line 546
    :cond_31e
    iget-object v4, v1, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    invoke-interface/range {p5 .. p5}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ReceiverList;

    if-nez v4, :cond_39b

    .line 548
    new-instance v4, Lcom/android/server/am/ReceiverList;

    iget-object v5, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v10, p5

    move v7, v13

    move-object/from16 v6, v18

    move/from16 v9, v20

    move/from16 v8, v25

    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/ReceiverList;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;IIILandroid/content/IIntentReceiver;)V

    move v10, v9

    move v9, v8

    .line 550
    iget-object v5, v4, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_381

    .line 551
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessReceiverRecord;->numberOfReceivers()I

    move-result v5

    if-ge v5, v14, :cond_358

    .line 557
    iget-object v5, v4, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ProcessReceiverRecord;->addReceiver(Lcom/android/server/am/ReceiverList;)V

    const/4 v7, 0x0

    goto :goto_38c

    :catchall_353
    move-exception v0

    move-object/from16 v16, v11

    goto/16 :goto_53d

    .line 553
    :cond_358
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many receivers, total of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", registered for pid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callerPackage: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_381
    .catchall {:try_start_308 .. :try_end_381} :catchall_353

    .line 560
    :cond_381
    :try_start_381
    invoke-interface/range {p5 .. p5}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v5, v4, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_389
    .catch Landroid/os/RemoteException; {:try_start_381 .. :try_end_389} :catch_396
    .catchall {:try_start_381 .. :try_end_389} :catchall_353

    const/4 v5, 0x1

    .line 564
    :try_start_38a
    iput-boolean v5, v4, Lcom/android/server/am/ReceiverList;->linkedToDeath:Z

    .line 566
    :goto_38c
    iget-object v5, v1, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    invoke-interface/range {p5 .. p5}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v5, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3ae

    .line 562
    :catch_396
    monitor-exit v11
    :try_end_397
    .catchall {:try_start_38a .. :try_end_397} :catchall_353

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v21

    :cond_39b
    move-object/from16 v6, v18

    move/from16 v10, v20

    move/from16 v9, v25

    const/4 v7, 0x0

    .line 567
    :try_start_3a2
    iget v5, v4, Lcom/android/server/am/ReceiverList;->uid:I

    if-ne v5, v9, :cond_50c

    .line 572
    iget v5, v4, Lcom/android/server/am/ReceiverList;->pid:I

    if-ne v5, v13, :cond_4e0

    .line 577
    iget v5, v4, Lcom/android/server/am/ReceiverList;->userId:I

    if-ne v5, v10, :cond_4b3

    .line 583
    :goto_3ae
    new-instance v2, Lcom/android/server/am/BroadcastFilter;

    iget-object v14, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v5, Lcom/android/server/am/ActivityManagerService;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;
    :try_end_3b6
    .catchall {:try_start_3a2 .. :try_end_3b6} :catchall_353

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p7

    move/from16 v13, p8

    move/from16 v19, v7

    move/from16 v12, v16

    const/16 v22, 0x0

    move-object/from16 v7, p4

    move-object/from16 v16, v11

    move/from16 v11, v17

    :try_start_3ca
    invoke-direct/range {v2 .. v15}, Lcom/android/server/am/BroadcastFilter;-><init>(Landroid/content/IntentFilter;Lcom/android/server/am/ReceiverList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZZLandroid/content/pm/ApplicationInfo;Lcom/android/server/compat/PlatformCompat;)V

    move-object v10, v5

    .line 586
    invoke-virtual {v4, v3}, Lcom/android/server/am/ReceiverList;->containsFilter(Landroid/content/IntentFilter;)Z

    move-result v5

    if-eqz v5, :cond_400

    .line 587
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Receiver with filter "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " already registered for pid "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callerPackage is "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41f

    :catchall_3fd
    move-exception v0

    goto/16 :goto_53d

    .line 591
    :cond_400
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    invoke-virtual {v2}, Landroid/content/IntentFilter;->debugCheck()Z

    move-result v3

    if-nez v3, :cond_410

    .line 593
    const-string v3, "ActivityManager"

    const-string v4, "==> For Dynamic broadcast"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_410
    iget-object v3, v1, Lcom/android/server/am/BroadcastController;->mReceiverResolver:Lcom/android/server/am/BroadcastController$BroadcastIntentResolver;

    iget-object v4, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/PackageManagerInternal;->snapshot()Lcom/android/server/pm/snapshot/PackageDataSnapshot;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/IntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Ljava/lang/Object;)V

    :goto_41f
    if-eqz v0, :cond_4ae

    .line 601
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 602
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v15, v19

    move-object/from16 v5, v22

    :goto_431
    if-ge v15, v2, :cond_4ac

    .line 607
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    .line 608
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    iget v6, v6, Lcom/android/server/am/BroadcastController$StickyBroadcast;->originalCallingUid:I

    if-nez v5, :cond_44f

    if-nez v13, :cond_44d

    if-eq v6, v9, :cond_44d

    .line 612
    invoke-static {v6}, Landroid/app/ActivityManager;->canAccessUnexportedComponents(I)Z

    move-result v7

    if-eqz v7, :cond_44f

    .line 614
    :cond_44d
    iget-object v5, v4, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    .line 616
    :cond_44f
    iget-object v7, v1, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    .line 617
    new-instance v23, Lcom/android/server/am/BroadcastRecord;

    iget-object v8, v4, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    iget-boolean v10, v4, Lcom/android/server/am/BroadcastController$StickyBroadcast;->deferUntilActive:Z

    .line 620
    invoke-static {v10}, Landroid/app/BroadcastOptions;->makeWithDeferUntilActive(Z)Landroid/app/BroadcastOptions;

    move-result-object v37

    sget-object v50, Landroid/app/BackgroundStartPrivileges;->NONE:Landroid/app/BackgroundStartPrivileges;

    iget v4, v4, Lcom/android/server/am/BroadcastController$StickyBroadcast;->originalCallingAppProcessState:I

    iget-object v10, v1, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, -0x1

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, -0x1

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x1

    const/16 v46, 0x1

    const/16 v47, -0x1

    const/16 v49, -0x1

    const/16 v51, 0x0

    const/16 v52, 0x0

    move-object/from16 v38, v3

    move/from16 v53, v4

    move/from16 v48, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v54, v10

    invoke-direct/range {v23 .. v54}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILandroid/app/BackgroundStartPrivileges;ZLjava/util/function/BiFunction;ILcom/android/server/compat/PlatformCompat;)V

    move-object/from16 v4, v23

    move-object/from16 v3, v24

    .line 627
    invoke-virtual {v3, v4}, Lcom/android/server/am/BroadcastQueue;->enqueueBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v38

    goto :goto_431

    :cond_4ac
    move-object/from16 v21, v5

    .line 631
    :cond_4ae
    monitor-exit v16
    :try_end_4af
    .catchall {:try_start_3ca .. :try_end_4af} :catchall_3fd

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v21

    :cond_4b3
    move v9, v10

    move-object/from16 v16, v11

    move-object v10, v2

    .line 578
    :try_start_4b7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver requested to register for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was previously registered for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/android/server/am/ReceiverList;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callerPackage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e0
    move-object v10, v2

    move-object/from16 v16, v11

    .line 573
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver requested to register for pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was previously registered for pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callerPackage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50c
    move-object v10, v2

    move-object/from16 v16, v11

    .line 568
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver requested to register for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was previously registered for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v4, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " callerPackage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :goto_538
    monitor-exit v16
    :try_end_539
    .catchall {:try_start_4b7 .. :try_end_539} :catchall_3fd

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v22

    .line 632
    :goto_53d
    :try_start_53d
    monitor-exit v16
    :try_end_53e
    .catchall {:try_start_53d .. :try_end_53e} :catchall_3fd

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 427
    :goto_542
    :try_start_542
    monitor-exit v9
    :try_end_543
    .catchall {:try_start_542 .. :try_end_543} :catchall_15e

    throw v0

    .line 349
    :goto_544
    :try_start_544
    monitor-exit v3
    :try_end_545
    .catchall {:try_start_544 .. :try_end_545} :catchall_52

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0
.end method

.method public removeReceiverLocked(Lcom/android/server/am/ReceiverList;)V
    .registers 5

    .line 700
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_11
    if-ltz v0, :cond_21

    .line 702
    iget-object v1, p0, Lcom/android/server/am/BroadcastController;->mReceiverResolver:Lcom/android/server/am/BroadcastController$BroadcastIntentResolver;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v1, v2}, Lcom/android/server/IntentResolver;->removeFilter(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_21
    return-void
.end method

.method public removeStickyBroadcasts(I)V
    .registers 5

    .line 2200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2201
    iget-object v1, p0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    monitor-enter v1

    .line 2202
    :try_start_8
    iget-object v2, p0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    .line 2203
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    if-eqz v2, :cond_1c

    .line 2205
    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1c

    :catchall_1a
    move-exception p0

    goto :goto_37

    .line 2207
    :cond_1c
    :goto_1c
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2208
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_1a

    .line 2209
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_28
    if-ltz p0, :cond_36

    .line 2210
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/app/BroadcastStickyCache;->invalidateCache(Ljava/lang/String;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_28

    :cond_36
    return-void

    .line 2208
    :goto_37
    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_1a

    throw p0
.end method

.method public final rotateBroadcastStatsIfNeededLocked()V
    .registers 8

    .line 1863
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1864
    iget-object v2, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    if-eqz v2, :cond_14

    iget-wide v3, v2, Lcom/android/server/am/BroadcastStats;->mStartRealtime:J

    const-wide/32 v5, 0x5265c00

    add-long/2addr v3, v5

    cmp-long v0, v3, v0

    if-gez v0, :cond_13

    goto :goto_14

    :cond_13
    return-void

    .line 1866
    :cond_14
    :goto_14
    iput-object v2, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    if-eqz v2, :cond_26

    .line 1868
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/android/server/am/BroadcastStats;->mEndRealtime:J

    .line 1869
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mLastBroadcastStats:Lcom/android/server/am/BroadcastStats;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/BroadcastStats;->mEndUptime:J

    .line 1871
    :cond_26
    new-instance v0, Lcom/android/server/am/BroadcastStats;

    invoke-direct {v0}, Lcom/android/server/am/BroadcastStats;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BroadcastController;->mCurBroadcastStats:Lcom/android/server/am/BroadcastStats;

    return-void
.end method

.method public final scheduleCanceledResultTo(Lcom/android/server/am/ProcessRecord;Landroid/content/IIntentReceiver;Landroid/content/Intent;ILandroid/app/BroadcastOptions;ILjava/lang/String;)V
    .registers 24

    move-object/from16 v1, p1

    if-nez p2, :cond_6

    goto/16 :goto_72

    :cond_6
    const/4 v0, 0x0

    if-eqz v1, :cond_f

    .line 1713
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getOnewayThread()Landroid/app/IApplicationThread;

    move-result-object v2

    move-object v3, v2

    goto :goto_10

    :cond_f
    move-object v3, v0

    :goto_10
    if-eqz v3, :cond_72

    const/4 v2, 0x1

    if-eqz p5, :cond_1f

    .line 1716
    :try_start_15
    invoke-virtual/range {p5 .. p5}, Landroid/app/BroadcastOptions;->isShareIdentityEnabled()Z

    move-result v4

    if-eqz v4, :cond_1f

    move v4, v2

    goto :goto_20

    :catch_1d
    move-exception v0

    goto :goto_41

    :cond_1f
    const/4 v4, 0x0

    .line 1719
    :goto_20
    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getReportedProcState()I

    move-result v13

    if-eqz v4, :cond_29

    move/from16 v14, p6

    goto :goto_2b

    :cond_29
    const/4 v5, -0x1

    move v14, v5

    :goto_2b
    if-eqz v4, :cond_30

    move-object/from16 v15, p7

    goto :goto_31

    :cond_30
    move-object v15, v0

    :goto_31
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v12, p4

    .line 1717
    invoke-interface/range {v3 .. v15}, Landroid/app/IApplicationThread;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZZIIILjava/lang/String;)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_40} :catch_1d

    return-void

    .line 1723
    :goto_41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to schedule result of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " via "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xd

    const/16 v4, 0x1a

    .line 1725
    const-string v5, "Can\'t schedule resultTo"

    invoke-virtual {v1, v5, v3, v4, v2}, Lcom/android/server/am/psc/ProcessRecordInternal;->killLocked(Ljava/lang/String;IIZ)V

    .line 1727
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    :goto_72
    return-void
.end method

.method public final sendPackageBroadcastLocked(I[Ljava/lang/String;I)V
    .registers 4

    .line 1980
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ProcessList;->sendPackageBroadcastLocked(I[Ljava/lang/String;I)V

    return-void
.end method

.method public startBroadcastObservers()V
    .registers 2

    .line 2196
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/am/BroadcastQueue;->start(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V
    .registers 12

    if-eqz p2, :cond_11

    .line 1775
    invoke-virtual {p2}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_11

    .line 1776
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File descriptors passed in Intent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1779
    :cond_11
    :goto_11
    iget-object p1, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1780
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v6, "removeStickyBroadcast"

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move v3, p3

    .line 1779
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1783
    iget-object p3, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v0, "android.permission.BROADCAST_STICKY"

    invoke-virtual {p3, v0}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_a6

    .line 1792
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 1793
    iget-object v1, p0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1794
    :try_start_3a
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-eqz v0, :cond_8e

    .line 1796
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_83

    .line 1798
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_55
    if-ge v4, v3, :cond_6f

    .line 1801
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    iget-object v5, v5, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    invoke-virtual {p2, v5}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 1802
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_6f

    :catchall_69
    move-exception v0

    move-object p0, v0

    goto :goto_a4

    :cond_6c
    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    .line 1806
    :cond_6f
    :goto_6f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_7c

    .line 1807
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1809
    :cond_7c
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1811
    :cond_83
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result p2

    if-gtz p2, :cond_8e

    .line 1812
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1815
    :cond_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_3a .. :try_end_8f} :catchall_69

    .line 1816
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_95
    if-ltz p0, :cond_a3

    .line 1817
    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/app/BroadcastStickyCache;->invalidateCache(Ljava/lang/String;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_95

    :cond_a3
    return-void

    .line 1815
    :goto_a4
    :try_start_a4
    monitor-exit v1
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_69

    throw p0

    .line 1785
    :cond_a6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Permission Denial: unbroadcastIntent() from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1786
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1787
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " requires "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "android.permission.BROADCAST_STICKY"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1789
    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unregisterReceiver(Landroid/content/IIntentReceiver;)V
    .registers 2

    .line 636
    invoke-static {p1}, Lcom/android/server/am/BroadcastController;->traceUnregistrationBegin(Landroid/content/IIntentReceiver;)V

    .line 638
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastController;->unregisterReceiverTraced(Landroid/content/IIntentReceiver;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 640
    invoke-static {}, Lcom/android/server/am/BroadcastController;->traceUnregistrationEnd()V

    return-void

    :catchall_a
    move-exception p0

    invoke-static {}, Lcom/android/server/am/BroadcastController;->traceUnregistrationEnd()V

    .line 641
    throw p0
.end method

.method public final unregisterReceiverTraced(Landroid/content/IIntentReceiver;)V
    .registers 14

    .line 661
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 664
    :try_start_4
    iget-object v3, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_6b

    .line 665
    :try_start_a
    iget-object v0, p0, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ReceiverList;

    const/4 v0, 0x0

    if-eqz p1, :cond_52

    .line 667
    iget-object v4, p1, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-eqz v4, :cond_35

    .line 669
    iget-object v5, v4, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    iget-object v6, p1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v4, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    iget-object v8, v4, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    iget-object v9, v4, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    iget-boolean v10, v4, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/BroadcastQueue;->finishReceiverLocked(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/os/Bundle;ZZ)Z

    move-result v4

    if-eqz v4, :cond_35

    const/4 v4, 0x1

    goto :goto_36

    :catchall_32
    move-exception v0

    move-object p0, v0

    goto :goto_6e

    :cond_35
    move v4, v0

    .line 676
    :goto_36
    iget-object v5, p1, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_3f

    .line 677
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v5, p1}, Lcom/android/server/am/ProcessReceiverRecord;->removeReceiver(Lcom/android/server/am/ReceiverList;)V

    .line 679
    :cond_3f
    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastController;->removeReceiverLocked(Lcom/android/server/am/ReceiverList;)V

    .line 680
    iget-boolean v5, p1, Lcom/android/server/am/ReceiverList;->linkedToDeath:Z

    if-eqz v5, :cond_53

    .line 681
    iput-boolean v0, p1, Lcom/android/server/am/ReceiverList;->linkedToDeath:Z

    .line 682
    iget-object v5, p1, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v5}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5, p1, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_53

    :cond_52
    move v4, v0

    :cond_53
    :goto_53
    if-eqz v4, :cond_63

    .line 689
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ActivityManagerService;->trimApplicationsLocked(ZI)V

    .line 690
    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_a .. :try_end_5c} :catchall_32

    .line 695
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 692
    :cond_63
    :try_start_63
    monitor-exit v3
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_32

    :try_start_64
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_6b

    .line 695
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_6b
    move-exception v0

    move-object p0, v0

    goto :goto_73

    .line 692
    :goto_6e
    :try_start_6e
    monitor-exit v3
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_32

    :try_start_6f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_6b

    .line 695
    :goto_73
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 696
    throw p0
.end method

.method public final verifyBroadcastLocked(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 5

    if-eqz p1, :cond_15

    .line 1898
    invoke-virtual {p1}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    .line 1902
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtendedFlags(I)V

    goto :goto_15

    .line 1899
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File descriptors passed in Intent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1905
    :cond_15
    :goto_15
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 1907
    iget-object p0, p0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    const-string v1, "ActivityManager"

    if-nez p0, :cond_4e

    const/high16 p0, 0x4000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_27

    goto :goto_4e

    :cond_27
    const/high16 p0, 0x40000000    # 2.0f

    and-int/2addr p0, v0

    if-eqz p0, :cond_2d

    goto :goto_4e

    .line 1913
    :cond_2d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempt to launch receivers of broadcast intent "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " before boot completion"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot broadcast before boot completed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4e
    :goto_4e
    const/high16 p0, 0x2000000

    and-int/2addr p0, v0

    if-nez p0, :cond_7e

    const/high16 p0, 0x400000

    and-int/2addr v0, p0

    if-eqz v0, :cond_7d

    .line 1925
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_7d

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_7d

    .line 1930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing FLAG_RECEIVER_FROM_SHELL because caller is UID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1931
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1930
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    invoke-virtual {p1, p0}, Landroid/content/Intent;->removeFlags(I)V

    :cond_7d
    return-object p1

    .line 1920
    :cond_7e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t use FLAG_RECEIVER_BOOT_UPGRADE here"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeBroadcastsToProtoLocked(Landroid/util/proto/ProtoOutputStream;)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 2464
    iget-object v1, v0, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_2b

    .line 2465
    iget-object v1, v0, Lcom/android/server/am/BroadcastController;->mRegisteredReceivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2466
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 2467
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ReceiverList;

    const-wide v4, 0x20b00000001L

    .line 2468
    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/am/ReceiverList;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_16

    .line 2471
    :cond_2b
    iget-object v1, v0, Lcom/android/server/am/BroadcastController;->mReceiverResolver:Lcom/android/server/am/BroadcastController$BroadcastIntentResolver;

    const-wide v9, 0x10b00000002L

    invoke-virtual {v1, v2, v9, v10}, Lcom/android/server/IntentResolver;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2473
    iget-object v1, v0, Lcom/android/server/am/BroadcastController;->mBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    const-wide v3, 0x20b00000003L

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/BroadcastQueue;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2474
    iget-object v11, v0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    monitor-enter v11

    const/4 v13, 0x0

    .line 2475
    :goto_43
    :try_start_43
    iget-object v1, v0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const-wide v14, 0x10900000001L

    if-ge v13, v1, :cond_fe

    const-wide v3, 0x20b00000004L

    .line 2476
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 2478
    iget-object v1, v0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    const-wide v5, 0x10500000001L

    invoke-virtual {v2, v5, v6, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2480
    iget-object v1, v0, Lcom/android/server/am/BroadcastController;->mStickyBroadcasts:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_77
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ef

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-wide v5, 0x20b00000002L

    .line 2481
    invoke-virtual {v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 2482
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v14, v15, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2483
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_a0
    if-ge v8, v7, :cond_df

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v18, v8, 0x1

    move-object/from16 v8, v17

    check-cast v8, Lcom/android/server/am/BroadcastController$StickyBroadcast;

    .line 2484
    iget-object v8, v8, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    move/from16 v17, v7

    const/4 v7, 0x1

    move-object/from16 v19, v1

    move-object v1, v8

    const/4 v8, 0x0

    move-wide/from16 v20, v3

    const-wide v3, 0x20b00000002L

    move-wide/from16 v22, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    move/from16 v24, v13

    move-wide/from16 v12, v20

    move-wide/from16 v9, v22

    move/from16 v21, v17

    move-object/from16 v17, v19

    invoke-virtual/range {v1 .. v8}, Landroid/content/Intent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JZZZZ)V

    move-wide v5, v9

    move-wide v3, v12

    move-object/from16 v1, v17

    move/from16 v8, v18

    move/from16 v7, v21

    move/from16 v13, v24

    const-wide v9, 0x10b00000002L

    goto :goto_a0

    :catchall_dd
    move-exception v0

    goto :goto_127

    :cond_df
    move-wide v9, v5

    move/from16 v24, v13

    move-wide v12, v3

    .line 2487
    invoke-virtual {v2, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    move-wide v3, v12

    move/from16 v13, v24

    const-wide v9, 0x10b00000002L

    goto :goto_77

    :cond_ef
    move/from16 v24, v13

    move-wide v12, v3

    .line 2489
    invoke-virtual {v2, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v13, v24, 0x1

    const-wide v9, 0x10b00000002L

    goto/16 :goto_43

    .line 2491
    :cond_fe
    monitor-exit v11
    :try_end_ff
    .catchall {:try_start_43 .. :try_end_ff} :catchall_dd

    const-wide v3, 0x10b00000005L

    .line 2493
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 2494
    iget-object v1, v0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    .line 2495
    invoke-virtual {v1}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2494
    invoke-virtual {v2, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2496
    iget-object v0, v0, Lcom/android/server/am/BroadcastController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide v5, 0x10b00000002L

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Looper;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 2498
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void

    .line 2491
    :goto_127
    :try_start_127
    monitor-exit v11
    :try_end_128
    .catchall {:try_start_127 .. :try_end_128} :catchall_dd

    throw v0
.end method
