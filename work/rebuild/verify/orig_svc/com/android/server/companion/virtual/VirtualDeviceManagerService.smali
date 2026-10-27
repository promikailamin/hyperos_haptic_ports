.class public Lcom/android/server/companion/virtual/VirtualDeviceManagerService;
.super Lcom/android/server/SystemService;
.source "VirtualDeviceManagerService.java"


# static fields
.field public static final VIRTUAL_DEVICE_COMPANION_DEVICE_PROFILES:Ljava/util/List;

.field public static sNextUniqueIndex:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public mActiveAssociations:Landroid/util/ArrayMap;

.field public final mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

.field public final mAppsOnVirtualDeviceListeners:Ljava/util/ArrayList;

.field public final mAutomatedPackagesRepository:Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;

.field public final mComputerControlSessionProcessor:Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor;

.field public final mHandler:Landroid/os/Handler;

.field public final mImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

.field public final mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field public final mNativeImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerNativeImpl;

.field public final mPendingTrampolines:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

.field public final mPersistentDeviceIdRemovedListeners:Ljava/util/ArrayList;

.field public mStrongAuthTracker:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;

.field public final mVirtualDeviceListeners:Landroid/os/RemoteCallbackList;

.field public final mVirtualDeviceLog:Lcom/android/server/companion/virtual/VirtualDeviceLog;

.field public final mVirtualDeviceManagerLock:Ljava/lang/Object;

.field public final mVirtualDevices:Landroid/util/SparseArray;


# direct methods
.method public static synthetic $r8$lambda$NyKvvyu73vZu5wAEGocwH5wi02c(Ljava/util/Set;Ljava/util/List;)V
    .registers 5

    .line 332
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 333
    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 334
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/Consumer;

    invoke-interface {v2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_23
    return-void
.end method

.method public static synthetic $r8$lambda$O3TxvwvjFBP7-FnwR7Kkf3uxOhg(ILandroid/companion/virtual/IVirtualDeviceListener;)V
    .registers 3

    .line 364
    :try_start_0
    invoke-interface {p1, p0}, Landroid/companion/virtual/IVirtualDeviceListener;->onVirtualDeviceClosed(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 366
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to invoke onVirtualDeviceClosed listener: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 366
    const-string p1, "VirtualDeviceManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic $r8$lambda$T9YIgw6Pk0OPxIVRAYUKbh8IkHE(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->lambda$removeVirtualDevice$4(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$eM-uhh-4fTQJevYwUm88_ltE5E4(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->onCameraAccessBlocked(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$h7cA1-6fEUB71bzEALbHs2p6rAg(Ljava/util/List;ILandroid/util/ArraySet;)V
    .registers 5

    const/4 v0, 0x0

    .line 315
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 316
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal$AppsOnVirtualDeviceListener;

    invoke-interface {v1, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal$AppsOnVirtualDeviceListener;->onAppsRunningOnVirtualDeviceChanged(ILandroid/util/ArraySet;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method

.method public static synthetic $r8$lambda$hxbkct17BBzRDf3XO7clEo3lElU(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Landroid/companion/CompanionDeviceManager;Ljava/util/List;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->lambda$onStart$0(Landroid/companion/CompanionDeviceManager;Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActiveAssociations(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mActiveAssociations:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppsOnVirtualDeviceListeners(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mAppsOnVirtualDeviceListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAutomatedPackagesRepository(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mAutomatedPackagesRepository:Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmImpl(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLocalService(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingTrampolines(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mPendingTrampolines:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPersistentDeviceIdRemovedListeners(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mPersistentDeviceIdRemovedListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVirtualDeviceListeners(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/os/RemoteCallbackList;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVirtualDeviceLog(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceLog;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceLog:Lcom/android/server/companion/virtual/VirtualDeviceLog;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVirtualDeviceManagerLock(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcheckCallerHoldsHomeRole(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->checkCallerHoldsHomeRole()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetCameraAccessController(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Landroid/os/UserHandle;Landroid/companion/virtual/VirtualDeviceParams;Ljava/lang/String;)Lcom/android/server/companion/virtual/CameraAccessController;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->getCameraAccessController(Landroid/os/UserHandle;Landroid/companion/virtual/VirtualDeviceParams;Ljava/lang/String;)Lcom/android/server/companion/virtual/CameraAccessController;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetVirtualDeviceForId(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;I)Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->getVirtualDeviceForId(I)Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetVirtualDevicesSnapshot(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/util/ArrayList;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->getVirtualDevicesSnapshot()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetVIRTUAL_DEVICE_COMPANION_DEVICE_PROFILES()Ljava/util/List;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->VIRTUAL_DEVICE_COMPANION_DEVICE_PROFILES:Ljava/util/List;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsNextUniqueIndex()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->sNextUniqueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 115
    const-string v0, "android.app.role.COMPANION_DEVICE_NEARBY_DEVICE_STREAMING"

    const-string v1, "android.app.role.COMPANION_DEVICE_VIRTUAL_DEVICE"

    const-string v2, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    const-string v3, "android.app.role.COMPANION_DEVICE_APP_STREAMING"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->VIRTUAL_DEVICE_COMPANION_DEVICE_PROFILES:Ljava/util/List;

    .line 152
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->sNextUniqueIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 195
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 146
    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceLog;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceLog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceLog:Lcom/android/server/companion/virtual/VirtualDeviceLog;

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mHandler:Landroid/os/Handler;

    .line 148
    new-instance v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

    invoke-direct {v1, v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mPendingTrampolines:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

    .line 155
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mActiveAssociations:Landroid/util/ArrayMap;

    .line 178
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceListeners:Landroid/os/RemoteCallbackList;

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mAppsOnVirtualDeviceListeners:Ljava/util/ArrayList;

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mPersistentDeviceIdRemovedListeners:Ljava/util/ArrayList;

    .line 191
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 204
    new-instance v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$1;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V

    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

    .line 196
    new-instance v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    invoke-direct {v1, p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V

    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    .line 197
    new-instance v2, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerNativeImpl;

    invoke-direct {v2, p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerNativeImpl;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V

    iput-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mNativeImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerNativeImpl;

    .line 198
    new-instance v2, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Lcom/android/server/companion/virtual/VirtualDeviceManagerService-IA;)V

    iput-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 199
    new-instance v2, Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor;

    .line 200
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;)V

    invoke-direct {v2, p1, v3}, Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor;-><init>(Landroid/content/Context;Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor$VirtualDeviceFactory;)V

    iput-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mComputerControlSessionProcessor:Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor;

    .line 201
    new-instance p1, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;

    invoke-direct {p1, v0}, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mAutomatedPackagesRepository:Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;

    return-void
.end method


# virtual methods
.method public addVirtualDevice(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)V
    .registers 4

    .line 342
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDeviceId()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 344
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final checkCallerHoldsHomeRole()V
    .registers 7

    .line 444
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    .line 445
    const-string v1, "android.app.role.HOME"

    invoke-virtual {v0, v1}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 447
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    .line 448
    :goto_24
    array-length v3, p0

    if-ge v2, v3, :cond_41

    move v3, v1

    .line 449
    :goto_28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3e

    .line 450
    aget-object v4, p0, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    return-void

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 455
    :cond_41
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Caller does not hold the HOME role."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getCameraAccessController(Landroid/os/UserHandle;Landroid/companion/virtual/VirtualDeviceParams;Ljava/lang/String;)Lcom/android/server/companion/virtual/CameraAccessController;
    .registers 8

    const-wide/32 v0, 0x161fa7f8

    .line 281
    invoke-static {v0, v1, p3, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p3

    if-eqz p3, :cond_12

    const/4 p3, 0x7

    .line 284
    invoke-virtual {p2, p3}, Landroid/companion/virtual/VirtualDeviceParams;->getDevicePolicy(I)I

    move-result p2

    if-nez p2, :cond_12

    const/4 p0, 0x0

    return-object p0

    .line 288
    :cond_12
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 289
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->getVirtualDevicesSnapshot()Ljava/util/ArrayList;

    move-result-object p3

    const/4 v0, 0x0

    move v1, v0

    .line 290
    :goto_1c
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 292
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-virtual {v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getCameraAccessController()Lcom/android/server/companion/virtual/CameraAccessController;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 294
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/CameraAccessController;->getUserId()I

    move-result v3

    if-ne v3, p2, :cond_35

    return-object v2

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 297
    :cond_38
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    .line 298
    new-instance p2, Lcom/android/server/companion/virtual/CameraAccessController;

    iget-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V

    invoke-direct {p2, p1, p3, v0}, Lcom/android/server/companion/virtual/CameraAccessController;-><init>(Landroid/content/Context;Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;Lcom/android/server/companion/virtual/CameraAccessController$CameraAccessBlockedCallback;)V

    return-object p2
.end method

.method public getLocalServiceInstance()Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
    .registers 1

    .line 303
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    return-object p0
.end method

.method public final getVirtualDeviceForId(I)Lcom/android/server/companion/virtual/VirtualDeviceImpl;
    .registers 3

    .line 423
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 424
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 425
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final getVirtualDevicesSnapshot()Ljava/util/ArrayList;
    .registers 5

    .line 413
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 414
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 415
    :goto_f
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_27

    .line 416
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :catchall_25
    move-exception p0

    goto :goto_29

    .line 418
    :cond_27
    monitor-exit v0

    return-object v1

    .line 419
    :goto_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_25

    throw p0
.end method

.method public final synthetic lambda$onStart$0(Landroid/companion/CompanionDeviceManager;Ljava/util/List;)V
    .registers 3

    const/4 p2, -0x1

    .line 247
    invoke-virtual {p1, p2}, Landroid/companion/CompanionDeviceManager;->getAllAssociations(I)Ljava/util/List;

    move-result-object p1

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->onCdmAssociationsChanged(Ljava/util/List;)V

    return-void
.end method

.method public final synthetic lambda$removeVirtualDevice$4(I)V
    .registers 3

    .line 362
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceListeners:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onCameraAccessBlocked(I)V
    .registers 8

    .line 268
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->getVirtualDevicesSnapshot()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 269
    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 270
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 272
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 274
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x1040ae4

    .line 272
    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 275
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    const/4 v5, 0x1

    .line 271
    invoke-virtual {v2, p1, v3, v5, v4}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->showToastWhereUidIsRunning(ILjava/lang/String;ILandroid/os/Looper;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2f
    return-void
.end method

.method public onCdmAssociationsChanged(Ljava/util/List;)V
    .registers 8

    .line 376
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 377
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_33

    .line 378
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/AssociationInfo;

    .line 379
    sget-object v4, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->VIRTUAL_DEVICE_COMPANION_DEVICE_PROFILES:Ljava/util/List;

    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 380
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->isRevoked()Z

    move-result v4

    if-nez v4, :cond_30

    .line 382
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getId()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->createPersistentDeviceId(I)Ljava/lang/String;

    move-result-object v4

    .line 383
    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 386
    :cond_33
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 388
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 389
    :try_start_3b
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mActiveAssociations:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 390
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 391
    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mActiveAssociations:Landroid/util/ArrayMap;

    .line 393
    :goto_4a
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_6d

    .line 394
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 395
    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getPersistentDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 396
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    :catchall_68
    move-exception p0

    goto :goto_a7

    :cond_6a
    :goto_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4a

    .line 399
    :cond_6d
    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_3b .. :try_end_6e} :catchall_68

    .line 401
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_72
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 402
    const-string v1, "VirtualDeviceManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCdmAssociationsChanged, removing virtual device with deviceId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDeviceId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->close()V

    goto :goto_72

    .line 407
    :cond_9d
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a6

    .line 408
    invoke-virtual {p0, v3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->onPersistentDeviceIdsRemoved(Ljava/util/Set;)V

    :cond_a6
    return-void

    .line 399
    :goto_a7
    :try_start_a7
    monitor-exit v2
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_68

    throw p0
.end method

.method public onLockdownChanged(Z)V
    .registers 4

    .line 261
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->getVirtualDevicesSnapshot()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    .line 262
    :goto_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 263
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-virtual {v1, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->onLockdownChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_17
    return-void
.end method

.method public onPersistentDeviceIdsRemoved(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mPersistentDeviceIdRemovedListeners:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 330
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_15

    .line 331
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda3;-><init>(Ljava/util/Set;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_15
    move-exception p0

    .line 330
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public onRunningAppsChanged(ILjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mAppsOnVirtualDeviceListeners:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 313
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_22

    .line 314
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1, p3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;ILandroid/util/ArraySet;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 320
    iget-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mComputerControlSessionProcessor:Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor;

    invoke-virtual {p3, p1}, Lcom/android/server/companion/virtual/computercontrol/ComputerControlSessionProcessor;->isComputerControlSession(I)Z

    move-result p3

    if-eqz p3, :cond_21

    .line 321
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mAutomatedPackagesRepository:Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/companion/virtual/computercontrol/AutomatedPackagesRepository;->update(ILjava/lang/String;Landroid/util/ArraySet;)V

    :cond_21
    return-void

    :catchall_22
    move-exception p0

    .line 313
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public onStart()V
    .registers 5

    .line 231
    const-string/jumbo v0, "virtualdevice"

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 232
    const-string/jumbo v0, "virtualdevice_native"

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mNativeImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerNativeImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 233
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 234
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v1, 0x3

    .line 236
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerActivityStartInterceptor(ILcom/android/server/wm/ActivityInterceptorCallback;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/companion/CompanionDeviceManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/CompanionDeviceManager;

    if-eqz v0, :cond_4c

    const/4 v1, -0x1

    .line 242
    invoke-virtual {v0, v1}, Landroid/companion/CompanionDeviceManager;->getAllAssociations(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->onCdmAssociationsChanged(Ljava/util/List;)V

    .line 245
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Landroid/companion/CompanionDeviceManager;)V

    invoke-virtual {v0, v2, v3, v1}, Landroid/companion/CompanionDeviceManager;->addOnAssociationsChangedListener(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;I)V

    goto :goto_53

    .line 249
    :cond_4c
    const-string v0, "VirtualDeviceManagerService"

    const-string v1, "Failed to find CompanionDeviceManager. No CDM association info  will be available."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_53
    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mStrongAuthTracker:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;

    .line 254
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mStrongAuthTracker:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$StrongAuthTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    return-void
.end method

.method public removeVirtualDevice(I)Z
    .registers 4

    .line 354
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 p0, 0x0

    .line 356
    monitor-exit v0

    return p0

    :catchall_e
    move-exception p0

    goto :goto_22

    .line 358
    :cond_10
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 359
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_e

    .line 361
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0

    .line 359
    :goto_22
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_e

    throw p0
.end method
