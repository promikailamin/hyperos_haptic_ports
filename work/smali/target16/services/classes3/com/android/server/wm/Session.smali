.class public Lcom/android/server/wm/Session;
.super Landroid/view/IWindowSession$Stub;
.source "Session.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mAddedWindows:Ljava/util/ArrayList;

.field public mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

.field public final mAlertWindows:Landroid/util/ArraySet;

.field public final mCallback:Landroid/view/IWindowSessionCallback;

.field public final mCanAddInternalSystemWindow:Z

.field public final mCanAlwaysUpdateWallpaper:Z

.field public mCanCreateSystemApplicationOverlay:Z

.field public mCanForceShowingInsets:Z

.field public final mCanHideNonSystemOverlayWindows:Z

.field public final mCanSetUnrestrictedGestureExclusion:Z

.field public final mCanStartTasksFromRecents:Z

.field public mClientDead:Z

.field public final mDragDropController:Lcom/android/server/wm/DragDropController;

.field public final mDummyControls:Landroid/view/InsetsSourceControl$Array;

.field public mLastReportedAnimatorScale:F

.field public mPackageName:Ljava/lang/String;

.field public final mPid:I

.field public final mProcess:Lcom/android/server/wm/WindowProcessController;

.field public mRelayoutTag:Ljava/lang/String;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mSetsUnrestrictedKeepClearAreas:Z

.field public mShowingAlertWindowNotificationAllowed:Z

.field public final mStringName:Ljava/lang/String;

.field public final mUid:I


# direct methods
.method public static synthetic $r8$lambda$71MlbzHo9XQfq1o5frufHv-e65Q(ZLcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 620
    invoke-virtual {p1, p2, p0}, Lcom/android/server/wm/WallpaperController;->setShouldZoomOutWallpaper(Lcom/android/server/wm/WindowState;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$F9kDlT0jqppzrfLV5sjvg4-EJcU(FFFFLcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 7

    move v0, p2

    move p2, p0

    move-object p0, p4

    move p4, v0

    move v0, p3

    move p3, p1

    move-object p1, p5

    move p5, v0

    .line 592
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/WallpaperController;->setWindowWallpaperPosition(Lcom/android/server/wm/WindowState;FFFF)V

    return-void
.end method

.method public static synthetic $r8$lambda$KGk0Cvr6TVDYTfgJBINwLdTdv1c(FLcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 609
    invoke-virtual {p1, p2, p0}, Lcom/android/server/wm/WallpaperController;->setWallpaperZoomOut(Lcom/android/server/wm/WindowState;F)V

    return-void
.end method

.method public static synthetic $r8$lambda$wNftaQ2h3d2p2g7ZJ-zeScZCyHo(IILcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 630
    invoke-virtual {p2, p3, p0, p1}, Lcom/android/server/wm/WallpaperController;->setWindowWallpaperDisplayOffset(Lcom/android/server/wm/WindowState;II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IWindowSessionCallback;)V
    .registers 5

    .line 134
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/wm/Session;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IWindowSessionCallback;II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IWindowSessionCallback;II)V
    .registers 9

    .line 139
    invoke-direct {p0}, Landroid/view/IWindowSession$Stub;-><init>()V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Session;->mAddedWindows:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindows:Landroid/util/ArraySet;

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    .line 130
    new-instance v1, Landroid/view/InsetsSourceControl$Array;

    invoke-direct {v1}, Landroid/view/InsetsSourceControl$Array;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Session;->mDummyControls:Landroid/view/InsetsSourceControl$Array;

    .line 140
    iput-object p1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 141
    iput-object p2, p0, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    .line 142
    iput p3, p0, Lcom/android/server/wm/Session;->mPid:I

    .line 143
    iput p4, p0, Lcom/android/server/wm/Session;->mUid:I

    .line 144
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 145
    :try_start_29
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/Session;->mLastReportedAnimatorScale:F

    .line 146
    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v2, p3}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/Session;->mProcess:Lcom/android/server/wm/WindowProcessController;

    .line 147
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_29 .. :try_end_3a} :catchall_141

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v2, :cond_122

    .line 151
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4c

    move v1, v2

    goto :goto_4d

    :cond_4c
    move v1, v0

    :goto_4d
    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    .line 153
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p4}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    move-result v1

    if-nez v1, :cond_64

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.STATUS_BAR_SERVICE"

    .line 154
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_62

    goto :goto_64

    :cond_62
    move v1, v0

    goto :goto_65

    :cond_64
    :goto_64
    move v1, v2

    :goto_65
    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mCanForceShowingInsets:Z

    .line 156
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.HIDE_NON_SYSTEM_OVERLAY_WINDOWS"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_7e

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.HIDE_OVERLAY_WINDOWS"

    .line 158
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7c

    goto :goto_7e

    :cond_7c
    move v1, v0

    goto :goto_7f

    :cond_7e
    :goto_7e
    move v1, v2

    :goto_7f
    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mCanHideNonSystemOverlayWindows:Z

    .line 160
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mPermissionManager:Landroid/permission/PermissionManager;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Session;->updateCanCreateSystemApplicationOverlay(Landroid/permission/PermissionManager;)V

    .line 161
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.START_TASKS_FROM_RECENTS"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_92

    move v1, v2

    goto :goto_93

    :cond_92
    move v1, v0

    :goto_93
    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mCanStartTasksFromRecents:Z

    .line 163
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.SET_UNRESTRICTED_KEEP_CLEAR_AREAS"

    .line 164
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a1

    move v1, v2

    goto :goto_a2

    :cond_a1
    move v1, v0

    :goto_a2
    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mSetsUnrestrictedKeepClearAreas:Z

    .line 166
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.SET_UNRESTRICTED_GESTURE_EXCLUSION"

    .line 167
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_b0

    move v1, v2

    goto :goto_b1

    :cond_b0
    move v1, v0

    :goto_b1
    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mCanSetUnrestrictedGestureExclusion:Z

    .line 169
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ALWAYS_UPDATE_WALLPAPER"

    .line 170
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_bf

    move v1, v2

    goto :goto_c0

    :cond_bf
    move v1, v0

    :goto_c0
    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mCanAlwaysUpdateWallpaper:Z

    .line 172
    iget-boolean v1, p1, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mShowingAlertWindowNotificationAllowed:Z

    .line 173
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iput-object p1, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    const-string v1, "Session{"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x2710

    if-ge p4, p3, :cond_f4

    .line 180
    const-string p3, ":"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_10c

    .line 183
    :cond_f4
    const-string p3, ":u"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x61

    .line 185
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 188
    :goto_10c
    const-string p3, "}"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/Session;->mStringName:Ljava/lang/String;

    .line 192
    :try_start_117
    invoke-interface {p2}, Landroid/view/IWindowSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11e
    .catch Landroid/os/RemoteException; {:try_start_117 .. :try_end_11e} :catch_11f

    return-void

    .line 194
    :catch_11f
    iput-boolean v2, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    return-void

    .line 149
    :cond_122
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown pid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " uid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_141
    move-exception p0

    .line 147
    :try_start_142
    monitor-exit v1
    :try_end_143
    .catchall {:try_start_142 .. :try_end_143} :catchall_141

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method


# virtual methods
.method public final actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V
    .registers 4

    .line 580
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->windowForClient(Lcom/android/server/wm/Session;Landroid/os/IBinder;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 582
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-interface {p2, p1, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    return-void
.end method

.method public addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InputChannel;Landroid/view/WindowRelayoutResult;)I
    .registers 18

    .line 261
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/wm/Session;->mUid:I

    .line 262
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 261
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wm/WindowManagerService;->addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/view/InputChannel;Landroid/view/WindowRelayoutResult;)I

    move-result p0

    return p0
.end method

.method public addToDisplayAsUser(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/view/InputChannel;Landroid/view/WindowRelayoutResult;)I
    .registers 19

    .line 269
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wm/WindowManagerService;->addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/view/InputChannel;Landroid/view/WindowRelayoutResult;)I

    move-result p0

    return p0
.end method

.method public addToDisplayWithoutInputChannel(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/WindowRelayoutResult;)I
    .registers 16

    .line 276
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/wm/Session;->mUid:I

    .line 277
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result v7

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v9, p5

    .line 276
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/wm/WindowManagerService;->addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/view/InputChannel;Landroid/view/WindowRelayoutResult;)I

    move-result p0

    return p0
.end method

.method public binderDied()V
    .registers 7

    .line 239
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 240
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    invoke-interface {v1}, Landroid/view/IWindowSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v1, 0x1

    .line 241
    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mClientDead:Z
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_60

    .line 243
    :try_start_15
    iget-object v2, p0, Lcom/android/server/wm/Session;->mAddedWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_1c
    if-ltz v2, :cond_58

    .line 244
    iget-object v1, p0, Lcom/android/server/wm/Session;->mAddedWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 245
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WIN DEATH: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_52

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-ne v3, v1, :cond_52

    .line 247
    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/SnapshotController;->onAppDied(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_52

    :catchall_50
    move-exception v1

    goto :goto_62

    .line 249
    :cond_52
    :goto_52
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->removeIfPossible()V
    :try_end_55
    .catchall {:try_start_15 .. :try_end_55} :catchall_50

    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    .line 252
    :cond_58
    :try_start_58
    invoke-virtual {p0}, Lcom/android/server/wm/Session;->killSessionLocked()V

    .line 254
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_60

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_60
    move-exception p0

    goto :goto_66

    .line 252
    :goto_62
    :try_start_62
    invoke-virtual {p0}, Lcom/android/server/wm/Session;->killSessionLocked()V

    .line 253
    throw v1

    .line 254
    :goto_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_62 .. :try_end_67} :catchall_60

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public canCreateSystemApplicationOverlay()Z
    .registers 1

    .line 199
    iget-boolean p0, p0, Lcom/android/server/wm/Session;->mCanCreateSystemApplicationOverlay:Z

    return p0
.end method

.method public final cancelAlertWindowNotification()V
    .registers 3

    .line 873
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    .line 876
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AlertWindowNotification;->cancel(Z)V

    const/4 v0, 0x0

    .line 877
    iput-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    return-void
.end method

.method public cancelDragAndDrop(Landroid/os/IBinder;Z)V
    .registers 5

    .line 516
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 518
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DragDropController;->cancelDragAndDrop(Landroid/os/IBinder;Z)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 520
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 521
    throw p0
.end method

.method public cancelDraw(Landroid/view/IWindow;I)Z
    .registers 4

    .line 288
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->cancelDraw(Lcom/android/server/wm/Session;Landroid/view/IWindow;I)Z

    move-result p0

    return p0
.end method

.method public clearTouchableRegion(Landroid/view/IWindow;)V
    .registers 3

    .line 324
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->clearTouchableRegion(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V

    return-void
.end method

.method public dragRecipientEntered(Landroid/view/IWindow;)V
    .registers 2

    .line 526
    iget-object p0, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragDropController;->dragRecipientEntered(Landroid/view/IWindow;)V

    return-void
.end method

.method public dragRecipientExited(Landroid/view/IWindow;)V
    .registers 2

    .line 531
    iget-object p0, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DragDropController;->dragRecipientExited(Landroid/view/IWindow;)V

    return-void
.end method

.method public dropForAccessibility(Landroid/view/IWindow;II)Z
    .registers 6

    .line 362
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 364
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DragDropController;->dropForAccessibility(Landroid/view/IWindow;FF)Z

    move-result p0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 366
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_10
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 367
    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 881
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "numWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Session;->mAddedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 882
    const-string v0, " mCanAddInternalSystemWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 883
    const-string v0, " mAlertWindows="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindows:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 884
    const-string v0, " mClientDead="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 885
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPackageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 886
    invoke-virtual {p0}, Lcom/android/server/wm/Session;->isSatellitePointingUiPackage()Z

    move-result p0

    if-eqz p0, :cond_4a

    .line 887
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "mIsSatellitePointingUiPackage=true"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4a
    return-void
.end method

.method public finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V
    .registers 8

    const-wide/16 v0, 0x20

    .line 331
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishDrawing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 334
    :cond_1e
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->finishDrawingWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V

    .line 335
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public finishMovingTask(Landroid/view/IWindow;)V
    .registers 2

    .line 0
    return-void
.end method

.method public generateDisplayHash(Landroid/view/IWindow;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 14

    .line 976
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 978
    :try_start_4
    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/WindowManagerService;->generateDisplayHash(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 980
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_12
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 981
    throw p0
.end method

.method public getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;
    .registers 2

    .line 674
    iget-object p0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerService;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object p0

    return-object p0
.end method

.method public grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/window/InputTransferToken;Z)V
    .registers 7

    .line 939
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-nez p1, :cond_1a

    .line 942
    :try_start_6
    iget-boolean p1, p0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    if-eqz p1, :cond_12

    .line 947
    iget-object p1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/wm/WindowManagerService;->grantEmbeddedWindowFocus(Lcom/android/server/wm/Session;Landroid/window/InputTransferToken;Z)V

    goto :goto_1f

    :catchall_10
    move-exception p0

    goto :goto_23

    .line 945
    :cond_12
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 949
    :cond_1a
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->grantEmbeddedWindowFocus(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/window/InputTransferToken;Z)V
    :try_end_1f
    .catchall {:try_start_6 .. :try_end_1f} :catchall_10

    .line 953
    :goto_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_23
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 954
    throw p0
.end method

.method public grantInputChannel(ILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;)Landroid/view/InputChannel;
    .registers 29

    move-object/from16 v1, p0

    .line 912
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 914
    :try_start_6
    iget-object v0, v1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v1, Lcom/android/server/wm/Session;->mUid:I

    iget v3, v1, Lcom/android/server/wm/Session;->mPid:I

    .line 915
    iget-boolean v4, v1, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    if-eqz v4, :cond_27

    move/from16 v9, p6

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    goto :goto_3d

    :cond_27
    const/4 v4, 0x0

    move v9, v4

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move/from16 v4, p1

    .line 914
    :goto_3d
    invoke-virtual/range {v0 .. v14}, Lcom/android/server/wm/WindowManagerService;->grantInputChannel(Lcom/android/server/wm/Session;IIILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0
    :try_end_41
    .catchall {:try_start_6 .. :try_end_41} :catchall_45

    .line 918
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_45
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 919
    throw v0
.end method

.method public hasAlertWindowSurfaces(Lcom/android/server/wm/DisplayContent;)Z
    .registers 5

    .line 898
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindows:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1a

    .line 899
    iget-object v2, p0, Lcom/android/server/wm/Session;->mAlertWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 900
    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v2, p1, :cond_17

    return v1

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public hasWindow()Z
    .registers 1

    .line 777
    iget-object p0, p0, Lcom/android/server/wm/Session;->mAddedWindows:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isClientDead()Z
    .registers 1

    .line 234
    iget-boolean p0, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    return p0
.end method

.method public final isSatellitePointingUiPackage()Z
    .registers 5

    .line 831
    iget-object v0, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v3, 0x10402d8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_25

    .line 835
    :cond_17
    iget v0, p0, Lcom/android/server/wm/Session;->mPid:I

    iget p0, p0, Lcom/android/server/wm/Session;->mUid:I

    const-string v2, "android.permission.SATELLITE_COMMUNICATION"

    invoke-static {v2, v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    :goto_25
    return v1
.end method

.method public final killSessionLocked()V
    .registers 3

    .line 851
    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    if-nez v0, :cond_5

    goto :goto_12

    .line 855
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 856
    iget-object v0, p0, Lcom/android/server/wm/Session;->mProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mWindowSession:Lcom/android/server/wm/Session;

    if-nez v1, :cond_13

    :goto_12
    return-void

    :cond_13
    const/4 v1, 0x0

    .line 860
    iput-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mWindowSession:Lcom/android/server/wm/Session;

    .line 861
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAddedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 862
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindows:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    const/4 v0, 0x0

    .line 863
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Session;->setHasOverlayUi(Z)V

    .line 864
    invoke-virtual {p0}, Lcom/android/server/wm/Session;->cancelAlertWindowNotification()V

    return-void
.end method

.method public moveFocusToAdjacentWindow(Landroid/view/IWindow;I)Z
    .registers 7

    .line 959
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 961
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_32

    .line 962
    :try_start_c
    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p0, p1}, Lcom/android/server/wm/WindowManagerService;->windowForClient(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-nez p1, :cond_1f

    .line 964
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_1d

    .line 969
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :catchall_1d
    move-exception p0

    goto :goto_2d

    .line 966
    :cond_1f
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->moveFocusToAdjacentWindow(Lcom/android/server/wm/WindowState;I)Z

    move-result p0

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_1d

    .line 969
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 967
    :goto_2d
    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_1d

    :try_start_2e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_32

    :catchall_32
    move-exception p0

    .line 969
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 970
    throw p0
.end method

.method public notifyImeWindowVisibilityChangedFromClient(Landroid/view/IWindow;ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 10

    .line 1002
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1005
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/WindowManagerService;->windowForClient(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    const/16 p1, 0x3e

    if-eqz p0, :cond_4a

    .line 1008
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p0

    .line 1009
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_3b

    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v3, 0x75505d1350573727L    # 1.2284982186661795E257

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_3b

    :catchall_39
    move-exception p0

    goto :goto_56

    .line 1011
    :cond_3b
    :goto_3b
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, p3, p1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1013
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/ImeInsetsSourceProvider;->receiveImeStatsToken(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_51

    .line 1016
    :cond_4a
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p3, p1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 1019
    :goto_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_8 .. :try_end_52} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_56
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    .registers 7

    .line 662
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 663
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_19

    .line 665
    :try_start_c
    iget-object p0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;I)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1b

    .line 667
    :try_start_11
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 669
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_19
    move-exception p0

    goto :goto_20

    :catchall_1b
    move-exception p0

    .line 667
    :try_start_1c
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 668
    throw p0

    .line 669
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5

    .line 223
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowSession$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 226
    instance-of p1, p0, Ljava/lang/SecurityException;

    if-nez p1, :cond_11

    .line 227
    const-string p1, "WindowManager"

    const-string p2, "Window Session Crash"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    :cond_11
    throw p0
.end method

.method public onWindowAdded(Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 752
    iget-object v0, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_21

    .line 753
    iget-object v0, p0, Lcom/android/server/wm/Session;->mProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    .line 754
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "relayoutWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Session;->mRelayoutTag:Ljava/lang/String;

    .line 756
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/Session;->mProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object v0, v0, Lcom/android/server/wm/WindowProcessController;->mWindowSession:Lcom/android/server/wm/Session;

    if-nez v0, :cond_43

    .line 760
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 761
    iget v0, p0, Lcom/android/server/wm/Session;->mLastReportedAnimatorScale:F

    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3f

    .line 762
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    .line 764
    :cond_3f
    iget-object v0, p0, Lcom/android/server/wm/Session;->mProcess:Lcom/android/server/wm/WindowProcessController;

    iput-object p0, v0, Lcom/android/server/wm/WindowProcessController;->mWindowSession:Lcom/android/server/wm/Session;

    .line 766
    :cond_43
    iget-object p0, p0, Lcom/android/server/wm/Session;->mAddedWindows:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onWindowRemoved(Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 770
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAddedWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 771
    iget-object p1, p0, Lcom/android/server/wm/Session;->mAddedWindows:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 772
    invoke-virtual {p0}, Lcom/android/server/wm/Session;->killSessionLocked()V

    :cond_10
    return-void
.end method

.method public onWindowSurfaceVisibilityChanged(Lcom/android/server/wm/WindowState;Z)V
    .registers 8

    .line 781
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 782
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v1

    if-nez v1, :cond_10

    const/16 v1, 0x7d8

    if-eq v0, v1, :cond_10

    goto/16 :goto_92

    .line 789
    :cond_10
    iget-boolean v1, p0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1c

    iget-boolean v1, p0, Lcom/android/server/wm/Session;->mCanCreateSystemApplicationOverlay:Z

    if-nez v1, :cond_1c

    move v1, v3

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    const/16 v4, 0x7f6

    if-eqz p2, :cond_3b

    .line 792
    iget-object p2, p0, Lcom/android/server/wm/Session;->mAlertWindows:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    if-ne v0, v4, :cond_31

    .line 794
    iget p2, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v4, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {p2, v4, p1, v0, v2}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayEnter(ILjava/lang/String;ZIZ)V

    goto :goto_54

    :cond_31
    if-eqz v1, :cond_54

    .line 797
    iget p2, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v2, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {p2, v2, p1, v0, v3}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayEnter(ILjava/lang/String;ZIZ)V

    goto :goto_54

    .line 801
    :cond_3b
    iget-object p2, p0, Lcom/android/server/wm/Session;->mAlertWindows:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-ne v0, v4, :cond_4b

    .line 803
    iget p2, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v4, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {p2, v4, p1, v0, v2}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayExit(ILjava/lang/String;ZIZ)V

    goto :goto_54

    :cond_4b
    if-eqz v1, :cond_54

    .line 806
    iget p2, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v2, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {p2, v2, p1, v0, v3}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayExit(ILjava/lang/String;ZIZ)V

    :cond_54
    :goto_54
    if-eqz p1, :cond_80

    if-eqz v1, :cond_80

    .line 812
    iget-object p2, p0, Lcom/android/server/wm/Session;->mAlertWindows:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_64

    .line 813
    invoke-virtual {p0}, Lcom/android/server/wm/Session;->cancelAlertWindowNotification()V

    goto :goto_80

    .line 814
    :cond_64
    iget-object p2, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    if-nez p2, :cond_80

    invoke-virtual {p0}, Lcom/android/server/wm/Session;->isSatellitePointingUiPackage()Z

    move-result p2

    if-nez p2, :cond_80

    .line 815
    new-instance p2, Lcom/android/server/wm/AlertWindowNotification;

    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-direct {p2, v0, v1}, Lcom/android/server/wm/AlertWindowNotification;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    .line 816
    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mShowingAlertWindowNotificationAllowed:Z

    if-eqz v0, :cond_80

    .line 817
    invoke-virtual {p2}, Lcom/android/server/wm/AlertWindowNotification;->post()V

    :cond_80
    :goto_80
    if-eqz p1, :cond_92

    .line 822
    iget p1, p0, Lcom/android/server/wm/Session;->mPid:I

    sget p2, Lcom/android/server/wm/WindowManagerService;->MY_PID:I

    if-eq p1, p2, :cond_92

    .line 825
    iget-object p1, p0, Lcom/android/server/wm/Session;->mAlertWindows:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Session;->setHasOverlayUi(Z)V

    :cond_92
    :goto_92
    return-void
.end method

.method public outOfMemory(Landroid/view/IWindow;)Z
    .registers 3

    .line 312
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->outOfMemoryWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Z

    move-result p0

    return p0
.end method

.method public performDrag(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IIIFFFFLandroid/content/ClipData;)Landroid/os/IBinder;
    .registers 30

    move-object/from16 v0, p0

    .line 344
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 345
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 347
    iget-object v3, v0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    move-object/from16 v4, p11

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/server/wm/Session;->validateAndResolveDragMimeTypeExtras(Landroid/content/ClipData;IILjava/lang/String;)V

    move/from16 v8, p2

    .line 348
    invoke-virtual {v0, v8, v1}, Lcom/android/server/wm/Session;->validateDragFlags(II)V

    .line 349
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 351
    :try_start_1a
    iget-object v4, v0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget v5, v0, Lcom/android/server/wm/Session;->mPid:I

    iget v6, v0, Lcom/android/server/wm/Session;->mUid:I

    move-object/from16 v7, p1

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    move/from16 v16, p10

    move-object/from16 v17, p11

    invoke-virtual/range {v4 .. v17}, Lcom/android/server/wm/DragDropController;->performDrag(IILandroid/view/IWindow;ILandroid/view/SurfaceControl;IIIFFFFLandroid/content/ClipData;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_38
    .catchall {:try_start_1a .. :try_end_38} :catchall_3c

    .line 355
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :catchall_3c
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 356
    throw v0
.end method

.method public pokeDrawLock(Landroid/os/IBinder;)V
    .registers 5

    .line 679
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 681
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0, p1}, Lcom/android/server/wm/WindowManagerService;->pokeDrawLock(Lcom/android/server/wm/Session;Landroid/os/IBinder;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 683
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 684
    throw p0
.end method

.method public relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/view/WindowRelayoutResult;Landroid/view/SurfaceControl;)I
    .registers 25

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/Session;->mRelayoutTag:Ljava/lang/String;

    const-wide/16 v12, 0x20

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/wm/WindowManagerService;->relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/view/WindowRelayoutResult;Landroid/view/SurfaceControl;)I

    move-result v0

    .line 298
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return v0
.end method

.method public relayoutAsync(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIII)V
    .registers 20

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 306
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/Session;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/view/WindowRelayoutResult;Landroid/view/SurfaceControl;)I

    return-void
.end method

.method public remove(Landroid/os/IBinder;)V
    .registers 3

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->removeClientToken(Lcom/android/server/wm/Session;Landroid/os/IBinder;)V

    return-void
.end method

.method public reportDecorViewGestureInterceptionChanged(Landroid/view/IWindow;Z)V
    .registers 6

    .line 555
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 557
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->reportDecorViewGestureChanged(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 559
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 560
    throw p0
.end method

.method public reportDropResult(Landroid/view/IWindow;Z)V
    .registers 5

    .line 506
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 508
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DragDropController;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 510
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 511
    throw p0
.end method

.method public reportKeepClearAreasChanged(Landroid/view/IWindow;Ljava/util/List;Ljava/util/List;)V
    .registers 7

    .line 566
    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mSetsUnrestrictedKeepClearAreas:Z

    if-nez v0, :cond_c

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 567
    sget-object p3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 570
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 572
    :try_start_10
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->reportKeepClearAreasChanged(Lcom/android/server/wm/Session;Landroid/view/IWindow;Ljava/util/List;Ljava/util/List;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_19

    .line 574
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 575
    throw p0
.end method

.method public reportSystemGestureExclusionChanged(Landroid/view/IWindow;Ljava/util/List;)V
    .registers 6

    .line 545
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 547
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->reportSystemGestureExclusionChanged(Lcom/android/server/wm/Session;Landroid/view/IWindow;Ljava/util/List;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 549
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 550
    throw p0
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .registers 11

    .line 640
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 641
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_1c

    .line 643
    :try_start_c
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->windowForClient(Lcom/android/server/wm/Session;Landroid/os/IBinder;)Lcom/android/server/wm/WindowState;

    move-result-object p1
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_37

    if-nez p1, :cond_1f

    .line 654
    :try_start_14
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_1c

    .line 644
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1c
    move-exception v0

    move-object p0, v0

    goto :goto_49

    .line 646
    :cond_1f
    :try_start_1f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 647
    iget-boolean p0, p0, Lcom/android/server/wm/Session;->mCanAlwaysUpdateWallpaper:Z

    if-nez p0, :cond_35

    .line 648
    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eq p1, p0, :cond_35

    .line 649
    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getPrevWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-ne p1, p0, :cond_3d

    :cond_35
    move-object p0, v0

    goto :goto_3a

    :catchall_37
    move-exception v0

    move-object p0, v0

    goto :goto_45

    .line 650
    :goto_3a
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/wm/WallpaperController;->sendWindowWallpaperCommandUnchecked(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_3d
    .catchall {:try_start_1f .. :try_end_3d} :catchall_37

    .line 654
    :cond_3d
    :try_start_3d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 656
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 654
    :goto_45
    :try_start_45
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 655
    throw p0

    .line 656
    :goto_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setHasOverlayUi(Z)V
    .registers 4

    .line 869
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x3a

    iget p0, p0, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .registers 13

    .line 318
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;->setInsetsWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    return-void
.end method

.method public setOnBackInvokedCallbackInfo(Landroid/view/IWindow;Landroid/window/OnBackInvokedCallbackInfo;)V
    .registers 5

    .line 988
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 989
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/WindowManagerService;->windowForClient(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-nez p1, :cond_2b

    .line 991
    const-string p1, "WindowManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOnBackInvokedCallback(): No window state for package:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :catchall_29
    move-exception p0

    goto :goto_33

    .line 994
    :cond_2b
    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowState;->setOnBackInvokedCallbackInfo(Landroid/window/OnBackInvokedCallbackInfo;)V

    .line 996
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_33
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_29

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V
    .registers 5

    .line 618
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 619
    :try_start_8
    new-instance v1, Lcom/android/server/wm/Session$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lcom/android/server/wm/Session$$ExternalSyntheticLambda2;-><init>(Z)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V

    .line 621
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_15
    move-exception p0

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    .registers 8

    .line 626
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 627
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_1c

    .line 629
    :try_start_c
    new-instance v3, Lcom/android/server/wm/Session$$ExternalSyntheticLambda0;

    invoke-direct {v3, p2, p3}, Lcom/android/server/wm/Session$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_1e

    .line 632
    :try_start_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 634
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1c
    move-exception p0

    goto :goto_23

    :catchall_1e
    move-exception p0

    .line 632
    :try_start_1f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 633
    throw p0

    .line 634
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    .registers 10

    .line 588
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 589
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_1c

    .line 591
    :try_start_c
    new-instance v3, Lcom/android/server/wm/Session$$ExternalSyntheticLambda3;

    invoke-direct {v3, p2, p3, p4, p5}, Lcom/android/server/wm/Session$$ExternalSyntheticLambda3;-><init>(FFFF)V

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_1e

    .line 594
    :try_start_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 596
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1c
    move-exception p0

    goto :goto_23

    :catchall_1e
    move-exception p0

    .line 594
    :try_start_1f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 595
    throw p0

    .line 596
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_1c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setWallpaperZoomOut(Landroid/os/IBinder;F)V
    .registers 7

    const/4 v0, 0x0

    .line 601
    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_3d

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_3d

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 605
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 606
    :try_start_1d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_31

    .line 608
    :try_start_21
    new-instance v3, Lcom/android/server/wm/Session$$ExternalSyntheticLambda1;

    invoke-direct {v3, p2}, Lcom/android/server/wm/Session$$ExternalSyntheticLambda1;-><init>(F)V

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_33

    .line 611
    :try_start_29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 613
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_31
    move-exception p0

    goto :goto_38

    :catchall_33
    move-exception p0

    .line 611
    :try_start_34
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 612
    throw p0

    .line 613
    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 602
    :cond_3d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Zoom must be a valid float between 0 and 1: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startMovingTask(Landroid/view/IWindow;FF)Z
    .registers 4

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 893
    iget-object p0, p0, Lcom/android/server/wm/Session;->mStringName:Ljava/lang/String;

    return-object p0
.end method

.method public updateAnimatingTypes(Landroid/view/IWindow;ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 6

    .line 738
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 739
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/WindowManagerService;->windowForClient(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    const/16 p1, 0x48

    if-eqz p0, :cond_1f

    .line 741
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    invoke-interface {v1, p3, p1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 743
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/WindowState;->setAnimatingTypes(ILandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_26

    :catchall_1d
    move-exception p0

    goto :goto_2b

    .line 745
    :cond_1f
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p3, p1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 748
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_2b
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public updateCanCreateSystemApplicationOverlay(Landroid/permission/PermissionManager;)V
    .registers 6

    .line 204
    new-instance v0, Landroid/content/AttributionSource;

    iget v1, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v2, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.permission.SYSTEM_APPLICATION_OVERLAY"

    invoke-virtual {p1, v1, v0}, Landroid/permission/PermissionManager;->checkPermissionForPreflight(Ljava/lang/String;Landroid/content/AttributionSource;)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    move p1, v0

    :goto_16
    iput-boolean p1, p0, Lcom/android/server/wm/Session;->mCanCreateSystemApplicationOverlay:Z

    .line 209
    :goto_18
    iget-object p1, p0, Lcom/android/server/wm/Session;->mAddedWindows:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_2e

    .line 210
    iget-object p1, p0, Lcom/android/server/wm/Session;->mAddedWindows:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->updateTrustedOverlay()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_2e
    return-void
.end method

.method public updateInputChannel(Landroid/os/IBinder;Landroid/window/InputTransferToken;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V
    .registers 12

    .line 927
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    move-object v0, p0

    .line 929
    :try_start_5
    iget-object p0, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 930
    iget-boolean v0, v0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    if-eqz v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 p6, 0x0

    .line 929
    :goto_d
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/wm/WindowManagerService;->updateInputChannel(Landroid/os/IBinder;Landroid/window/InputTransferToken;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    .line 932
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 933
    throw p0
.end method

.method public updateRequestedVisibleTypes(Landroid/view/IWindow;ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 7

    .line 700
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 701
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/WindowManagerService;->windowForClient(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    const/16 v2, 0x38

    if-eqz v1, :cond_35

    .line 703
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p3, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 706
    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowState;->setRequestedVisibleTypes(I)I

    move-result p0

    .line 707
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object p1

    invoke-virtual {p1, v1, p0, p3}, Lcom/android/server/wm/InsetsPolicy;->onRequestedVisibleTypesChanged(Lcom/android/server/wm/InsetsTarget;ILandroid/view/inputmethod/ImeTracker$Token;)V

    .line 709
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_66

    const/4 p1, 0x1

    .line 711
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    goto :goto_66

    :catchall_33
    move-exception p0

    goto :goto_6b

    .line 714
    :cond_35
    iget-object p0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mEmbeddedWindowController:Lcom/android/server/wm/EmbeddedWindowController;

    .line 715
    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/EmbeddedWindowController;->getByWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;

    move-result-object p0

    if-eqz p0, :cond_5f

    .line 720
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    invoke-interface {p1, p3, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 723
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p1

    and-int/2addr p1, p2

    .line 722
    invoke-virtual {p0, p1}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->setRequestedVisibleTypes(I)I

    move-result p1

    .line 724
    invoke-virtual {p0}, Lcom/android/server/wm/EmbeddedWindowController$EmbeddedWindow;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object p2

    .line 725
    invoke-virtual {p2, p0, p1, p3}, Lcom/android/server/wm/InsetsPolicy;->onRequestedVisibleTypesChanged(Lcom/android/server/wm/InsetsTarget;ILandroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_66

    .line 728
    :cond_5f
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p3, v2}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 732
    :cond_66
    :goto_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_8 .. :try_end_67} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_6b
    :try_start_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_33

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 5

    .line 689
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 691
    :try_start_4
    iget-object p0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_d

    .line 693
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 694
    throw p0
.end method

.method public validateAndResolveDragMimeTypeExtras(Landroid/content/ClipData;IILjava/lang/String;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_b

    .line 393
    invoke-virtual {v1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v2

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    if-nez v2, :cond_10

    goto/16 :goto_19a

    .line 398
    :cond_10
    const-string v3, "application/vnd.android.activity"

    invoke-virtual {v2, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v3

    .line 399
    const-string v4, "application/vnd.android.shortcut"

    invoke-virtual {v2, v4}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v4

    .line 400
    const-string v5, "application/vnd.android.task"

    invoke-virtual {v2, v5}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v2

    add-int v5, v3, v4

    add-int/2addr v5, v2

    if-nez v5, :cond_29

    goto/16 :goto_19a

    :cond_29
    const/4 v6, 0x1

    if-gt v5, v6, :cond_1a3

    .line 411
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    if-eqz v5, :cond_19b

    const/4 v5, 0x0

    move v6, v5

    .line 414
    :goto_34
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v7

    if-ge v6, v7, :cond_4f

    .line 415
    invoke-virtual {v1, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_47

    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    .line 416
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected item, expected an intent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_4f
    const-string v6, "android.intent.extra.USER"

    if-eqz v3, :cond_b0

    .line 421
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 424
    :goto_57
    :try_start_57
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ge v5, v4, :cond_a8

    .line 425
    invoke-virtual {v1, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    .line 426
    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 427
    const-string v8, "android.intent.extra.PENDING_INTENT"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 429
    invoke-virtual {v7, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/os/UserHandle;

    if-eqz v8, :cond_a0

    if-eqz v7, :cond_a0

    .line 434
    iget-object v9, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 435
    invoke-virtual {v8}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/IntentSender;->getTarget()Landroid/content/IIntentSender;

    move-result-object v8

    .line 434
    invoke-virtual {v9, v8}, Landroid/app/ActivityManagerInternal;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v11

    .line 436
    iget-object v8, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v8, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 437
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    const/4 v12, 0x0

    move/from16 v14, p2

    move/from16 v15, p3

    .line 436
    invoke-virtual/range {v10 .. v15}, Lcom/android/server/wm/ActivityTaskManagerService;->resolveActivityInfoForIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 439
    invoke-virtual {v4, v7}, Landroid/content/ClipData$Item;->setActivityInfo(Landroid/content/pm/ActivityInfo;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    :catchall_9e
    move-exception v0

    goto :goto_ac

    .line 431
    :cond_a0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Clip data must include the pending intent to launch and its associated user to launch for."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a8
    .catchall {:try_start_57 .. :try_end_a8} :catchall_9e

    .line 442
    :cond_a8
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_ac
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 443
    throw v0

    .line 444
    :cond_b0
    const-string v3, "Requires START_TASKS_FROM_RECENTS permission"

    if-eqz v4, :cond_136

    .line 447
    iget-boolean v2, v0, Lcom/android/server/wm/Session;->mCanStartTasksFromRecents:Z

    if-eqz v2, :cond_130

    move v2, v5

    .line 450
    :goto_b9
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_19a

    .line 451
    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 452
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 453
    const-string v7, "android.intent.extra.shortcut.ID"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 454
    const-string v7, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 455
    invoke-virtual {v4, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 456
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_128

    .line 457
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_128

    if-eqz v4, :cond_128

    .line 462
    const-class v7, Landroid/content/pm/ShortcutServiceInternal;

    .line 463
    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Landroid/content/pm/ShortcutServiceInternal;

    .line 465
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 466
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v13

    move/from16 v15, p2

    move/from16 v14, p3

    move-object/from16 v10, p4

    .line 464
    invoke-virtual/range {v8 .. v15}, Landroid/content/pm/ShortcutServiceInternal;->createShortcutIntents(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)[Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_120

    .line 467
    array-length v8, v7

    if-eqz v8, :cond_120

    .line 470
    iget-object v8, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    aget-object v9, v7, v5

    const/4 v10, 0x0

    .line 471
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    move/from16 v12, p2

    move/from16 v13, p3

    .line 470
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->resolveActivityInfoForIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 473
    invoke-virtual {v3, v4}, Landroid/content/ClipData$Item;->setActivityInfo(Landroid/content/pm/ActivityInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b9

    .line 468
    :cond_120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid shortcut id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Clip item must include the package name, shortcut id, and the user to launch for."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_130
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_136
    if-eqz v2, :cond_19a

    .line 477
    iget-boolean v2, v0, Lcom/android/server/wm/Session;->mCanStartTasksFromRecents:Z

    if-eqz v2, :cond_194

    .line 480
    :goto_13c
    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v2

    if-ge v5, v2, :cond_19a

    .line 481
    invoke-virtual {v1, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    .line 482
    invoke-virtual {v2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 483
    const-string v4, "android.intent.extra.TASK_ID"

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v6, :cond_18c

    .line 487
    iget-object v4, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_184

    .line 491
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_16d

    .line 492
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v3}, Landroid/content/ClipData$Item;->setActivityInfo(Landroid/content/pm/ActivityInfo;)V

    goto :goto_181

    .line 495
    :cond_16d
    iget-object v4, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v3, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v10, 0x0

    iget v11, v3, Lcom/android/server/wm/Task;->mUserId:I

    move/from16 v12, p2

    move/from16 v13, p3

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->resolveActivityInfoForIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 498
    invoke-virtual {v2, v3}, Landroid/content/ClipData$Item;->setActivityInfo(Landroid/content/pm/ActivityInfo;)V

    :goto_181
    add-int/lit8 v5, v5, 0x1

    goto :goto_13c

    .line 489
    :cond_184
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid task id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_18c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Clip item must include the task id."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_194
    new-instance v0, Ljava/lang/SecurityException;

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19a
    :goto_19a
    return-void

    .line 412
    :cond_19b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected number of items (none)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 407
    :cond_1a3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not specify more than one of activity, shortcut, or task mime types"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validateDragFlags(II)V
    .registers 4

    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_11

    .line 376
    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mCanStartTasksFromRecents:Z

    if-eqz v0, :cond_9

    goto :goto_11

    .line 377
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires START_TASKS_FROM_RECENTS permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_11
    and-int/lit16 p1, p1, 0x4000

    if-eqz p1, :cond_28

    .line 381
    iget-object p0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {p0, p2}, Lcom/android/server/wm/SafeActivityOptions;->isAssistant(Lcom/android/server/wm/ActivityTaskManagerService;I)Z

    move-result p0

    if-eqz p0, :cond_20

    goto :goto_28

    .line 382
    :cond_20
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller is not the assistant"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    :goto_28
    return-void
.end method
