.class Lcom/android/server/audio/AudioService$RoleObserver;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RoleObserver"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mRm:Landroid/app/role/RoleManager;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .line 1637
    iput-object p1, p0, Lcom/android/server/audio/AudioService$RoleObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1638
    iget-object v0, p1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/AudioService$RoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1639
    return-void
.end method


# virtual methods
.method public getAssistantRoleHolder()Ljava/lang/String;
    .registers 4

    .line 1661
    const-string v0, ""

    .line 1662
    .local v0, "assitantPackage":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/audio/AudioService$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    if-eqz v1, :cond_1d

    .line 1663
    const-string v2, "android.app.role.ASSISTANT"

    invoke-virtual {v1, v2}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1664
    .local v1, "assistants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_15

    const-string v2, ""

    goto :goto_1c

    :cond_15
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_1c
    move-object v0, v2

    .line 1666
    .end local v1    # "assistants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1d
    return-object v0
.end method

.method public onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 1653
    const-string v0, "android.app.role.ASSISTANT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1654
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RoleObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettingsLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1655
    :try_start_f
    iget-object v1, p0, Lcom/android/server/audio/AudioService$RoleObserver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$mupdateAssistantUIdLocked(Lcom/android/server/audio/AudioService;Z)V

    .line 1656
    monitor-exit v0

    goto :goto_1a

    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_17

    throw v1

    .line 1658
    :cond_1a
    :goto_1a
    return-void
.end method

.method public register()V
    .registers 4

    .line 1642
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RoleObserver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v0, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "role"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    iput-object v0, p0, Lcom/android/server/audio/AudioService$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    .line 1643
    if-eqz v0, :cond_2a

    .line 1644
    iget-object v1, p0, Lcom/android/server/audio/AudioService$RoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p0, v2}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 1645
    iget-object v0, p0, Lcom/android/server/audio/AudioService$RoleObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettingsLock(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1646
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/audio/AudioService$RoleObserver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$mupdateAssistantUIdLocked(Lcom/android/server/audio/AudioService;Z)V

    .line 1647
    monitor-exit v0

    goto :goto_2a

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_27

    throw v1

    .line 1649
    :cond_2a
    :goto_2a
    return-void
.end method
