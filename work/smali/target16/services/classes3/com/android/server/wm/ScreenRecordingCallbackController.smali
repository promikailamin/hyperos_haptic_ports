.class public Lcom/android/server/wm/ScreenRecordingCallbackController;
.super Ljava/lang/Object;
.source "ScreenRecordingCallbackController.java"


# instance fields
.field public final mCallbacks:Landroid/util/ArrayMap;

.field public final mLastInvokedStateByUid:Landroid/util/ArrayMap;

.field public mRecordedWC:Lcom/android/server/wm/WindowContainer;

.field public mWatcherCallbackRegistered:Z

.field public final mWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$9n2dxgEob524thBiQbYBR3smIaM(Lcom/android/server/wm/ScreenRecordingCallbackController;Landroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ScreenRecordingCallbackController;->lambda$getRecordedUids$2(Landroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MFPVWjUWaVAhkXMWfHeo3oYMd4s(Ljava/util/ArrayList;Z)V
    .registers 4

    const/4 v0, 0x0

    .line 280
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 282
    :try_start_7
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/IScreenRecordingCallback;

    invoke-interface {v1, p1}, Landroid/window/IScreenRecordingCallback;->onScreenRecordingStateChanged(Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method

.method public static synthetic $r8$lambda$tRQLmFqk3azaCDR7YSY57sA3_sI(I[ZLcom/android/server/wm/ActivityRecord;)Z
    .registers 5

    .line 238
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p0, :cond_11

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    .line 239
    aput-boolean p0, p1, v1

    return p0

    :cond_11
    return v1
.end method

.method public static synthetic $r8$lambda$wBDBDhUmSS5K9SLBTBD1EEdmfjE(Landroid/media/projection/MediaProjectionInfo;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 106
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/media/projection/MediaProjectionInfo;->getLaunchCookie()Landroid/app/ActivityOptions$LaunchCookie;

    move-result-object p0

    iget-object p0, p0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monScreenRecordingStart(Lcom/android/server/wm/ScreenRecordingCallbackController;Landroid/media/projection/MediaProjectionInfo;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ScreenRecordingCallbackController;->onScreenRecordingStart(Landroid/media/projection/MediaProjectionInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monScreenRecordingStop(Lcom/android/server/wm/ScreenRecordingCallbackController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenRecordingCallbackController;->onScreenRecordingStop()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    .line 62
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWatcherCallbackRegistered:Z

    .line 97
    iput-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method


# virtual methods
.method public final dispatchCallbacks(Landroid/util/ArraySet;Z)V
    .registers 8

    .line 264
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    move v1, v0

    .line 268
    :goto_9
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 269
    iget-object v2, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 272
    :cond_21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 273
    :goto_26
    iget-object v2, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_52

    .line 274
    iget-object v2, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;

    iget v2, v2, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 275
    iget-object v2, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;

    iget-object v2, v2, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mCallback:Landroid/window/IScreenRecordingCallback;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 279
    :cond_52
    iget-object p0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance p1, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda2;

    invoke-direct {p1, v1, p2}, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda2;-><init>(Ljava/util/ArrayList;Z)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    const/4 v0, 0x0

    .line 291
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ScreenRecordingCallbackController:\n"

    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 292
    const-string v1, "  Registered callbacks:\n"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    move v1, v0

    .line 293
    :goto_10
    iget-object v2, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 294
    iget-object v2, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;

    iget v3, v3, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "    callback=%s uid=%s\n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 296
    :cond_38
    const-string v1, "  Last invoked states:\n"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 297
    :goto_3f
    iget-object v1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_5f

    .line 298
    iget-object v1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    .line 299
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 298
    const-string v2, "    uid=%s isVisibleInScreenRecording=%s\n"

    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_5f
    return-void
.end method

.method public final ensureMediaProjectionWatcherCallbackRegistered()V
    .registers 9

    .line 113
    iget-boolean v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWatcherCallbackRegistered:Z

    if-eqz v0, :cond_5

    goto :goto_3f

    .line 117
    :cond_5
    const-string v0, "media_projection"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 118
    invoke-static {v0}, Landroid/media/projection/IMediaProjectionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/projection/IMediaProjectionManager;

    move-result-object v0

    .line 121
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 124
    :try_start_14
    new-instance v4, Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;

    invoke-direct {v4, p0, v3}, Lcom/android/server/wm/ScreenRecordingCallbackController$MediaProjectionWatcherCallback;-><init>(Lcom/android/server/wm/ScreenRecordingCallbackController;Lcom/android/server/wm/ScreenRecordingCallbackController-IA;)V

    invoke-interface {v0, v4}, Landroid/media/projection/IMediaProjectionManager;->addCallback(Landroid/media/projection/IMediaProjectionWatcherCallback;)Landroid/media/projection/MediaProjectionInfo;

    move-result-object v0
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1d} :catch_26
    .catchall {:try_start_14 .. :try_end_1d} :catchall_24

    const/4 v4, 0x1

    .line 126
    :try_start_1e
    iput-boolean v4, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWatcherCallbackRegistered:Z
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_20} :catch_27
    .catchall {:try_start_1e .. :try_end_20} :catchall_24

    .line 130
    :cond_20
    :goto_20
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3a

    :catchall_24
    move-exception p0

    goto :goto_40

    :catch_26
    move-object v0, v3

    .line 128
    :catch_27
    :try_start_27
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_ERROR_enabled:[Z

    const/4 v5, 0x4

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_20

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_ERROR:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, 0x40c38cb0e02b376aL    # 10009.381841089304

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    :try_end_39
    .catchall {:try_start_27 .. :try_end_39} :catchall_24

    goto :goto_20

    :goto_3a
    if-eqz v0, :cond_3f

    .line 134
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ScreenRecordingCallbackController;->setRecordedWindowContainer(Landroid/media/projection/MediaProjectionInfo;)V

    :cond_3f
    :goto_3f
    return-void

    .line 130
    :goto_40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 131
    throw p0
.end method

.method public final getRecordedUids()Landroid/util/ArraySet;
    .registers 4

    .line 249
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 250
    iget-object v1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mRecordedWC:Lcom/android/server/wm/WindowContainer;

    if-nez v1, :cond_a

    return-object v0

    .line 253
    :cond_a
    new-instance v2, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ScreenRecordingCallbackController;Landroid/util/ArraySet;)V

    const/4 p0, 0x1

    invoke-virtual {v1, v2, p0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    return-object v0
.end method

.method public final synthetic lambda$getRecordedUids$2(Landroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 254
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object p0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    .line 255
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 254
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 256
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_21
    return-void
.end method

.method public onProcessActivityVisibilityChanged(IZ)V
    .registers 5

    .line 203
    iget-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mRecordedWC:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_40

    .line 212
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne p2, v0, :cond_24

    goto :goto_40

    .line 221
    :cond_24
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ScreenRecordingCallbackController;->uidHasRecordedActivity(I)Z

    move-result v0

    if-eqz p2, :cond_2c

    if-eqz v0, :cond_40

    :cond_2c
    if-nez p2, :cond_31

    if-eqz v0, :cond_31

    goto :goto_40

    .line 226
    :cond_31
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 227
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/ScreenRecordingCallbackController;->dispatchCallbacks(Landroid/util/ArraySet;Z)V

    :cond_40
    :goto_40
    return-void
.end method

.method public final onScreenRecordingStart(Landroid/media/projection/MediaProjectionInfo;)V
    .registers 4

    .line 186
    iget-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 187
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ScreenRecordingCallbackController;->setRecordedWindowContainer(Landroid/media/projection/MediaProjectionInfo;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenRecordingCallbackController;->getRecordedUids()Landroid/util/ArraySet;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ScreenRecordingCallbackController;->dispatchCallbacks(Landroid/util/ArraySet;Z)V

    .line 189
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_18
    move-exception p0

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final onScreenRecordingStop()V
    .registers 4

    .line 193
    iget-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 194
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenRecordingCallbackController;->getRecordedUids()Landroid/util/ArraySet;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ScreenRecordingCallbackController;->dispatchCallbacks(Landroid/util/ArraySet;Z)V

    const/4 v1, 0x0

    .line 195
    iput-object v1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mRecordedWC:Lcom/android/server/wm/WindowContainer;

    .line 196
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_18
    move-exception p0

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public register(Landroid/window/IScreenRecordingCallback;)Z
    .registers 8

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 140
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenRecordingCallbackController;->ensureMediaProjectionWatcherCallbackRegistered()V

    .line 142
    invoke-interface {p1}, Landroid/window/IScreenRecordingCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 143
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 145
    iget-object v3, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 146
    iget-object p0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :catchall_30
    move-exception p0

    goto :goto_5f

    .line 149
    :cond_32
    :try_start_32
    new-instance v3, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;

    invoke-direct {v3, p0, p1, v2}, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;-><init>(Lcom/android/server/wm/ScreenRecordingCallbackController;Landroid/window/IScreenRecordingCallback;I)V
    :try_end_37
    .catchall {:try_start_32 .. :try_end_37} :catchall_30

    const/4 p1, 0x0

    .line 151
    :try_start_38
    invoke-interface {v1, v3, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_3b} :catch_5a
    .catchall {:try_start_38 .. :try_end_3b} :catchall_30

    .line 156
    :try_start_3b
    iget p1, v3, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mUid:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ScreenRecordingCallbackController;->uidHasRecordedActivity(I)Z

    move-result p1

    .line 157
    iget-object v2, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    iget v4, v3, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object p0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_3b .. :try_end_56} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 153
    :catch_5a
    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 160
    :goto_5f
    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final setRecordedWindowContainer(Landroid/media/projection/MediaProjectionInfo;)V
    .registers 4

    .line 102
    invoke-virtual {p1}, Landroid/media/projection/MediaProjectionInfo;->getLaunchCookie()Landroid/app/ActivityOptions$LaunchCookie;

    move-result-object v0

    if-nez v0, :cond_11

    .line 103
    iget-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mRecordedWC:Lcom/android/server/wm/WindowContainer;

    return-void

    .line 105
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v1, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda1;-><init>(Landroid/media/projection/MediaProjectionInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 107
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    iput-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mRecordedWC:Lcom/android/server/wm/WindowContainer;

    return-void
.end method

.method public final uidHasRecordedActivity(I)Z
    .registers 6

    .line 233
    iget-object p0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mRecordedWC:Lcom/android/server/wm/WindowContainer;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x1

    .line 236
    new-array v2, v1, [Z

    aput-boolean v0, v2, v0

    .line 237
    new-instance v3, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, v2}, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda0;-><init>(I[Z)V

    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Z)Z

    .line 244
    aget-boolean p0, v2, v0

    return p0
.end method

.method public unregister(Landroid/window/IScreenRecordingCallback;)V
    .registers 6

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 165
    :try_start_8
    invoke-interface {p1}, Landroid/window/IScreenRecordingCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 166
    iget-object v1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;

    if-nez v1, :cond_1d

    .line 168
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1b
    move-exception p0

    goto :goto_4b

    :cond_1d
    const/4 v2, 0x0

    .line 170
    :try_start_1e
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 173
    :goto_21
    iget-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-ge v2, p1, :cond_3b

    .line 174
    iget-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;

    iget p1, p1, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mUid:I

    iget v3, v1, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mUid:I

    if-ne p1, v3, :cond_38

    goto :goto_46

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 180
    :cond_3b
    iget-object p0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController;->mLastInvokedStateByUid:Landroid/util/ArrayMap;

    iget p1, v1, Lcom/android/server/wm/ScreenRecordingCallbackController$Callback;->mUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :goto_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_1e .. :try_end_47} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_4b
    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
