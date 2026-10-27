.class public final Lcom/android/server/supervision/SupervisionService$RoleObserver;
.super Ljava/lang/Object;
.source "SupervisionService.java"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/supervision/SupervisionService;


# direct methods
.method public constructor <init>(Lcom/android/server/supervision/SupervisionService;)V
    .registers 2

    .line 941
    iput-object p1, p0, Lcom/android/server/supervision/SupervisionService$RoleObserver;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4

    .line 950
    const-string v0, "android.app.role.SUPERVISION"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 951
    iget-object p1, p0, Lcom/android/server/supervision/SupervisionService$RoleObserver;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-static {p1, p2}, Lcom/android/server/supervision/SupervisionService;->-$$Nest$mmaybeApplyUserRestrictionsFor(Lcom/android/server/supervision/SupervisionService;Landroid/os/UserHandle;)V

    .line 952
    iget-object p1, p0, Lcom/android/server/supervision/SupervisionService$RoleObserver;->this$0:Lcom/android/server/supervision/SupervisionService;

    .line 953
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/supervision/SupervisionService;->-$$Nest$mgetRemovedSupervisionRoleHolders(Lcom/android/server/supervision/SupervisionService;I)Ljava/util/List;

    move-result-object p1

    .line 954
    iget-object p0, p0, Lcom/android/server/supervision/SupervisionService$RoleObserver;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    const/4 v0, 0x0

    invoke-static {p0, p2, p1, v0}, Lcom/android/server/supervision/SupervisionService;->-$$Nest$mclearSuspendedPackagesFor(Lcom/android/server/supervision/SupervisionService;ILjava/util/List;Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public register()V
    .registers 4

    .line 944
    iget-object v0, p0, Lcom/android/server/supervision/SupervisionService$RoleObserver;->this$0:Lcom/android/server/supervision/SupervisionService;

    invoke-static {v0}, Lcom/android/server/supervision/SupervisionService;->-$$Nest$fgetmInjector(Lcom/android/server/supervision/SupervisionService;)Lcom/android/server/supervision/SupervisionService$Injector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/supervision/SupervisionService$RoleObserver;->this$0:Lcom/android/server/supervision/SupervisionService;

    iget-object v1, v1, Lcom/android/server/supervision/SupervisionService;->mServiceThread:Lcom/android/server/ServiceThread;

    .line 945
    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 944
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/supervision/SupervisionService$Injector;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    return-void
.end method
