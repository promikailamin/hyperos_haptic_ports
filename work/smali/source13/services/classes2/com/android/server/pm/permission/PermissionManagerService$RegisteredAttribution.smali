.class final Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;
.super Ljava/lang/Object;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RegisteredAttribution"
.end annotation


# instance fields
.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/content/AttributionSource;Z)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "op"    # I
    .param p3, "source"    # Landroid/content/AttributionSource;
    .param p4, "fromDatasource"    # Z

    .line 1758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1759
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1760
    new-instance v0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;Landroid/content/Context;ILandroid/content/AttributionSource;Z)V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 1766
    invoke-virtual {p3}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mToken:Landroid/os/IBinder;

    .line 1767
    if-eqz v2, :cond_2a

    .line 1769
    :try_start_20
    invoke-interface {v2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24

    .line 1772
    goto :goto_2a

    .line 1770
    :catch_24
    move-exception v0

    .line 1771
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1}, Landroid/os/IBinder$DeathRecipient;->binderDied()V

    .line 1774
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    :goto_2a
    return-void
.end method


# virtual methods
.method synthetic lambda$new$0$com-android-server-pm-permission-PermissionManagerService$RegisteredAttribution(Landroid/content/Context;ILandroid/content/AttributionSource;Z)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "op"    # I
    .param p3, "source"    # Landroid/content/AttributionSource;
    .param p4, "fromDatasource"    # Z

    .line 1761
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->unregister()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1762
    nop

    .line 1763
    invoke-virtual {p3}, Landroid/content/AttributionSource;->asState()Landroid/content/AttributionSourceState;

    move-result-object v0

    invoke-static {p1, p2, v0, p4}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionCheckerService;->-$$Nest$smfinishDataDelivery(Landroid/content/Context;ILandroid/content/AttributionSourceState;Z)V

    .line 1765
    :cond_e
    return-void
.end method

.method public unregister()Z
    .registers 5

    .line 1777
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1779
    :try_start_a
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_13

    .line 1780
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService$RegisteredAttribution;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v3, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_13
    .catch Ljava/util/NoSuchElementException; {:try_start_a .. :try_end_13} :catch_14

    .line 1784
    :cond_13
    goto :goto_15

    .line 1782
    :catch_14
    move-exception v0

    .line 1785
    :goto_15
    return v2

    .line 1787
    :cond_16
    return v1
.end method
