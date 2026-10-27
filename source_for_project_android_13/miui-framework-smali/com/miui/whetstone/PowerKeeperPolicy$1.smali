.class Lcom/miui/whetstone/PowerKeeperPolicy$1;
.super Ljava/lang/Object;
.source "PowerKeeperPolicy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/whetstone/PowerKeeperPolicy;->offerPowerKeeperIBinder(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

.field final synthetic blacklist val$b:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "this$0"    # Lcom/miui/whetstone/PowerKeeperPolicy;

    .line 714
    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    iput-object p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->val$b:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .registers 4

    .line 717
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->val$b:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 718
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/miui/whetstone/PowerKeeperPolicy;->-$$Nest$fputsPowerKeeperService(Lcom/miui/whetstone/PowerKeeperPolicy;Lcom/miui/whetstone/IPowerKeeperClient;)V

    .line 719
    const-string v0, "PowerKeeperPolicy"

    const-string v2, "powerkeeper died, reset handle to null"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v0, v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->-$$Nest$fputmNeedControlSync(Lcom/miui/whetstone/PowerKeeperPolicy;Z)V

    .line 721
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v0}, Lcom/miui/whetstone/PowerKeeperPolicy;->-$$Nest$mrestoreFakeGpsStatus(Lcom/miui/whetstone/PowerKeeperPolicy;)V

    .line 722
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v0}, Lcom/miui/whetstone/PowerKeeperPolicy;->-$$Nest$mrestoreAlarm(Lcom/miui/whetstone/PowerKeeperPolicy;)V

    .line 723
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v0}, Lcom/miui/whetstone/PowerKeeperPolicy;->-$$Nest$mrestoreBlockedWakelock(Lcom/miui/whetstone/PowerKeeperPolicy;)V

    .line 724
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v0}, Lcom/miui/whetstone/PowerKeeperPolicy;->-$$Nest$mrestoreBroadcastCtrl(Lcom/miui/whetstone/PowerKeeperPolicy;)V

    .line 725
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v0}, Lcom/miui/whetstone/PowerKeeperPolicy;->-$$Nest$mrestoreBroadcast(Lcom/miui/whetstone/PowerKeeperPolicy;)V

    .line 726
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v0}, Lcom/miui/whetstone/PowerKeeperPolicy;->-$$Nest$mrestoreAutoStartCtrl(Lcom/miui/whetstone/PowerKeeperPolicy;)V

    .line 727
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v0}, Lcom/miui/whetstone/PowerKeeperPolicy;->-$$Nest$mrestoreClusterCtrl(Lcom/miui/whetstone/PowerKeeperPolicy;)V

    .line 728
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v0}, Lcom/miui/whetstone/PowerKeeperPolicy;->-$$Nest$fgetmDisallowToastApks(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/util/Set;

    move-result-object v0

    monitor-enter v0

    .line 729
    :try_start_42
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy$1;->this$0:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-static {v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->-$$Nest$fgetmDisallowToastApks(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 730
    monitor-exit v0

    .line 731
    return-void

    .line 730
    :catchall_4d
    move-exception v1

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_4d

    throw v1
.end method
