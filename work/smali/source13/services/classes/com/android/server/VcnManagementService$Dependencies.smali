.class public Lcom/android/server/VcnManagementService$Dependencies;
.super Ljava/lang/Object;
.source "VcnManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VcnManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dependencies"
.end annotation


# instance fields
.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBinderCallingUid()I
    .registers 2

    .line 322
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public getLooper()Landroid/os/Looper;
    .registers 3

    .line 294
    iget-object v0, p0, Lcom/android/server/VcnManagementService$Dependencies;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1c

    .line 295
    monitor-enter p0

    .line 296
    :try_start_5
    iget-object v0, p0, Lcom/android/server/VcnManagementService$Dependencies;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_17

    .line 297
    new-instance v0, Landroid/os/HandlerThread;

    invoke-static {}, Lcom/android/server/VcnManagementService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/VcnManagementService$Dependencies;->mHandlerThread:Landroid/os/HandlerThread;

    .line 298
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 300
    :cond_17
    monitor-exit p0

    goto :goto_1c

    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw v0

    .line 302
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/android/server/VcnManagementService$Dependencies;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getSubIdForWifiInfo(Landroid/net/wifi/WifiInfo;)I
    .registers 3
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;

    .line 357
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSubscriptionId()I

    move-result v0

    return v0
.end method

.method public newLocationPermissionChecker(Landroid/content/Context;)Lcom/android/net/module/util/LocationPermissionChecker;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 362
    new-instance v0, Lcom/android/net/module/util/LocationPermissionChecker;

    invoke-direct {v0, p1}, Lcom/android/net/module/util/LocationPermissionChecker;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public newPersistableBundleLockingReadWriteHelper(Ljava/lang/String;)Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .line 333
    new-instance v0, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;

    invoke-direct {v0, p1}, Lcom/android/server/vcn/util/PersistableBundleUtils$LockingReadWriteHelper;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public newTelephonySubscriptionTracker(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;)Lcom/android/server/vcn/TelephonySubscriptionTracker;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;

    .line 310
    new-instance v0, Lcom/android/server/vcn/TelephonySubscriptionTracker;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p1, v1, p3}, Lcom/android/server/vcn/TelephonySubscriptionTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionTrackerCallback;)V

    return-object v0
.end method

.method public newVcn(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/VcnManagementService$VcnCallback;)Lcom/android/server/vcn/Vcn;
    .registers 13
    .param p1, "vcnContext"    # Lcom/android/server/vcn/VcnContext;
    .param p2, "subscriptionGroup"    # Landroid/os/ParcelUuid;
    .param p3, "config"    # Landroid/net/vcn/VcnConfig;
    .param p4, "snapshot"    # Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;
    .param p5, "vcnCallback"    # Lcom/android/server/VcnManagementService$VcnCallback;

    .line 352
    new-instance v6, Lcom/android/server/vcn/Vcn;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vcn/Vcn;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Landroid/net/vcn/VcnConfig;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/VcnManagementService$VcnCallback;)V

    return-object v6
.end method

.method public newVcnContext(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/vcn/VcnNetworkProvider;Z)Lcom/android/server/vcn/VcnContext;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "vcnNetworkProvider"    # Lcom/android/server/vcn/VcnNetworkProvider;
    .param p4, "isInTestMode"    # Z

    .line 342
    new-instance v0, Lcom/android/server/vcn/VcnContext;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/vcn/VcnContext;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/vcn/VcnNetworkProvider;Z)V

    return-object v0
.end method
