.class public final Landroid/uwb/UwbManager;
.super Ljava/lang/Object;
.source "UwbManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/uwb/UwbManager$SendVendorUciStatus;,
        Landroid/uwb/UwbManager$RemoveProfileAdf;,
        Landroid/uwb/UwbManager$RemoveServiceProfile;,
        Landroid/uwb/UwbManager$UwbVendorUciCallback;,
        Landroid/uwb/UwbManager$AdfProvisionStateCallback;,
        Landroid/uwb/UwbManager$AdapterStateCallback;
    }
.end annotation


# static fields
.field public static final whitelist REMOVE_PROFILE_ADF_ERROR_INTERNAL:I = 0x2

.field public static final whitelist REMOVE_PROFILE_ADF_ERROR_UNKNOWN_SERVICE:I = 0x1

.field public static final whitelist REMOVE_PROFILE_ADF_SUCCESS:I = 0x0

.field public static final whitelist REMOVE_SERVICE_PROFILE_ERROR_INTERNAL:I = 0x2

.field public static final whitelist REMOVE_SERVICE_PROFILE_ERROR_UNKNOWN_SERVICE:I = 0x1

.field public static final whitelist REMOVE_SERVICE_PROFILE_SUCCESS:I = 0x0

.field public static final whitelist SEND_VENDOR_UCI_ERROR_HW:I = 0x1

.field public static final whitelist SEND_VENDOR_UCI_ERROR_INVALID_ARGS:I = 0x3

.field public static final whitelist SEND_VENDOR_UCI_ERROR_INVALID_GID:I = 0x4

.field public static final whitelist SEND_VENDOR_UCI_ERROR_OFF:I = 0x2

.field public static final whitelist SEND_VENDOR_UCI_SUCCESS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "UwbManager"


# instance fields
.field private final blacklist mAdapterStateListener:Landroid/uwb/AdapterStateListener;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mRangingManager:Landroid/uwb/RangingManager;

.field private final blacklist mUwbAdapter:Landroid/uwb/IUwbAdapter;

.field private final blacklist mUwbVendorUciCallbackListener:Landroid/uwb/UwbVendorUciCallbackListener;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/uwb/IUwbAdapter;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/uwb/IUwbAdapter;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p1, p0, Landroid/uwb/UwbManager;->mContext:Landroid/content/Context;

    .line 325
    iput-object p2, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    .line 326
    new-instance v0, Landroid/uwb/AdapterStateListener;

    invoke-direct {v0, p2}, Landroid/uwb/AdapterStateListener;-><init>(Landroid/uwb/IUwbAdapter;)V

    iput-object v0, p0, Landroid/uwb/UwbManager;->mAdapterStateListener:Landroid/uwb/AdapterStateListener;

    .line 327
    new-instance v0, Landroid/uwb/RangingManager;

    invoke-direct {v0, p2}, Landroid/uwb/RangingManager;-><init>(Landroid/uwb/IUwbAdapter;)V

    iput-object v0, p0, Landroid/uwb/UwbManager;->mRangingManager:Landroid/uwb/RangingManager;

    .line 328
    new-instance v0, Landroid/uwb/UwbVendorUciCallbackListener;

    invoke-direct {v0, p2}, Landroid/uwb/UwbVendorUciCallbackListener;-><init>(Landroid/uwb/IUwbAdapter;)V

    iput-object v0, p0, Landroid/uwb/UwbManager;->mUwbVendorUciCallbackListener:Landroid/uwb/UwbVendorUciCallbackListener;

    .line 329
    return-void
.end method

.method private blacklist elapsedRealtimeResolutionNanosInternal(Ljava/lang/String;)J
    .registers 4
    .param p1, "chipId"    # Ljava/lang/String;

    .line 464
    :try_start_0
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0, p1}, Landroid/uwb/IUwbAdapter;->getTimestampResolutionNanos(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide v0

    .line 465
    :catch_7
    move-exception v0

    .line 466
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist getSpecificationInfoInternal(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 4
    .param p1, "chipId"    # Ljava/lang/String;

    .line 427
    :try_start_0
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0, p1}, Landroid/uwb/IUwbAdapter;->getSpecificationInfo(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 428
    :catch_7
    move-exception v0

    .line 429
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist openRangingSessionInternal(Landroid/os/PersistableBundle;Ljava/util/concurrent/Executor;Landroid/uwb/RangingSession$Callback;Ljava/lang/String;)Landroid/os/CancellationSignal;
    .registers 11
    .param p1, "parameters"    # Landroid/os/PersistableBundle;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callbacks"    # Landroid/uwb/RangingSession$Callback;
    .param p4, "chipId"    # Ljava/lang/String;

    .line 546
    iget-object v0, p0, Landroid/uwb/UwbManager;->mRangingManager:Landroid/uwb/RangingManager;

    iget-object v1, p0, Landroid/uwb/UwbManager;->mContext:Landroid/content/Context;

    .line 547
    invoke-virtual {v1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v1

    .line 546
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/uwb/RangingManager;->openSession(Landroid/content/AttributionSource;Landroid/os/PersistableBundle;Ljava/util/concurrent/Executor;Landroid/uwb/RangingSession$Callback;Ljava/lang/String;)Landroid/os/CancellationSignal;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist addServiceProfile(Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;
    .registers 4
    .param p1, "parameters"    # Landroid/os/PersistableBundle;

    .line 659
    :try_start_0
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0, p1}, Landroid/uwb/IUwbAdapter;->addServiceProfile(Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 660
    :catch_7
    move-exception v0

    .line 661
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist elapsedRealtimeResolutionNanos()J
    .registers 3

    .line 443
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/uwb/UwbManager;->elapsedRealtimeResolutionNanosInternal(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist elapsedRealtimeResolutionNanos(Ljava/lang/String;)J
    .registers 4
    .param p1, "chipId"    # Ljava/lang/String;

    .line 458
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-direct {p0, p1}, Landroid/uwb/UwbManager;->elapsedRealtimeResolutionNanosInternal(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getAdapterState()I
    .registers 2

    .line 561
    iget-object v0, p0, Landroid/uwb/UwbManager;->mAdapterStateListener:Landroid/uwb/AdapterStateListener;

    invoke-virtual {v0}, Landroid/uwb/AdapterStateListener;->getAdapterState()I

    move-result v0

    return v0
.end method

.method public whitelist getAdfCertificateInfo(Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;
    .registers 4
    .param p1, "serviceProfileBundle"    # Landroid/os/PersistableBundle;

    .line 755
    :try_start_0
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0, p1}, Landroid/uwb/IUwbAdapter;->getAdfCertificateAndInfo(Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 756
    :catch_7
    move-exception v0

    .line 757
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAdfProvisioningAuthorities(Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;
    .registers 4
    .param p1, "serviceProfileBundle"    # Landroid/os/PersistableBundle;

    .line 736
    :try_start_0
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0, p1}, Landroid/uwb/IUwbAdapter;->getAdfProvisioningAuthorities(Landroid/os/PersistableBundle;)Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 737
    :catch_7
    move-exception v0

    .line 738
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getAllServiceProfiles()Landroid/os/PersistableBundle;
    .registers 3

    .line 717
    :try_start_0
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0}, Landroid/uwb/IUwbAdapter;->getAllServiceProfiles()Landroid/os/PersistableBundle;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 718
    :catch_7
    move-exception v0

    .line 719
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getChipInfos()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;"
        }
    .end annotation

    .line 621
    :try_start_0
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0}, Landroid/uwb/IUwbAdapter;->getChipInfos()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 622
    :catch_7
    move-exception v0

    .line 623
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDefaultChipId()Ljava/lang/String;
    .registers 3

    .line 641
    :try_start_0
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0}, Landroid/uwb/IUwbAdapter;->getDefaultChipId()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 642
    :catch_7
    move-exception v0

    .line 643
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getSpecificationInfo()Landroid/os/PersistableBundle;
    .registers 2

    .line 405
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/uwb/UwbManager;->getSpecificationInfoInternal(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSpecificationInfo(Ljava/lang/String;)Landroid/os/PersistableBundle;
    .registers 3
    .param p1, "chipId"    # Ljava/lang/String;

    .line 421
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-direct {p0, p1}, Landroid/uwb/UwbManager;->getSpecificationInfoInternal(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isUwbEnabled()Z
    .registers 4

    .line 579
    invoke-virtual {p0}, Landroid/uwb/UwbManager;->getAdapterState()I

    move-result v0

    .line 580
    .local v0, "adapterState":I
    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    if-ne v0, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :cond_c
    :goto_c
    return v1
.end method

.method public whitelist openRangingSession(Landroid/os/PersistableBundle;Ljava/util/concurrent/Executor;Landroid/uwb/RangingSession$Callback;)Landroid/os/CancellationSignal;
    .registers 5
    .param p1, "parameters"    # Landroid/os/PersistableBundle;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callbacks"    # Landroid/uwb/RangingSession$Callback;

    .line 511
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/uwb/UwbManager;->openRangingSessionInternal(Landroid/os/PersistableBundle;Ljava/util/concurrent/Executor;Landroid/uwb/RangingSession$Callback;Ljava/lang/String;)Landroid/os/CancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist openRangingSession(Landroid/os/PersistableBundle;Ljava/util/concurrent/Executor;Landroid/uwb/RangingSession$Callback;Ljava/lang/String;)Landroid/os/CancellationSignal;
    .registers 6
    .param p1, "parameters"    # Landroid/os/PersistableBundle;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callbacks"    # Landroid/uwb/RangingSession$Callback;
    .param p4, "chipId"    # Ljava/lang/String;

    .line 540
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/uwb/UwbManager;->openRangingSessionInternal(Landroid/os/PersistableBundle;Ljava/util/concurrent/Executor;Landroid/uwb/RangingSession$Callback;Ljava/lang/String;)Landroid/os/CancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public whitelist provisionProfileAdfByScript(Landroid/os/PersistableBundle;Ljava/util/concurrent/Executor;Landroid/uwb/UwbManager$AdfProvisionStateCallback;)V
    .registers 7
    .param p1, "serviceProfileBundle"    # Landroid/os/PersistableBundle;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/uwb/UwbManager$AdfProvisionStateCallback;

    .line 772
    if-eqz p2, :cond_20

    .line 773
    if-eqz p3, :cond_18

    .line 774
    invoke-virtual {p3}, Landroid/uwb/UwbManager$AdfProvisionStateCallback;->getProxy()Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;

    move-result-object v0

    .line 775
    .local v0, "proxy":Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;
    invoke-virtual {v0, p2, p3}, Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;->initProxy(Ljava/util/concurrent/Executor;Landroid/uwb/UwbManager$AdfProvisionStateCallback;)V

    .line 777
    :try_start_b
    iget-object v1, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v1, p1, v0}, Landroid/uwb/IUwbAdapter;->provisionProfileAdfByScript(Landroid/os/PersistableBundle;Landroid/uwb/IUwbAdfProvisionStateCallbacks;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    .line 780
    nop

    .line 781
    return-void

    .line 778
    :catch_12
    move-exception v1

    .line 779
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 773
    .end local v0    # "proxy":Landroid/uwb/UwbManager$AdfProvisionStateCallback$AdfProvisionStateCallbackProxy;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 772
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist registerAdapterStateCallback(Ljava/util/concurrent/Executor;Landroid/uwb/UwbManager$AdapterStateCallback;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/uwb/UwbManager$AdapterStateCallback;

    .line 346
    iget-object v0, p0, Landroid/uwb/UwbManager;->mAdapterStateListener:Landroid/uwb/AdapterStateListener;

    invoke-virtual {v0, p1, p2}, Landroid/uwb/AdapterStateListener;->register(Ljava/util/concurrent/Executor;Landroid/uwb/UwbManager$AdapterStateCallback;)V

    .line 347
    return-void
.end method

.method public whitelist registerUwbVendorUciCallback(Ljava/util/concurrent/Executor;Landroid/uwb/UwbManager$UwbVendorUciCallback;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroid/uwb/UwbManager$UwbVendorUciCallback;

    .line 377
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbVendorUciCallbackListener:Landroid/uwb/UwbVendorUciCallbackListener;

    invoke-virtual {v0, p1, p2}, Landroid/uwb/UwbVendorUciCallbackListener;->register(Ljava/util/concurrent/Executor;Landroid/uwb/UwbManager$UwbVendorUciCallback;)V

    .line 378
    return-void
.end method

.method public whitelist removeProfileAdf(Landroid/os/PersistableBundle;)I
    .registers 4
    .param p1, "serviceProfileBundle"    # Landroid/os/PersistableBundle;

    .line 818
    :try_start_0
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0, p1}, Landroid/uwb/IUwbAdapter;->removeProfileAdf(Landroid/os/PersistableBundle;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 819
    :catch_7
    move-exception v0

    .line 820
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeServiceProfile(Landroid/os/PersistableBundle;)I
    .registers 4
    .param p1, "parameters"    # Landroid/os/PersistableBundle;

    .line 702
    :try_start_0
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0, p1}, Landroid/uwb/IUwbAdapter;->removeServiceProfile(Landroid/os/PersistableBundle;)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 703
    :catch_7
    move-exception v0

    .line 704
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist sendVendorUciMessage(II[B)I
    .registers 6
    .param p1, "gid"    # I
    .param p2, "oid"    # I
    .param p3, "payload"    # [B

    .line 879
    :try_start_0
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbAdapter:Landroid/uwb/IUwbAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/uwb/IUwbAdapter;->sendVendorUciMessage(II[B)I

    move-result v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 880
    :catch_7
    move-exception v0

    .line 881
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setUwbEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 598
    iget-object v0, p0, Landroid/uwb/UwbManager;->mAdapterStateListener:Landroid/uwb/AdapterStateListener;

    invoke-virtual {v0, p1}, Landroid/uwb/AdapterStateListener;->setEnabled(Z)V

    .line 599
    return-void
.end method

.method public whitelist unregisterAdapterStateCallback(Landroid/uwb/UwbManager$AdapterStateCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/uwb/UwbManager$AdapterStateCallback;

    .line 360
    iget-object v0, p0, Landroid/uwb/UwbManager;->mAdapterStateListener:Landroid/uwb/AdapterStateListener;

    invoke-virtual {v0, p1}, Landroid/uwb/AdapterStateListener;->unregister(Landroid/uwb/UwbManager$AdapterStateCallback;)V

    .line 361
    return-void
.end method

.method public whitelist unregisterUwbVendorUciCallback(Landroid/uwb/UwbManager$UwbVendorUciCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/uwb/UwbManager$UwbVendorUciCallback;

    .line 391
    iget-object v0, p0, Landroid/uwb/UwbManager;->mUwbVendorUciCallbackListener:Landroid/uwb/UwbVendorUciCallbackListener;

    invoke-virtual {v0, p1}, Landroid/uwb/UwbVendorUciCallbackListener;->unregister(Landroid/uwb/UwbManager$UwbVendorUciCallback;)V

    .line 392
    return-void
.end method
