.class public final Lcom/android/server/pm/UserManagerService$MainHandler;
.super Landroid/os/Handler;
.source "UserManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 2

    .line 8526
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$MainHandler;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 8530
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    const/4 p1, 0x2

    if-eq v0, p1, :cond_9

    return-void

    .line 8532
    :cond_9
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8533
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService$MainHandler;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmPackagesLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8534
    :try_start_13
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$MainHandler;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mwriteUserListLP(Lcom/android/server/pm/UserManagerService;)V

    .line 8535
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1a

    throw p0

    .line 8539
    :cond_1d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 8540
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$MainHandler;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->-$$Nest$fgetmPackagesLock(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8541
    :try_start_29
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 8542
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$MainHandler;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2, v1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mgetUserDataNoChecks(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 8544
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$MainHandler;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p0, v1}, Lcom/android/server/pm/UserManagerService;->-$$Nest$mwriteUserLP(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V

    goto :goto_4c

    :catchall_3f
    move-exception p0

    goto :goto_4e

    .line 8546
    :cond_41
    const-string p0, "UserManagerService"

    const-string v1, "handle(WRITE_USER_MSG): no data for user %d, it was probably removed before handler could handle it"

    .line 8547
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 8546
    invoke-static {p0, v1, p1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8549
    :goto_4c
    monitor-exit v0

    return-void

    :goto_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_29 .. :try_end_4f} :catchall_3f

    throw p0
.end method
