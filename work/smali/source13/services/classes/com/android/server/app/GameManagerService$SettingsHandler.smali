.class Lcom/android/server/app/GameManagerService$SettingsHandler;
.super Landroid/os/Handler;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/app/GameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/app/GameManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/app/GameManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 216
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 217
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 218
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .registers 20
    .param p1, "msg"    # Landroid/os/Message;

    .line 226
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_1bc

    goto/16 :goto_1ba

    .line 315
    :pswitch_10
    iget-object v0, v1, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/app/GameManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    goto/16 :goto_1ba

    .line 284
    :pswitch_1b
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/app/GameState;

    .line 285
    .local v7, "gameState":Landroid/app/GameState;
    invoke-virtual {v7}, Landroid/app/GameState;->isLoading()Z

    move-result v15

    .line 286
    .local v15, "isLoading":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v14

    .line 287
    .local v14, "data":Landroid/os/Bundle;
    const-string/jumbo v0, "packageName"

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 288
    .local v13, "packageName":Ljava/lang/String;
    const-string/jumbo v0, "userId"

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 291
    .local v12, "userId":I
    iget-object v0, v1, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    .line 292
    invoke-virtual {v0, v13, v12}, Lcom/android/server/app/GameManagerService;->getGameMode(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_3f

    move v4, v6

    .line 295
    .local v4, "boostEnabled":Z
    :cond_3f
    :try_start_3f
    iget-object v0, v1, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/app/GameManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v13, v12}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_49
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3f .. :try_end_49} :catch_4a

    .line 299
    .local v0, "uid":I
    goto :goto_54

    .line 296
    .end local v0    # "uid":I
    :catch_4a
    move-exception v0

    .line 297
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "GameManagerService"

    const-string v6, "Failed to get package metadata"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v5, -0x1

    move v0, v5

    .line 300
    .local v0, "uid":I
    :goto_54
    const/16 v8, 0x1ad

    .line 301
    invoke-virtual {v7}, Landroid/app/GameState;->getMode()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/app/GameManagerService;->-$$Nest$smgameStateModeToStatsdGameState(I)I

    move-result v5

    .line 302
    invoke-virtual {v7}, Landroid/app/GameState;->getLabel()I

    move-result v6

    invoke-virtual {v7}, Landroid/app/GameState;->getQuality()I

    move-result v16

    .line 300
    move-object v9, v13

    move v10, v0

    move v11, v4

    move v3, v12

    .end local v12    # "userId":I
    .local v3, "userId":I
    move v12, v5

    move-object v5, v13

    .end local v13    # "packageName":Ljava/lang/String;
    .local v5, "packageName":Ljava/lang/String;
    move v13, v15

    move-object/from16 v17, v14

    .end local v14    # "data":Landroid/os/Bundle;
    .local v17, "data":Landroid/os/Bundle;
    move v14, v6

    move v6, v15

    .end local v15    # "isLoading":Z
    .local v6, "isLoading":Z
    move/from16 v15, v16

    invoke-static/range {v8 .. v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IZIZII)V

    .line 304
    if-eqz v4, :cond_1ba

    .line 305
    iget-object v8, v1, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v8}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/app/GameManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object v8

    if-nez v8, :cond_a4

    .line 306
    const-string v8, "GameManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error setting loading mode for package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " and userId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    goto/16 :goto_1ba

    .line 310
    :cond_a4
    iget-object v8, v1, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v8}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPowerManagerInternal(Lcom/android/server/app/GameManagerService;)Landroid/os/PowerManagerInternal;

    move-result-object v8

    const/16 v9, 0x10

    invoke-virtual {v8, v9, v6}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    goto/16 :goto_1ba

    .line 277
    .end local v0    # "uid":I
    .end local v3    # "userId":I
    .end local v4    # "boostEnabled":Z
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "isLoading":Z
    .end local v7    # "gameState":Landroid/app/GameState;
    .end local v17    # "data":Landroid/os/Bundle;
    :pswitch_b1
    const/4 v0, 0x3

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Lcom/android/server/app/GameManagerService$SettingsHandler;->removeMessages(ILjava/lang/Object;)V

    .line 278
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 279
    .local v0, "userId":I
    iget-object v3, v1, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v3, v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$mgetInstalledGamePackageNames(Lcom/android/server/app/GameManagerService;I)[Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, "packageNames":[Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-virtual {v4, v0, v3}, Lcom/android/server/app/GameManagerService;->updateConfigsForUser(I[Ljava/lang/String;)V

    .line 281
    goto/16 :goto_1ba

    .line 249
    .end local v0    # "userId":I
    .end local v3    # "packageNames":[Ljava/lang/String;
    :pswitch_cc
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 250
    .local v3, "userId":I
    if-gez v3, :cond_105

    .line 251
    const-string v0, "GameManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempt to write settings for invalid user: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, v1, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 253
    :try_start_f5
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v6, v0}, Lcom/android/server/app/GameManagerService$SettingsHandler;->removeMessages(ILjava/lang/Object;)V

    .line 254
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v5, v0}, Lcom/android/server/app/GameManagerService$SettingsHandler;->removeMessages(ILjava/lang/Object;)V

    .line 255
    monitor-exit v4

    .line 256
    goto/16 :goto_1ba

    .line 255
    :catchall_102
    move-exception v0

    monitor-exit v4
    :try_end_104
    .catchall {:try_start_f5 .. :try_end_104} :catchall_102

    throw v0

    .line 259
    :cond_105
    iget-object v0, v1, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 262
    :try_start_10c
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v6, v0}, Lcom/android/server/app/GameManagerService$SettingsHandler;->removeMessages(ILjava/lang/Object;)V

    .line 263
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v5, v0}, Lcom/android/server/app/GameManagerService$SettingsHandler;->removeMessages(ILjava/lang/Object;)V

    .line 264
    iget-object v0, v1, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_146

    .line 265
    iget-object v0, v1, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameManagerSettings;

    .line 266
    .local v0, "userSettings":Lcom/android/server/app/GameManagerSettings;
    iget-object v4, v1, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v4}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-virtual {v0}, Lcom/android/server/app/GameManagerSettings;->writePersistentDataLocked()V

    .line 269
    .end local v0    # "userSettings":Lcom/android/server/app/GameManagerSettings;
    :cond_146
    monitor-exit v7

    .line 270
    goto :goto_1ba

    .line 269
    :catchall_148
    move-exception v0

    monitor-exit v7
    :try_end_14a
    .catchall {:try_start_10c .. :try_end_14a} :catchall_148

    throw v0

    .line 228
    .end local v3    # "userId":I
    :pswitch_14b
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 229
    .restart local v3    # "userId":I
    if-gez v3, :cond_17e

    .line 230
    const-string v0, "GameManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to write settings for invalid user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, v1, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 232
    :try_start_174
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v6, v0}, Lcom/android/server/app/GameManagerService$SettingsHandler;->removeMessages(ILjava/lang/Object;)V

    .line 233
    monitor-exit v5

    .line 234
    goto :goto_1ba

    .line 233
    :catchall_17b
    move-exception v0

    monitor-exit v5
    :try_end_17d
    .catchall {:try_start_174 .. :try_end_17d} :catchall_17b

    throw v0

    .line 237
    :cond_17e
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 238
    iget-object v0, v1, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 239
    :try_start_188
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v6, v0}, Lcom/android/server/app/GameManagerService$SettingsHandler;->removeMessages(ILjava/lang/Object;)V

    .line 240
    iget-object v0, v1, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b0

    .line 241
    iget-object v0, v1, Lcom/android/server/app/GameManagerService$SettingsHandler;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/app/GameManagerSettings;

    .line 242
    .restart local v0    # "userSettings":Lcom/android/server/app/GameManagerSettings;
    invoke-virtual {v0}, Lcom/android/server/app/GameManagerSettings;->writePersistentDataLocked()V

    .line 244
    .end local v0    # "userSettings":Lcom/android/server/app/GameManagerSettings;
    :cond_1b0
    monitor-exit v4
    :try_end_1b1
    .catchall {:try_start_188 .. :try_end_1b1} :catchall_1b7

    .line 245
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 246
    goto :goto_1ba

    .line 244
    :catchall_1b7
    move-exception v0

    :try_start_1b8
    monitor-exit v4
    :try_end_1b9
    .catchall {:try_start_1b8 .. :try_end_1b9} :catchall_1b7

    throw v0

    .line 319
    .end local v3    # "userId":I
    :cond_1ba
    :goto_1ba
    return-void

    nop

    :pswitch_data_1bc
    .packed-switch 0x1
        :pswitch_14b
        :pswitch_cc
        :pswitch_b1
        :pswitch_1b
        :pswitch_10
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 222
    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerService$SettingsHandler;->doHandleMessage(Landroid/os/Message;)V

    .line 223
    return-void
.end method
