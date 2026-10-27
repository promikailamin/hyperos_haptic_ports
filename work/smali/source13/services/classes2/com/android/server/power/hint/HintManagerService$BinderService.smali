.class final Lcom/android/server/power/hint/HintManagerService$BinderService;
.super Landroid/os/IHintManager$Stub;
.source "HintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/hint/HintManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/hint/HintManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/hint/HintManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/power/hint/HintManagerService;

    .line 303
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-direct {p0}, Landroid/os/IHintManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public createHintSession(Landroid/os/IBinder;[IJ)Landroid/os/IHintSession;
    .registers 26
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "tids"    # [I
    .param p3, "durationNanos"    # J

    .line 306
    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$misHalSupported(Lcom/android/server/power/hint/HintManagerService;)Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_10

    return-object v8

    .line 308
    :cond_10
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-static/range {p2 .. p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    array-length v0, v13

    const/4 v14, 0x1

    if-eqz v0, :cond_1c

    move v0, v14

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    const-string/jumbo v2, "tids should not be empty."

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 313
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 314
    .local v15, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v10

    .line 315
    .local v10, "callingTgid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 317
    .local v16, "identity":J
    :try_start_33
    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0, v15, v10, v13}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$mcheckTidValid(Lcom/android/server/power/hint/HintManagerService;II[I)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 321
    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object v2

    move v3, v10

    move v4, v15

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halCreateHintSession(II[IJ)J

    move-result-wide v2
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_c1

    move-wide/from16 v18, v2

    .line 323
    .local v18, "halSessionPtr":J
    const-wide/16 v2, 0x0

    cmp-long v0, v18, v2

    if-nez v0, :cond_58

    .line 324
    nop

    .line 345
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 324
    return-object v8

    .line 327
    :cond_58
    :try_start_58
    new-instance v0, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    iget-object v3, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_c1

    move-object v2, v0

    move v4, v15

    move v5, v10

    move-object/from16 v6, p2

    move-object/from16 v7, p1

    move-wide/from16 v8, v18

    move/from16 v20, v10

    .end local v10    # "callingTgid":I
    .local v20, "callingTgid":I
    move-wide/from16 v10, p3

    :try_start_69
    invoke-direct/range {v2 .. v11}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;-><init>(Lcom/android/server/power/hint/HintManagerService;II[ILandroid/os/IBinder;JJ)V

    move-object v2, v0

    .line 329
    .local v2, "hs":Lcom/android/server/power/hint/HintManagerService$AppHintSession;
    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_74
    .catchall {:try_start_69 .. :try_end_74} :catchall_bf

    .line 330
    :try_start_74
    iget-object v0, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    .line 331
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 332
    .local v0, "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    if-nez v0, :cond_99

    .line 333
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v14}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v0, v4

    .line 334
    iget-object v4, v1, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v4}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_99
    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 337
    .local v4, "sessionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    if-nez v4, :cond_aa

    .line 338
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5, v14}, Landroid/util/ArraySet;-><init>(I)V

    move-object v4, v5

    .line 339
    invoke-virtual {v0, v12, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_aa
    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 342
    monitor-exit v3
    :try_end_ae
    .catchall {:try_start_74 .. :try_end_ae} :catchall_b2

    .line 345
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 342
    return-object v2

    .line 343
    .end local v0    # "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    .end local v4    # "sessionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    :catchall_b2
    move-exception v0

    :try_start_b3
    monitor-exit v3
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    .end local v15    # "callingUid":I
    .end local v16    # "identity":J
    .end local v20    # "callingTgid":I
    .end local p0    # "this":Lcom/android/server/power/hint/HintManagerService$BinderService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "tids":[I
    .end local p3    # "durationNanos":J
    :try_start_b4
    throw v0

    .line 318
    .end local v2    # "hs":Lcom/android/server/power/hint/HintManagerService$AppHintSession;
    .end local v18    # "halSessionPtr":J
    .restart local v10    # "callingTgid":I
    .restart local v15    # "callingUid":I
    .restart local v16    # "identity":J
    .restart local p0    # "this":Lcom/android/server/power/hint/HintManagerService$BinderService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "tids":[I
    .restart local p3    # "durationNanos":J
    :cond_b5
    move/from16 v20, v10

    .end local v10    # "callingTgid":I
    .restart local v20    # "callingTgid":I
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Some tid doesn\'t belong to the application"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v15    # "callingUid":I
    .end local v16    # "identity":J
    .end local v20    # "callingTgid":I
    .end local p0    # "this":Lcom/android/server/power/hint/HintManagerService$BinderService;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "tids":[I
    .end local p3    # "durationNanos":J
    throw v0
    :try_end_bf
    .catchall {:try_start_b4 .. :try_end_bf} :catchall_bf

    .line 345
    .restart local v15    # "callingUid":I
    .restart local v16    # "identity":J
    .restart local v20    # "callingTgid":I
    .restart local p0    # "this":Lcom/android/server/power/hint/HintManagerService$BinderService;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "tids":[I
    .restart local p3    # "durationNanos":J
    :catchall_bf
    move-exception v0

    goto :goto_c4

    .end local v20    # "callingTgid":I
    .restart local v10    # "callingTgid":I
    :catchall_c1
    move-exception v0

    move/from16 v20, v10

    .end local v10    # "callingTgid":I
    .restart local v20    # "callingTgid":I
    :goto_c4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 346
    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/hint/HintManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "HintManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 357
    return-void

    .line 359
    :cond_f
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v0}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 360
    :try_start_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HintSessionPreferredRate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-wide v2, v2, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HAL Support: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$misHalSupported(Lcom/android/server/power/hint/HintManagerService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    const-string v1, "Active Sessions:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_52
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_c3

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v3}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 365
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    invoke-static {v2}, Lcom/android/server/power/hint/HintManagerService;->-$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    .line 366
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 367
    .local v2, "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_97
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_c0

    .line 368
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 369
    .local v4, "sessionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_a4
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v6

    if-ge v5, v6, :cond_bd

    .line 370
    const-string v6, "  Session:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    const-string v7, "    "

    invoke-static {v6, p2, v7}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->-$$Nest$mdump(Lcom/android/server/power/hint/HintManagerService$AppHintSession;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 369
    add-int/lit8 v5, v5, 0x1

    goto :goto_a4

    .line 367
    .end local v4    # "sessionSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;"
    .end local v5    # "k":I
    :cond_bd
    add-int/lit8 v3, v3, 0x1

    goto :goto_97

    .line 363
    .end local v2    # "tokenMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Landroid/util/ArraySet<Lcom/android/server/power/hint/HintManagerService$AppHintSession;>;>;"
    .end local v3    # "j":I
    :cond_c0
    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    .line 375
    .end local v1    # "i":I
    :cond_c3
    monitor-exit v0

    .line 376
    return-void

    .line 375
    :catchall_c5
    move-exception v1

    monitor-exit v0
    :try_end_c7
    .catchall {:try_start_16 .. :try_end_c7} :catchall_c5

    throw v1
.end method

.method public getHintSessionPreferredRate()J
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService$BinderService;->this$0:Lcom/android/server/power/hint/HintManagerService;

    iget-wide v0, v0, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    return-wide v0
.end method
