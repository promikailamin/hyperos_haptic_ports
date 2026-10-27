.class public Landroid/content/om/OverlayManager;
.super Ljava/lang/Object;
.source "OverlayManager.java"


# static fields
.field public static final blacklist SELF_TARGETING_OVERLAY:J = 0xc4615ffL

.field private static final blacklist THROW_SECURITY_EXCEPTIONS:J = 0x8c83e9aL


# instance fields
.field private final blacklist mOverlayManagerImpl:Lcom/android/internal/content/om/OverlayManagerImpl;

.field private final blacklist mService:Landroid/content/om/IOverlayManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3

    .line 147
    nop

    .line 148
    const-string/jumbo v0, "overlay"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 147
    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/content/om/OverlayManager;-><init>(Landroid/content/Context;Landroid/content/om/IOverlayManager;)V

    .line 149
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/om/IOverlayManager;)V
    .registers 3

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p2, p0, Landroid/content/om/OverlayManager;->mService:Landroid/content/om/IOverlayManager;

    .line 141
    new-instance p2, Lcom/android/internal/content/om/OverlayManagerImpl;

    invoke-direct {p2, p1}, Lcom/android/internal/content/om/OverlayManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/content/om/OverlayManager;->mOverlayManagerImpl:Lcom/android/internal/content/om/OverlayManagerImpl;

    .line 142
    return-void
.end method

.method private blacklist commitToSystemServer(Landroid/content/om/OverlayManagerTransaction;)V
    .registers 3

    .line 367
    :try_start_0
    iget-object v0, p0, Landroid/content/om/OverlayManager;->mService:Landroid/content/om/IOverlayManager;

    invoke-interface {v0, p1}, Landroid/content/om/IOverlayManager;->commit(Landroid/content/om/OverlayManagerTransaction;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    .line 370
    nop

    .line 371
    return-void

    .line 368
    :catch_7
    move-exception p1

    .line 369
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method private blacklist rethrowSecurityException(Ljava/lang/SecurityException;)V
    .registers 4

    .line 417
    const-wide/32 v0, 0x8c83e9a

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_f

    .line 418
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 420
    :cond_f
    throw p1
.end method


# virtual methods
.method public whitelist commit(Landroid/content/om/OverlayManagerTransaction;)V
    .registers 3

    .line 385
    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction;->isSelfTargeting()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Landroid/content/om/OverlayManager;->mService:Landroid/content/om/IOverlayManager;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/content/om/OverlayManager;->mService:Landroid/content/om/IOverlayManager;

    .line 387
    invoke-interface {v0}, Landroid/content/om/IOverlayManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_17

    .line 396
    :cond_13
    invoke-direct {p0, p1}, Landroid/content/om/OverlayManager;->commitToSystemServer(Landroid/content/om/OverlayManagerTransaction;)V

    .line 397
    return-void

    .line 389
    :cond_17
    :goto_17
    :try_start_17
    invoke-virtual {p0, p1}, Landroid/content/om/OverlayManager;->commitSelfTarget(Landroid/content/om/OverlayManagerTransaction;)V
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_1a} :catch_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1c

    .line 392
    nop

    .line 393
    return-void

    .line 390
    :catch_1c
    move-exception p1

    .line 391
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method blacklist commitSelfTarget(Landroid/content/om/OverlayManagerTransaction;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 437
    iget-object v0, p0, Landroid/content/om/OverlayManager;->mOverlayManagerImpl:Lcom/android/internal/content/om/OverlayManagerImpl;

    monitor-enter v0

    .line 438
    :try_start_3
    iget-object v1, p0, Landroid/content/om/OverlayManager;->mOverlayManagerImpl:Lcom/android/internal/content/om/OverlayManagerImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/content/om/OverlayManagerImpl;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    .line 439
    monitor-exit v0

    .line 440
    return-void

    .line 439
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public blacklist enableWithConstraints(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayConstraint;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 251
    :try_start_0
    iget-object v0, p0, Landroid/content/om/OverlayManager;->mService:Landroid/content/om/IOverlayManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {v0, p1, p2, p3}, Landroid/content/om/IOverlayManager;->enableWithConstraints(Ljava/lang/String;ILjava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 258
    goto :goto_1f

    .line 252
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "enableWithConstraints failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_15} :catch_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_15

    .line 256
    :catch_15
    move-exception p1

    .line 257
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 254
    :catch_1b
    move-exception p1

    .line 255
    invoke-direct {p0, p1}, Landroid/content/om/OverlayManager;->rethrowSecurityException(Ljava/lang/SecurityException;)V

    .line 258
    :goto_1f
    nop

    .line 259
    return-void
.end method

.method public blacklist getOverlayInfo(Landroid/content/om/OverlayIdentifier;Landroid/os/UserHandle;)Landroid/content/om/OverlayInfo;
    .registers 4

    .line 296
    :try_start_0
    iget-object v0, p0, Landroid/content/om/OverlayManager;->mService:Landroid/content/om/IOverlayManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/om/IOverlayManager;->getOverlayInfoByIdentifier(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    .line 297
    :catch_b
    move-exception p1

    .line 298
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getOverlayInfo(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/om/OverlayInfo;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 277
    :try_start_0
    iget-object v0, p0, Landroid/content/om/OverlayManager;->mService:Landroid/content/om/IOverlayManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/om/IOverlayManager;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    .line 278
    :catch_b
    move-exception p1

    .line 279
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getOverlayInfosForTarget(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Landroid/content/om/OverlayManager;->mOverlayManagerImpl:Lcom/android/internal/content/om/OverlayManagerImpl;

    monitor-enter v0

    .line 452
    :try_start_3
    iget-object v1, p0, Landroid/content/om/OverlayManager;->mOverlayManagerImpl:Lcom/android/internal/content/om/OverlayManagerImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/content/om/OverlayManagerImpl;->getOverlayInfosForTarget(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 453
    :catchall_b
    move-exception p1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p1
.end method

.method public whitelist getOverlayInfosForTarget(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 323
    :try_start_0
    iget-object v0, p0, Landroid/content/om/OverlayManager;->mService:Landroid/content/om/IOverlayManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p1

    .line 324
    :catch_b
    move-exception p1

    .line 325
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist invalidateCachesForOverlay(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4

    .line 344
    :try_start_0
    iget-object v0, p0, Landroid/content/om/OverlayManager;->mService:Landroid/content/om/IOverlayManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/om/IOverlayManager;->invalidateCachesForOverlay(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    .line 347
    nop

    .line 348
    return-void

    .line 345
    :catch_b
    move-exception p1

    .line 346
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setEnabled(Ljava/lang/String;ZLandroid/os/UserHandle;)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 213
    :try_start_0
    iget-object v0, p0, Landroid/content/om/OverlayManager;->mService:Landroid/content/om/IOverlayManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-interface {v0, p1, p2, p3}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 220
    goto :goto_20

    .line 214
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "setEnabled failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_16} :catch_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_16

    .line 218
    :catch_16
    move-exception p1

    .line 219
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 216
    :catch_1c
    move-exception p1

    .line 217
    invoke-direct {p0, p1}, Landroid/content/om/OverlayManager;->rethrowSecurityException(Ljava/lang/SecurityException;)V

    .line 220
    :goto_20
    nop

    .line 221
    return-void
.end method

.method public whitelist setEnabledExclusiveInCategory(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 177
    :try_start_0
    iget-object v0, p0, Landroid/content/om/OverlayManager;->mService:Landroid/content/om/IOverlayManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/om/IOverlayManager;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 184
    goto :goto_20

    .line 178
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "setEnabledExclusiveInCategory failed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_16} :catch_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_16

    .line 182
    :catch_16
    move-exception p1

    .line 183
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 180
    :catch_1c
    move-exception p1

    .line 181
    invoke-direct {p0, p1}, Landroid/content/om/OverlayManager;->rethrowSecurityException(Ljava/lang/SecurityException;)V

    .line 184
    :goto_20
    nop

    .line 185
    return-void
.end method
