.class public final Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;
.super Ljava/lang/Object;
.source "PermissionManagerService.java"


# instance fields
.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final mFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public static synthetic $r8$lambda$WO-ed5PKRX8IsXitr7ssfCstW60(Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;Landroid/content/Context;ILandroid/content/AttributionSource;Z)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->lambda$new$0(Landroid/content/Context;ILandroid/content/AttributionSource;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/content/AttributionSource;Z)V
    .registers 13

    .line 1744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1745
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1746
    new-instance v2, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;Landroid/content/Context;ILandroid/content/AttributionSource;Z)V

    iput-object v2, v3, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 1752
    invoke-virtual {v6}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object p0

    iput-object p0, v3, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mToken:Landroid/os/IBinder;

    if-eqz p0, :cond_28

    .line 1755
    :try_start_1f
    invoke-interface {p0, v2, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_23

    return-void

    .line 1757
    :catch_23
    iget-object p0, v3, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p0}, Landroid/os/IBinder$DeathRecipient;->binderDied()V

    :cond_28
    return-void
.end method


# virtual methods
.method public final synthetic lambda$new$0(Landroid/content/Context;ILandroid/content/AttributionSource;Z)V
    .registers 5

    .line 1747
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->unregister()Z

    move-result p0

    if-eqz p0, :cond_d

    .line 1749
    invoke-virtual {p3}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object p0

    invoke-static {p1, p2, p0, p4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->-$$Nest$smfinishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V

    :cond_d
    return-void
.end method

.method public unregister()Z
    .registers 4

    .line 1763
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1765
    :try_start_a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_13

    .line 1766
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_13
    .catch Ljava/util/NoSuchElementException; {:try_start_a .. :try_end_13} :catch_13

    :catch_13
    :cond_13
    return v2

    :cond_14
    return v1
.end method
