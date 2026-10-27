.class public Lcom/android/server/power/PowerManagerService$2;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;

.field public final synthetic val$confirm:Z

.field public final synthetic val$custom:Z

.field public final synthetic val$haltMode:I

.field public final synthetic val$reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;IZZLjava/lang/String;)V
    .registers 6

    .line 4328
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    iput p2, p0, Lcom/android/server/power/PowerManagerService$2;->val$haltMode:I

    iput-boolean p3, p0, Lcom/android/server/power/PowerManagerService$2;->val$confirm:Z

    iput-boolean p4, p0, Lcom/android/server/power/PowerManagerService$2;->val$custom:Z

    iput-object p5, p0, Lcom/android/server/power/PowerManagerService$2;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 4331
    monitor-enter p0

    .line 4332
    :try_start_1
    iget v0, p0, Lcom/android/server/power/PowerManagerService$2;->val$haltMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 4333
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/PowerManagerService$2;->val$confirm:Z

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootSafeMode(Landroid/content/Context;Z)V

    goto :goto_44

    :catchall_12
    move-exception v0

    goto :goto_46

    :cond_14
    const/4 v1, 0x1

    if-ne v0, v1, :cond_37

    .line 4335
    iget-boolean v0, p0, Lcom/android/server/power/PowerManagerService$2;->val$custom:Z

    if-eqz v0, :cond_29

    .line 4336
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$2;->val$reason:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$2;->val$confirm:Z

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->rebootCustom(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_44

    .line 4338
    :cond_29
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$2;->val$reason:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$2;->val$confirm:Z

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->reboot(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_44

    .line 4341
    :cond_37
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$2;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$2;->val$reason:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/power/PowerManagerService$2;->val$confirm:Z

    invoke-static {v0, v1, v2}, Lcom/android/server/power/ShutdownThread;->shutdown(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 4343
    :goto_44
    monitor-exit p0

    return-void

    :goto_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_1 .. :try_end_47} :catchall_12

    throw v0
.end method
