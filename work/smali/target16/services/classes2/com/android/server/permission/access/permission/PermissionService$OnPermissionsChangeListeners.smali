.class public final Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;
.super Landroid/os/Handler;
.source "PermissionService.kt"


# static fields
.field public static final Companion:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners$Companion;


# instance fields
.field public final listeners:Landroid/os/RemoteCallbackList;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;->Companion:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    .line 2795
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2796
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;->listeners:Landroid/os/RemoteCallbackList;

    return-void
.end method


# virtual methods
.method public final addListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .registers 2

    .line 2819
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 2799
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 2801
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2802
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p1, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    .line 2803
    invoke-virtual {p0, v0, p1}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;->handleOnPermissionsChanged(ILjava/lang/String;)V

    :cond_14
    return-void
.end method

.method public final handleOnPermissionsChanged(ILjava/lang/String;)V
    .registers 4

    .line 2809
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;->listeners:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners$handleOnPermissionsChanged$1;

    invoke-direct {v0, p1, p2}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners$handleOnPermissionsChanged$1;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onPermissionsChanged(ILjava/lang/String;)V
    .registers 5

    .line 2827
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_11

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2828
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_11
    return-void
.end method

.method public final removeListener(Landroid/permission/IOnPermissionsChangeListener;)V
    .registers 2

    .line 2823
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionsChangeListeners;->listeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
