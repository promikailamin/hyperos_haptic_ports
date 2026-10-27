.class public final Landroid/companion/virtual/VirtualDeviceManager;
.super Ljava/lang/Object;
.source "VirtualDeviceManager.java"


# annotations
.annotation runtime Landroid/annotation/RestrictedForEnvironment;
    environments = {
        "SDK Runtime"
    }
    from = 0x22
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;,
        Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;,
        Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;,
        Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate;,
        Landroid/companion/virtual/VirtualDeviceManager$SoundEffectListener;,
        Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;,
        Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;,
        Landroid/companion/virtual/VirtualDeviceManager$DisplayUiMode;,
        Landroid/companion/virtual/VirtualDeviceManager$PendingIntentLaunchStatus;
    }
.end annotation


# static fields
.field public static final whitelist LAUNCH_FAILURE_NO_ACTIVITY:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LAUNCH_FAILURE_PENDING_INTENT_CANCELED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist LAUNCH_SUCCESS:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PERSISTENT_DEVICE_ID_DEFAULT:Ljava/lang/String; = "default:0"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "VirtualDeviceManager"


# instance fields
.field private final blacklist mAutomatedPackageListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/companion/virtual/IVirtualDeviceManager;

.field private final blacklist mVirtualDeviceListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;)V
    .registers 4

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mVirtualDeviceListeners:Ljava/util/List;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mAutomatedPackageListeners:Ljava/util/List;

    .line 199
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    .line 200
    iput-object p2, p0, Landroid/companion/virtual/VirtualDeviceManager;->mContext:Landroid/content/Context;

    .line 201
    return-void
.end method


# virtual methods
.method public whitelist createVirtualDevice(ILandroid/companion/virtual/VirtualDeviceParams;)Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;
    .registers 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 225
    const-string/jumbo v0, "params must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 227
    :try_start_6
    new-instance v1, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;-><init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;ILandroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/VirtualDeviceManager-IA;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_13

    return-object v1

    .line 228
    :catch_13
    move-exception v0

    move-object p1, v0

    .line 229
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getAllPersistentDeviceIds()Ljava/util/Set;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 549
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_10

    .line 550
    const-string v0, "VirtualDeviceManager"

    const-string v1, "Failed to retrieve persistent ids; no virtual device manager service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 554
    :cond_10
    :try_start_10
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v1}, Landroid/companion/virtual/IVirtualDeviceManager;->getAllPersistentDeviceIds()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1b} :catch_1c

    return-object v0

    .line 555
    :catch_1c
    move-exception v0

    .line 556
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist getAudioPlaybackSessionId(I)I
    .registers 3

    .line 596
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_6

    .line 597
    const/4 p1, 0x0

    return p1

    .line 600
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDeviceManager;->getAudioPlaybackSessionId(I)I

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return p1

    .line 601
    :catch_d
    move-exception p1

    .line 602
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getAudioRecordingSessionId(I)I
    .registers 3

    .line 622
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_6

    .line 623
    const/4 p1, 0x0

    return p1

    .line 626
    :cond_6
    :try_start_6
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDeviceManager;->getAudioRecordingSessionId(I)I

    move-result p1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_c} :catch_d

    return p1

    .line 627
    :catch_d
    move-exception p1

    .line 628
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getDeviceIdForDisplayId(I)I
    .registers 4

    .line 497
    const/4 v0, 0x0

    if-eqz p1, :cond_20

    const/4 v1, -0x1

    if-ne p1, v1, :cond_7

    goto :goto_20

    .line 501
    :cond_7
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v1, :cond_13

    .line 502
    const-string p1, "VirtualDeviceManager"

    const-string v1, "Failed to retrieve virtual devices; no virtual device manager service."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    return v0

    .line 506
    :cond_13
    :try_start_13
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDeviceManager;->getDeviceIdForDisplayId(I)I

    move-result p1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_19} :catch_1a

    return p1

    .line 507
    :catch_1a
    move-exception p1

    .line 508
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 499
    :cond_20
    :goto_20
    return v0
.end method

.method public blacklist getDevicePolicy(II)I
    .registers 5

    .line 449
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 451
    return v0

    .line 453
    :cond_4
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v1, :cond_10

    .line 454
    const-string p1, "VirtualDeviceManager"

    const-string p2, "Failed to retrieve device policy; no virtual device manager service."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    return v0

    .line 458
    :cond_10
    :try_start_10
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0, p1, p2}, Landroid/companion/virtual/IVirtualDeviceManager;->getDevicePolicy(II)I

    move-result p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_17

    return p1

    .line 459
    :catch_17
    move-exception p1

    .line 460
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getDevicePolicyForDisplayId(II)I
    .registers 5

    .line 474
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 476
    return v0

    .line 478
    :cond_4
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v1, :cond_10

    .line 479
    const-string p1, "VirtualDeviceManager"

    const-string p2, "Failed to retrieve device policy; no virtual device manager service."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return v0

    .line 483
    :cond_10
    :try_start_10
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0, p1, p2}, Landroid/companion/virtual/IVirtualDeviceManager;->getDevicePolicyForDisplayId(II)I

    move-result p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_17

    return p1

    .line 484
    :catch_17
    move-exception p1

    .line 485
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getDisplayNameForPersistentDeviceId(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 527
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_d

    .line 528
    const-string p1, "VirtualDeviceManager"

    const-string v0, "Failed to retrieve virtual devices; no virtual device manager service."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/4 p1, 0x0

    return-object p1

    .line 532
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    .line 533
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 532
    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDeviceManager;->getDisplayNameForPersistentDeviceId(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_19} :catch_1a

    return-object p1

    .line 534
    :catch_1a
    move-exception p1

    .line 535
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getVirtualDevice(I)Landroid/companion/virtual/VirtualDevice;
    .registers 4

    .line 304
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 305
    const-string p1, "VirtualDeviceManager"

    const-string v0, "Failed to retrieve virtual devices; no virtual device manager service."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-object v1

    .line 308
    :cond_d
    const/4 v0, -0x1

    if-eq p1, v0, :cond_20

    if-nez p1, :cond_13

    goto :goto_20

    .line 312
    :cond_13
    :try_start_13
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDeviceManager;->getVirtualDevice(I)Landroid/companion/virtual/VirtualDevice;

    move-result-object p1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_19} :catch_1a

    return-object p1

    .line 313
    :catch_1a
    move-exception p1

    .line 314
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 309
    :cond_20
    :goto_20
    return-object v1
.end method

.method public whitelist getVirtualDevices()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/companion/virtual/VirtualDevice;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_11

    .line 279
    const-string v0, "VirtualDeviceManager"

    const-string v1, "Failed to retrieve virtual devices; no virtual device manager service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 283
    :cond_11
    :try_start_11
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDeviceManager;->getVirtualDevices()Ljava/util/List;

    move-result-object v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_18

    return-object v0

    .line 284
    :catch_18
    move-exception v0

    .line 285
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist isValidVirtualDeviceId(I)Z
    .registers 3

    .line 569
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_d

    .line 570
    const-string p1, "VirtualDeviceManager"

    const-string v0, "Failed to retrieve virtual devices; no virtual device manager service."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 p1, 0x0

    return p1

    .line 574
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDeviceManager;->isValidVirtualDeviceId(I)Z

    move-result p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return p1

    .line 575
    :catch_14
    move-exception p1

    .line 576
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist isVirtualDeviceOwnedMirrorDisplay(I)Z
    .registers 3

    .line 663
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_d

    .line 664
    const-string p1, "VirtualDeviceManager"

    const-string v0, "Failed to retrieve virtual devices; no virtual device manager service."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/4 p1, 0x0

    return p1

    .line 668
    :cond_d
    :try_start_d
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDeviceManager;->isVirtualDeviceOwnedMirrorDisplay(I)Z

    move-result p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_13} :catch_14

    return p1

    .line 669
    :catch_14
    move-exception p1

    .line 670
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist playSoundEffect(II)V
    .registers 4

    .line 645
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_c

    .line 646
    const-string p1, "VirtualDeviceManager"

    const-string p2, "Failed to dispatch sound effect; no virtual device manager service."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return-void

    .line 650
    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v0, p1, p2}, Landroid/companion/virtual/IVirtualDeviceManager;->playSoundEffect(II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 653
    nop

    .line 654
    return-void

    .line 651
    :catch_13
    move-exception p1

    .line 652
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist registerAutomatedPackageListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/computercontrol/AutomatedPackageListener;)V
    .registers 5

    .line 387
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_c

    .line 388
    const-string p1, "VirtualDeviceManager"

    const-string p2, "Failed to register listener; no virtual device manager service."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-void

    .line 391
    :cond_c
    new-instance v0, Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate;

    .line 392
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    .line 393
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/companion/virtual/computercontrol/AutomatedPackageListener;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/computercontrol/AutomatedPackageListener;Landroid/companion/virtual/VirtualDeviceManager-IA;)V

    .line 394
    iget-object p1, p0, Landroid/companion/virtual/VirtualDeviceManager;->mAutomatedPackageListeners:Ljava/util/List;

    monitor-enter p1

    .line 396
    :try_start_21
    iget-object p2, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {p2, v0}, Landroid/companion/virtual/IVirtualDeviceManager;->registerAutomatedPackageListener(Landroid/companion/virtual/computercontrol/IAutomatedPackageListener;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_30
    .catchall {:try_start_21 .. :try_end_26} :catchall_2e

    .line 399
    nop

    .line 400
    :try_start_27
    iget-object p2, p0, Landroid/companion/virtual/VirtualDeviceManager;->mAutomatedPackageListeners:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    monitor-exit p1

    .line 402
    return-void

    .line 401
    :catchall_2e
    move-exception p2

    goto :goto_36

    .line 397
    :catch_30
    move-exception p2

    .line 398
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 401
    :goto_36
    monitor-exit p1
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_2e

    throw p2
.end method

.method public whitelist registerVirtualDeviceListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;)V
    .registers 5

    .line 329
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_c

    .line 330
    const-string p1, "VirtualDeviceManager"

    const-string p2, "Failed to register listener; no virtual device manager service."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return-void

    .line 333
    :cond_c
    new-instance v0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;

    .line 334
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    .line 335
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;Landroid/companion/virtual/VirtualDeviceManager-IA;)V

    .line 336
    iget-object p1, p0, Landroid/companion/virtual/VirtualDeviceManager;->mVirtualDeviceListeners:Ljava/util/List;

    monitor-enter p1

    .line 338
    :try_start_21
    iget-object p2, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {p2, v0}, Landroid/companion/virtual/IVirtualDeviceManager;->registerVirtualDeviceListener(Landroid/companion/virtual/IVirtualDeviceListener;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_26} :catch_30
    .catchall {:try_start_21 .. :try_end_26} :catchall_2e

    .line 341
    nop

    .line 342
    :try_start_27
    iget-object p2, p0, Landroid/companion/virtual/VirtualDeviceManager;->mVirtualDeviceListeners:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    monitor-exit p1

    .line 344
    return-void

    .line 343
    :catchall_2e
    move-exception p2

    goto :goto_36

    .line 339
    :catch_30
    move-exception p2

    .line 340
    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p2

    throw p2

    .line 343
    :goto_36
    monitor-exit p1
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_2e

    throw p2
.end method

.method public blacklist requestComputerControlSession(Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;Ljava/util/concurrent/Executor;Landroid/companion/virtual/computercontrol/ComputerControlSession$Callback;)V
    .registers 5

    .line 249
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_c

    .line 250
    const-string p1, "VirtualDeviceManager"

    const-string p2, "Failed to request a new session; no virtual device manager service."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void

    .line 253
    :cond_c
    const-string/jumbo v0, "params must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 254
    const-string v0, "executor must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 255
    const-string v0, "callback must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 257
    :try_start_1c
    new-instance v0, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;

    invoke-direct {v0, p2, p3}, Landroid/companion/virtual/computercontrol/ComputerControlSession$CallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/computercontrol/ComputerControlSession$Callback;)V

    .line 259
    iget-object p2, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    iget-object p3, p0, Landroid/companion/virtual/VirtualDeviceManager;->mContext:Landroid/content/Context;

    .line 260
    invoke-virtual {p3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object p3

    .line 259
    invoke-interface {p2, p3, p1, v0}, Landroid/companion/virtual/IVirtualDeviceManager;->requestComputerControlSession(Landroid/content/AttributionSource;Landroid/companion/virtual/computercontrol/ComputerControlSessionParams;Landroid/companion/virtual/computercontrol/IComputerControlSessionCallback;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_2c} :catch_2e

    .line 263
    nop

    .line 264
    return-void

    .line 261
    :catch_2e
    move-exception p1

    .line 262
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist unregisterAutomatedPackageListener(Landroid/companion/virtual/computercontrol/AutomatedPackageListener;)V
    .registers 6

    .line 413
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_c

    .line 414
    const-string p1, "VirtualDeviceManager"

    const-string v0, "Failed to unregister listener; no virtual device manager service."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void

    .line 417
    :cond_c
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mAutomatedPackageListeners:Ljava/util/List;

    monitor-enter v0

    .line 419
    :try_start_12
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceManager;->mAutomatedPackageListeners:Ljava/util/List;

    .line 420
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 421
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 422
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate;

    .line 423
    invoke-static {v2}, Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate;->-$$Nest$fgetmListener(Landroid/companion/virtual/VirtualDeviceManager$AutomatedPackageListenerDelegate;)Landroid/companion/virtual/computercontrol/AutomatedPackageListener;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_3d

    if-ne v3, p1, :cond_3a

    .line 425
    :try_start_2a
    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v3, v2}, Landroid/companion/virtual/IVirtualDeviceManager;->unregisterAutomatedPackageListener(Landroid/companion/virtual/computercontrol/IAutomatedPackageListener;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2f} :catch_34
    .catchall {:try_start_2a .. :try_end_2f} :catchall_3d

    .line 428
    nop

    .line 429
    :try_start_30
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_3a

    .line 426
    :catch_34
    move-exception p1

    .line 427
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 431
    :cond_3a
    :goto_3a
    goto :goto_18

    .line 432
    :cond_3b
    monitor-exit v0

    .line 433
    return-void

    .line 432
    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_30 .. :try_end_3f} :catchall_3d

    throw p1
.end method

.method public whitelist unregisterVirtualDeviceListener(Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;)V
    .registers 6

    .line 354
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    if-nez v0, :cond_c

    .line 355
    const-string p1, "VirtualDeviceManager"

    const-string v0, "Failed to unregister listener; no virtual device manager service."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void

    .line 358
    :cond_c
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager;->mVirtualDeviceListeners:Ljava/util/List;

    monitor-enter v0

    .line 360
    :try_start_12
    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceManager;->mVirtualDeviceListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 361
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 362
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;

    .line 363
    invoke-static {v2}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;->-$$Nest$fgetmListener(Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;)Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_3d

    if-ne v3, p1, :cond_3a

    .line 365
    :try_start_2a
    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceManager;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    invoke-interface {v3, v2}, Landroid/companion/virtual/IVirtualDeviceManager;->unregisterVirtualDeviceListener(Landroid/companion/virtual/IVirtualDeviceListener;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2f} :catch_34
    .catchall {:try_start_2a .. :try_end_2f} :catchall_3d

    .line 368
    nop

    .line 369
    :try_start_30
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_3a

    .line 366
    :catch_34
    move-exception p1

    .line 367
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 371
    :cond_3a
    :goto_3a
    goto :goto_18

    .line 372
    :cond_3b
    monitor-exit v0

    .line 373
    return-void

    .line 372
    :catchall_3d
    move-exception p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_30 .. :try_end_3f} :catchall_3d

    throw p1
.end method
