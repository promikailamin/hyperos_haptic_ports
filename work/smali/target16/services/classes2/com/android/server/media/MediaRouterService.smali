.class public final Lcom/android/server/media/MediaRouterService;
.super Landroid/media/IMediaRouterService$Stub;
.source "MediaRouterService.java"

# interfaces
.implements Lcom/android/server/Watchdog$Monitor;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field public final mActivePlayerMinPriorityQueue:Landroid/util/IntArray;

.field public final mActivePlayerUidMinPriorityQueue:Landroid/util/IntArray;

.field public final mAllClientRecords:Landroid/util/ArrayMap;

.field public final mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

.field public mAudioRouteMainType:I

.field public final mAudioService:Landroid/media/IAudioService;

.field public final mBluetoothA2dpRouteId:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public mCurrentActiveUserId:I

.field public final mDefaultAudioRouteId:Ljava/lang/String;

.field public mGlobalBluetoothA2dpOn:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mLooper:Landroid/os/Looper;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public final mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field public final mUserRecords:Landroid/util/SparseArray;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActivePlayerMinPriorityQueue(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mActivePlayerMinPriorityQueue:Landroid/util/IntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActivePlayerUidMinPriorityQueue(Lcom/android/server/media/MediaRouterService;)Landroid/util/IntArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mActivePlayerUidMinPriorityQueue:Landroid/util/IntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/media/MediaRouterService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/media/MediaRouterService;)Landroid/os/Handler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLooper(Lcom/android/server/media/MediaRouterService;)Landroid/os/Looper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateRunningUserAndProfiles(Lcom/android/server/media/MediaRouterService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouterService;->updateRunningUserAndProfiles(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 101
    const-string v0, "MediaRouterService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .line 150
    invoke-direct {p0}, Landroid/media/IMediaRouterService$Stub;-><init>()V

    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    .line 126
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    .line 128
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    const/4 v0, -0x1

    .line 130
    iput v0, p0, Lcom/android/server/media/MediaRouterService;->mCurrentActiveUserId:I

    .line 136
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mActivePlayerMinPriorityQueue:Landroid/util/IntArray;

    .line 137
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mActivePlayerUidMinPriorityQueue:Landroid/util/IntArray;

    .line 139
    new-instance v0, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;-><init>(Lcom/android/server/media/MediaRouterService;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    .line 141
    iput v0, p0, Lcom/android/server/media/MediaRouterService;->mAudioRouteMainType:I

    .line 142
    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    .line 152
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MediaRouterServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 154
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLooper:Landroid/os/Looper;

    .line 158
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/media/MediaRouterService;->mHandler:Landroid/os/Handler;

    .line 159
    new-instance v2, Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-direct {v2, p1, v0}, Lcom/android/server/media/MediaRouter2ServiceImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    .line 160
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    .line 161
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x104036e

    .line 163
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/media/MediaRouterService;->mDefaultAudioRouteId:Ljava/lang/String;

    const v2, 0x10401c7

    .line 165
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mBluetoothA2dpRouteId:Ljava/lang/String;

    .line 167
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 168
    const-string v0, "audio"

    .line 169
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 168
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAudioService:Landroid/media/IAudioService;

    .line 170
    invoke-static {p1}, Lcom/android/server/media/AudioPlayerStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/server/media/AudioPlayerStateMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/media/MediaRouterService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    .line 171
    new-instance v3, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/media/MediaRouterService$AudioPlayerActiveStateChangedListenerImpl;-><init>(Lcom/android/server/media/MediaRouterService;Lcom/android/server/media/MediaRouterService-IA;)V

    invoke-virtual {v2, v3, v1}, Lcom/android/server/media/AudioPlayerStateMonitor;->registerListener(Lcom/android/server/media/AudioPlayerStateMonitor$OnAudioPlayerActiveStateChangedListener;Landroid/os/Handler;)V

    .line 175
    :try_start_97
    new-instance v1, Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;

    invoke-direct {v1, p0, v4}, Lcom/android/server/media/MediaRouterService$AudioRoutesObserverImpl;-><init>(Lcom/android/server/media/MediaRouterService;Lcom/android/server/media/MediaRouterService-IA;)V

    invoke-interface {v0, v1}, Landroid/media/IAudioService;->startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    :try_end_9f
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_9f} :catch_a0

    goto :goto_a7

    .line 177
    :catch_a0
    const-string v0, "MediaRouterService"

    const-string v1, "RemoteException in the audio service."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :goto_a7
    new-instance v5, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 181
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public clientDied(Lcom/android/server/media/MediaRouterService$ClientRecord;)V
    .registers 4

    .line 836
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 837
    :try_start_3
    iget-object p1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/media/MediaRouterService;->unregisterClientLocked(Landroid/media/IMediaRouterClient;Z)V

    .line 838
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public deselectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V
    .registers 6

    .line 690
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/media/MediaRouter2ServiceImpl;->deselectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V

    return-void
.end method

.method public deselectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V
    .registers 5

    .line 534
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->deselectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V

    return-void
.end method

.method public final disposeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;Z)V
    .registers 4

    .line 1066
    sget-boolean p0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz p0, :cond_31

    .line 1067
    const-string p0, "MediaRouterService"

    if-eqz p2, :cond_1d

    .line 1068
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Died!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 1070
    :cond_1d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Unregistered"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_31
    :goto_31
    iget p0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    if-nez p0, :cond_39

    iget-boolean p0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    if-eqz p0, :cond_41

    .line 1074
    :cond_39
    iget-object p0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 p2, 0x3

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1077
    :cond_41
    invoke-virtual {p1}, Lcom/android/server/media/MediaRouterService$ClientRecord;->dispose()V

    return-void
.end method

.method public final disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V
    .registers 4

    .line 1039
    iget v0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouterService;->isUserActiveLocked(I)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 1040
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v0, :cond_2a

    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Disposed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouterService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_2a
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    iget p1, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_31
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 386
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    const-string p3, "MediaRouterService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 388
    :cond_b
    const-string p1, "MEDIA ROUTER SERVICE (dumpsys media_router)"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 390
    const-string p1, "Global state"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mCurrentUserId="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/media/MediaRouterService;->mCurrentActiveUserId:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 394
    :try_start_31
    iget-object p3, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_38
    if-ge v0, p3, :cond_4f

    .line 396
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 397
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 398
    const-string v2, ""

    invoke-virtual {v1, p2, v2}, Lcom/android/server/media/MediaRouterService$UserRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :catchall_4d
    move-exception p0

    goto :goto_5b

    .line 400
    :cond_4f
    monitor-exit p1
    :try_end_50
    .catchall {:try_start_31 .. :try_end_50} :catchall_4d

    .line 402
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 403
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    const-string p1, ""

    invoke-virtual {p0, p2, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    .line 400
    :goto_5b
    :try_start_5b
    monitor-exit p1
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_4d

    throw p0
.end method

.method public getDeviceSuggestionsWithManager(Landroid/media/IMediaRouter2Manager;)Ljava/util/Map;
    .registers 2

    .line 750
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getDeviceSuggestionsWithManager(Landroid/media/IMediaRouter2Manager;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceSuggestionsWithRouter2(Landroid/media/IMediaRouter2;)Ljava/util/Map;
    .registers 2

    .line 571
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getDeviceSuggestionsWithRouter2(Landroid/media/IMediaRouter2;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getRemoteSessions(Landroid/media/IMediaRouter2Manager;)Ljava/util/List;
    .registers 2

    .line 577
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getRemoteSessions(Landroid/media/IMediaRouter2Manager;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getState(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;
    .registers 5

    .line 274
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 276
    :try_start_4
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_13

    .line 277
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouterService;->getStateLocked(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;

    move-result-object p0

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_10

    .line 280
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_10
    move-exception p0

    .line 278
    :try_start_11
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    :try_start_12
    throw p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_13

    :catchall_13
    move-exception p0

    .line 280
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 281
    throw p0
.end method

.method public final getStateLocked(Landroid/media/IMediaRouterClient;)Landroid/media/MediaRouterClientState;
    .registers 2

    .line 918
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    if-eqz p0, :cond_13

    .line 920
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$ClientRecord;->getState()Landroid/media/MediaRouterClientState;

    move-result-object p0

    return-object p0

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemRoutes(Ljava/lang/String;Z)Ljava/util/List;
    .registers 4

    .line 410
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/MediaRouterService;->validatePackageName(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 413
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getSystemRoutes(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 411
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "callerPackageName does not match calling uid."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSystemSessionInfo()Landroid/media/RoutingSessionInfo;
    .registers 3

    .line 419
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getSystemSessionInfo(Ljava/lang/String;Ljava/lang/String;Z)Landroid/media/RoutingSessionInfo;

    move-result-object p0

    return-object p0
.end method

.method public getSystemSessionInfoForPackage(Ljava/lang/String;Ljava/lang/String;)Landroid/media/RoutingSessionInfo;
    .registers 7

    .line 584
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 585
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 587
    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/MediaRouterService;->validatePackageName(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 592
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 593
    :try_start_15
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$UserRecord;

    if-eqz v1, :cond_24

    .line 595
    iget-object v1, v1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    goto :goto_26

    :catchall_22
    move-exception p0

    goto :goto_53

    :cond_24
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 596
    :goto_26
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 597
    iget-object v3, v2, Lcom/android/server/media/MediaRouterService$ClientRecord;->mPackageName:Ljava/lang/String;

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 598
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService;->mDefaultAudioRouteId:Ljava/lang/String;

    iget-object v2, v2, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const/4 v1, 0x1

    goto :goto_4b

    :cond_4a
    const/4 v1, 0x0

    .line 604
    :goto_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_15 .. :try_end_4c} :catchall_22

    .line 605
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getSystemSessionInfo(Ljava/lang/String;Ljava/lang/String;Z)Landroid/media/RoutingSessionInfo;

    move-result-object p0

    return-object p0

    .line 604
    :goto_53
    :try_start_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_22

    throw p0

    .line 588
    :cond_55
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "callerPackageName does not match calling uid."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSystemSessionOverridesAppIds(Landroid/media/IMediaRouter2Manager;)Ljava/util/List;
    .registers 2

    .line 612
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->getSystemSessionOverridesAppIds(Landroid/media/IMediaRouter2Manager;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final initializeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;)V
    .registers 2

    .line 1059
    sget-boolean p0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz p0, :cond_1a

    .line 1060
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": Registered"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaRouterService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    return-void
.end method

.method public final initializeUserLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V
    .registers 4

    .line 1025
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Initialized"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouterService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_1a
    iget v0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouterService;->isUserActiveLocked(I)Z

    move-result p0

    if-eqz p0, :cond_28

    .line 1029
    iget-object p0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_28
    return-void
.end method

.method public isPlaybackActive(Landroid/media/IMediaRouterClient;)Z
    .registers 6

    .line 287
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 290
    :try_start_4
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_22

    .line 291
    :try_start_7
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 292
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_29

    if-eqz p1, :cond_24

    .line 294
    :try_start_16
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mAudioPlayerStateMonitor:Lcom/android/server/media/AudioPlayerStateMonitor;

    iget p1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUid:I

    invoke-virtual {p0, p1}, Lcom/android/server/media/AudioPlayerStateMonitor;->isPlaybackActive(I)Z

    move-result p0
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_22

    .line 298
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_22
    move-exception p0

    goto :goto_2c

    :cond_24
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_29
    move-exception p0

    .line 292
    :try_start_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    :try_start_2b
    throw p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_22

    .line 298
    :goto_2c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 299
    throw p0
.end method

.method public final isUserActiveLocked(I)Z
    .registers 3

    .line 1054
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p1

    iget p0, p0, Lcom/android/server/media/MediaRouterService;->mCurrentActiveUserId:I

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public monitor()V
    .registers 2

    .line 210
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    :try_start_3
    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public onDeviceSuggestionRequestedWithManager(Landroid/media/IMediaRouter2Manager;)V
    .registers 2

    .line 756
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->onDeviceSuggestionRequestedWithManager(Landroid/media/IMediaRouter2Manager;)V

    return-void
.end method

.method public registerClientAsUser(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .registers 12

    .line 217
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 218
    invoke-virtual {p0, v1, p2}, Lcom/android/server/media/MediaRouterService;->validatePackageName(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 222
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const/4 v4, 0x1

    .line 223
    const-string/jumbo v5, "registerClientAsUser"

    const/4 v3, 0x0

    move-object v6, p2

    move v2, p3

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object v4, v6

    .line 225
    iget-object p2, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {p2, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_27

    const/4 p2, 0x1

    :goto_25
    move v6, p2

    goto :goto_29

    :cond_27
    const/4 p2, 0x0

    goto :goto_25

    .line 228
    :goto_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    .line 230
    :try_start_2d
    iget-object v7, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_40

    move v3, v0

    move v2, v1

    move-object v0, p0

    move-object v1, p1

    .line 231
    :try_start_34
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/media/MediaRouterService;->registerClientLocked(Landroid/media/IMediaRouterClient;IILjava/lang/String;IZ)V

    .line 232
    monitor-exit v7
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_3c

    .line 234
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3c
    move-exception v0

    move-object p0, v0

    .line 232
    :try_start_3e
    monitor-exit v7
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3c

    :try_start_3f
    throw p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    move-object p0, v0

    .line 234
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 235
    throw p0

    .line 219
    :cond_46
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "packageName must match the calling uid"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerClientGroupId(Landroid/media/IMediaRouterClient;Ljava/lang/String;)V
    .registers 6

    .line 241
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONFIGURE_WIFI_DISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 244
    const-string p0, "MediaRouterService"

    const-string p1, "Ignoring client group request because the client doesn\'t have the CONFIGURE_WIFI_DISPLAY permission."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 248
    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 250
    :try_start_16
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_24

    .line 251
    :try_start_19
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouterService;->registerClientGroupIdLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;)V

    .line 252
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_21

    .line 254
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_21
    move-exception p0

    .line 252
    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 254
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 255
    throw p0
.end method

.method public final registerClientGroupIdLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;)V
    .registers 4

    .line 878
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 879
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    if-nez p0, :cond_16

    .line 881
    const-string p0, "MediaRouterService"

    const-string p1, "Ignoring group id register request of a unregistered client."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 884
    :cond_16
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_3a

    .line 887
    :cond_1f
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 888
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 889
    invoke-virtual {p1, v0, p0}, Lcom/android/server/media/MediaRouterService$UserRecord;->removeFromGroup(Ljava/lang/String;Lcom/android/server/media/MediaRouterService$ClientRecord;)V

    .line 891
    :cond_28
    iput-object p2, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    if-eqz p2, :cond_3a

    .line 893
    invoke-virtual {p1, p2, p0}, Lcom/android/server/media/MediaRouterService$UserRecord;->addToGroup(Ljava/lang/String;Lcom/android/server/media/MediaRouterService$ClientRecord;)V

    .line 894
    iget-object p0, p1, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/16 p1, 0xa

    .line 896
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 897
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public final registerClientLocked(Landroid/media/IMediaRouterClient;IILjava/lang/String;IZ)V
    .registers 19

    move/from16 v8, p5

    .line 849
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 850
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    if-nez v0, :cond_57

    .line 853
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouterService$UserRecord;

    const/4 v10, 0x0

    if-nez v0, :cond_24

    .line 855
    new-instance v0, Lcom/android/server/media/MediaRouterService$UserRecord;

    invoke-direct {v0, p0, v8}, Lcom/android/server/media/MediaRouterService$UserRecord;-><init>(Lcom/android/server/media/MediaRouterService;I)V

    const/4 v2, 0x1

    move v11, v2

    :goto_22
    move-object v2, v0

    goto :goto_26

    :cond_24
    move v11, v10

    goto :goto_22

    .line 858
    :goto_26
    new-instance v0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/media/MediaRouterService$ClientRecord;-><init>(Lcom/android/server/media/MediaRouterService;Lcom/android/server/media/MediaRouterService$UserRecord;Landroid/media/IMediaRouterClient;IILjava/lang/String;Z)V

    .line 860
    :try_start_33
    invoke-interface {v9, v0, v10}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_4e

    if-eqz v11, :cond_40

    .line 866
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 867
    invoke-virtual {p0, v2}, Lcom/android/server/media/MediaRouterService;->initializeUserLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V

    .line 870
    :cond_40
    iget-object v2, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, v9, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouterService;->initializeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;)V

    return-void

    :catch_4e
    move-exception v0

    .line 862
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Media router client died prematurely."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_57
    return-void
.end method

.method public registerManager(Landroid/media/IMediaRouter2Manager;Ljava/lang/String;)V
    .registers 4

    .line 619
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 620
    invoke-virtual {p0, v0, p2}, Lcom/android/server/media/MediaRouterService;->validatePackageName(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 623
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->registerManager(Landroid/media/IMediaRouter2Manager;Ljava/lang/String;)V

    return-void

    .line 621
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "callerPackageName must match the calling uid"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerProxyRouter(Landroid/media/IMediaRouter2Manager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 6

    .line 632
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 633
    invoke-virtual {p0, v0, p2}, Lcom/android/server/media/MediaRouterService;->validatePackageName(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 636
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->registerProxyRouter(Landroid/media/IMediaRouter2Manager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void

    .line 634
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "callerPackageName must match the calling uid"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V
    .registers 4

    .line 449
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 450
    invoke-virtual {p0, v0, p2}, Lcom/android/server/media/MediaRouterService;->validatePackageName(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 453
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->registerRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V

    return-void

    .line 451
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "packageName must match the calling uid"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public releaseSessionWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;)V
    .registers 4

    .line 724
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->releaseSessionWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;)V

    return-void
.end method

.method public releaseSessionWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V
    .registers 3

    .line 556
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->releaseSessionWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;)V

    return-void
.end method

.method public requestCreateSessionWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/RoutingSessionInfo;Landroid/media/RoutingChangeInfo;Landroid/media/MediaRoute2Info;)V
    .registers 7

    .line 667
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    move-object v0, p5

    move-object p5, p4

    move-object p4, v0

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/media/MediaRouter2ServiceImpl;->requestCreateSessionWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V

    return-void
.end method

.method public requestCreateSessionWithRouter2(Landroid/media/IMediaRouter2;IJLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;Landroid/os/Bundle;)V
    .registers 9

    .line 507
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/media/MediaRouter2ServiceImpl;->requestCreateSessionWithRouter2(Landroid/media/IMediaRouter2;IJLandroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;Landroid/os/Bundle;)V

    return-void
.end method

.method public requestSetVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .registers 7

    .line 356
    const-string/jumbo v0, "routeId must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 358
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 360
    :try_start_a
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_18

    .line 361
    :try_start_d
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterService;->requestSetVolumeLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V

    .line 362
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_15

    .line 364
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_15
    move-exception p0

    .line 362
    :try_start_16
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    :try_start_17
    throw p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception p0

    .line 364
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 365
    throw p0
.end method

.method public final requestSetVolumeLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .registers 5

    .line 1004
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1005
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    if-eqz p0, :cond_1b

    .line 1007
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 p1, 0x6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1008
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1b
    return-void
.end method

.method public requestUpdateVolume(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .registers 7

    .line 371
    const-string/jumbo v0, "routeId must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 373
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 375
    :try_start_a
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_18

    .line 376
    :try_start_d
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterService;->requestUpdateVolumeLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V

    .line 377
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_15

    .line 379
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_15
    move-exception p0

    .line 377
    :try_start_16
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    :try_start_17
    throw p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception p0

    .line 379
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 380
    throw p0
.end method

.method public final requestUpdateVolumeLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;I)V
    .registers 5

    .line 1015
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 1016
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    if-eqz p0, :cond_1b

    .line 1018
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 p1, 0x7

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p3, v0, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1019
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_1b
    return-void
.end method

.method public restoreBluetoothA2dp()V
    .registers 5

    .line 763
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_33

    .line 764
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    .line 765
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 766
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_30

    if-eqz v2, :cond_2f

    .line 769
    :try_start_a
    sget-boolean v0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz v0, :cond_2a

    .line 770
    const-string v0, "MediaRouterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreBluetoothA2dp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    :cond_2a
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {p0, v1}, Landroid/media/IAudioService;->setBluetoothA2dpOn(Z)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2f} :catch_33

    :cond_2f
    return-void

    :catchall_30
    move-exception p0

    .line 766
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    :try_start_32
    throw p0
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_33} :catch_33

    .line 777
    :catch_33
    const-string p0, "MediaRouterService"

    const-string v0, "RemoteException while calling setBluetoothA2dpOn."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public restoreRoute(I)V
    .registers 8

    .line 783
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 784
    :try_start_3
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    .line 785
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 784
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$UserRecord;

    if-eqz v1, :cond_33

    .line 786
    iget-object v1, v1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_33

    .line 787
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1e
    if-ge v3, v2, :cond_33

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 788
    iget-object v5, v4, Lcom/android/server/media/MediaRouterService$ClientRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Lcom/android/server/media/MediaRouterService;->validatePackageName(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    goto :goto_34

    :catchall_31
    move-exception p0

    goto :goto_49

    :cond_33
    const/4 v4, 0x0

    .line 794
    :goto_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_31

    if-eqz v4, :cond_45

    .line 797
    :try_start_37
    iget-object p0, v4, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    invoke-interface {p0}, Landroid/media/IMediaRouterClient;->onRestoreRoute()V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3c} :catch_3d

    return-void

    .line 799
    :catch_3d
    const-string p0, "MediaRouterService"

    const-string p1, "Failed to call onRestoreRoute. Client probably died."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 802
    :cond_45
    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService;->restoreBluetoothA2dp()V

    return-void

    .line 794
    :goto_49
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_31

    throw p0
.end method

.method public selectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V
    .registers 6

    .line 679
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/media/MediaRouter2ServiceImpl;->selectRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V

    return-void
.end method

.method public selectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V
    .registers 5

    .line 524
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->selectRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V

    return-void
.end method

.method public setBluetoothA2dpOn(Landroid/media/IMediaRouterClient;Z)V
    .registers 6

    if-eqz p1, :cond_2f

    .line 309
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 312
    :try_start_6
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {p0, p2}, Landroid/media/IAudioService;->setBluetoothA2dpOn(Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_11
    .catchall {:try_start_6 .. :try_end_b} :catchall_f

    .line 317
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_f
    move-exception p0

    goto :goto_2b

    .line 315
    :catch_11
    :try_start_11
    const-string p0, "MediaRouterService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while calling setBluetoothA2dpOn. on="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_f

    .line 317
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_2b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 318
    throw p0

    .line 306
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "client must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDeviceSuggestionsWithManager(Landroid/media/IMediaRouter2Manager;Ljava/util/List;)V
    .registers 3

    .line 742
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setDeviceSuggestionsWithManager(Landroid/media/IMediaRouter2Manager;Ljava/util/List;)V

    return-void
.end method

.method public setDeviceSuggestionsWithRouter2(Landroid/media/IMediaRouter2;Ljava/util/List;)V
    .registers 3

    .line 563
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setDeviceSuggestionsWithRouter2(Landroid/media/IMediaRouter2;Ljava/util/List;)V

    return-void
.end method

.method public setDiscoveryRequest(Landroid/media/IMediaRouterClient;IZ)V
    .registers 7

    .line 325
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 327
    :try_start_4
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_12

    .line 328
    :try_start_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterService;->setDiscoveryRequestLocked(Landroid/media/IMediaRouterClient;IZ)V

    .line 329
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 331
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_f
    move-exception p0

    .line 329
    :try_start_10
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    :try_start_11
    throw p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception p0

    .line 331
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 332
    throw p0
.end method

.method public final setDiscoveryRequestLocked(Landroid/media/IMediaRouterClient;IZ)V
    .registers 5

    .line 928
    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 929
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouterService$ClientRecord;

    if-eqz p0, :cond_51

    .line 932
    iget-boolean p1, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mTrusted:Z

    if-nez p1, :cond_14

    and-int/lit8 p2, p2, -0x5

    .line 936
    :cond_14
    iget p1, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    if-ne p1, p2, :cond_1c

    iget-boolean p1, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    if-eq p1, p3, :cond_51

    .line 938
    :cond_1c
    sget-boolean p1, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz p1, :cond_45

    .line 939
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": Set discovery request, routeTypes=0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", activeScan="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 939
    const-string v0, "MediaRouterService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_45
    iput p2, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    .line 943
    iput-boolean p3, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    .line 944
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_51
    return-void
.end method

.method public setDiscoveryRequestWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/RouteDiscoveryPreference;)V
    .registers 3

    .line 479
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setDiscoveryRequestWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/RouteDiscoveryPreference;)V

    return-void
.end method

.method public setRouteListingPreference(Landroid/media/IMediaRouter2;Landroid/media/RouteListingPreference;)V
    .registers 3

    .line 487
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setRouteListingPreference(Landroid/media/IMediaRouter2;Landroid/media/RouteListingPreference;)V

    return-void
.end method

.method public setRouteVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/MediaRoute2Info;I)V
    .registers 5

    .line 656
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setRouteVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILandroid/media/MediaRoute2Info;I)V

    return-void
.end method

.method public setRouteVolumeWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/MediaRoute2Info;I)V
    .registers 4

    .line 494
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setRouteVolumeWithRouter2(Landroid/media/IMediaRouter2;Landroid/media/MediaRoute2Info;I)V

    return-void
.end method

.method public setSelectedRoute(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V
    .registers 7

    .line 343
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 345
    :try_start_4
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_12

    .line 346
    :try_start_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouterService;->setSelectedRouteLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V

    .line 347
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 349
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_f
    move-exception p0

    .line 347
    :try_start_10
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    :try_start_11
    throw p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception p0

    .line 349
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 350
    throw p0
.end method

.method public final setSelectedRouteLocked(Landroid/media/IMediaRouterClient;Ljava/lang/String;Z)V
    .registers 7

    .line 953
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    if-eqz p1, :cond_b5

    .line 957
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mDefaultAudioRouteId:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mBluetoothA2dpRouteId:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    .line 958
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_27

    .line 959
    :cond_24
    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    goto :goto_28

    :cond_27
    :goto_27
    move-object v0, v1

    .line 960
    :goto_28
    iput-object p2, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    .line 961
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mDefaultAudioRouteId:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mBluetoothA2dpRouteId:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3b

    :cond_3a
    move-object p2, v1

    .line 964
    :cond_3b
    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b5

    .line 965
    sget-boolean p0, Lcom/android/server/media/MediaRouterService;->DEBUG:Z

    if-eqz p0, :cond_6e

    .line 966
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Set selected route, routeId="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", oldRouteId="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", explicit="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MediaRouterService"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    if-eqz p3, :cond_b5

    .line 973
    iget-boolean p0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mTrusted:Z

    if-eqz p0, :cond_b5

    if-eqz v0, :cond_82

    .line 975
    iget-object p0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 p3, 0x5

    invoke-virtual {p0, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 976
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_82
    if-eqz p2, :cond_90

    .line 979
    iget-object p0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 p3, 0x4

    invoke-virtual {p0, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 980
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 982
    :cond_90
    iget-object p0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    if-eqz p0, :cond_b5

    .line 983
    iget-object p0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaRouterService$UserRecord;->-$$Nest$fgetmClientGroupMap(Lcom/android/server/media/MediaRouterService$UserRecord;)Landroid/util/ArrayMap;

    move-result-object p0

    iget-object p3, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    .line 984
    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/media/MediaRouterService$ClientGroup;

    if-eqz p0, :cond_b5

    .line 986
    iput-object p2, p0, Lcom/android/server/media/MediaRouterService$ClientGroup;->mSelectedRouteId:Ljava/lang/String;

    .line 987
    iget-object p0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/16 p2, 0xa

    iget-object p1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    .line 990
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 993
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_b5
    return-void
.end method

.method public setSessionVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;I)V
    .registers 5

    .line 717
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setSessionVolumeWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;I)V

    return-void
.end method

.method public setSessionVolumeWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;I)V
    .registers 4

    .line 550
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/media/MediaRouter2ServiceImpl;->setSessionVolumeWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;I)V

    return-void
.end method

.method public showMediaOutputSwitcherWithProxyRouter(Landroid/media/IMediaRouter2Manager;Landroid/media/session/MediaSession$Token;)Z
    .registers 3

    .line 734
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->showMediaOutputSwitcherWithProxyRouter(Landroid/media/IMediaRouter2Manager;Landroid/media/session/MediaSession$Token;)Z

    move-result p0

    return p0
.end method

.method public showMediaOutputSwitcherWithRouter2(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)Z
    .registers 5

    .line 430
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 431
    invoke-virtual {p0, v0, p1}, Lcom/android/server/media/MediaRouterService;->validatePackageName(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    if-eqz p2, :cond_1c

    .line 436
    invoke-virtual {p2}, Landroid/media/session/MediaSession$Token;->getUid()I

    move-result v1

    if-ne v0, v1, :cond_13

    goto :goto_1c

    .line 437
    :cond_13
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "sessionToken uid must match the calling uid"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 443
    :cond_1c
    :goto_1c
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->showMediaOutputSwitcherWithRouter2(Ljava/lang/String;Landroid/media/session/MediaSession$Token;)Z

    move-result p0

    return p0

    .line 432
    :cond_23
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "packageName must match the calling identity"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public systemRunning()V
    .registers 4

    .line 195
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/MediaRouterService$1;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaRouterService$1;-><init>(Lcom/android/server/media/MediaRouterService;)V

    const-string v2, "MediaRouterService"

    .line 196
    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 204
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouterService;->updateRunningUserAndProfiles(I)V

    .line 205
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl;->systemRunning()V

    return-void
.end method

.method public transferToRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;Landroid/media/RoutingChangeInfo;)V
    .registers 8

    .line 703
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/media/MediaRouter2ServiceImpl;->transferToRouteWithManager(Landroid/media/IMediaRouter2Manager;ILjava/lang/String;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;Ljava/lang/String;Landroid/media/RoutingChangeInfo;)V

    return-void
.end method

.method public transferToRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V
    .registers 5

    .line 544
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/media/MediaRouter2ServiceImpl;->transferToRouteWithRouter2(Landroid/media/IMediaRouter2;Ljava/lang/String;Landroid/media/MediaRoute2Info;Landroid/media/RoutingChangeInfo;)V

    return-void
.end method

.method public unregisterClient(Landroid/media/IMediaRouterClient;)V
    .registers 6

    .line 261
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 263
    :try_start_4
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_13

    const/4 v3, 0x0

    .line 264
    :try_start_8
    invoke-virtual {p0, p1, v3}, Lcom/android/server/media/MediaRouterService;->unregisterClientLocked(Landroid/media/IMediaRouterClient;Z)V

    .line 265
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_10

    .line 267
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_10
    move-exception p0

    .line 265
    :try_start_11
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    :try_start_12
    throw p0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_13

    :catchall_13
    move-exception p0

    .line 267
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 268
    throw p0
.end method

.method public final unregisterClientLocked(Landroid/media/IMediaRouterClient;Z)V
    .registers 5

    .line 903
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mAllClientRecords:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouterService$ClientRecord;

    if-eqz p1, :cond_25

    .line 905
    iget-object v0, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 906
    iget-object v1, v0, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 907
    iget-object v1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 908
    invoke-virtual {v0, v1, p1}, Lcom/android/server/media/MediaRouterService$UserRecord;->removeFromGroup(Ljava/lang/String;Lcom/android/server/media/MediaRouterService$ClientRecord;)V

    const/4 v1, 0x0

    .line 909
    iput-object v1, p1, Lcom/android/server/media/MediaRouterService$ClientRecord;->mGroupId:Ljava/lang/String;

    .line 911
    :cond_1f
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouterService;->disposeClientLocked(Lcom/android/server/media/MediaRouterService$ClientRecord;Z)V

    .line 912
    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouterService;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V

    :cond_25
    return-void
.end method

.method public unregisterManager(Landroid/media/IMediaRouter2Manager;)V
    .registers 2

    .line 642
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->unregisterManager(Landroid/media/IMediaRouter2Manager;)V

    return-void
.end method

.method public unregisterRouter2(Landroid/media/IMediaRouter2;)V
    .registers 2

    .line 459
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->unregisterRouter2(Landroid/media/IMediaRouter2;)V

    return-void
.end method

.method public final updateRunningUserAndProfiles(I)V
    .registers 8

    .line 813
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 814
    :try_start_3
    iget v1, p0, Lcom/android/server/media/MediaRouterService;->mCurrentActiveUserId:I

    if-eq v1, p1, :cond_3b

    .line 815
    iput p1, p0, Lcom/android/server/media/MediaRouterService;->mCurrentActiveUserId:I

    .line 817
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService;->mUserRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    .line 818
    :goto_10
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3b

    .line 819
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 820
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 821
    invoke-virtual {p0, v3}, Lcom/android/server/media/MediaRouterService;->isUserActiveLocked(I)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 824
    iget-object v3, v4, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_38

    :catchall_2d
    move-exception p0

    goto :goto_42

    .line 826
    :cond_2f
    iget-object v3, v4, Lcom/android/server/media/MediaRouterService$UserRecord;->mHandler:Lcom/android/server/media/MediaRouterService$UserHandler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 827
    invoke-virtual {p0, v4}, Lcom/android/server/media/MediaRouterService;->disposeUserIfNeededLocked(Lcom/android/server/media/MediaRouterService$UserRecord;)V

    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 831
    :cond_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_2d

    .line 832
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->updateRunningUserAndProfiles(I)V

    return-void

    .line 831
    :goto_42
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_2d

    throw p0
.end method

.method public updateScanningState(Landroid/media/IMediaRouter2Manager;I)V
    .registers 3

    .line 649
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->updateScanningState(Landroid/media/IMediaRouter2Manager;I)V

    return-void
.end method

.method public updateScanningStateWithRouter2(Landroid/media/IMediaRouter2;I)V
    .registers 3

    .line 472
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mService2:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->updateScanningState(Landroid/media/IMediaRouter2;I)V

    return-void
.end method

.method public final validatePackageName(ILjava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_20

    .line 1086
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 1088
    array-length p1, p0

    move v1, v0

    :goto_11
    if-ge v1, p1, :cond_20

    aget-object v2, p0, v1

    .line 1089
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_20
    return v0
.end method
