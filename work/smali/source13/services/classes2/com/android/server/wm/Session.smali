.class Lcom/android/server/wm/Session;
.super Landroid/view/IWindowSession$Stub;
.source "Session.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

.field private final mAlertWindowSurfaces:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowSurfaceController;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppOverlaySurfaces:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowSurfaceController;",
            ">;"
        }
    .end annotation
.end field

.field final mCallback:Landroid/view/IWindowSessionCallback;

.field final mCanAcquireSleepToken:Z

.field final mCanAddInternalSystemWindow:Z

.field final mCanCreateSystemApplicationOverlay:Z

.field final mCanHideNonSystemOverlayWindows:Z

.field private final mCanStartTasksFromRecents:Z

.field private mClientDead:Z

.field private final mDragDropController:Lcom/android/server/wm/DragDropController;

.field private final mDummyControls:[Landroid/view/InsetsSourceControl;

.field private final mDummyRequestedVisibilities:Landroid/view/InsetsVisibilities;

.field private mLastReportedAnimatorScale:F

.field private mNumWindow:I

.field protected mPackageName:Ljava/lang/String;

.field final mPid:I

.field private mRelayoutTag:Ljava/lang/String;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSetsUnrestrictedKeepClearAreas:Z

.field private mShowingAlertWindowNotificationAllowed:Z

.field private final mStringName:Ljava/lang/String;

.field mSurfaceSession:Landroid/view/SurfaceSession;

.field final mUid:I

.field private mUpdateViewVisibilityTag:Ljava/lang/String;

.field private mUpdateWindowLayoutTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IWindowSessionCallback;)V
    .registers 9
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "callback"    # Landroid/view/IWindowSessionCallback;

    .line 133
    invoke-direct {p0}, Landroid/view/IWindowSession$Stub;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    .line 107
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Landroid/util/ArraySet;

    .line 109
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Landroid/util/ArraySet;

    .line 121
    iput-boolean v0, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    .line 129
    new-instance v1, Landroid/view/InsetsVisibilities;

    invoke-direct {v1}, Landroid/view/InsetsVisibilities;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Session;->mDummyRequestedVisibilities:Landroid/view/InsetsVisibilities;

    .line 130
    new-array v1, v0, [Landroid/view/InsetsSourceControl;

    iput-object v1, p0, Lcom/android/server/wm/Session;->mDummyControls:[Landroid/view/InsetsSourceControl;

    .line 134
    iput-object p1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 135
    iput-object p2, p0, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    .line 136
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/Session;->mUid:I

    .line 137
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/Session;->mPid:I

    .line 138
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v3

    iput v3, p0, Lcom/android/server/wm/Session;->mLastReportedAnimatorScale:F

    .line 139
    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_44

    move v3, v4

    goto :goto_45

    :cond_44
    move v3, v0

    :goto_45
    iput-boolean v3, p0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    .line 141
    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.HIDE_NON_SYSTEM_OVERLAY_WINDOWS"

    invoke-virtual {v3, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 143
    const-string v5, "android.permission.HIDE_OVERLAY_WINDOWS"

    invoke-virtual {v3, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_5c

    goto :goto_5e

    :cond_5c
    move v3, v0

    goto :goto_5f

    :cond_5e
    :goto_5e
    move v3, v4

    :goto_5f
    iput-boolean v3, p0, Lcom/android/server/wm/Session;->mCanHideNonSystemOverlayWindows:Z

    .line 145
    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 146
    const-string v5, "android.permission.SYSTEM_APPLICATION_OVERLAY"

    invoke-virtual {v3, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6d

    move v3, v4

    goto :goto_6e

    :cond_6d
    move v3, v0

    :goto_6e
    iput-boolean v3, p0, Lcom/android/server/wm/Session;->mCanCreateSystemApplicationOverlay:Z

    .line 148
    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.START_TASKS_FROM_RECENTS"

    invoke-virtual {v3, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_7c

    move v3, v4

    goto :goto_7d

    :cond_7c
    move v3, v0

    :goto_7d
    iput-boolean v3, p0, Lcom/android/server/wm/Session;->mCanStartTasksFromRecents:Z

    .line 151
    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8b

    move v3, v4

    goto :goto_8c

    :cond_8b
    move v3, v0

    :goto_8c
    iput-boolean v3, p0, Lcom/android/server/wm/Session;->mCanAcquireSleepToken:Z

    .line 154
    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 155
    const-string v5, "android.permission.SET_UNRESTRICTED_KEEP_CLEAR_AREAS"

    invoke-virtual {v3, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_99

    goto :goto_9a

    :cond_99
    move v4, v0

    :goto_9a
    iput-boolean v4, p0, Lcom/android/server/wm/Session;->mSetsUnrestrictedKeepClearAreas:Z

    .line 157
    iget-boolean v3, p1, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    iput-boolean v3, p0, Lcom/android/server/wm/Session;->mShowingAlertWindowNotificationAllowed:Z

    .line 158
    iget-object v3, p1, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iput-object v3, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, "Session{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    const/16 v2, 0x2710

    if-ge v1, v2, :cond_ce

    .line 165
    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_e6

    .line 168
    :cond_ce
    const-string v2, ":u"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    const/16 v2, 0x61

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    :goto_e6
    const-string/jumbo v1, "}"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/Session;->mStringName:Ljava/lang/String;

    .line 177
    :try_start_f2
    invoke-interface {p2}, Landroid/view/IWindowSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_f9
    .catch Landroid/os/RemoteException; {:try_start_f2 .. :try_end_f9} :catch_fa

    .line 181
    goto :goto_fb

    .line 178
    :catch_fa
    move-exception v0

    .line 182
    :goto_fb
    return-void
.end method

.method private actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V
    .registers 5
    .param p1, "window"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/function/BiConsumer<",
            "Lcom/android/server/wm/WallpaperController;",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 580
    .local p2, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 581
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-interface {p2, v1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 582
    return-void
.end method

.method private cancelAlertWindowNotification()V
    .registers 3

    .line 852
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    if-nez v0, :cond_5

    .line 853
    return-void

    .line 855
    :cond_5
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AlertWindowNotification;->cancel(Z)V

    .line 856
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    .line 857
    return-void
.end method

.method private killSessionLocked()V
    .registers 8

    .line 820
    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    if-gtz v0, :cond_a1

    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    if-nez v0, :cond_a

    goto/16 :goto_a1

    .line 824
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 825
    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v0, :cond_16

    .line 826
    return-void

    .line 829
    :cond_16
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_3e

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last window removed from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", destroying "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_3e
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x52be68c

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-static {v4, v5, v3, v2, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 835
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_57
    :try_start_57
    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0}, Landroid/view/SurfaceSession;->kill()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5c} :catch_5d

    .line 839
    goto :goto_8e

    .line 836
    :catch_5d
    move-exception v0

    .line 837
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown when killing surface session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in session "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 838
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 837
    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8e
    iput-object v2, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 841
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 842
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 843
    invoke-direct {p0, v3}, Lcom/android/server/wm/Session;->setHasOverlayUi(Z)V

    .line 844
    invoke-direct {p0}, Lcom/android/server/wm/Session;->cancelAlertWindowNotification()V

    .line 845
    return-void

    .line 821
    :cond_a1
    :goto_a1
    return-void
.end method

.method static synthetic lambda$setShouldZoomOutWallpaper$2(ZLcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p0, "shouldZoom"    # Z
    .param p1, "wpController"    # Lcom/android/server/wm/WallpaperController;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 618
    invoke-virtual {p1, p2, p0}, Lcom/android/server/wm/WallpaperController;->setShouldZoomOutWallpaper(Lcom/android/server/wm/WindowState;Z)V

    return-void
.end method

.method static synthetic lambda$setWallpaperDisplayOffset$4(IILcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "wpController"    # Lcom/android/server/wm/WallpaperController;
    .param p3, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 636
    invoke-virtual {p2, p3, p0, p1}, Lcom/android/server/wm/WallpaperController;->setWindowWallpaperDisplayOffset(Lcom/android/server/wm/WindowState;II)V

    return-void
.end method

.method static synthetic lambda$setWallpaperPosition$0(FFFFLcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 12
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "xStep"    # F
    .param p3, "yStep"    # F
    .param p4, "wpController"    # Lcom/android/server/wm/WallpaperController;
    .param p5, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 590
    move-object v0, p4

    move-object v1, p5

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WallpaperController;->setWindowWallpaperPosition(Lcom/android/server/wm/WindowState;FFFF)V

    return-void
.end method

.method static synthetic lambda$setWallpaperZoomOut$1(FLcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p0, "zoom"    # F
    .param p1, "wpController"    # Lcom/android/server/wm/WallpaperController;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 607
    invoke-virtual {p1, p2, p0}, Lcom/android/server/wm/WallpaperController;->setWallpaperZoomOut(Lcom/android/server/wm/WindowState;F)V

    return-void
.end method

.method static synthetic lambda$wallpaperCommandComplete$5(Landroid/os/IBinder;Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p0, "window"    # Landroid/os/IBinder;
    .param p1, "wpController"    # Lcom/android/server/wm/WallpaperController;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 662
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WallpaperController;->wallpaperCommandComplete(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic lambda$wallpaperOffsetsComplete$3(Landroid/os/IBinder;Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p0, "window"    # Landroid/os/IBinder;
    .param p1, "wpController"    # Lcom/android/server/wm/WallpaperController;
    .param p2, "windowState"    # Lcom/android/server/wm/WindowState;

    .line 626
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WallpaperController;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    return-void
.end method

.method private setHasOverlayUi(Z)V
    .registers 5
    .param p1, "hasOverlayUi"    # Z

    .line 848
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget v1, p0, Lcom/android/server/wm/Session;->mPid:I

    const/16 v2, 0x3a

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 849
    return-void
.end method


# virtual methods
.method public addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsVisibilities;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I
    .registers 21
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "viewVisibility"    # I
    .param p4, "displayId"    # I
    .param p5, "requestedVisibilities"    # Landroid/view/InsetsVisibilities;
    .param p6, "outInputChannel"    # Landroid/view/InputChannel;
    .param p7, "outInsetsState"    # Landroid/view/InsetsState;
    .param p8, "outActiveControls"    # [Landroid/view/InsetsSourceControl;

    .line 212
    move-object v11, p0

    iget-object v0, v11, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v11, Lcom/android/server/wm/Session;->mUid:I

    .line 213
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 212
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/WindowManagerService;->addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InsetsVisibilities;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    return v0
.end method

.method public addToDisplayAsUser(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InsetsVisibilities;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I
    .registers 22
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "viewVisibility"    # I
    .param p4, "displayId"    # I
    .param p5, "userId"    # I
    .param p6, "requestedVisibilities"    # Landroid/view/InsetsVisibilities;
    .param p7, "outInputChannel"    # Landroid/view/InputChannel;
    .param p8, "outInsetsState"    # Landroid/view/InsetsState;
    .param p9, "outActiveControls"    # [Landroid/view/InsetsSourceControl;

    .line 222
    move-object v11, p0

    iget-object v0, v11, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/WindowManagerService;->addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InsetsVisibilities;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    return v0
.end method

.method public addToDisplayWithoutInputChannel(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsState;)I
    .registers 18
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "viewVisibility"    # I
    .param p4, "displayId"    # I
    .param p5, "outInsetsState"    # Landroid/view/InsetsState;

    .line 229
    move-object v11, p0

    iget-object v0, v11, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v11, Lcom/android/server/wm/Session;->mUid:I

    .line 230
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    iget-object v7, v11, Lcom/android/server/wm/Session;->mDummyRequestedVisibilities:Landroid/view/InsetsVisibilities;

    iget-object v10, v11, Lcom/android/server/wm/Session;->mDummyControls:[Landroid/view/InsetsSourceControl;

    .line 229
    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/WindowManagerService;->addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InsetsVisibilities;Landroid/view/InputChannel;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    return v0
.end method

.method public binderDied()V
    .registers 4

    .line 200
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 201
    iget-object v1, p0, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    invoke-interface {v1}, Landroid/view/IWindowSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 202
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    .line 203
    invoke-direct {p0}, Lcom/android/server/wm/Session;->killSessionLocked()V

    .line 204
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 205
    return-void

    .line 204
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public cancelDragAndDrop(Landroid/os/IBinder;Z)V
    .registers 6
    .param p1, "dragToken"    # Landroid/os/IBinder;
    .param p2, "skipAnimation"    # Z

    .line 510
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 512
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/DragDropController;->cancelDragAndDrop(Landroid/os/IBinder;Z)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 514
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 515
    nop

    .line 516
    return-void

    .line 514
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 515
    throw v2
.end method

.method public clearTouchableRegion(Landroid/view/IWindow;)V
    .registers 3
    .param p1, "window"    # Landroid/view/IWindow;

    .line 298
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->clearTouchableRegion(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V

    .line 299
    return-void
.end method

.method public dragRecipientEntered(Landroid/view/IWindow;)V
    .registers 3
    .param p1, "window"    # Landroid/view/IWindow;

    .line 520
    iget-object v0, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DragDropController;->dragRecipientEntered(Landroid/view/IWindow;)V

    .line 521
    return-void
.end method

.method public dragRecipientExited(Landroid/view/IWindow;)V
    .registers 3
    .param p1, "window"    # Landroid/view/IWindow;

    .line 525
    iget-object v0, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DragDropController;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 526
    return-void
.end method

.method public dropForAccessibility(Landroid/view/IWindow;II)Z
    .registers 9
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 351
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 353
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/DragDropController;->dropForAccessibility(Landroid/view/IWindow;FF)Z

    move-result v2
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 355
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 353
    return v2

    .line 355
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 356
    throw v2
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 860
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNumWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 861
    const-string v0, " mCanAddInternalSystemWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 862
    const-string v0, " mAppOverlaySurfaces="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 863
    const-string v0, " mAlertWindowSurfaces="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 864
    const-string v0, " mClientDead="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 865
    const-string v0, " mSurfaceSession="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 866
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPackageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 867
    return-void
.end method

.method public finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V
    .registers 6
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "postDrawTransaction"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "seqId"    # I

    .line 304
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IWindow finishDrawing called for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->finishDrawingWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V

    .line 306
    return-void
.end method

.method public finishMovingTask(Landroid/view/IWindow;)V
    .registers 5
    .param p1, "window"    # Landroid/view/IWindow;

    .line 543
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_b

    const-string v0, "WindowManager"

    const-string v1, "finishMovingTask"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 547
    .local v0, "ident":J
    :try_start_f
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning(Landroid/view/IWindow;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_1b

    .line 549
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 550
    nop

    .line 551
    return-void

    .line 549
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 550
    throw v2
.end method

.method public generateDisplayHash(Landroid/view/IWindow;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .registers 13
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "boundsInWindow"    # Landroid/graphics/Rect;
    .param p3, "hashAlgorithm"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/os/RemoteCallback;

    .line 947
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 949
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowManagerService;->generateDisplayHash(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 951
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 952
    nop

    .line 953
    return-void

    .line 951
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 952
    throw v2
.end method

.method public getInTouchMode()Z
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getInTouchMode()Z

    move-result v0

    return v0
.end method

.method public getParentSurfaceControl(Landroid/view/IWindow;)Landroid/view/WallpaperAnimationTarget;
    .registers 4
    .param p1, "window"    # Landroid/view/IWindow;

    .line 972
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->getParentSurfaceControl(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Landroid/view/SurfaceControl;

    move-result-object v0

    .line 973
    .local v0, "surfaceControl":Landroid/view/SurfaceControl;
    new-instance v1, Landroid/view/WallpaperAnimationTarget;

    invoke-direct {v1, v0}, Landroid/view/WallpaperAnimationTarget;-><init>(Landroid/view/SurfaceControl;)V

    return-object v1
.end method

.method public getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;
    .registers 3
    .param p1, "window"    # Landroid/os/IBinder;

    .line 680
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v0

    return-object v0
.end method

.method public grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/os/IBinder;Z)V
    .registers 8
    .param p1, "callingWindow"    # Landroid/view/IWindow;
    .param p2, "targetInputToken"    # Landroid/os/IBinder;
    .param p3, "grantFocus"    # Z

    .line 926
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 928
    .local v0, "identity":J
    if-nez p1, :cond_18

    .line 929
    :try_start_6
    iget-boolean v2, p0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    if-eqz v2, :cond_10

    .line 934
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0, p2, p3}, Lcom/android/server/wm/WindowManagerService;->grantEmbeddedWindowFocus(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)V

    goto :goto_1d

    .line 932
    :cond_10
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/wm/Session;
    .end local p1    # "callingWindow":Landroid/view/IWindow;
    .end local p2    # "targetInputToken":Landroid/os/IBinder;
    .end local p3    # "grantFocus":Z
    throw v2

    .line 936
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/wm/Session;
    .restart local p1    # "callingWindow":Landroid/view/IWindow;
    .restart local p2    # "targetInputToken":Landroid/os/IBinder;
    .restart local p3    # "grantFocus":Z
    :cond_18
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->grantEmbeddedWindowFocus(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/os/IBinder;Z)V
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_22

    .line 940
    :goto_1d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 941
    nop

    .line 942
    return-void

    .line 940
    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 941
    throw v2
.end method

.method public grantInputChannel(ILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IIILandroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V
    .registers 29
    .param p1, "displayId"    # I
    .param p2, "surface"    # Landroid/view/SurfaceControl;
    .param p3, "window"    # Landroid/view/IWindow;
    .param p4, "hostInputToken"    # Landroid/os/IBinder;
    .param p5, "flags"    # I
    .param p6, "privateFlags"    # I
    .param p7, "type"    # I
    .param p8, "focusGrantToken"    # Landroid/os/IBinder;
    .param p9, "inputHandleName"    # Ljava/lang/String;
    .param p10, "outInputChannel"    # Landroid/view/InputChannel;

    .line 889
    move-object/from16 v15, p0

    if-nez p4, :cond_11

    iget-boolean v0, v15, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    if-eqz v0, :cond_9

    goto :goto_11

    .line 892
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires INTERNAL_SYSTEM_WINDOW permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 895
    :cond_11
    :goto_11
    iget-boolean v0, v15, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    if-nez v0, :cond_1e

    if-eqz p7, :cond_1e

    .line 896
    const-string v0, "WindowManager"

    const-string v1, "Requires INTERNAL_SYSTEM_WINDOW permission if assign type to input"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 902
    .local v16, "identity":J
    :try_start_22
    iget-object v1, v15, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v15, Lcom/android/server/wm/Session;->mUid:I

    iget v4, v15, Lcom/android/server/wm/Session;->mPid:I

    .line 903
    iget-boolean v0, v15, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_30

    move/from16 v10, p6

    goto :goto_31

    :cond_30
    move v10, v2

    .line 904
    :goto_31
    if-eqz v0, :cond_36

    move/from16 v11, p7

    goto :goto_37

    :cond_36
    move v11, v2

    .line 902
    :goto_37
    move-object/from16 v2, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    invoke-virtual/range {v1 .. v14}, Lcom/android/server/wm/WindowManagerService;->grantInputChannel(Lcom/android/server/wm/Session;IIILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IIILandroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V
    :try_end_4c
    .catchall {:try_start_22 .. :try_end_4c} :catchall_51

    .line 907
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 908
    nop

    .line 909
    return-void

    .line 907
    :catchall_51
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 908
    throw v0
.end method

.method hasAlertWindowSurfaces(Lcom/android/server/wm/DisplayContent;)Z
    .registers 6
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 876
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_20

    .line 877
    iget-object v2, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowSurfaceController;

    .line 878
    .local v2, "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    iget-object v3, v2, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-ne v3, p1, :cond_1d

    .line 879
    return v1

    .line 876
    .end local v2    # "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 882
    .end local v0    # "i":I
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "rectangle"    # Landroid/graphics/Rect;

    .line 668
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 669
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_20

    .line 671
    .local v1, "identity":J
    :try_start_c
    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/WindowManagerService;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1a

    .line 673
    :try_start_11
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 674
    nop

    .line 675
    .end local v1    # "identity":J
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 676
    return-void

    .line 673
    .restart local v1    # "identity":J
    :catchall_1a
    move-exception v3

    :try_start_1b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 674
    nop

    .end local p0    # "this":Lcom/android/server/wm/Session;
    .end local p1    # "token":Landroid/os/IBinder;
    .end local p2    # "rectangle":Landroid/graphics/Rect;
    throw v3

    .line 675
    .end local v1    # "identity":J
    .restart local p0    # "this":Lcom/android/server/wm/Session;
    .restart local p1    # "token":Landroid/os/IBinder;
    .restart local p2    # "rectangle":Landroid/graphics/Rect;
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowSession$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 189
    :catch_5
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 192
    const-string v1, "WindowManager"

    const-string v2, "Window Session Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    :cond_11
    throw v0
.end method

.method onWindowSurfaceVisibilityChanged(Lcom/android/server/wm/WindowSurfaceController;ZI)V
    .registers 9
    .param p1, "surfaceController"    # Lcom/android/server/wm/WindowSurfaceController;
    .param p2, "visible"    # Z
    .param p3, "type"    # I

    .line 760
    invoke-static {p3}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 761
    return-void

    .line 766
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    const/4 v1, 0x1

    if-nez v0, :cond_51

    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mCanCreateSystemApplicationOverlay:Z

    if-nez v0, :cond_51

    .line 769
    if-eqz p2, :cond_20

    .line 770
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 771
    .local v0, "changed":Z
    iget v2, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v3, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3, v0, p3, v1}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayEnter(ILjava/lang/String;ZIZ)V

    goto :goto_2d

    .line 773
    .end local v0    # "changed":Z
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 774
    .restart local v0    # "changed":Z
    iget v2, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v3, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3, v0, p3, v1}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayExit(ILjava/lang/String;ZIZ)V

    .line 777
    :goto_2d
    if-eqz v0, :cond_51

    .line 778
    iget-object v2, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 779
    invoke-direct {p0}, Lcom/android/server/wm/Session;->cancelAlertWindowNotification()V

    goto :goto_51

    .line 780
    :cond_3b
    iget-object v2, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    if-nez v2, :cond_51

    .line 781
    new-instance v2, Lcom/android/server/wm/AlertWindowNotification;

    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/android/server/wm/AlertWindowNotification;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    .line 782
    iget-boolean v3, p0, Lcom/android/server/wm/Session;->mShowingAlertWindowNotificationAllowed:Z

    if-eqz v3, :cond_51

    .line 783
    invoke-virtual {v2}, Lcom/android/server/wm/AlertWindowNotification;->post()V

    .line 789
    .end local v0    # "changed":Z
    :cond_51
    :goto_51
    const/16 v0, 0x7f6

    if-eq p3, v0, :cond_56

    .line 790
    return-void

    .line 793
    :cond_56
    const/4 v0, 0x0

    if-eqz p2, :cond_67

    .line 794
    iget-object v2, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 795
    .local v2, "changed":Z
    iget v3, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v4, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4, v2, p3, v0}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayEnter(ILjava/lang/String;ZIZ)V

    goto :goto_74

    .line 797
    .end local v2    # "changed":Z
    :cond_67
    iget-object v2, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 798
    .restart local v2    # "changed":Z
    iget v3, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v4, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4, v2, p3, v0}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayExit(ILjava/lang/String;ZIZ)V

    .line 801
    :goto_74
    if-eqz v2, :cond_80

    .line 804
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/wm/Session;->setHasOverlayUi(Z)V

    .line 806
    :cond_80
    return-void
.end method

.method public outOfMemory(Landroid/view/IWindow;)Z
    .registers 3
    .param p1, "window"    # Landroid/view/IWindow;

    .line 286
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->outOfMemoryWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Z

    move-result v0

    return v0
.end method

.method public performDrag(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;
    .registers 28
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "flags"    # I
    .param p3, "surface"    # Landroid/view/SurfaceControl;
    .param p4, "touchSource"    # I
    .param p5, "touchX"    # F
    .param p6, "touchY"    # F
    .param p7, "thumbCenterX"    # F
    .param p8, "thumbCenterY"    # F
    .param p9, "data"    # Landroid/content/ClipData;

    .line 334
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 335
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 337
    .local v3, "callingPid":I
    iget-object v0, v1, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    move-object/from16 v15, p9

    invoke-virtual {v1, v15, v2, v3, v0}, Lcom/android/server/wm/Session;->validateAndResolveDragMimeTypeExtras(Landroid/content/ClipData;IILjava/lang/String;)V

    .line 338
    move/from16 v14, p2

    invoke-virtual {v1, v14, v2}, Lcom/android/server/wm/Session;->validateDragFlags(II)V

    .line 339
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 341
    .local v16, "ident":J
    :try_start_1a
    iget-object v4, v1, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget v5, v1, Lcom/android/server/wm/Session;->mPid:I

    iget v6, v1, Lcom/android/server/wm/Session;->mUid:I

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move-object/from16 v15, p9

    invoke-virtual/range {v4 .. v15}, Lcom/android/server/wm/DragDropController;->performDrag(IILandroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_36
    .catchall {:try_start_1a .. :try_end_36} :catchall_3a

    .line 344
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 341
    return-object v0

    .line 344
    :catchall_3a
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 345
    throw v0
.end method

.method public performHapticFeedback(IZ)Z
    .registers 12
    .param p1, "effectId"    # I
    .param p2, "always"    # Z

    .line 320
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 322
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v4, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v5, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    const/4 v8, 0x0

    move v6, p1

    move v7, p2

    invoke-interface/range {v3 .. v8}, Lcom/android/server/policy/WindowManagerPolicy;->performHapticFeedback(ILjava/lang/String;IZLjava/lang/String;)Z

    move-result v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 325
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 322
    return v2

    .line 325
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 326
    throw v2
.end method

.method public pokeDrawLock(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "window"    # Landroid/os/IBinder;

    .line 685
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 687
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0, p1}, Lcom/android/server/wm/WindowManagerService;->pokeDrawLock(Lcom/android/server/wm/Session;Landroid/os/IBinder;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 689
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 690
    nop

    .line 691
    return-void

    .line 689
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 690
    throw v2
.end method

.method public prepareToReplaceWindows(Landroid/os/IBinder;Z)V
    .registers 4
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "childrenOnly"    # Z

    .line 262
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setWillReplaceWindows(Landroid/os/IBinder;Z)V

    .line 263
    return-void
.end method

.method public relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;Landroid/os/Bundle;)I
    .registers 30
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "requestedWidth"    # I
    .param p4, "requestedHeight"    # I
    .param p5, "viewFlags"    # I
    .param p6, "flags"    # I
    .param p7, "outFrames"    # Landroid/window/ClientWindowFrames;
    .param p8, "mergedConfiguration"    # Landroid/util/MergedConfiguration;
    .param p9, "outSurfaceControl"    # Landroid/view/SurfaceControl;
    .param p10, "outInsetsState"    # Landroid/view/InsetsState;
    .param p11, "outActiveControls"    # [Landroid/view/InsetsSourceControl;
    .param p12, "outSyncSeqIdBundle"    # Landroid/os/Bundle;

    .line 273
    move-object/from16 v14, p0

    iget-object v0, v14, Lcom/android/server/wm/Session;->mRelayoutTag:Ljava/lang/String;

    const-wide/16 v12, 0x20

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 274
    iget-object v0, v14, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-wide v15, v12

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/wm/WindowManagerService;->relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;Landroid/os/Bundle;)I

    move-result v0

    .line 278
    .local v0, "res":I
    invoke-static/range {v15 .. v16}, Landroid/os/Trace;->traceEnd(J)V

    .line 281
    return v0
.end method

.method public remove(Landroid/view/IWindow;)V
    .registers 3
    .param p1, "window"    # Landroid/view/IWindow;

    .line 236
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->removeWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V

    .line 237
    return-void
.end method

.method public reportDropResult(Landroid/view/IWindow;Z)V
    .registers 6
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "consumed"    # Z

    .line 500
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 502
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/DragDropController;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 504
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 505
    nop

    .line 506
    return-void

    .line 504
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 505
    throw v2
.end method

.method public reportKeepClearAreasChanged(Landroid/view/IWindow;Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .param p1, "window"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/IWindow;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 566
    .local p2, "restricted":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    .local p3, "unrestricted":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mSetsUnrestrictedKeepClearAreas:Z

    if-nez v0, :cond_e

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 567
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    .line 570
    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 572
    .local v0, "ident":J
    :try_start_12
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->reportKeepClearAreasChanged(Lcom/android/server/wm/Session;Landroid/view/IWindow;Ljava/util/List;Ljava/util/List;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1c

    .line 574
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 575
    nop

    .line 576
    return-void

    .line 574
    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 575
    throw v2
.end method

.method public reportSystemGestureExclusionChanged(Landroid/view/IWindow;Ljava/util/List;)V
    .registers 6
    .param p1, "window"    # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/IWindow;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 555
    .local p2, "exclusionRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 557
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->reportSystemGestureExclusionChanged(Lcom/android/server/wm/Session;Landroid/view/IWindow;Ljava/util/List;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 559
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 560
    nop

    .line 561
    return-void

    .line 559
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 560
    throw v2
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 23
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z

    .line 646
    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 647
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_3e

    .line 649
    .local v3, "ident":J
    :try_start_d
    iget-object v0, v1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_36

    const/4 v5, 0x1

    move-object/from16 v6, p1

    :try_start_12
    invoke-virtual {v0, p0, v6, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v8

    .line 650
    .local v8, "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v7, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 651
    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    move/from16 v14, p7

    invoke-virtual/range {v7 .. v14}, Lcom/android/server/wm/WallpaperController;->sendWindowWallpaperCommand(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_34

    .line 653
    :try_start_2c
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_46

    .line 650
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 653
    .end local v8    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_34
    move-exception v0

    goto :goto_39

    :catchall_36
    move-exception v0

    move-object/from16 v6, p1

    :goto_39
    :try_start_39
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 654
    nop

    .end local p0    # "this":Lcom/android/server/wm/Session;
    .end local p1    # "window":Landroid/os/IBinder;
    .end local p2    # "action":Ljava/lang/String;
    .end local p3    # "x":I
    .end local p4    # "y":I
    .end local p5    # "z":I
    .end local p6    # "extras":Landroid/os/Bundle;
    .end local p7    # "sync":Z
    throw v0

    .line 655
    .end local v3    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/Session;
    .restart local p1    # "window":Landroid/os/IBinder;
    .restart local p2    # "action":Ljava/lang/String;
    .restart local p3    # "x":I
    .restart local p4    # "y":I
    .restart local p5    # "z":I
    .restart local p6    # "extras":Landroid/os/Bundle;
    .restart local p7    # "sync":Z
    :catchall_3e
    move-exception v0

    move-object/from16 v6, p1

    :goto_41
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_46

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_46
    move-exception v0

    goto :goto_41
.end method

.method public setInTouchMode(Z)V
    .registers 3
    .param p1, "mode"    # Z

    .line 310
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setInTouchMode(Z)V

    .line 311
    return-void
.end method

.method public setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .registers 13
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "touchableInsets"    # I
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "touchableArea"    # Landroid/graphics/Region;

    .line 292
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;->setInsetsWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    .line 294
    return-void
.end method

.method public setOnBackInvokedCallbackInfo(Landroid/view/IWindow;Landroid/window/OnBackInvokedCallbackInfo;)V
    .registers 8
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "callbackInfo"    # Landroid/window/OnBackInvokedCallbackInfo;

    .line 959
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 960
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 961
    .local v1, "windowState":Lcom/android/server/wm/WindowState;
    if-nez v1, :cond_2d

    .line 962
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOnBackInvokedCallback(): No window state for package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 965
    :cond_2d
    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowState;->setOnBackInvokedCallbackInfo(Landroid/window/OnBackInvokedCallbackInfo;)V

    .line 967
    .end local v1    # "windowState":Lcom/android/server/wm/WindowState;
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 968
    return-void

    .line 967
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setPendingDragEndedLoc(Landroid/view/IWindow;IIII)V
    .registers 14
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 980
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 982
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DragDropController;->setPendingDragEndedLoc(Landroid/view/IWindow;IIII)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 984
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 985
    nop

    .line 986
    return-void

    .line 984
    :catchall_13
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 985
    throw v2
.end method

.method public setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V
    .registers 5
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "shouldZoom"    # Z

    .line 616
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 617
    new-instance v1, Lcom/android/server/wm/Session$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/android/server/wm/Session$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V

    .line 619
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 620
    return-void

    .line 619
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setShowingAlertWindowNotificationAllowed(Z)V
    .registers 4
    .param p1, "allowed"    # Z

    .line 809
    iput-boolean p1, p0, Lcom/android/server/wm/Session;->mShowingAlertWindowNotificationAllowed:Z

    .line 810
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    if-eqz v0, :cond_10

    .line 811
    if-eqz p1, :cond_c

    .line 812
    invoke-virtual {v0}, Lcom/android/server/wm/AlertWindowNotification;->post()V

    goto :goto_10

    .line 814
    :cond_c
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AlertWindowNotification;->cancel(Z)V

    .line 817
    :cond_10
    :goto_10
    return-void
.end method

.method public setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    .registers 8
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 632
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 633
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_23

    .line 635
    .local v1, "ident":J
    :try_start_c
    new-instance v3, Lcom/android/server/wm/Session$$ExternalSyntheticLambda2;

    invoke-direct {v3, p2, p3}, Lcom/android/server/wm/Session$$ExternalSyntheticLambda2;-><init>(II)V

    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_1d

    .line 638
    :try_start_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 639
    nop

    .line 640
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 641
    return-void

    .line 638
    .restart local v1    # "ident":J
    :catchall_1d
    move-exception v3

    :try_start_1e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 639
    nop

    .end local p0    # "this":Lcom/android/server/wm/Session;
    .end local p1    # "window":Landroid/os/IBinder;
    .end local p2    # "x":I
    .end local p3    # "y":I
    throw v3

    .line 640
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/Session;
    .restart local p1    # "window":Landroid/os/IBinder;
    .restart local p2    # "x":I
    .restart local p3    # "y":I
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    .registers 10
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "xStep"    # F
    .param p5, "yStep"    # F

    .line 586
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 587
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_23

    .line 589
    .local v1, "ident":J
    :try_start_c
    new-instance v3, Lcom/android/server/wm/Session$$ExternalSyntheticLambda5;

    invoke-direct {v3, p2, p3, p4, p5}, Lcom/android/server/wm/Session$$ExternalSyntheticLambda5;-><init>(FFFF)V

    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_1d

    .line 592
    :try_start_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 593
    nop

    .line 594
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 595
    return-void

    .line 592
    .restart local v1    # "ident":J
    :catchall_1d
    move-exception v3

    :try_start_1e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 593
    nop

    .end local p0    # "this":Lcom/android/server/wm/Session;
    .end local p1    # "window":Landroid/os/IBinder;
    .end local p2    # "x":F
    .end local p3    # "y":F
    .end local p4    # "xStep":F
    .end local p5    # "yStep":F
    throw v3

    .line 594
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/Session;
    .restart local p1    # "window":Landroid/os/IBinder;
    .restart local p2    # "x":F
    .restart local p3    # "y":F
    .restart local p4    # "xStep":F
    .restart local p5    # "yStep":F
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setWallpaperZoomOut(Landroid/os/IBinder;F)V
    .registers 7
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "zoom"    # F

    .line 599
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_3e

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-ltz v0, :cond_3e

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 603
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_1a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 604
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_38

    .line 606
    .local v1, "ident":J
    :try_start_21
    new-instance v3, Lcom/android/server/wm/Session$$ExternalSyntheticLambda3;

    invoke-direct {v3, p2}, Lcom/android/server/wm/Session$$ExternalSyntheticLambda3;-><init>(F)V

    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_32

    .line 609
    :try_start_29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 610
    nop

    .line 611
    .end local v1    # "ident":J
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 612
    return-void

    .line 609
    .restart local v1    # "ident":J
    :catchall_32
    move-exception v3

    :try_start_33
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 610
    nop

    .end local p0    # "this":Lcom/android/server/wm/Session;
    .end local p1    # "window":Landroid/os/IBinder;
    .end local p2    # "zoom":F
    throw v3

    .line 611
    .end local v1    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wm/Session;
    .restart local p1    # "window":Landroid/os/IBinder;
    .restart local p2    # "zoom":F
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 600
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zoom must be a valid float between 0 and 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startMovingTask(Landroid/view/IWindow;FF)Z
    .registers 7
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "startX"    # F
    .param p3, "startY"    # F

    .line 530
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startMovingTask: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_2e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 535
    .local v0, "ident":J
    :try_start_32
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/TaskPositioningController;->startMovingTask(Landroid/view/IWindow;FF)Z

    move-result v2
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3e

    .line 537
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 535
    return v2

    .line 537
    :catchall_3e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 538
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 871
    iget-object v0, p0, Lcom/android/server/wm/Session;->mStringName:Ljava/lang/String;

    return-object v0
.end method

.method public updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IILandroid/graphics/Region;)V
    .registers 16
    .param p1, "channelToken"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "surface"    # Landroid/view/SurfaceControl;
    .param p4, "flags"    # I
    .param p5, "privateFlags"    # I
    .param p6, "region"    # Landroid/graphics/Region;

    .line 914
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 916
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 917
    iget-boolean v3, p0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    if-eqz v3, :cond_c

    move v7, p5

    goto :goto_e

    :cond_c
    const/4 v3, 0x0

    move v7, v3

    .line 916
    :goto_e
    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/WindowManagerService;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IILandroid/graphics/Region;)V
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1b

    .line 919
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 920
    nop

    .line 921
    return-void

    .line 919
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 920
    throw v2
.end method

.method public updateLayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/window/ClientWindowFrames;II)V
    .registers 18
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "flags"    # I
    .param p4, "clientFrames"    # Landroid/window/ClientWindowFrames;
    .param p5, "requestedWidth"    # I
    .param p6, "requestedHeight"    # I

    .line 254
    move-object v8, p0

    iget-object v0, v8, Lcom/android/server/wm/Session;->mUpdateWindowLayoutTag:Ljava/lang/String;

    const-wide/16 v9, 0x20

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 255
    iget-object v0, v8, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/WindowManagerService;->updateWindowLayout(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/window/ClientWindowFrames;II)V

    .line 257
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 258
    return-void
.end method

.method public updatePointerIcon(Landroid/view/IWindow;)V
    .registers 5
    .param p1, "window"    # Landroid/view/IWindow;

    .line 695
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 697
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->updatePointerIcon(Landroid/view/IWindow;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 699
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 700
    nop

    .line 701
    return-void

    .line 699
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 700
    throw v2
.end method

.method public updateRequestedVisibilities(Landroid/view/IWindow;Landroid/view/InsetsVisibilities;)V
    .registers 6
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "visibilities"    # Landroid/view/InsetsVisibilities;

    .line 715
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 716
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 718
    .local v1, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_1f

    .line 719
    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowState;->setRequestedVisibilities(Landroid/view/InsetsVisibilities;)V

    .line 720
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInsetsPolicy()Lcom/android/server/wm/InsetsPolicy;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/InsetsPolicy;->onInsetsModified(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 722
    .end local v1    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 723
    return-void

    .line 722
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 6
    .param p1, "window"    # Landroid/view/IWindow;
    .param p2, "region"    # Landroid/graphics/Region;

    .line 705
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 707
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowManagerService;->updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 709
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 710
    nop

    .line 711
    return-void

    .line 709
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 710
    throw v2
.end method

.method public updateVisibility(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I
    .registers 20
    .param p1, "client"    # Landroid/view/IWindow;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "viewVisibility"    # I
    .param p4, "outMergedConfiguration"    # Landroid/util/MergedConfiguration;
    .param p5, "outSurfaceControl"    # Landroid/view/SurfaceControl;
    .param p6, "outInsetsState"    # Landroid/view/InsetsState;
    .param p7, "outActiveControls"    # [Landroid/view/InsetsSourceControl;

    .line 244
    move-object v9, p0

    iget-object v0, v9, Lcom/android/server/wm/Session;->mUpdateViewVisibilityTag:Ljava/lang/String;

    const-wide/16 v10, 0x20

    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 245
    iget-object v0, v9, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/WindowManagerService;->updateViewVisibility(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;ILandroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)I

    move-result v0

    .line 247
    .local v0, "res":I
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 248
    return v0
.end method

.method validateAndResolveDragMimeTypeExtras(Landroid/content/ClipData;IILjava/lang/String;)V
    .registers 29
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "callingUid"    # I
    .param p3, "callingPid"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .line 388
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p2

    if-eqz v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    goto :goto_e

    :cond_d
    const/4 v3, 0x0

    :goto_e
    move-object v12, v3

    .line 389
    .local v12, "desc":Landroid/content/ClipDescription;
    if-nez v12, :cond_12

    .line 390
    return-void

    .line 393
    :cond_12
    const-string v3, "application/vnd.android.activity"

    invoke-virtual {v12, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v13

    .line 394
    .local v13, "hasActivity":Z
    const-string v3, "application/vnd.android.shortcut"

    invoke-virtual {v12, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v14

    .line 395
    .local v14, "hasShortcut":Z
    const-string v3, "application/vnd.android.task"

    invoke-virtual {v12, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v15

    .line 396
    .local v15, "hasTask":Z
    nop

    .line 397
    add-int v3, v13, v14

    .line 398
    add-int v10, v3, v15

    .line 399
    .local v10, "appMimeTypeCount":I
    if-nez v10, :cond_2c

    .line 400
    return-void

    .line 401
    :cond_2c
    const/4 v3, 0x1

    if-gt v10, v3, :cond_1dd

    .line 406
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-eqz v3, :cond_1d5

    .line 409
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_36
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v4

    if-ge v3, v4, :cond_51

    .line 410
    invoke-virtual {v2, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_49

    .line 409
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 411
    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unexpected item, expected an intent"

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    .end local v3    # "i":I
    :cond_51
    const-string v9, "android.intent.extra.USER"

    if-eqz v13, :cond_c6

    .line 416
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 419
    .local v3, "origId":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5a
    :try_start_5a
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    if-ge v5, v6, :cond_b5

    .line 420
    invoke-virtual {v2, v5}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    .line 421
    .local v6, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 422
    .local v7, "intent":Landroid/content/Intent;
    const-string v8, "android.intent.extra.PENDING_INTENT"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    .line 424
    .local v8, "pi":Landroid/app/PendingIntent;
    invoke-virtual {v7, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/os/UserHandle;

    .line 425
    .local v16, "user":Landroid/os/UserHandle;
    if-eqz v8, :cond_a5

    if-eqz v16, :cond_a5

    .line 429
    iget-object v0, v1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 430
    invoke-virtual {v8}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v17

    move-object/from16 v18, v7

    .end local v7    # "intent":Landroid/content/Intent;
    .local v18, "intent":Landroid/content/Intent;
    invoke-virtual/range {v17 .. v17}, Landroid/content/IntentSender;->getTarget()Landroid/content/IIntentSender;

    move-result-object v7

    .line 429
    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerInternal;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v0

    .line 431
    .local v0, "launchIntent":Landroid/content/Intent;
    iget-object v7, v1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 432
    move-object/from16 v17, v8

    .end local v8    # "pi":Landroid/app/PendingIntent;
    .local v17, "pi":Landroid/app/PendingIntent;
    invoke-virtual/range {v16 .. v16}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8
    :try_end_96
    .catchall {:try_start_5a .. :try_end_96} :catchall_bf

    .line 431
    move/from16 v19, v10

    const/4 v10, 0x0

    .end local v10    # "appMimeTypeCount":I
    .local v19, "appMimeTypeCount":I
    :try_start_99
    invoke-virtual {v7, v0, v10, v8, v11}, Lcom/android/server/wm/ActivityTaskManagerService;->resolveActivityInfoForIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 434
    .local v7, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v6, v7}, Landroid/content/ClipData$Item;->setActivityInfo(Landroid/content/pm/ActivityInfo;)V

    .line 419
    .end local v0    # "launchIntent":Landroid/content/Intent;
    .end local v6    # "item":Landroid/content/ClipData$Item;
    .end local v7    # "info":Landroid/content/pm/ActivityInfo;
    .end local v16    # "user":Landroid/os/UserHandle;
    .end local v17    # "pi":Landroid/app/PendingIntent;
    .end local v18    # "intent":Landroid/content/Intent;
    add-int/lit8 v5, v5, 0x1

    move/from16 v10, v19

    goto :goto_5a

    .line 425
    .end local v19    # "appMimeTypeCount":I
    .restart local v6    # "item":Landroid/content/ClipData$Item;
    .local v7, "intent":Landroid/content/Intent;
    .restart local v8    # "pi":Landroid/app/PendingIntent;
    .restart local v10    # "appMimeTypeCount":I
    .restart local v16    # "user":Landroid/os/UserHandle;
    :cond_a5
    move-object/from16 v18, v7

    move-object/from16 v17, v8

    move/from16 v19, v10

    .line 426
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v8    # "pi":Landroid/app/PendingIntent;
    .end local v10    # "appMimeTypeCount":I
    .restart local v17    # "pi":Landroid/app/PendingIntent;
    .restart local v18    # "intent":Landroid/content/Intent;
    .restart local v19    # "appMimeTypeCount":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v7, "Clip data must include the pending intent to launch and its associated user to launch for."

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v3    # "origId":J
    .end local v12    # "desc":Landroid/content/ClipDescription;
    .end local v13    # "hasActivity":Z
    .end local v14    # "hasShortcut":Z
    .end local v15    # "hasTask":Z
    .end local v19    # "appMimeTypeCount":I
    .end local p0    # "this":Lcom/android/server/wm/Session;
    .end local p1    # "data":Landroid/content/ClipData;
    .end local p2    # "callingUid":I
    .end local p3    # "callingPid":I
    .end local p4    # "callingPackage":Ljava/lang/String;
    throw v0
    :try_end_b3
    .catchall {:try_start_99 .. :try_end_b3} :catchall_b3

    .line 437
    .end local v5    # "i":I
    .end local v6    # "item":Landroid/content/ClipData$Item;
    .end local v16    # "user":Landroid/os/UserHandle;
    .end local v17    # "pi":Landroid/app/PendingIntent;
    .end local v18    # "intent":Landroid/content/Intent;
    .restart local v3    # "origId":J
    .restart local v12    # "desc":Landroid/content/ClipDescription;
    .restart local v13    # "hasActivity":Z
    .restart local v14    # "hasShortcut":Z
    .restart local v15    # "hasTask":Z
    .restart local v19    # "appMimeTypeCount":I
    .restart local p0    # "this":Lcom/android/server/wm/Session;
    .restart local p1    # "data":Landroid/content/ClipData;
    .restart local p2    # "callingUid":I
    .restart local p3    # "callingPid":I
    .restart local p4    # "callingPackage":Ljava/lang/String;
    :catchall_b3
    move-exception v0

    goto :goto_c2

    .line 419
    .end local v19    # "appMimeTypeCount":I
    .restart local v5    # "i":I
    .restart local v10    # "appMimeTypeCount":I
    :cond_b5
    move/from16 v19, v10

    .line 437
    .end local v5    # "i":I
    .end local v10    # "appMimeTypeCount":I
    .restart local v19    # "appMimeTypeCount":I
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 438
    nop

    .line 439
    .end local v3    # "origId":J
    move-object/from16 v23, v12

    goto/16 :goto_1d4

    .line 437
    .end local v19    # "appMimeTypeCount":I
    .restart local v3    # "origId":J
    .restart local v10    # "appMimeTypeCount":I
    :catchall_bf
    move-exception v0

    move/from16 v19, v10

    .end local v10    # "appMimeTypeCount":I
    .restart local v19    # "appMimeTypeCount":I
    :goto_c2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 438
    throw v0

    .line 439
    .end local v3    # "origId":J
    .end local v19    # "appMimeTypeCount":I
    .restart local v10    # "appMimeTypeCount":I
    :cond_c6
    move/from16 v19, v10

    .end local v10    # "appMimeTypeCount":I
    .restart local v19    # "appMimeTypeCount":I
    const-string v0, "Requires START_TASKS_FROM_RECENTS permission"

    if-eqz v14, :cond_170

    .line 442
    iget-boolean v3, v1, Lcom/android/server/wm/Session;->mCanStartTasksFromRecents:Z

    if-eqz v3, :cond_16a

    .line 445
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d1
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v0, v3, :cond_167

    .line 446
    invoke-virtual {v2, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    .line 447
    .local v10, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 448
    .local v8, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.ID"

    invoke-virtual {v8, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 449
    .local v16, "shortcutId":Ljava/lang/String;
    const-string v3, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v8, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 450
    .local v17, "packageName":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Landroid/os/UserHandle;

    .line 451
    .local v18, "user":Landroid/os/UserHandle;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15a

    .line 452
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_154

    if-eqz v18, :cond_154

    .line 457
    const-class v3, Landroid/content/pm/ShortcutServiceInternal;

    .line 458
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Landroid/content/pm/ShortcutServiceInternal;

    .line 459
    .local v20, "shortcutService":Landroid/content/pm/ShortcutServiceInternal;
    nop

    .line 460
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 461
    invoke-virtual/range {v18 .. v18}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v21

    .line 459
    move-object/from16 v3, v20

    move-object/from16 v5, p4

    move-object/from16 v6, v17

    move-object/from16 v7, v16

    move-object/from16 v22, v8

    .end local v8    # "intent":Landroid/content/Intent;
    .local v22, "intent":Landroid/content/Intent;
    move/from16 v8, v21

    move-object/from16 v21, v9

    move/from16 v9, p3

    move-object/from16 v23, v12

    move-object v12, v10

    .end local v10    # "item":Landroid/content/ClipData$Item;
    .local v12, "item":Landroid/content/ClipData$Item;
    .local v23, "desc":Landroid/content/ClipDescription;
    move/from16 v10, p2

    invoke-virtual/range {v3 .. v10}, Landroid/content/pm/ShortcutServiceInternal;->createShortcutIntents(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)[Landroid/content/Intent;

    move-result-object v3

    .line 462
    .local v3, "shortcutIntents":[Landroid/content/Intent;
    if-eqz v3, :cond_14c

    array-length v4, v3

    if-eqz v4, :cond_14c

    .line 465
    iget-object v4, v1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    .line 466
    invoke-virtual/range {v18 .. v18}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 465
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6, v11}, Lcom/android/server/wm/ActivityTaskManagerService;->resolveActivityInfoForIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 468
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v12, v4}, Landroid/content/ClipData$Item;->setActivityInfo(Landroid/content/pm/ActivityInfo;)V

    .line 445
    .end local v3    # "shortcutIntents":[Landroid/content/Intent;
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .end local v12    # "item":Landroid/content/ClipData$Item;
    .end local v16    # "shortcutId":Ljava/lang/String;
    .end local v17    # "packageName":Ljava/lang/String;
    .end local v18    # "user":Landroid/os/UserHandle;
    .end local v20    # "shortcutService":Landroid/content/pm/ShortcutServiceInternal;
    .end local v22    # "intent":Landroid/content/Intent;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v9, v21

    move-object/from16 v12, v23

    goto :goto_d1

    .line 463
    .restart local v3    # "shortcutIntents":[Landroid/content/Intent;
    .restart local v12    # "item":Landroid/content/ClipData$Item;
    .restart local v16    # "shortcutId":Ljava/lang/String;
    .restart local v17    # "packageName":Ljava/lang/String;
    .restart local v18    # "user":Landroid/os/UserHandle;
    .restart local v20    # "shortcutService":Landroid/content/pm/ShortcutServiceInternal;
    .restart local v22    # "intent":Landroid/content/Intent;
    :cond_14c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Invalid shortcut id"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 452
    .end local v3    # "shortcutIntents":[Landroid/content/Intent;
    .end local v20    # "shortcutService":Landroid/content/pm/ShortcutServiceInternal;
    .end local v22    # "intent":Landroid/content/Intent;
    .end local v23    # "desc":Landroid/content/ClipDescription;
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v10    # "item":Landroid/content/ClipData$Item;
    .local v12, "desc":Landroid/content/ClipDescription;
    :cond_154
    move-object/from16 v22, v8

    move-object/from16 v23, v12

    move-object v12, v10

    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "item":Landroid/content/ClipData$Item;
    .local v12, "item":Landroid/content/ClipData$Item;
    .restart local v22    # "intent":Landroid/content/Intent;
    .restart local v23    # "desc":Landroid/content/ClipDescription;
    goto :goto_15f

    .line 451
    .end local v22    # "intent":Landroid/content/Intent;
    .end local v23    # "desc":Landroid/content/ClipDescription;
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v10    # "item":Landroid/content/ClipData$Item;
    .local v12, "desc":Landroid/content/ClipDescription;
    :cond_15a
    move-object/from16 v22, v8

    move-object/from16 v23, v12

    move-object v12, v10

    .line 454
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v10    # "item":Landroid/content/ClipData$Item;
    .local v12, "item":Landroid/content/ClipData$Item;
    .restart local v22    # "intent":Landroid/content/Intent;
    .restart local v23    # "desc":Landroid/content/ClipDescription;
    :goto_15f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Clip item must include the package name, shortcut id, and the user to launch for."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 445
    .end local v16    # "shortcutId":Ljava/lang/String;
    .end local v17    # "packageName":Ljava/lang/String;
    .end local v18    # "user":Landroid/os/UserHandle;
    .end local v22    # "intent":Landroid/content/Intent;
    .end local v23    # "desc":Landroid/content/ClipDescription;
    .local v12, "desc":Landroid/content/ClipDescription;
    :cond_167
    move-object/from16 v23, v12

    .end local v0    # "i":I
    .end local v12    # "desc":Landroid/content/ClipDescription;
    .restart local v23    # "desc":Landroid/content/ClipDescription;
    goto :goto_1d4

    .line 443
    .end local v23    # "desc":Landroid/content/ClipDescription;
    .restart local v12    # "desc":Landroid/content/ClipDescription;
    :cond_16a
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 470
    :cond_170
    move-object/from16 v23, v12

    .end local v12    # "desc":Landroid/content/ClipDescription;
    .restart local v23    # "desc":Landroid/content/ClipDescription;
    if-eqz v15, :cond_1d4

    .line 472
    iget-boolean v3, v1, Lcom/android/server/wm/Session;->mCanStartTasksFromRecents:Z

    if-eqz v3, :cond_1ce

    .line 475
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_179
    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v0, v3, :cond_1d4

    .line 476
    invoke-virtual {v2, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 477
    .local v3, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 478
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.TASK_ID"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 479
    .local v5, "taskId":I
    if-eq v5, v6, :cond_1c6

    .line 482
    iget-object v6, v1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v6

    .line 483
    .local v6, "task":Lcom/android/server/wm/Task;
    if-eqz v6, :cond_1be

    .line 486
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_1ab

    .line 487
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v7}, Landroid/content/ClipData$Item;->setActivityInfo(Landroid/content/pm/ActivityInfo;)V

    const/4 v10, 0x0

    goto :goto_1bb

    .line 490
    :cond_1ab
    iget-object v7, v1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v6, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v9, v6, Lcom/android/server/wm/Task;->mUserId:I

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v10, v9, v11}, Lcom/android/server/wm/ActivityTaskManagerService;->resolveActivityInfoForIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 492
    .local v7, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v3, v7}, Landroid/content/ClipData$Item;->setActivityInfo(Landroid/content/pm/ActivityInfo;)V

    .line 475
    .end local v3    # "item":Landroid/content/ClipData$Item;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "taskId":I
    .end local v6    # "task":Lcom/android/server/wm/Task;
    .end local v7    # "info":Landroid/content/pm/ActivityInfo;
    :goto_1bb
    add-int/lit8 v0, v0, 0x1

    goto :goto_179

    .line 484
    .restart local v3    # "item":Landroid/content/ClipData$Item;
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v5    # "taskId":I
    .restart local v6    # "task":Lcom/android/server/wm/Task;
    :cond_1be
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Invalid task id."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 480
    .end local v6    # "task":Lcom/android/server/wm/Task;
    :cond_1c6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Clip item must include the task id."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 473
    .end local v0    # "i":I
    .end local v3    # "item":Landroid/content/ClipData$Item;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "taskId":I
    :cond_1ce
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 496
    :cond_1d4
    :goto_1d4
    return-void

    .line 407
    .end local v19    # "appMimeTypeCount":I
    .end local v23    # "desc":Landroid/content/ClipDescription;
    .local v10, "appMimeTypeCount":I
    .restart local v12    # "desc":Landroid/content/ClipDescription;
    :cond_1d5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unexpected number of items (none)"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 402
    :cond_1dd
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can not specify more than one of activity, shortcut, or task mime types"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method validateDragFlags(II)V
    .registers 5
    .param p1, "flags"    # I
    .param p2, "callingUid"    # I

    .line 370
    and-int/lit16 v0, p1, 0x800

    if-eqz v0, :cond_11

    .line 371
    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mCanStartTasksFromRecents:Z

    if-eqz v0, :cond_9

    goto :goto_11

    .line 372
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires START_TASKS_FROM_RECENTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_11
    :goto_11
    return-void
.end method

.method public wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "window"    # Landroid/os/IBinder;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 660
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 661
    new-instance v1, Lcom/android/server/wm/Session$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/wm/Session$$ExternalSyntheticLambda0;-><init>(Landroid/os/IBinder;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V

    .line 663
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 664
    return-void

    .line 663
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "window"    # Landroid/os/IBinder;

    .line 624
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 625
    new-instance v1, Lcom/android/server/wm/Session$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/server/wm/Session$$ExternalSyntheticLambda4;-><init>(Landroid/os/IBinder;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V

    .line 627
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 628
    return-void

    .line 627
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method windowAddedLocked()V
    .registers 8

    .line 726
    iget-object v0, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    const-string v1, "WindowManager"

    if-nez v0, :cond_7b

    .line 727
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    iget v2, p0, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 728
    .local v0, "wpc":Lcom/android/server/wm/WindowProcessController;
    if-eqz v0, :cond_63

    .line 729
    iget-object v2, v0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    .line 730
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "relayoutWindow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/Session;->mRelayoutTag:Ljava/lang/String;

    .line 731
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateVisibility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/Session;->mUpdateViewVisibilityTag:Ljava/lang/String;

    .line 732
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateLayout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/Session;->mUpdateWindowLayoutTag:Ljava/lang/String;

    goto :goto_7b

    .line 734
    :cond_63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown process pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    .end local v0    # "wpc":Lcom/android/server/wm/WindowProcessController;
    :cond_7b
    :goto_7b
    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    const/4 v2, 0x1

    if-nez v0, :cond_d7

    .line 738
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    if-eqz v0, :cond_a0

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "First window added to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", creating SurfaceSession"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_a0
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 742
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_SHOW_TRANSACTIONS_enabled:Z

    if-eqz v0, :cond_bf

    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x2447f01c

    const/4 v4, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v1, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 743
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_bf
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 744
    iget v0, p0, Lcom/android/server/wm/Session;->mLastReportedAnimatorScale:F

    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_d7

    .line 745
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    .line 748
    :cond_d7
    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    .line 749
    return-void
.end method

.method windowRemovedLocked()V
    .registers 2

    .line 752
    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    .line 753
    invoke-direct {p0}, Lcom/android/server/wm/Session;->killSessionLocked()V

    .line 754
    return-void
.end method
