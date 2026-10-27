.class public Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
.super Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;
.source "CameraDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraDeviceCallbacks"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 2094
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 2098
    return-object p0
.end method

.method public greylist-max-o onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V
    .registers 27
    .param p1, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .param p2, "timestamp"    # J

    .line 2158
    move-object/from16 v9, p0

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    move-result v10

    .line 2159
    .local v10, "requestId":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    move-result-wide v11

    .line 2160
    .local v11, "frameNumber":J
    nop

    .line 2161
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getLastCompletedRegularFrameNumber()J

    move-result-wide v13

    .line 2162
    .local v13, "lastCompletedRegularFrameNumber":J
    nop

    .line 2163
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getLastCompletedReprocessFrameNumber()J

    move-result-wide v6

    .line 2164
    .local v6, "lastCompletedReprocessFrameNumber":J
    nop

    .line 2165
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getLastCompletedZslFrameNumber()J

    move-result-wide v4

    .line 2167
    .local v4, "lastCompletedZslFrameNumber":J
    iget-object v0, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetDEBUG(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 2168
    iget-object v0, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetTAG(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Capture started for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " frame number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": completedRegularFrameNumber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", completedReprocessFrameNUmber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", completedZslFrameNumber "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    :cond_65
    iget-object v0, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2176
    :try_start_6a
    iget-object v0, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRemoteDevice(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move-result-object v0
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_f2

    if-nez v0, :cond_7b

    :try_start_72
    monitor-exit v15
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_74

    return-void

    .line 2238
    :catchall_74
    move-exception v0

    :goto_75
    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    goto/16 :goto_f7

    .line 2181
    :cond_7b
    :try_start_7b
    iget-object v0, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v0
    :try_end_81
    .catchall {:try_start_7b .. :try_end_81} :catchall_f2

    if-eqz v0, :cond_9c

    .line 2182
    :try_start_83
    iget-object v0, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v0
    :try_end_8d
    .catchall {:try_start_83 .. :try_end_8d} :catchall_96

    move-object/from16 v8, p1

    move-wide/from16 v2, p2

    :try_start_91
    invoke-virtual {v0, v8, v2, v3}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onCaptureStarted(Landroid/hardware/camera2/impl/CaptureResultExtras;J)V

    .line 2184
    monitor-exit v15
    :try_end_95
    .catchall {:try_start_91 .. :try_end_95} :catchall_74

    return-void

    .line 2238
    :catchall_96
    move-exception v0

    move-object/from16 v8, p1

    move-wide/from16 v2, p2

    goto :goto_75

    .line 2190
    :cond_9c
    move-object/from16 v8, p1

    move-wide/from16 v2, p2

    :try_start_a0
    iget-object v1, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;
    :try_end_a2
    .catchall {:try_start_a0 .. :try_end_a2} :catchall_f2

    move-wide v2, v13

    move-wide/from16 v16, v4

    .end local v4    # "lastCompletedZslFrameNumber":J
    .local v16, "lastCompletedZslFrameNumber":J
    move-wide v4, v6

    move-wide/from16 v18, v6

    .end local v6    # "lastCompletedReprocessFrameNumber":J
    .local v18, "lastCompletedReprocessFrameNumber":J
    move-wide/from16 v6, v16

    :try_start_aa
    invoke-static/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$mremoveCompletedCallbackHolderLocked(Landroid/hardware/camera2/impl/CameraDeviceImpl;JJJ)V

    .line 2194
    iget-object v0, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmCaptureCallbackMap(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    move-object/from16 v20, v0

    .line 2196
    .local v20, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    if-nez v20, :cond_bf

    .line 2197
    monitor-exit v15

    return-void

    .line 2200
    :cond_bf
    iget-object v0, v9, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v0

    if-eqz v0, :cond_c9

    monitor-exit v15

    return-void

    .line 2203
    :cond_c9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_cd
    .catchall {:try_start_aa .. :try_end_cd} :catchall_f9

    move-wide/from16 v21, v0

    .line 2205
    .local v21, "ident":J
    :try_start_cf
    invoke-virtual/range {v20 .. v20}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v7, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;

    move-object v1, v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, v20

    move-wide/from16 v5, p2

    move-object v9, v7

    move-wide v7, v11

    invoke-direct/range {v1 .. v8}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$1;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CaptureResultExtras;Landroid/hardware/camera2/impl/CaptureCallbackHolder;JJ)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e6
    .catchall {:try_start_cf .. :try_end_e6} :catchall_ec

    .line 2236
    :try_start_e6
    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2237
    nop

    .line 2238
    .end local v21    # "ident":J
    monitor-exit v15

    .line 2239
    return-void

    .line 2236
    .restart local v21    # "ident":J
    :catchall_ec
    move-exception v0

    invoke-static/range {v21 .. v22}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2237
    nop

    .end local v10    # "requestId":I
    .end local v11    # "frameNumber":J
    .end local v13    # "lastCompletedRegularFrameNumber":J
    .end local v16    # "lastCompletedZslFrameNumber":J
    .end local v18    # "lastCompletedReprocessFrameNumber":J
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    .end local p1    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    .end local p2    # "timestamp":J
    throw v0

    .line 2238
    .end local v20    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v21    # "ident":J
    .restart local v4    # "lastCompletedZslFrameNumber":J
    .restart local v6    # "lastCompletedReprocessFrameNumber":J
    .restart local v10    # "requestId":I
    .restart local v11    # "frameNumber":J
    .restart local v13    # "lastCompletedRegularFrameNumber":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    .restart local p1    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    .restart local p2    # "timestamp":J
    :catchall_f2
    move-exception v0

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    .end local v4    # "lastCompletedZslFrameNumber":J
    .end local v6    # "lastCompletedReprocessFrameNumber":J
    .restart local v16    # "lastCompletedZslFrameNumber":J
    .restart local v18    # "lastCompletedReprocessFrameNumber":J
    :goto_f7
    monitor-exit v15
    :try_end_f8
    .catchall {:try_start_e6 .. :try_end_f8} :catchall_f9

    throw v0

    :catchall_f9
    move-exception v0

    goto :goto_f7
.end method

.method public greylist-max-o onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V
    .registers 4
    .param p1, "errorCode"    # I
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;

    .line 2103
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->onDeviceError(ILandroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 2104
    return-void
.end method

.method public greylist-max-o onDeviceIdle()V
    .registers 2

    .line 2153
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->onDeviceIdle()V

    .line 2154
    return-void
.end method

.method public greylist-max-o onPrepared(I)V
    .registers 7
    .param p1, "streamId"    # I

    .line 2420
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetDEBUG(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2421
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetTAG(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stream "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is prepared"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    :cond_2a
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2427
    :try_start_2f
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v1

    if-eqz v1, :cond_46

    .line 2428
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onPrepared(I)V

    .line 2429
    monitor-exit v0

    return-void

    .line 2432
    :cond_46
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmConfiguredOutputs(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 2433
    .local v1, "output":Landroid/hardware/camera2/params/OutputConfiguration;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmSessionStateCallback(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    move-result-object v2

    .line 2434
    .local v2, "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_2f .. :try_end_59} :catchall_84

    .line 2436
    if-nez v2, :cond_5c

    return-void

    .line 2438
    :cond_5c
    if-nez v1, :cond_6b

    .line 2439
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetTAG(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "onPrepared invoked for unknown output Surface"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    return-void

    .line 2442
    :cond_6b
    invoke-virtual {v1}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v0

    .line 2443
    .local v0, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_73
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_83

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    .line 2444
    .local v4, "surface":Landroid/view/Surface;
    invoke-virtual {v2, v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;->onSurfacePrepared(Landroid/view/Surface;)V

    .line 2445
    .end local v4    # "surface":Landroid/view/Surface;
    goto :goto_73

    .line 2446
    :cond_83
    return-void

    .line 2434
    .end local v0    # "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    .end local v1    # "output":Landroid/hardware/camera2/params/OutputConfiguration;
    .end local v2    # "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :catchall_84
    move-exception v1

    :try_start_85
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw v1
.end method

.method public greylist-max-o onRepeatingRequestError(JI)V
    .registers 10
    .param p1, "lastFrameNumber"    # J
    .param p3, "repeatingRequestId"    # I

    .line 2113
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetTAG(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Repeating request error received. Last frame number is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2119
    :try_start_21
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRemoteDevice(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v1, :cond_6e

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v1

    if-ne v1, v3, :cond_34

    goto :goto_6e

    .line 2135
    :cond_34
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 2136
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onRepeatingRequestError(JI)V

    .line 2138
    monitor-exit v0

    return-void

    .line 2141
    :cond_4b
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v4

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRepeatingRequestTypes(Landroid/hardware/camera2/impl/CameraDeviceImpl;)[I

    move-result-object v5

    invoke-static {v1, v4, p1, p2, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$mcheckEarlyTriggerSequenceCompleteLocked(Landroid/hardware/camera2/impl/CameraDeviceImpl;IJ[I)V

    .line 2144
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v1

    if-ne v1, p3, :cond_6c

    .line 2145
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fputmRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;I)V

    .line 2146
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fputmRepeatingRequestTypes(Landroid/hardware/camera2/impl/CameraDeviceImpl;[I)V

    .line 2148
    :cond_6c
    monitor-exit v0

    .line 2149
    return-void

    .line 2120
    :cond_6e
    :goto_6e
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmFailedRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v1

    if-ne v1, p3, :cond_c1

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmFailedRepeatingRequestTypes(Landroid/hardware/camera2/impl/CameraDeviceImpl;)[I

    move-result-object v1

    if-eqz v1, :cond_c1

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRemoteDevice(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move-result-object v1

    if-eqz v1, :cond_c1

    .line 2122
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetTAG(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resuming stop of failed repeating request with id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmFailedRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmFailedRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v4

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmFailedRepeatingRequestTypes(Landroid/hardware/camera2/impl/CameraDeviceImpl;)[I

    move-result-object v5

    invoke-static {v1, v4, p1, p2, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$mcheckEarlyTriggerSequenceCompleteLocked(Landroid/hardware/camera2/impl/CameraDeviceImpl;IJ[I)V

    .line 2127
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fputmFailedRepeatingRequestId(Landroid/hardware/camera2/impl/CameraDeviceImpl;I)V

    .line 2128
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fputmFailedRepeatingRequestTypes(Landroid/hardware/camera2/impl/CameraDeviceImpl;[I)V

    .line 2130
    :cond_c1
    monitor-exit v0

    return-void

    .line 2148
    :catchall_c3
    move-exception v1

    monitor-exit v0
    :try_end_c5
    .catchall {:try_start_21 .. :try_end_c5} :catchall_c3

    throw v1
.end method

.method public greylist-max-o onRequestQueueEmpty()V
    .registers 3

    .line 2452
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetDEBUG(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2453
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetTAG(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Request queue becomes empty"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    :cond_13
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2459
    :try_start_18
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 2460
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onRequestQueueEmpty()V

    .line 2461
    monitor-exit v0

    return-void

    .line 2464
    :cond_2f
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmSessionStateCallback(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    move-result-object v1

    .line 2465
    .local v1, "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_18 .. :try_end_36} :catchall_3d

    .line 2467
    if-nez v1, :cond_39

    return-void

    .line 2469
    :cond_39
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;->onRequestQueueEmpty()V

    .line 2470
    return-void

    .line 2465
    .end local v1    # "sessionCallback":Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method public greylist-max-o onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V
    .registers 34
    .param p1, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "resultExtras"    # Landroid/hardware/camera2/impl/CaptureResultExtras;
    .param p3, "physicalResults"    # [Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2245
    move-object/from16 v13, p0

    move-object/from16 v11, p1

    move-object/from16 v10, p2

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getRequestId()I

    move-result v9

    .line 2246
    .local v9, "requestId":I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getFrameNumber()J

    move-result-wide v14

    .line 2248
    .local v14, "frameNumber":J
    iget-object v0, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetDEBUG(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 2249
    iget-object v0, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetTAG(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received result frame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    :cond_3c
    iget-object v0, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2254
    :try_start_41
    iget-object v0, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmRemoteDevice(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move-result-object v0
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_214

    if-nez v0, :cond_53

    :try_start_49
    monitor-exit v12
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4b

    return-void

    .line 2412
    :catchall_4b
    move-exception v0

    move/from16 v16, v9

    move-wide/from16 v27, v14

    move-object v14, v12

    goto/16 :goto_21a

    .line 2259
    :cond_53
    :try_start_53
    iget-object v0, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v0
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_214

    if-eqz v0, :cond_76

    .line 2260
    :try_start_5b
    iget-object v0, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmOfflineSessionImpl(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v0
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_6c

    move-object/from16 v8, p3

    :try_start_67
    invoke-virtual {v0, v11, v10, v8}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onResultReceived(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V

    .line 2262
    monitor-exit v12
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_4b

    return-void

    .line 2412
    :catchall_6c
    move-exception v0

    move-object/from16 v8, p3

    move/from16 v16, v9

    move-wide/from16 v27, v14

    move-object v14, v12

    goto/16 :goto_21a

    .line 2266
    :cond_76
    move-object/from16 v8, p3

    :try_start_78
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    iget-object v1, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 2267
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$mgetCharacteristics(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_SHADING_MAP_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Size;

    .line 2266
    invoke-virtual {v11, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)V

    .line 2269
    iget-object v0, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmCaptureCallbackMap(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;

    move-result-object v0

    .line 2270
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    move-object v7, v0

    .line 2271
    .local v7, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getRequest(I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    move-object v6, v0

    .line 2273
    .local v6, "request":Landroid/hardware/camera2/CaptureRequest;
    nop

    .line 2274
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getPartialResultCount()I

    move-result v0

    iget-object v1, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmTotalPartialCount(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I

    move-result v1

    if-ge v0, v1, :cond_b0

    const/4 v0, 0x1

    goto :goto_b1

    :cond_b0
    const/4 v0, 0x0

    :goto_b1
    move/from16 v29, v0

    .line 2275
    .local v29, "isPartialResult":Z
    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest;->getRequestType()I

    move-result v26
    :try_end_b7
    .catchall {:try_start_78 .. :try_end_b7} :catchall_214

    .line 2278
    .local v26, "requestType":I
    if-nez v7, :cond_ee

    .line 2279
    :try_start_b9
    iget-object v0, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetDEBUG(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 2280
    iget-object v0, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetTAG(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "holder is null, early return at frame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    :cond_dd
    iget-object v0, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    const/16 v27, 0x0

    move-object/from16 v22, v0

    move/from16 v23, v9

    move-wide/from16 v24, v14

    move/from16 v28, v29

    invoke-static/range {v22 .. v28}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$mupdateTracker(Landroid/hardware/camera2/impl/CameraDeviceImpl;IJILandroid/hardware/camera2/CaptureResult;Z)V

    .line 2288
    monitor-exit v12
    :try_end_ed
    .catchall {:try_start_b9 .. :try_end_ed} :catchall_4b

    return-void

    .line 2291
    :cond_ee
    :try_start_ee
    iget-object v0, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v0
    :try_end_f4
    .catchall {:try_start_ee .. :try_end_f4} :catchall_214

    if-eqz v0, :cond_136

    .line 2292
    :try_start_f6
    iget-object v0, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetDEBUG(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z

    move-result v0
    :try_end_fc
    .catchall {:try_start_f6 .. :try_end_fc} :catchall_12e

    if-eqz v0, :cond_11a

    .line 2293
    :try_start_fe
    iget-object v0, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetTAG(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camera is closed, early return at frame "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11a
    .catchall {:try_start_fe .. :try_end_11a} :catchall_4b

    .line 2298
    :cond_11a
    :try_start_11a
    iget-object v1, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;
    :try_end_11c
    .catchall {:try_start_11a .. :try_end_11c} :catchall_12e

    const/4 v0, 0x0

    move v2, v9

    move-wide v3, v14

    move/from16 v5, v26

    move/from16 v22, v9

    move-object v9, v6

    .end local v6    # "request":Landroid/hardware/camera2/CaptureRequest;
    .local v9, "request":Landroid/hardware/camera2/CaptureRequest;
    .local v22, "requestId":I
    move-object v6, v0

    move-object/from16 v23, v7

    .end local v7    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .local v23, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    move/from16 v7, v29

    :try_start_129
    invoke-static/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$mupdateTracker(Landroid/hardware/camera2/impl/CameraDeviceImpl;IJILandroid/hardware/camera2/CaptureResult;Z)V

    .line 2301
    monitor-exit v12
    :try_end_12d
    .catchall {:try_start_129 .. :try_end_12d} :catchall_14a

    return-void

    .line 2412
    .end local v22    # "requestId":I
    .end local v23    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v26    # "requestType":I
    .end local v29    # "isPartialResult":Z
    .local v9, "requestId":I
    :catchall_12e
    move-exception v0

    move/from16 v16, v9

    move-wide/from16 v27, v14

    move-object v14, v12

    .end local v9    # "requestId":I
    .restart local v22    # "requestId":I
    goto/16 :goto_21a

    .line 2305
    .end local v22    # "requestId":I
    .restart local v6    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v7    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .restart local v9    # "requestId":I
    .restart local v26    # "requestType":I
    .restart local v29    # "isPartialResult":Z
    :cond_136
    move-object/from16 v23, v7

    move/from16 v22, v9

    move-object v9, v6

    .end local v6    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v7    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .local v9, "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v22    # "requestId":I
    .restart local v23    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    const/4 v0, 0x0

    .line 2311
    .local v0, "resultDispatch":Ljava/lang/Runnable;
    :try_start_13c
    invoke-virtual/range {v23 .. v23}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->hasBatchedOutputs()Z

    move-result v1
    :try_end_140
    .catchall {:try_start_13c .. :try_end_140} :catchall_20d

    if-eqz v1, :cond_152

    .line 2312
    :try_start_142
    new-instance v1, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v1, v11}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    move-object/from16 v24, v1

    .local v1, "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    goto :goto_155

    .line 2412
    .end local v0    # "resultDispatch":Ljava/lang/Runnable;
    .end local v1    # "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v9    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v23    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v26    # "requestType":I
    .end local v29    # "isPartialResult":Z
    :catchall_14a
    move-exception v0

    move-wide/from16 v27, v14

    move/from16 v16, v22

    move-object v14, v12

    goto/16 :goto_21a

    .line 2314
    .restart local v0    # "resultDispatch":Ljava/lang/Runnable;
    .restart local v9    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v23    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .restart local v26    # "requestType":I
    .restart local v29    # "isPartialResult":Z
    :cond_152
    const/4 v1, 0x0

    move-object/from16 v24, v1

    .line 2318
    .local v24, "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :goto_155
    if-eqz v29, :cond_17f

    .line 2319
    new-instance v7, Landroid/hardware/camera2/CaptureResult;

    iget-object v1, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    .line 2320
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1, v11, v9, v10}, Landroid/hardware/camera2/CaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    .line 2322
    .local v7, "resultAsCapture":Landroid/hardware/camera2/CaptureResult;
    new-instance v16, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    move-object/from16 v5, p2

    move-object v6, v9

    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$2;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    :try_end_172
    .catchall {:try_start_142 .. :try_end_172} :catchall_14a

    move-object/from16 v0, v16

    .line 2349
    move-object v1, v7

    .line 2350
    .end local v7    # "resultAsCapture":Landroid/hardware/camera2/CaptureResult;
    .local v1, "finalResult":Landroid/hardware/camera2/CaptureResult;
    move-object v8, v0

    move-object/from16 v17, v9

    move-wide/from16 v27, v14

    move/from16 v16, v22

    move-object v9, v1

    move-object v14, v12

    goto :goto_1d9

    .line 2351
    .end local v1    # "finalResult":Landroid/hardware/camera2/CaptureResult;
    :cond_17f
    :try_start_17f
    iget-object v1, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$fgetmFrameNumberTracker(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/FrameNumberTracker;

    move-result-object v1

    .line 2352
    invoke-virtual {v1, v14, v15}, Landroid/hardware/camera2/impl/FrameNumberTracker;->popPartialResults(J)Ljava/util/List;

    move-result-object v19

    .line 2354
    .local v19, "partialResults":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    .line 2355
    invoke-virtual {v11, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 2356
    .local v5, "sensorTimestamp":J
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2357
    invoke-virtual {v9, v1}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    move-object v8, v1

    .line 2358
    .local v8, "fpsRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/impl/CaptureResultExtras;->getSubsequenceId()I

    move-result v7

    .line 2359
    .local v7, "subsequenceId":I
    new-instance v1, Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v2, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getId()Ljava/lang/String;

    move-result-object v2

    .line 2360
    invoke-virtual/range {v23 .. v23}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getSessionId()I

    move-result v20
    :try_end_1ae
    .catchall {:try_start_17f .. :try_end_1ae} :catchall_20d

    move-wide/from16 v27, v14

    .end local v14    # "frameNumber":J
    .local v27, "frameNumber":J
    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, p1

    move-object/from16 v17, v9

    move-object/from16 v18, p2

    move-object/from16 v21, p3

    :try_start_1ba
    invoke-direct/range {v14 .. v21}, Landroid/hardware/camera2/TotalCaptureResult;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CaptureResultExtras;Ljava/util/List;I[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;)V
    :try_end_1bd
    .catchall {:try_start_1ba .. :try_end_1bd} :catchall_208

    move-object v14, v12

    move-object v12, v1

    .line 2363
    .local v12, "resultAsCapture":Landroid/hardware/camera2/TotalCaptureResult;
    :try_start_1bf
    new-instance v15, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$3;
    :try_end_1c1
    .catchall {:try_start_1bf .. :try_end_1c1} :catchall_206

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    move-object/from16 v17, v9

    move/from16 v16, v22

    .end local v9    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v22    # "requestId":I
    .local v16, "requestId":I
    .local v17, "request":Landroid/hardware/camera2/CaptureRequest;
    move-object/from16 v9, p2

    move-object/from16 v10, v19

    move-object/from16 v11, v17

    :try_start_1d2
    invoke-direct/range {v1 .. v12}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks$3;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;Landroid/hardware/camera2/impl/CaptureCallbackHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;JILandroid/util/Range;Landroid/hardware/camera2/impl/CaptureResultExtras;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V

    move-object v0, v15

    .line 2396
    move-object v1, v12

    move-object v8, v0

    move-object v9, v1

    .line 2399
    .end local v0    # "resultDispatch":Ljava/lang/Runnable;
    .end local v5    # "sensorTimestamp":J
    .end local v7    # "subsequenceId":I
    .end local v12    # "resultAsCapture":Landroid/hardware/camera2/TotalCaptureResult;
    .end local v19    # "partialResults":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureResult;>;"
    .local v8, "resultDispatch":Ljava/lang/Runnable;
    .local v9, "finalResult":Landroid/hardware/camera2/CaptureResult;
    :goto_1d9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_1dd
    .catchall {:try_start_1d2 .. :try_end_1dd} :catchall_21c

    move-wide v10, v0

    .line 2401
    .local v10, "ident":J
    :try_start_1de
    invoke-virtual/range {v23 .. v23}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1e5
    .catchall {:try_start_1de .. :try_end_1e5} :catchall_200

    .line 2403
    :try_start_1e5
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2404
    nop

    .line 2406
    iget-object v1, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    move/from16 v2, v16

    move-wide/from16 v3, v27

    move/from16 v5, v26

    move-object v6, v9

    move/from16 v7, v29

    invoke-static/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$mupdateTracker(Landroid/hardware/camera2/impl/CameraDeviceImpl;IJILandroid/hardware/camera2/CaptureResult;Z)V

    .line 2409
    if-nez v29, :cond_1fe

    .line 2410
    iget-object v0, v13, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-$$Nest$mcheckAndFireSequenceComplete(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    .line 2412
    .end local v8    # "resultDispatch":Ljava/lang/Runnable;
    .end local v9    # "finalResult":Landroid/hardware/camera2/CaptureResult;
    .end local v10    # "ident":J
    .end local v17    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v23    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v24    # "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v26    # "requestType":I
    .end local v29    # "isPartialResult":Z
    :cond_1fe
    monitor-exit v14

    .line 2413
    return-void

    .line 2403
    .restart local v8    # "resultDispatch":Ljava/lang/Runnable;
    .restart local v9    # "finalResult":Landroid/hardware/camera2/CaptureResult;
    .restart local v10    # "ident":J
    .restart local v17    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local v23    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .restart local v24    # "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local v26    # "requestType":I
    .restart local v29    # "isPartialResult":Z
    :catchall_200
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2404
    nop

    .end local v16    # "requestId":I
    .end local v27    # "frameNumber":J
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    .end local p1    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local p2    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    .end local p3    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    throw v0

    .line 2412
    .end local v8    # "resultDispatch":Ljava/lang/Runnable;
    .end local v9    # "finalResult":Landroid/hardware/camera2/CaptureResult;
    .end local v10    # "ident":J
    .end local v17    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local v23    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v24    # "resultCopy":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v26    # "requestType":I
    .end local v29    # "isPartialResult":Z
    .restart local v22    # "requestId":I
    .restart local v27    # "frameNumber":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    .restart local p1    # "result":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .restart local p2    # "resultExtras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    .restart local p3    # "physicalResults":[Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;
    :catchall_206
    move-exception v0

    goto :goto_20a

    :catchall_208
    move-exception v0

    move-object v14, v12

    :goto_20a
    move/from16 v16, v22

    .end local v22    # "requestId":I
    .restart local v16    # "requestId":I
    goto :goto_21a

    .end local v16    # "requestId":I
    .end local v27    # "frameNumber":J
    .restart local v14    # "frameNumber":J
    .restart local v22    # "requestId":I
    :catchall_20d
    move-exception v0

    move-wide/from16 v27, v14

    move/from16 v16, v22

    move-object v14, v12

    .end local v14    # "frameNumber":J
    .end local v22    # "requestId":I
    .restart local v16    # "requestId":I
    .restart local v27    # "frameNumber":J
    goto :goto_21a

    .end local v16    # "requestId":I
    .end local v27    # "frameNumber":J
    .local v9, "requestId":I
    .restart local v14    # "frameNumber":J
    :catchall_214
    move-exception v0

    move/from16 v16, v9

    move-wide/from16 v27, v14

    move-object v14, v12

    .end local v9    # "requestId":I
    .end local v14    # "frameNumber":J
    .restart local v16    # "requestId":I
    .restart local v27    # "frameNumber":J
    :goto_21a
    monitor-exit v14
    :try_end_21b
    .catchall {:try_start_1e5 .. :try_end_21b} :catchall_21c

    throw v0

    :catchall_21c
    move-exception v0

    goto :goto_21a
.end method
