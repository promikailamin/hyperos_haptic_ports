.class public Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;
.super Landroid/os/Handler;
.source "DropBoxManagerService.java"


# instance fields
.field public final mDeferredMap:Landroid/util/ArrayMap;

.field public final mLock:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/server/DropBoxManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Looper;)V
    .registers 3

    .line 291
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->this$0:Lcom/android/server/DropBoxManagerService;

    .line 292
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 283
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mLock:Ljava/lang/Object;

    .line 288
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mDeferredMap:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final createIntent(Ljava/lang/String;J)Landroid/content/Intent;
    .registers 5

    .line 347
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.DROPBOX_ENTRY_ADDED"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    const-string/jumbo v0, "tag"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    const-string/jumbo p1, "time"

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 350
    const-string p1, "android.os.extra.DROPPED_COUNT"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 297
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    goto :goto_1e

    .line 303
    :cond_9
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 304
    :try_start_c
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mDeferredMap:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 305
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_1f

    if-eqz p1, :cond_1e

    .line 307
    invoke-virtual {p0, p1, v1}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->prepareAndSendBroadcast(Landroid/content/Intent;Z)V

    :cond_1e
    :goto_1e
    return-void

    :catchall_1f
    move-exception p0

    .line 305
    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw p0

    .line 299
    :cond_22
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->prepareAndSendBroadcast(Landroid/content/Intent;Z)V

    return-void
.end method

.method public maybeDeferBroadcast(Ljava/lang/String;J)V
    .registers 6

    .line 375
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :try_start_3
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mDeferredMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    if-nez v1, :cond_28

    .line 379
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mDeferredMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->createIntent(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x2

    .line 380
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {p2}, Lcom/android/server/DropBoxManagerService;->-$$Nest$fgetmLowPriorityRateLimitPeriod(Lcom/android/server/DropBoxManagerService;)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 389
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    goto :goto_3e

    .line 384
    :cond_28
    const-string/jumbo p0, "time"

    invoke-virtual {v1, p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 385
    const-string p0, "android.os.extra.DROPPED_COUNT"

    const/4 p1, 0x0

    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 386
    const-string p1, "android.os.extra.DROPPED_COUNT"

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v1, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    monitor-exit v0

    return-void

    .line 389
    :goto_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_26

    throw p0
.end method

.method public final prepareAndSendBroadcast(Landroid/content/Intent;Z)V
    .registers 11

    .line 314
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {v0}, Lcom/android/server/DropBoxManagerService;->-$$Nest$fgetmBooted(Lcom/android/server/DropBoxManagerService;)Z

    move-result v0

    if-nez v0, :cond_d

    const/high16 v0, 0x40000000    # 2.0f

    .line 315
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 317
    :cond_d
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/32 v2, 0x11a58811

    .line 319
    invoke-virtual {v0, v2, v3, v1}, Landroid/app/BroadcastOptions;->setRequireCompatChange(JZ)V

    .line 320
    const-string/jumbo v1, "tag"

    if-eqz p2, :cond_35

    .line 321
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-READ_DROPBOX_DATA"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 323
    invoke-virtual {p0, v0, v4}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->setBroadcastOptionsForDeferral(Landroid/app/BroadcastOptions;Ljava/lang/String;)V

    .line 325
    :cond_35
    iget-object v4, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "android.permission.READ_DROPBOX_DATA"

    .line 326
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    .line 325
    invoke-virtual {v4, p1, v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v4, 0x0

    .line 328
    invoke-virtual {v0, v2, v3, v4}, Landroid/app/BroadcastOptions;->setRequireCompatChange(JZ)V

    if-eqz p2, :cond_64

    .line 330
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-READ_LOGS"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 332
    invoke-virtual {p0, v0, p2}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->setBroadcastOptionsForDeferral(Landroid/app/BroadcastOptions;Ljava/lang/String;)V

    .line 334
    :cond_64
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p2, "android.permission.READ_LOGS"

    .line 335
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 334
    invoke-virtual {p0, p1, v5, p2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendBroadcast(Ljava/lang/String;J)V
    .registers 5

    const/4 v0, 0x1

    .line 366
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->createIntent(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setBroadcastOptionsForDeferral(Landroid/app/BroadcastOptions;Ljava/lang/String;)V
    .registers 4

    const/4 p0, 0x2

    .line 355
    invoke-virtual {p1, p0}, Landroid/app/BroadcastOptions;->setDeliveryGroupPolicy(I)Landroid/app/BroadcastOptions;

    move-result-object p1

    const-string v0, "android.intent.action.DROPBOX_ENTRY_ADDED"

    .line 356
    invoke-virtual {p1, v0, p2}, Landroid/app/BroadcastOptions;->setDeliveryGroupMatchingKey(Ljava/lang/String;Ljava/lang/String;)Landroid/app/BroadcastOptions;

    move-result-object p1

    invoke-static {}, Lcom/android/server/DropBoxManagerService;->-$$Nest$sfgetsDropboxEntryAddedExtrasMerger()Landroid/os/BundleMerger;

    move-result-object p2

    .line 358
    invoke-virtual {p1, p2}, Landroid/app/BroadcastOptions;->setDeliveryGroupExtrasMerger(Landroid/os/BundleMerger;)Landroid/app/BroadcastOptions;

    move-result-object p1

    .line 359
    invoke-virtual {p1, p0}, Landroid/app/BroadcastOptions;->setDeferralPolicy(I)Landroid/app/BroadcastOptions;

    return-void
.end method
