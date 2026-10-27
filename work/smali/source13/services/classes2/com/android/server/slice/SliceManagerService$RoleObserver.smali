.class Lcom/android/server/slice/SliceManagerService$RoleObserver;
.super Ljava/lang/Object;
.source "SliceManagerService.java"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/slice/SliceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RoleObserver"
.end annotation


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mRm:Landroid/app/role/RoleManager;

.field final synthetic this$0:Lcom/android/server/slice/SliceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/slice/SliceManagerService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/slice/SliceManagerService;

    .line 566
    iput-object p1, p0, Lcom/android/server/slice/SliceManagerService$RoleObserver;->this$0:Lcom/android/server/slice/SliceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 567
    invoke-static {p1}, Lcom/android/server/slice/SliceManagerService;->-$$Nest$fgetmContext(Lcom/android/server/slice/SliceManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService$RoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 568
    invoke-virtual {p0}, Lcom/android/server/slice/SliceManagerService$RoleObserver;->register()V

    .line 569
    return-void
.end method


# virtual methods
.method public onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 581
    const-string v0, "android.app.role.HOME"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 582
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService$RoleObserver;->this$0:Lcom/android/server/slice/SliceManagerService;

    invoke-virtual {v0}, Lcom/android/server/slice/SliceManagerService;->invalidateCachedDefaultHome()V

    .line 584
    :cond_d
    return-void
.end method

.method public register()V
    .registers 4

    .line 572
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService$RoleObserver;->this$0:Lcom/android/server/slice/SliceManagerService;

    invoke-static {v0}, Lcom/android/server/slice/SliceManagerService;->-$$Nest$fgetmContext(Lcom/android/server/slice/SliceManagerService;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    .line 573
    if-eqz v0, :cond_1e

    .line 574
    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService$RoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p0, v2}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    .line 575
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService$RoleObserver;->this$0:Lcom/android/server/slice/SliceManagerService;

    invoke-virtual {v0}, Lcom/android/server/slice/SliceManagerService;->invalidateCachedDefaultHome()V

    .line 577
    :cond_1e
    return-void
.end method
