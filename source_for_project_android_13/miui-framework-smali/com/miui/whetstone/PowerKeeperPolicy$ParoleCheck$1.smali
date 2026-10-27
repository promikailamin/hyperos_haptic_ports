.class Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

.field final synthetic blacklist val$this$0:Lcom/miui/whetstone/PowerKeeperPolicy;


# direct methods
.method constructor blacklist <init>(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;Lcom/miui/whetstone/PowerKeeperPolicy;)V
    .registers 3
    .param p1, "this$1"    # Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    .line 1031
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    iput-object p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;->val$this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1034
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-static {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->-$$Nest$fgetmParoleLock(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1035
    :try_start_7
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck$1;->this$1:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-static {v1, p1}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->-$$Nest$monParoleMessageHandlerLocked(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;Landroid/os/Message;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1036
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method
