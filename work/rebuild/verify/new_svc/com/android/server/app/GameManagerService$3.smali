.class public Lcom/android/server/app/GameManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "GameManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameManagerService;)V
    .registers 2

    .line 1566
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 1569
    const-string p1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 1570
    iget-object p1, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1575
    :try_start_13
    iget-object p2, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p2}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_21
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1576
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1577
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    const-string v2, "RECEIVE_SHUTDOWN_INDENT"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v0, v4, v2, v3}, Lcom/android/server/app/GameManagerService;->-$$Nest$msendUserMessage(Lcom/android/server/app/GameManagerService;IILjava/lang/String;I)V

    .line 1579
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    const-string v2, "RECEIVE_SHUTDOWN_INDENT"

    const/4 v4, 0x6

    invoke-static {v1, v0, v4, v2, v3}, Lcom/android/server/app/GameManagerService;->-$$Nest$msendUserMessage(Lcom/android/server/app/GameManagerService;IILjava/lang/String;I)V

    goto :goto_21

    :catchall_49
    move-exception p0

    goto :goto_4d

    .line 1584
    :cond_4b
    monitor-exit p1

    return-void

    :goto_4d
    monitor-exit p1
    :try_end_4e
    .catchall {:try_start_13 .. :try_end_4e} :catchall_49

    throw p0

    :cond_4f
    return-void
.end method
