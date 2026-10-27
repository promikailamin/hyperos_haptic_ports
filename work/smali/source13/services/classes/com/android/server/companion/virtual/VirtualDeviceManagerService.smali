.class public Lcom/android/server/companion/virtual/VirtualDeviceManagerService;
.super Lcom/android/server/SystemService;
.source "VirtualDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;,
        Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;,
        Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "VirtualDeviceManagerService"


# instance fields
.field private final mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

.field private final mAllAssociations:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCameraAccessControllers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/companion/virtual/CameraAccessController;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

.field private final mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

.field private final mOnAssociationsChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingTrampolines:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

.field private final mVirtualDeviceManagerLock:Ljava/lang/Object;

.field private final mVirtualDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/companion/virtual/VirtualDeviceImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmAllAssociations(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mAllAssociations:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraAccessControllers(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mCameraAccessControllers:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingTrampolines(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mPendingTrampolines:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVirtualDeviceManagerLock(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misValidVirtualDeviceLocked(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Landroid/companion/virtual/IVirtualDevice;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->isValidVirtualDeviceLocked(Landroid/companion/virtual/IVirtualDevice;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mHandler:Landroid/os/Handler;

    .line 73
    new-instance v1, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

    invoke-direct {v1, v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mPendingTrampolines:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mCameraAccessControllers:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    .line 93
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mAllAssociations:Ljava/util/concurrent/ConcurrentHashMap;

    .line 100
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mOnAssociationsChangedListeners:Landroid/util/SparseArray;

    .line 109
    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$1;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

    .line 105
    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    invoke-direct {v0, p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    .line 106
    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService-IA;)V

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/companion/virtual/VirtualDeviceManagerService;
    .param p1, "x1"    # Ljava/lang/Class;

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private isValidVirtualDeviceLocked(Landroid/companion/virtual/IVirtualDevice;)Z
    .registers 4
    .param p1, "virtualDevice"    # Landroid/companion/virtual/IVirtualDevice;

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-interface {p1}, Landroid/companion/virtual/IVirtualDevice;->getAssociationId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 147
    :catch_b
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method synthetic lambda$onUserStarting$0$com-android-server-companion-virtual-VirtualDeviceManagerService(ILjava/util/List;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "associations"    # Ljava/util/List;

    .line 162
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mAllAssociations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method onCameraAccessBlocked(I)V
    .registers 12
    .param p1, "appUid"    # I

    .line 197
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 199
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_37

    .line 200
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-virtual {v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    .line 201
    .local v3, "deviceName":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    .line 202
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x104098d

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 201
    invoke-virtual {v4, p1, v5, v7}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->showToastWhereUidIsRunning(ILjava/lang/String;I)V

    .line 199
    .end local v3    # "deviceName":Ljava/lang/CharSequence;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 207
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_37
    monitor-exit v0

    .line 208
    return-void

    .line 207
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public onStart()V
    .registers 4

    .line 134
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mImpl:Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;

    const-string/jumbo v1, "virtualdevice"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 135
    const-class v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 136
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 138
    .local v0, "activityTaskManagerInternal":Lcom/android/server/wm/ActivityTaskManagerInternal;
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerActivityStartInterceptor(ILcom/android/server/wm/ActivityInterceptorCallback;)V

    .line 141
    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 10
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 154
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onUserStarting(Lcom/android/server/SystemService$TargetUser;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v0

    .line 156
    .local v0, "userContext":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_13
    const-class v2, Landroid/companion/CompanionDeviceManager;

    .line 158
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/CompanionDeviceManager;

    .line 159
    .local v2, "cdm":Landroid/companion/CompanionDeviceManager;
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v3

    .line 160
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mAllAssociations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2}, Landroid/companion/CompanionDeviceManager;->getAllAssociations()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-instance v4, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;I)V

    .line 163
    .local v4, "listener":Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mOnAssociationsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    new-instance v5, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v2, v5, v4}, Landroid/companion/CompanionDeviceManager;->addOnAssociationsChangedListener(Ljava/util/concurrent/Executor;Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;)V

    .line 165
    new-instance v5, Lcom/android/server/companion/virtual/CameraAccessController;

    iget-object v6, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mLocalService:Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;

    new-instance v7, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V

    invoke-direct {v5, v0, v6, v7}, Lcom/android/server/companion/virtual/CameraAccessController;-><init>(Landroid/content/Context;Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;Lcom/android/server/companion/virtual/CameraAccessController$CameraAccessBlockedCallback;)V

    .line 167
    .local v5, "cameraAccessController":Lcom/android/server/companion/virtual/CameraAccessController;
    iget-object v6, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mCameraAccessControllers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    .end local v2    # "cdm":Landroid/companion/CompanionDeviceManager;
    .end local v3    # "userId":I
    .end local v4    # "listener":Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;
    .end local v5    # "cameraAccessController":Lcom/android/server/companion/virtual/CameraAccessController;
    monitor-exit v1

    .line 169
    return-void

    .line 168
    :catchall_55
    move-exception v2

    monitor-exit v1
    :try_end_57
    .catchall {:try_start_13 .. :try_end_57} :catchall_55

    throw v2
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 10
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 173
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onUserStopping(Lcom/android/server/SystemService$TargetUser;)V

    .line 174
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mVirtualDeviceManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_6
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    .line 176
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mAllAssociations:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 178
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    .line 177
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/companion/CompanionDeviceManager;

    .line 179
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/CompanionDeviceManager;

    .line 180
    .local v2, "cdm":Landroid/companion/CompanionDeviceManager;
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mOnAssociationsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;

    .line 181
    .local v3, "listener":Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;
    if-eqz v3, :cond_3a

    .line 182
    invoke-virtual {v2, v3}, Landroid/companion/CompanionDeviceManager;->removeOnAssociationsChangedListener(Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;)V

    .line 183
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mOnAssociationsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 185
    :cond_3a
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mCameraAccessControllers:Landroid/util/SparseArray;

    .line 186
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v5

    .line 185
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/companion/virtual/CameraAccessController;

    .line 187
    .local v4, "cameraAccessController":Lcom/android/server/companion/virtual/CameraAccessController;
    if-eqz v4, :cond_55

    .line 188
    invoke-virtual {v4}, Lcom/android/server/companion/virtual/CameraAccessController;->close()V

    .line 189
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->mCameraAccessControllers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_6d

    .line 191
    :cond_55
    const-string v5, "VirtualDeviceManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot unregister cameraAccessController for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v1    # "userId":I
    .end local v2    # "cdm":Landroid/companion/CompanionDeviceManager;
    .end local v3    # "listener":Landroid/companion/CompanionDeviceManager$OnAssociationsChangedListener;
    .end local v4    # "cameraAccessController":Lcom/android/server/companion/virtual/CameraAccessController;
    :goto_6d
    monitor-exit v0

    .line 194
    return-void

    .line 193
    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_6 .. :try_end_71} :catchall_6f

    throw v1
.end method
