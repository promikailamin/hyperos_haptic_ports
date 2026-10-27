.class Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;
.super Landroid/os/Handler;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DropBoxManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropBoxManagerBroadcastHandler"
.end annotation


# static fields
.field static final MSG_SEND_BROADCAST:I = 0x1

.field static final MSG_SEND_DEFERRED_BROADCAST:I = 0x2


# instance fields
.field private final mDeferredMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/DropBoxManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 259
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->this$0:Lcom/android/server/DropBoxManagerService;

    .line 260
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 251
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mLock:Ljava/lang/Object;

    .line 256
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mDeferredMap:Landroid/util/ArrayMap;

    .line 261
    return-void
.end method

.method private createIntent(Ljava/lang/String;J)Landroid/content/Intent;
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "time"    # J

    .line 290
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DROPBOX_ENTRY_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .local v0, "dropboxIntent":Landroid/content/Intent;
    const-string/jumbo v1, "tag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 293
    return-object v0
.end method

.method private prepareAndSendBroadcast(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 282
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {v0}, Lcom/android/server/DropBoxManagerService;->-$$Nest$fgetmBooted(Lcom/android/server/DropBoxManagerService;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 283
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 285
    :cond_d
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v2, "android.permission.READ_LOGS"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 287
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 265
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_28

    goto :goto_27

    .line 271
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 272
    :try_start_9
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mDeferredMap:Landroid/util/ArrayMap;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 273
    .local v1, "deferredIntent":Landroid/content/Intent;
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_1c

    .line 274
    if-eqz v1, :cond_27

    .line 275
    invoke-direct {p0, v1}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->prepareAndSendBroadcast(Landroid/content/Intent;)V

    goto :goto_27

    .line 273
    .end local v1    # "deferredIntent":Landroid/content/Intent;
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1

    .line 267
    :pswitch_1f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->prepareAndSendBroadcast(Landroid/content/Intent;)V

    .line 268
    nop

    .line 279
    :cond_27
    :goto_27
    return-void

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_6
    .end packed-switch
.end method

.method public maybeDeferBroadcast(Ljava/lang/String;J)V
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "time"    # J

    .line 309
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_3
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mDeferredMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 311
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_26

    .line 313
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->mDeferredMap:Landroid/util/ArrayMap;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->createIntent(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {v3}, Lcom/android/server/DropBoxManagerService;->-$$Nest$fgetmLowPriorityRateLimitPeriod(Lcom/android/server/DropBoxManagerService;)J

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 323
    .end local v1    # "intent":Landroid/content/Intent;
    monitor-exit v0

    .line 324
    return-void

    .line 318
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_26
    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 319
    const-string v2, "android.os.extra.DROPPED_COUNT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 320
    .local v2, "dropped":I
    const-string v3, "android.os.extra.DROPPED_COUNT"

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 321
    monitor-exit v0

    return-void

    .line 323
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "dropped":I
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public sendBroadcast(Ljava/lang/String;J)V
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "time"    # J

    .line 300
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->createIntent(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->sendMessage(Landroid/os/Message;)Z

    .line 301
    return-void
.end method
