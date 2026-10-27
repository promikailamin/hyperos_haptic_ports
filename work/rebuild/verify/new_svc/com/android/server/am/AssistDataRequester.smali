.class public Lcom/android/server/am/AssistDataRequester;
.super Landroid/app/IAssistDataReceiver$Stub;
.source "AssistDataRequester.java"


# instance fields
.field public mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field public mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mAssistData:Ljava/util/ArrayList;

.field public final mAssistScreenshot:Ljava/util/ArrayList;

.field public mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

.field public mCallbacksLock:Ljava/lang/Object;

.field public mCanceled:Z

.field public mContext:Landroid/content/Context;

.field public mPendingDataCount:I

.field public mPendingScreenshotCount:I

.field public mRequestScreenshotAppOps:I

.field public mRequestStructureAppOps:I

.field public mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/app/AppOpsManager;Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;Ljava/lang/Object;II)V
    .registers 9

    .line 138
    invoke-direct {p0}, Landroid/app/IAssistDataReceiver$Stub;-><init>()V

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    .line 139
    iput-object p4, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    .line 140
    iput-object p5, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacksLock:Ljava/lang/Object;

    .line 141
    iput-object p2, p0, Lcom/android/server/am/AssistDataRequester;->mWindowManager:Landroid/view/IWindowManager;

    .line 142
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/AssistDataRequester;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 143
    iput-object p1, p0, Lcom/android/server/am/AssistDataRequester;->mContext:Landroid/content/Context;

    .line 144
    iput-object p3, p0, Lcom/android/server/am/AssistDataRequester;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 145
    iput p6, p0, Lcom/android/server/am/AssistDataRequester;->mRequestStructureAppOps:I

    .line 146
    iput p7, p0, Lcom/android/server/am/AssistDataRequester;->mRequestScreenshotAppOps:I

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    .line 365
    iput-boolean v0, p0, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    const/4 v0, 0x0

    .line 366
    iput v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    .line 367
    iput v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 368
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 369
    iget-object p0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final dispatchAssistDataReceived(Landroid/os/Bundle;)V
    .registers 5

    if-eqz p1, :cond_a

    .line 416
    const-string/jumbo v0, "receiverExtras"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_1a

    .line 418
    const-string v1, "index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 419
    const-string v2, "count"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1c

    :cond_1a
    const/4 v1, 0x0

    move v0, v1

    .line 421
    :goto_1c
    iget-object p0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {p0, p1, v1, v0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->onAssistDataReceivedLocked(Landroid/os/Bundle;II)V

    return-void
.end method

.method public final dispatchAssistScreenshotReceived(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 425
    iget-object p0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {p0, p1}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->onAssistScreenshotReceivedLocked(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 436
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingDataCount="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 437
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAssistData="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 438
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingScreenshotCount="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 439
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p1, "mAssistScreenshot="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public final flushPendingAssistData()V
    .registers 5

    .line 339
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_18

    .line 341
    iget-object v3, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {p0, v3}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 343
    :cond_18
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 344
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_23
    if-ge v1, v0, :cond_33

    .line 346
    iget-object v2, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistScreenshotReceived(Landroid/graphics/Bitmap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 348
    :cond_33
    iget-object p0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getPendingDataCount()I
    .registers 1

    .line 352
    iget p0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    return p0
.end method

.method public getPendingScreenshotCount()I
    .registers 1

    .line 356
    iget p0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    return p0
.end method

.method public onHandleAssistData(Landroid/os/Bundle;)V
    .registers 4

    .line 374
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    if-eqz v1, :cond_b

    .line 376
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_2a

    .line 378
    :cond_b
    iget v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    .line 380
    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v1}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 382
    invoke-virtual {p0}, Lcom/android/server/am/AssistDataRequester;->flushPendingAssistData()V

    .line 383
    invoke-virtual {p0, p1}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    .line 384
    invoke-virtual {p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    goto :goto_28

    .line 387
    :cond_23
    iget-object p0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    :goto_28
    monitor-exit v0

    return-void

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_9

    throw p0
.end method

.method public onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 394
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 395
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    if-eqz v1, :cond_b

    .line 396
    monitor-exit v0

    return-void

    :catchall_9
    move-exception p0

    goto :goto_2a

    .line 398
    :cond_b
    iget v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 400
    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v1}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 402
    invoke-virtual {p0}, Lcom/android/server/am/AssistDataRequester;->flushPendingAssistData()V

    .line 403
    invoke-virtual {p0, p1}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistScreenshotReceived(Landroid/graphics/Bitmap;)V

    .line 404
    invoke-virtual {p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    goto :goto_28

    .line 407
    :cond_23
    iget-object p0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    :goto_28
    monitor-exit v0

    return-void

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_9

    throw p0
.end method

.method public processPendingAssistData()V
    .registers 1

    .line 334
    invoke-virtual {p0}, Lcom/android/server/am/AssistDataRequester;->flushPendingAssistData()V

    .line 335
    invoke-virtual {p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    return-void
.end method

.method public requestAssistData(Ljava/util/List;ZZZZILjava/lang/String;Ljava/lang/String;)V
    .registers 20

    const/4 v4, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 160
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/am/AssistDataRequester;->requestAssistData(Ljava/util/List;ZZZZZZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestAssistData(Ljava/util/List;ZZZZZZILjava/lang/String;Ljava/lang/String;)V
    .registers 23

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 176
    invoke-virtual/range {v0 .. v11}, Lcom/android/server/am/AssistDataRequester;->requestData(Ljava/util/List;ZZZZZZZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final requestData(Ljava/util/List;ZZZZZZZILjava/lang/String;Ljava/lang/String;)V
    .registers 30

    move-object/from16 v2, p0

    move-object/from16 v7, p1

    .line 215
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-static/range {p10 .. p10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 221
    invoke-virtual {v2}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    return-void

    .line 228
    :cond_14
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 229
    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isAssistDataForActivitiesAllowed(Ljava/util/List;)Z

    move-result v0

    and-int v1, p6, v0

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz p3, :cond_2f

    if-eqz v0, :cond_2f

    .line 240
    iget v0, v2, Lcom/android/server/am/AssistDataRequester;->mRequestScreenshotAppOps:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2f

    move v0, v8

    goto :goto_30

    :cond_2f
    move v0, v9

    :goto_30
    and-int v10, p7, v0

    .line 243
    iput-boolean v9, v2, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    .line 244
    iput v9, v2, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    .line 245
    iput v9, v2, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 246
    iget-object v0, v2, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 247
    iget-object v0, v2, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v11, 0x0

    if-eqz p3, :cond_cf

    .line 250
    iget-object v12, v2, Lcom/android/server/am/AssistDataRequester;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v13, v2, Lcom/android/server/am/AssistDataRequester;->mRequestStructureAppOps:I

    const/16 v17, 0x0

    move/from16 v14, p9

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    invoke-virtual/range {v12 .. v17}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_bd

    if-eqz v1, :cond_bd

    .line 253
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    move v13, v9

    :goto_5e
    if-ge v13, v12, :cond_cf

    .line 255
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/IBinder;

    .line 257
    :try_start_67
    iget-object v0, v2, Lcom/android/server/am/AssistDataRequester;->mContext:Landroid/content/Context;

    const-string v1, "assist_with_context"

    invoke-static {v0, v1, v8}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 258
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 259
    const-string v0, "index"

    invoke-virtual {v3, v0, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 260
    const-string v0, "count"

    invoke-virtual {v3, v0, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_86

    .line 263
    iget-object v0, v2, Lcom/android/server/am/AssistDataRequester;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v0, v2, v3, v4, v9}, Landroid/app/IActivityTaskManager;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result v0

    goto :goto_9e

    :cond_86
    if-eqz p5, :cond_8a

    move v1, v8

    goto :goto_8c

    :cond_8a
    const/4 v0, 0x3

    move v1, v0

    .line 268
    :goto_8c
    iget-object v0, v2, Lcom/android/server/am/AssistDataRequester;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    if-nez v13, :cond_94

    if-nez p8, :cond_94

    move v5, v8

    goto :goto_95

    :cond_94
    move v5, v9

    :goto_95
    if-nez v13, :cond_99

    move v6, v8

    goto :goto_9a

    :cond_99
    move v6, v9

    :goto_9a
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityTaskManager;->requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    move-result v0

    :goto_9e
    if-eqz v0, :cond_a6

    .line 274
    iget v0, v2, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    add-int/2addr v0, v8

    iput v0, v2, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    goto :goto_ba

    :cond_a6
    if-nez v13, :cond_ba

    .line 277
    iget-object v0, v2, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 278
    invoke-virtual {v2, v11}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    goto :goto_ce

    .line 280
    :cond_b4
    iget-object v0, v2, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b9
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_b9} :catch_ba

    goto :goto_ce

    :catch_ba
    :cond_ba
    :goto_ba
    add-int/lit8 v13, v13, 0x1

    goto :goto_5e

    .line 291
    :cond_bd
    iget-object v0, v2, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 292
    invoke-virtual {v2, v11}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    goto :goto_ce

    .line 294
    :cond_c9
    iget-object v0, v2, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_ce
    move v10, v9

    :cond_cf
    if-eqz p4, :cond_119

    .line 301
    iget-object v0, v2, Lcom/android/server/am/AssistDataRequester;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, v2, Lcom/android/server/am/AssistDataRequester;->mRequestScreenshotAppOps:I

    const/4 v3, 0x0

    move/from16 p4, p9

    move-object/from16 p5, p10

    move-object/from16 p6, p11

    move-object/from16 p2, v0

    move/from16 p3, v1

    move-object/from16 p7, v3

    invoke-virtual/range {p2 .. p7}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_108

    if-eqz v10, :cond_108

    .line 304
    iget-object v0, v2, Lcom/android/server/am/AssistDataRequester;->mContext:Landroid/content/Context;

    const-string v1, "assist_with_screen"

    invoke-static {v0, v1, v8}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 305
    iget v0, v2, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    add-int/2addr v0, v8

    iput v0, v2, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 307
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 308
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 307
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerInternal;->requestAssistScreenshot(Landroid/app/IAssistDataReceiver;Landroid/os/IBinder;)V

    goto :goto_119

    .line 317
    :cond_108
    iget-object v0, v2, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v0

    if-eqz v0, :cond_114

    .line 318
    invoke-virtual {v2, v11}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistScreenshotReceived(Landroid/graphics/Bitmap;)V

    goto :goto_119

    .line 320
    :cond_114
    iget-object v0, v2, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_119
    :goto_119
    invoke-virtual {v2}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    return-void
.end method

.method public final tryDispatchRequestComplete()V
    .registers 2

    .line 429
    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    if-nez v0, :cond_1d

    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    .line 430
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 431
    iget-object p0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {p0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->onAssistRequestCompleted()V

    :cond_1d
    return-void
.end method
