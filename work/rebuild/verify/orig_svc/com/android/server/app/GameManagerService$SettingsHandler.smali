.class public Lcom/android/server/app/GameManagerService$SettingsHandler;
.super Landroid/os/Handler;
.source "GameManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameManagerService;Landroid/os/Looper;)V
    .registers 3

    .line 305
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 306
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public doHandleMessage(Landroid/os/Message;)V
    .registers 16

    .line 315
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x10

    const/16 v2, 0xa

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_29c

    goto/16 :goto_174

    .line 436
    :pswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-gez v0, :cond_41

    .line 438
    const-string v2, "GameManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to write setting for invalid user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 440
    :try_start_36
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 441
    monitor-exit v3

    return-void

    :catchall_3d
    move-exception v0

    move-object p0, v0

    monitor-exit v3
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_3d

    throw p0

    .line 445
    :cond_41
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 446
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 447
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p0, v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$mwriteGameModeInterventionsToFile(Lcom/android/server/app/GameManagerService;I)V

    .line 448
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    .line 431
    :pswitch_52
    const-string p1, "GameManagerService"

    const-string v0, "Game loading power mode OFF (loading boost ended)"

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/app/GameManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object p0

    invoke-virtual {p0, v1, v5}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    return-void

    .line 376
    :pswitch_63
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/GameState;

    .line 377
    invoke-virtual {v0}, Landroid/app/GameState;->isLoading()Z

    move-result v11

    .line 378
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 379
    const-string/jumbo v2, "packageName"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 380
    const-string/jumbo v2, "userId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 383
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 384
    invoke-virtual {v2, v7, p1}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_87

    move v9, v4

    goto :goto_88

    :cond_87
    move v9, v5

    .line 387
    :goto_88
    :try_start_88
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v2}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/app/GameManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v7, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_92
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_88 .. :try_end_92} :catch_94

    :goto_92
    move v8, v2

    goto :goto_9d

    .line 389
    :catch_94
    const-string v2, "GameManagerService"

    const-string v3, "Failed to get package metadata"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_92

    .line 393
    :goto_9d
    invoke-virtual {v0}, Landroid/app/GameState;->getMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/app/GameManagerService;->-$$Nest$smgameStateModeToStatsdGameState(I)I

    move-result v10

    .line 394
    invoke-virtual {v0}, Landroid/app/GameState;->getLabel()I

    move-result v12

    invoke-virtual {v0}, Landroid/app/GameState;->getQuality()I

    move-result v13

    const/16 v6, 0x1ad

    .line 392
    invoke-static/range {v6 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IZIZII)V

    if-eqz v9, :cond_12a

    .line 397
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v2}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/app/GameManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object v2

    if-nez v2, :cond_dc

    .line 398
    const-string p0, "GameManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error setting loading mode for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and userId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_174

    .line 402
    :cond_dc
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v2, v2, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_ee

    .line 403
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v2, v2, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 405
    :cond_ee
    const-string v2, "GameManagerService"

    const-string v4, "Game loading power mode %s (game state change isLoading=%b)"

    if-eqz v11, :cond_f7

    .line 407
    const-string v5, "ON"

    goto :goto_f9

    :cond_f7
    const-string v5, "OFF"

    :goto_f9
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 405
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v2}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/app/GameManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object v2

    invoke-virtual {v2, v1, v11}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    if-eqz v11, :cond_12a

    .line 410
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-virtual {v1, v7, p1}, Lcom/android/server/app/GameManagerService;->getLoadingBoostDuration(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_11c

    goto :goto_11e

    :cond_11c
    const/16 v1, 0x1388

    .line 413
    :goto_11e
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    iget-object v2, v2, Lcom/android/server/app/GameManagerService;->mHandler:Landroid/os/Handler;

    .line 414
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    int-to-long v4, v1

    .line 413
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 418
    :cond_12a
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmGameStateListenerLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 419
    :try_start_131
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v2}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmGameStateListeners(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_173

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/IGameStateListener;
    :try_end_14b
    .catchall {:try_start_131 .. :try_end_14b} :catchall_14f

    .line 421
    :try_start_14b
    invoke-interface {v3, v7, v0, p1}, Landroid/app/IGameStateListener;->onGameStateChanged(Ljava/lang/String;Landroid/app/GameState;I)V
    :try_end_14e
    .catch Landroid/os/RemoteException; {:try_start_14b .. :try_end_14e} :catch_152
    .catchall {:try_start_14b .. :try_end_14e} :catchall_14f

    goto :goto_13f

    :catchall_14f
    move-exception v0

    move-object p0, v0

    goto :goto_175

    .line 423
    :catch_152
    :try_start_152
    const-string v4, "GameManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot notify game state change for listener added by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v6}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmGameStateListeners(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v6

    .line 424
    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 423
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13f

    .line 427
    :cond_173
    monitor-exit v1

    :goto_174
    return-void

    :goto_175
    monitor-exit v1
    :try_end_176
    .catchall {:try_start_152 .. :try_end_176} :catchall_14f

    throw p0

    :pswitch_177
    const/4 v0, 0x3

    .line 361
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 362
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 363
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 364
    :try_start_18c
    iget-object v2, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v2}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b1

    .line 365
    new-instance v2, Lcom/android/server/app/GameManagerSettings;

    .line 366
    invoke-static {v0}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/app/GameManagerSettings;-><init>(Ljava/io/File;)V

    .line 367
    iget-object v3, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v3}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-virtual {v2}, Lcom/android/server/app/GameManagerSettings;->readPersistentDataLocked()Z

    goto :goto_1b1

    :catchall_1ae
    move-exception v0

    move-object p0, v0

    goto :goto_1be

    .line 370
    :cond_1b1
    :goto_1b1
    monitor-exit v1
    :try_end_1b2
    .catchall {:try_start_18c .. :try_end_1b2} :catchall_1ae

    .line 371
    iget-object p1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p1, v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$mgetInstalledGamePackageNames(Lcom/android/server/app/GameManagerService;I)[Ljava/lang/String;

    move-result-object p1

    .line 372
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-virtual {p0, v0, v5, p1}, Lcom/android/server/app/GameManagerService;->updateConfigsForUser(IZ[Ljava/lang/String;)V

    return-void

    .line 370
    :goto_1be
    :try_start_1be
    monitor-exit v1
    :try_end_1bf
    .catchall {:try_start_1be .. :try_end_1bf} :catchall_1ae

    throw p0

    .line 337
    :pswitch_1c0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_1f7

    .line 339
    const-string v0, "GameManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to write settings for invalid user: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 341
    :try_start_1e7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v4, v0}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 342
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 343
    monitor-exit v1

    return-void

    :catchall_1f3
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_1f6
    .catchall {:try_start_1e7 .. :try_end_1f6} :catchall_1f3

    throw p0

    .line 347
    :cond_1f7
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 350
    :try_start_1fe
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v4, v2}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 351
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 352
    iget-object p1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_230

    .line 353
    iget-object p1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/app/GameManagerSettings;

    .line 354
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-virtual {p1}, Lcom/android/server/app/GameManagerSettings;->writePersistentDataLocked()V

    goto :goto_230

    :catchall_22d
    move-exception v0

    move-object p0, v0

    goto :goto_232

    .line 357
    :cond_230
    :goto_230
    monitor-exit v1

    return-void

    :goto_232
    monitor-exit v1
    :try_end_233
    .catchall {:try_start_1fe .. :try_end_233} :catchall_22d

    throw p0

    .line 317
    :pswitch_234
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_266

    .line 319
    const-string v0, "GameManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to write settings for invalid user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v0, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 321
    :try_start_25b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 322
    monitor-exit v1

    return-void

    :catchall_262
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_265
    .catchall {:try_start_25b .. :try_end_265} :catchall_262

    throw p0

    .line 325
    :cond_266
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 326
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 327
    :try_start_270
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 328
    iget-object p1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_294

    .line 329
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerSettings;

    .line 330
    invoke-virtual {p0}, Lcom/android/server/app/GameManagerSettings;->writePersistentDataLocked()V

    goto :goto_294

    :catchall_291
    move-exception v0

    move-object p0, v0

    goto :goto_299

    .line 332
    :cond_294
    :goto_294
    monitor-exit v1
    :try_end_295
    .catchall {:try_start_270 .. :try_end_295} :catchall_291

    .line 333
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    .line 332
    :goto_299
    :try_start_299
    monitor-exit v1
    :try_end_29a
    .catchall {:try_start_299 .. :try_end_29a} :catchall_291

    throw p0

    nop

    :pswitch_data_29c
    .packed-switch 0x1
        :pswitch_234
        :pswitch_1c0
        :pswitch_177
        :pswitch_63
        :pswitch_52
        :pswitch_e
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService$SettingsHandler;->doHandleMessage(Landroid/os/Message;)V

    return-void
.end method
