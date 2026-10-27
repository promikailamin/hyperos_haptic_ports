.class public Lcom/android/server/wm/DisplayRotation;
.super Ljava/lang/Object;
.source "DisplayRotation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayRotation$RotationHistory;,
        Lcom/android/server/wm/DisplayRotation$SettingsObserver;,
        Lcom/android/server/wm/DisplayRotation$OrientationListener;,
        Lcom/android/server/wm/DisplayRotation$AllowAllRotations;,
        Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;
    }
.end annotation


# static fields
.field private static final ACTION_WIFI_DISPLAY_VIDEO:Ljava/lang/String; = "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

.field private static final ALLOW_ALL_ROTATIONS_DISABLED:I = 0x0

.field private static final ALLOW_ALL_ROTATIONS_ENABLED:I = 0x1

.field private static final ALLOW_ALL_ROTATIONS_UNDEFINED:I = -0x1

.field private static final CAMERA_ROTATION_DISABLED:I = 0x0

.field private static final CAMERA_ROTATION_ENABLED:I = 0x1

.field private static final REMOTE_ROTATION_TIMEOUT_MS:I = 0x320

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final WIFI_DISPLAY_PERMISSION:Ljava/lang/String; = "com.qualcomm.permission.wfd.QC_WFD"


# instance fields
.field public final isDefaultDisplay:Z

.field private mAllowAllRotations:I

.field private mAllowSeamlessRotationDespiteNavBarMoving:Z

.field private mCameraRotationMode:I

.field private final mCarDockRotation:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentAppOrientation:I

.field private mCurrentUser:I

.field private mDefaultFixedToUserRotation:Z

.field private mDeferredRotationPauseCount:I

.field private mDemoHdmiRotation:I

.field private mDemoHdmiRotationLock:Z

.field private mDemoRotation:I

.field private mDemoRotationLock:Z

.field private final mDeskDockRotation:I

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field private final mDisplayRotationHandlerTimeout:Ljava/lang/Runnable;

.field private final mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

.field private mFirstUpdateSettings:Z

.field private mFixedToUserRotation:I

.field private mIsWaitingForRemoteRotation:Z

.field mLandscapeRotation:I

.field private mLastOrientation:I

.field mLastSensorRotation:I

.field private final mLidOpenRotation:I

.field private final mLock:Ljava/lang/Object;

.field private mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

.field mPortraitRotation:I

.field private final mRemoteRotationCallback:Landroid/view/IDisplayWindowRotationCallback;

.field private mRotatingSeamlessly:Z

.field private mRotation:I

.field private final mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

.field private mSeamlessRotationCount:I

.field mSeascapeRotation:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

.field private mShowRotationSuggestions:I

.field private mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mSupportAutoRotation:Z

.field private final mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

.field private final mUndockedHdmiRotation:I

.field mUpsideDownRotation:I

.field private mUserRotation:I

.field private mUserRotationInner:I

.field private mUserRotationMode:I

.field private mUserRotationModeInner:I

.field private mUserRotationModeOuter:I

.field private mUserRotationOuter:I

.field private mWifiDisplayConnected:Z

.field private mWifiDisplayRotation:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCameraRotationMode(Lcom/android/server/wm/DisplayRotation;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wm/DisplayRotation;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentAppOrientation(Lcom/android/server/wm/DisplayRotation;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/DisplayContent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOrientationListener(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/DisplayRotation$OrientationListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRotation(Lcom/android/server/wm/DisplayRotation;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserRotation(Lcom/android/server/wm/DisplayRotation;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserRotationMode(Lcom/android/server/wm/DisplayRotation;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmWifiDisplayConnected(Lcom/android/server/wm/DisplayRotation;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiDisplayRotation(Lcom/android/server/wm/DisplayRotation;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayRotation:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcontinueRotation(Lcom/android/server/wm/DisplayRotation;ILandroid/window/WindowContainerTransaction;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayRotation;->continueRotation(ILandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misRotationChoicePossible(Lcom/android/server/wm/DisplayRotation;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isRotationChoicePossible(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misValidRotationChoice(Lcom/android/server/wm/DisplayRotation;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isValidRotationChoice(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msendProposedRotationChangeToStatusBarInternal(Lcom/android/server/wm/DisplayRotation;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayRotation;->sendProposedRotationChangeToStatusBarInternal(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSettings(Lcom/android/server/wm/DisplayRotation;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->updateSettings()Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 10
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 291
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-object v5, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 292
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v6

    .line 291
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DisplayRotation;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayWindowSettings;Landroid/content/Context;Ljava/lang/Object;)V

    .line 293
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayWindowSettings;Landroid/content/Context;Ljava/lang/Object;)V
    .registers 11
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "displayPolicy"    # Lcom/android/server/wm/DisplayPolicy;
    .param p4, "displayWindowSettings"    # Lcom/android/server/wm/DisplayWindowSettings;
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "lock"    # Ljava/lang/Object;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;-><init>(Lcom/android/server/wm/DisplayRotation$RotationAnimationPair-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    .line 118
    new-instance v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayRotation$RotationHistory;-><init>(Lcom/android/server/wm/DisplayRotation$RotationHistory-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    .line 126
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 134
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 154
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mLastSensorRotation:I

    .line 195
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    .line 198
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 201
    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 204
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationModeOuter:I

    .line 207
    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationOuter:I

    .line 210
    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationModeInner:I

    .line 213
    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationInner:I

    .line 218
    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    .line 230
    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 239
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mIsWaitingForRemoteRotation:Z

    .line 244
    new-instance v3, Lcom/android/server/wm/DisplayRotation$1;

    invoke-direct {v3, p0}, Lcom/android/server/wm/DisplayRotation$1;-><init>(Lcom/android/server/wm/DisplayRotation;)V

    iput-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationHandlerTimeout:Ljava/lang/Runnable;

    .line 252
    new-instance v3, Lcom/android/server/wm/DisplayRotation$2;

    invoke-direct {v3, p0}, Lcom/android/server/wm/DisplayRotation$2;-><init>(Lcom/android/server/wm/DisplayRotation;)V

    iput-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mRemoteRotationCallback:Landroid/view/IDisplayWindowRotationCallback;

    .line 287
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayConnected:Z

    .line 288
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayRotation:I

    .line 299
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 300
    iput-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 301
    iput-object p3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 302
    iput-object p4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    .line 303
    iput-object p5, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    .line 304
    iput-object p6, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    .line 305
    iget-boolean v0, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    .line 307
    nop

    .line 308
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x11101bf

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    .line 309
    const v1, 0x10e008a

    invoke-direct {p0, v1}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    .line 310
    const v1, 0x10e0039

    invoke-direct {p0, v1}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    .line 311
    const v1, 0x10e005e

    invoke-direct {p0, v1}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    .line 312
    const v1, 0x10e00fa

    invoke-direct {p0, v1}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    .line 314
    invoke-static {}, Lcom/android/server/wm/DisplayRotationStub;->get()Lcom/android/server/wm/DisplayRotationStub;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/wm/DisplayRotationStub;->init(Lcom/android/server/wm/WindowManagerService;)V

    .line 316
    if-eqz v0, :cond_b3

    .line 317
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 318
    .local v0, "uiHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/wm/DisplayRotation$OrientationListener;

    invoke-direct {v1, p0, p5, v0}, Lcom/android/server/wm/DisplayRotation$OrientationListener;-><init>(Lcom/android/server/wm/DisplayRotation;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 319
    iget v3, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->setCurrentRotation(I)V

    .line 320
    new-instance v1, Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/DisplayRotation$SettingsObserver;-><init>(Lcom/android/server/wm/DisplayRotation;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    .line 321
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->observe()V

    .line 324
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateRotationMode()V

    .line 325
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayRotation;->mFirstUpdateSettings:Z

    .line 331
    new-instance v1, Lcom/android/server/wm/DisplayRotation$3;

    invoke-direct {v1, p0, p5}, Lcom/android/server/wm/DisplayRotation$3;-><init>(Lcom/android/server/wm/DisplayRotation;Landroid/content/Context;)V

    .line 369
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 371
    .end local v0    # "uiHandler":Landroid/os/Handler;
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_b3
    return-void
.end method

.method private static allowAllRotationsToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "allowAll"    # I

    .line 1777
    packed-switch p0, :pswitch_data_14

    .line 1785
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1783
    :pswitch_8
    const-string/jumbo v0, "true"

    return-object v0

    .line 1781
    :pswitch_c
    const-string v0, "false"

    return-object v0

    .line 1779
    :pswitch_f
    const-string/jumbo v0, "unknown"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch -0x1
        :pswitch_f
        :pswitch_c
        :pswitch_8
    .end packed-switch
.end method

.method private cancelAppAnimationIfNeeded()V
    .registers 6

    .line 827
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->isAnimating(II)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 828
    const-string v0, "WindowManager"

    const-string/jumbo v1, "prepareNormalRA apptransition still animating"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, v1, Lcom/android/server/wm/AppTransition;->mLastOpeningAnimationTargets:Landroid/util/ArraySet;

    const-string/jumbo v2, "prepareNormalRA cancelAnimation "

    if-eqz v1, :cond_53

    .line 831
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, v1, Lcom/android/server/wm/AppTransition;->mLastOpeningAnimationTargets:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 832
    .local v3, "animatingContainer":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 833
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-virtual {v4}, Lcom/android/internal/protolog/ProtoLogGroup;->isLogToLogcat()Z

    move-result v4

    if-eqz v4, :cond_52

    .line 834
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    .end local v3    # "animatingContainer":Lcom/android/server/wm/WindowContainer;
    :cond_52
    goto :goto_27

    .line 838
    :cond_53
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, v1, Lcom/android/server/wm/AppTransition;->mLastClosingAnimationTargets:Landroid/util/ArraySet;

    if-eqz v1, :cond_91

    .line 840
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, v1, Lcom/android/server/wm/AppTransition;->mLastClosingAnimationTargets:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_65
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 841
    .restart local v3    # "animatingContainer":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 842
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-virtual {v4}, Lcom/android/internal/protolog/ProtoLogGroup;->isLogToLogcat()Z

    move-result v4

    if-eqz v4, :cond_90

    .line 843
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    .end local v3    # "animatingContainer":Lcom/android/server/wm/WindowContainer;
    :cond_90
    goto :goto_65

    .line 848
    :cond_91
    return-void
.end method

.method private continueRotation(ILandroid/window/WindowContainerTransaction;)V
    .registers 7
    .param p1, "targetRotation"    # I
    .param p2, "t"    # Landroid/window/WindowContainerTransaction;

    .line 785
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 786
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    if-ne p1, v1, :cond_7b

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mIsWaitingForRemoteRotation:Z

    if-nez v1, :cond_11

    goto :goto_7b

    .line 791
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationHandlerTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 792
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mIsWaitingForRemoteRotation:Z

    .line 794
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 795
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 798
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 802
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/TransitionController;->collectForDisplayChange(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;)V

    goto :goto_4d

    .line 796
    :cond_45
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to rotate outside a transition"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wm/DisplayRotation;
    .end local p1    # "targetRotation":I
    .end local p2    # "t":Landroid/window/WindowContainerTransaction;
    throw v1

    .line 805
    .restart local p0    # "this":Lcom/android/server/wm/DisplayRotation;
    .restart local p1    # "targetRotation":I
    .restart local p2    # "t":Landroid/window/WindowContainerTransaction;
    :cond_4d
    :goto_4d
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V
    :try_end_54
    .catchall {:try_start_5 .. :try_end_54} :catchall_80

    .line 807
    :try_start_54
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 808
    if-eqz p2, :cond_64

    .line 809
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V
    :try_end_64
    .catchall {:try_start_54 .. :try_end_64} :catchall_71

    .line 812
    :cond_64
    :try_start_64
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 813
    nop

    .line 814
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_80

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 815
    return-void

    .line 812
    :catchall_71
    move-exception v1

    :try_start_72
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 813
    nop

    .end local p0    # "this":Lcom/android/server/wm/DisplayRotation;
    .end local p1    # "targetRotation":I
    .end local p2    # "t":Landroid/window/WindowContainerTransaction;
    throw v1

    .line 789
    .restart local p0    # "this":Lcom/android/server/wm/DisplayRotation;
    .restart local p1    # "targetRotation":I
    .restart local p2    # "t":Landroid/window/WindowContainerTransaction;
    :cond_7b
    :goto_7b
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_72 .. :try_end_7c} :catchall_80

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 814
    :catchall_80
    move-exception v1

    :try_start_81
    monitor-exit v0
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private getAllowAllRotations()I
    .registers 3

    .line 1644
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    .line 1647
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1649
    const/4 v0, 0x1

    goto :goto_17

    .line 1650
    :cond_16
    const/4 v0, 0x0

    :goto_17
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    .line 1653
    :cond_19
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    return v0
.end method

.method static getDisplayFromTransition(Lcom/android/server/wm/Transition;)Lcom/android/server/wm/DisplayContent;
    .registers 4
    .param p0, "transition"    # Lcom/android/server/wm/Transition;

    .line 751
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1d

    .line 752
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 753
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    instance-of v2, v1, Lcom/android/server/wm/DisplayContent;

    if-nez v2, :cond_19

    .line 751
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 754
    .restart local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_19
    move-object v2, v1

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    return-object v2

    .line 756
    .end local v0    # "i":I
    .end local v1    # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method private getHoverModeRecommendRotation()I
    .registers 3

    .line 738
    invoke-static {}, Lcom/android/server/wm/DisplayRotationStub;->get()Lcom/android/server/wm/DisplayRotationStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-interface {v0, v1}, Lcom/android/server/wm/DisplayRotationStub;->getHoverModeRecommendRotation(Lcom/android/server/wm/DisplayContent;)I

    move-result v0

    return v0
.end method

.method private isAnyPortrait(I)Z
    .registers 3
    .param p1, "rotation"    # I

    .line 1661
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    if-eq p1, v0, :cond_b

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private isCarWithDisplay()Z
    .registers 4

    .line 462
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 463
    return v1

    .line 465
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_d

    .line 466
    return v1

    .line 468
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "displayName":Ljava/lang/String;
    const-string v2, "com.miui.car.launcher"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 470
    const-string v2, "com.miui.carlink"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    :cond_27
    const/4 v1, 0x1

    .line 469
    :cond_28
    return v1
.end method

.method private isLandscapeOrSeascape(I)Z
    .registers 3
    .param p1, "rotation"    # I

    .line 1657
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    if-eq p1, v0, :cond_b

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private isRotationChoicePossible(I)Z
    .registers 10
    .param p1, "orientation"    # I

    .line 1699
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_6b

    .line 1700
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->shouldHoverModeEnableSensor()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_6b

    .line 1709
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1710
    return v2

    .line 1713
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    .line 1714
    .local v0, "lidState":I
    if-ne v0, v1, :cond_21

    iget v3, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    if-ltz v3, :cond_21

    .line 1715
    return v2

    .line 1718
    :cond_21
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v3

    .line 1719
    .local v3, "dockMode":I
    const/4 v4, 0x0

    .line 1720
    .local v4, "carDockEnablesAccelerometer":Z
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2c

    .line 1721
    return v2

    .line 1724
    :cond_2c
    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1725
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayPolicy;->isDeskDockEnablesAccelerometer()Z

    move-result v5

    .line 1726
    .local v5, "deskDockEnablesAccelerometer":Z
    if-eq v3, v1, :cond_3a

    const/4 v6, 0x3

    if-eq v3, v6, :cond_3a

    const/4 v6, 0x4

    if-ne v3, v6, :cond_3d

    :cond_3a
    if-nez v5, :cond_3d

    .line 1730
    return v2

    .line 1733
    :cond_3d
    iget-object v6, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayPolicy;->isHdmiPlugged()Z

    move-result v6

    .line 1734
    .local v6, "hdmiPlugged":Z
    if-eqz v6, :cond_4a

    iget-boolean v7, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    if-eqz v7, :cond_4a

    .line 1735
    return v2

    .line 1737
    :cond_4a
    if-eqz v6, :cond_53

    if-nez v3, :cond_53

    iget v7, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    if-ltz v7, :cond_53

    .line 1739
    return v2

    .line 1741
    :cond_53
    iget-boolean v7, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    if-eqz v7, :cond_58

    .line 1742
    return v2

    .line 1744
    :cond_58
    iget-object v7, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayPolicy;->isPersistentVrModeEnabled()Z

    move-result v7

    if-eqz v7, :cond_61

    .line 1745
    return v2

    .line 1747
    :cond_61
    iget-boolean v7, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-nez v7, :cond_66

    .line 1748
    return v2

    .line 1752
    :cond_66
    sparse-switch p1, :sswitch_data_6c

    .line 1763
    return v2

    .line 1759
    :sswitch_6a
    return v1

    .line 1701
    .end local v0    # "lidState":I
    .end local v3    # "dockMode":I
    .end local v4    # "carDockEnablesAccelerometer":Z
    .end local v5    # "deskDockEnablesAccelerometer":Z
    .end local v6    # "hdmiPlugged":Z
    :cond_6b
    :goto_6b
    return v2

    :sswitch_data_6c
    .sparse-switch
        -0x1 -> :sswitch_6a
        0x2 -> :sswitch_6a
        0xb -> :sswitch_6a
        0xc -> :sswitch_6a
        0xd -> :sswitch_6a
    .end sparse-switch
.end method

.method private isValidRotationChoice(I)Z
    .registers 5
    .param p1, "preferredRotation"    # I

    .line 1666
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_28

    .line 1692
    return v1

    .line 1669
    :sswitch_8
    if-ltz p1, :cond_b

    move v1, v2

    :cond_b
    return v1

    .line 1675
    :sswitch_c
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    if-ne p1, v0, :cond_11

    move v1, v2

    :cond_11
    return v1

    .line 1679
    :sswitch_12
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v0

    return v0

    .line 1684
    :sswitch_17
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->getAllowAllRotations()I

    move-result v0

    if-ne v0, v2, :cond_21

    .line 1685
    if-ltz p1, :cond_20

    move v1, v2

    :cond_20
    return v1

    .line 1689
    :cond_21
    if-ltz p1, :cond_27

    const/4 v0, 0x2

    if-eq p1, v0, :cond_27

    move v1, v2

    :cond_27
    return v1

    :sswitch_data_28
    .sparse-switch
        -0x1 -> :sswitch_17
        0x2 -> :sswitch_17
        0xb -> :sswitch_12
        0xc -> :sswitch_c
        0xd -> :sswitch_8
    .end sparse-switch
.end method

.method static synthetic lambda$cancelSeamlessRotation$0(Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 862
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-eqz v0, :cond_a

    .line 863
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->cancelSeamlessRotation()V

    .line 864
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    .line 866
    :cond_a
    return-void
.end method

.method static synthetic lambda$shouldRotateSeamlessly$1(Lcom/android/server/wm/WindowState;)Z
    .registers 2
    .param p0, "win"    # Lcom/android/server/wm/WindowState;

    .line 934
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    return v0
.end method

.method private needSensorRunning()Z
    .registers 6

    .line 1355
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1358
    return v1

    .line 1361
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_1d

    .line 1362
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    if-eq v0, v2, :cond_1c

    const/16 v4, 0xa

    if-eq v0, v4, :cond_1c

    const/4 v4, 0x7

    if-eq v0, v4, :cond_1c

    const/4 v4, 0x6

    if-ne v0, v4, :cond_1d

    .line 1368
    :cond_1c
    return v3

    .line 1372
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v0

    .line 1373
    .local v0, "dockMode":I
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isCarDockEnablesAccelerometer()Z

    move-result v4

    if-eqz v4, :cond_2e

    const/4 v4, 0x2

    if-eq v0, v4, :cond_3d

    :cond_2e
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1375
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isDeskDockEnablesAccelerometer()Z

    move-result v4

    if-eqz v4, :cond_3e

    if-eq v0, v3, :cond_3d

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3d

    if-ne v0, v2, :cond_3e

    .line 1381
    :cond_3d
    return v3

    .line 1384
    :cond_3e
    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v2, v3, :cond_53

    .line 1395
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->shouldHoverModeEnableSensor()Z

    move-result v2

    if-eqz v2, :cond_49

    return v3

    .line 1400
    :cond_49
    iget-boolean v2, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-eqz v2, :cond_52

    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    if-ne v2, v3, :cond_52

    move v1, v3

    :cond_52
    return v1

    .line 1403
    :cond_53
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    return v1
.end method

.method private prepareSeamlessRotation()V
    .registers 2

    .line 875
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    .line 876
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    .line 877
    return-void
.end method

.method private readRotation(I)I
    .registers 4
    .param p1, "resID"    # I

    .line 375
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_a} :catch_16

    .line 376
    .local v0, "rotation":I
    sparse-switch v0, :sswitch_data_1a

    .line 388
    .end local v0    # "rotation":I
    goto :goto_17

    .line 384
    .restart local v0    # "rotation":I
    :sswitch_e
    const/4 v1, 0x3

    return v1

    .line 382
    :sswitch_10
    const/4 v1, 0x2

    return v1

    .line 380
    :sswitch_12
    const/4 v1, 0x1

    return v1

    .line 378
    :sswitch_14
    const/4 v1, 0x0

    return v1

    .line 386
    .end local v0    # "rotation":I
    :catch_16
    move-exception v0

    .line 389
    :goto_17
    const/4 v0, -0x1

    return v0

    nop

    :sswitch_data_1a
    .sparse-switch
        0x0 -> :sswitch_14
        0x5a -> :sswitch_12
        0xb4 -> :sswitch_10
        0x10e -> :sswitch_e
    .end sparse-switch
.end method

.method private selectRotationAnimation()Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;
    .registers 15

    .line 984
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 985
    invoke-interface {v0, v2}, Lcom/android/server/policy/WindowManagerPolicy;->okToAnimate(Z)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_17

    :cond_15
    move v0, v2

    goto :goto_18

    :cond_17
    :goto_17
    move v0, v1

    .line 986
    .local v0, "forceJumpcut":Z
    :goto_18
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 987
    .local v3, "topFullscreen":Lcom/android/server/wm/WindowState;
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ANIM_enabled:Z

    if-eqz v4, :cond_50

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    if-nez v3, :cond_2b

    const-wide/16 v5, 0x0

    goto :goto_32

    :cond_2b
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    int-to-long v5, v5

    .local v5, "protoLogParam1":J
    :goto_32
    move v7, v0

    .local v7, "protoLogParam2":Z
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, 0x78632eed

    const/16 v10, 0x34

    const/4 v11, 0x0

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v4, v12, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v1

    const/4 v1, 0x2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v1

    invoke-static {v8, v9, v10, v11, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 992
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    .end local v5    # "protoLogParam1":J
    .end local v7    # "protoLogParam2":Z
    :cond_50
    const v1, 0x10a008b

    const v4, 0x10a008a

    if-eqz v0, :cond_63

    .line 993
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    iput v1, v2, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    .line 994
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    iput v4, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    .line 995
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    return-object v1

    .line 997
    :cond_63
    if-eqz v3, :cond_99

    .line 998
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getRotationAnimationHint()I

    move-result v5

    .line 999
    .local v5, "animationHint":I
    if-gez v5, :cond_79

    iget-object v6, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayPolicy;->isTopLayoutFullscreen()Z

    move-result v6

    if-eqz v6, :cond_79

    .line 1000
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v5, v6, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 1002
    :cond_79
    packed-switch v5, :pswitch_data_a2

    .line 1014
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    iput v2, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    iput v2, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    goto :goto_98

    .line 1009
    :pswitch_83
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    iput v1, v2, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    .line 1010
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    iput v4, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    .line 1011
    goto :goto_98

    .line 1005
    :pswitch_8c
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    const v2, 0x10a008c

    iput v2, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    .line 1006
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    iput v4, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    .line 1007
    nop

    .line 1017
    .end local v5    # "animationHint":I
    :goto_98
    goto :goto_9f

    .line 1018
    :cond_99
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    iput v2, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    iput v2, v1, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    .line 1020
    :goto_9f
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mTmpRotationAnim:Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    return-object v1

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_8c
        :pswitch_83
        :pswitch_8c
    .end packed-switch
.end method

.method private sendProposedRotationChangeToStatusBarInternal(IZ)V
    .registers 4
    .param p1, "rotation"    # I
    .param p2, "isValid"    # Z

    .line 1768
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v0, :cond_e

    .line 1769
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 1771
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-eqz v0, :cond_15

    .line 1772
    invoke-interface {v0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onProposedRotationChanged(IZ)V

    .line 1774
    :cond_15
    return-void
.end method

.method private shouldHoverModeEnableSensor()Z
    .registers 3

    .line 742
    invoke-static {}, Lcom/android/server/wm/DisplayRotationStub;->get()Lcom/android/server/wm/DisplayRotationStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-interface {v0, v1}, Lcom/android/server/wm/DisplayRotationStub;->shouldHoverModeEnableSensor(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    return v0
.end method

.method private startRemoteRotation(II)V
    .registers 7
    .param p1, "fromRotation"    # I
    .param p2, "toRotation"    # I

    .line 769
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayRotationController:Landroid/view/IDisplayWindowRotationController;

    if-nez v0, :cond_7

    .line 770
    return-void

    .line 772
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mIsWaitingForRemoteRotation:Z

    .line 774
    :try_start_a
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayRotationController:Landroid/view/IDisplayWindowRotationController;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mRemoteRotationCallback:Landroid/view/IDisplayWindowRotationCallback;

    invoke-interface {v0, v1, p1, p2, v2}, Landroid/view/IDisplayWindowRotationController;->onRotateDisplay(IIILandroid/view/IDisplayWindowRotationCallback;)V

    .line 776
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationHandlerTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 777
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationHandlerTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2d} :catch_2f

    .line 781
    nop

    .line 782
    return-void

    .line 778
    :catch_2f
    move-exception v0

    .line 779
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mIsWaitingForRemoteRotation:Z

    .line 780
    return-void
.end method

.method private updateOrientationListenerLw()V
    .registers 19

    .line 1305
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v1, :cond_a0

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->canDetectOrientation()Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_a0

    .line 1310
    :cond_e
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnEarly()Z

    move-result v1

    .line 1311
    .local v1, "screenOnEarly":Z
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v2

    .line 1312
    .local v2, "awake":Z
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v3

    .line 1313
    .local v3, "keyguardDrawComplete":Z
    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isWindowManagerDrawComplete()Z

    move-result v4

    .line 1317
    .local v4, "windowManagerDrawComplete":Z
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v5, :cond_75

    move v5, v1

    .local v5, "protoLogParam0":Z
    move v6, v2

    .local v6, "protoLogParam1":Z
    iget v7, v0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    int-to-long v7, v7

    .local v7, "protoLogParam2":J
    iget-object v9, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-boolean v9, v9, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    .local v9, "protoLogParam3":Z
    move v10, v3

    .local v10, "protoLogParam4":Z
    move v11, v4

    .local v11, "protoLogParam5":Z
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const/16 v14, 0xfdf

    const/4 v15, 0x0

    const/4 v13, 0x6

    new-array v13, v13, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v13, v16

    const/16 v16, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v13, v16

    const/16 v16, 0x2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v13, v16

    const/16 v16, 0x3

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v13, v16

    const/16 v16, 0x4

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v13, v16

    const/16 v16, 0x5

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v13, v16

    move/from16 v16, v5

    const v5, -0x6f5952a9

    .end local v5    # "protoLogParam0":Z
    .local v16, "protoLogParam0":Z
    invoke-static {v12, v5, v14, v15, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1324
    .end local v6    # "protoLogParam1":Z
    .end local v7    # "protoLogParam2":J
    .end local v9    # "protoLogParam3":Z
    .end local v10    # "protoLogParam4":Z
    .end local v11    # "protoLogParam5":Z
    .end local v16    # "protoLogParam0":Z
    :cond_75
    const/4 v5, 0x1

    .line 1332
    .local v5, "disable":Z
    if-eqz v1, :cond_98

    if-nez v2, :cond_82

    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 1333
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->shouldStayEnabledWhileDreaming()Z

    move-result v6

    if-eqz v6, :cond_98

    :cond_82
    if-eqz v3, :cond_98

    if-eqz v4, :cond_98

    .line 1335
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->needSensorRunning()Z

    move-result v6

    if-eqz v6, :cond_98

    .line 1336
    const/4 v5, 0x0

    .line 1338
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-boolean v6, v6, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    if-nez v6, :cond_98

    .line 1339
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->enable()V

    .line 1344
    :cond_98
    if-eqz v5, :cond_9f

    .line 1345
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->disable()V

    .line 1347
    :cond_9f
    return-void

    .line 1307
    .end local v1    # "screenOnEarly":Z
    .end local v2    # "awake":Z
    .end local v3    # "keyguardDrawComplete":Z
    .end local v4    # "windowManagerDrawComplete":Z
    .end local v5    # "disable":Z
    :cond_a0
    :goto_a0
    return-void
.end method

.method private updateSettings()Z
    .registers 11

    .line 1798
    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/MiuiOrientationStub;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4d

    sget-boolean v0, Lcom/android/server/wm/MiuiOrientationStub;->IS_FOLD:Z

    if-eqz v0, :cond_4d

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentUser:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v1, v1, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    if-eq v0, v1, :cond_4d

    .line 1800
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CurrentUser has changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v2, v2, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentUser:I

    .line 1803
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateRotationMode()V

    .line 1807
    :cond_4d
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1808
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 1810
    .local v1, "shouldUpdateRotation":Z
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1811
    const/4 v3, 0x0

    .line 1815
    .local v3, "shouldUpdateOrientationListener":Z
    :try_start_58
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v4

    const/4 v5, -0x2

    const/4 v6, 0x0

    if-eqz v4, :cond_62

    .line 1816
    move v4, v6

    goto :goto_71

    .line 1817
    :cond_62
    const-string/jumbo v4, "show_rotation_suggestions"

    .line 1821
    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/server/wm/MiuiOrientationStub;->getShowRotationSuggestion()I

    move-result v7

    .line 1817
    invoke-static {v0, v4, v7, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    :goto_71
    nop

    .line 1823
    .local v4, "showRotationSuggestions":I
    iget v7, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    if-eq v7, v4, :cond_79

    .line 1824
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    .line 1825
    const/4 v3, 0x1

    .line 1829
    :cond_79
    const-string/jumbo v7, "user_rotation"

    invoke-static {v0, v7, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .line 1832
    .local v7, "userRotation":I
    iget v8, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    if-eq v8, v7, :cond_87

    .line 1833
    iput v7, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 1834
    const/4 v1, 0x1

    .line 1838
    :cond_87
    const-string v8, "accelerometer_rotation"

    .line 1837
    invoke-static {v0, v8, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_91

    .line 1839
    move v8, v6

    goto :goto_92

    .line 1840
    :cond_91
    const/4 v8, 0x1

    :goto_92
    nop

    .line 1841
    .local v8, "userRotationMode":I
    iget v9, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-eq v9, v8, :cond_9b

    .line 1842
    iput v8, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 1843
    const/4 v3, 0x1

    .line 1844
    const/4 v1, 0x1

    .line 1847
    :cond_9b
    iget-object v9, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v9}, Lcom/android/server/policy/WindowManagerPolicy;->isDisplayFolded()Z

    move-result v9

    invoke-virtual {p0, v8, v7, v9}, Lcom/android/server/wm/DisplayRotation;->setUserRotationForFold(IIZ)V

    .line 1849
    if-eqz v3, :cond_ab

    .line 1850
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    .line 1853
    :cond_ab
    const-string v9, "camera_autorotate"

    invoke-static {v0, v9, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 1856
    .local v5, "cameraRotationMode":I
    iget v6, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    if-eq v6, v5, :cond_b8

    .line 1857
    iput v5, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    .line 1858
    const/4 v1, 0x1

    .line 1860
    .end local v3    # "shouldUpdateOrientationListener":Z
    .end local v4    # "showRotationSuggestions":I
    .end local v5    # "cameraRotationMode":I
    .end local v7    # "userRotation":I
    .end local v8    # "userRotationMode":I
    :cond_b8
    monitor-exit v2
    :try_end_b9
    .catchall {:try_start_58 .. :try_end_b9} :catchall_d1

    .line 1862
    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/wm/MiuiOrientationStub;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_d0

    sget-boolean v2, Lcom/android/server/wm/MiuiOrientationStub;->IS_FOLD:Z

    if-eqz v2, :cond_d0

    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 1863
    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->needUpdateOrientationForFold()Z

    move-result v2

    if-eqz v2, :cond_d0

    .line 1864
    const/4 v1, 0x0

    .line 1868
    :cond_d0
    return v1

    .line 1860
    :catchall_d1
    move-exception v3

    :try_start_d2
    monitor-exit v2
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_d1

    throw v3
.end method


# virtual methods
.method applyCurrentRotation(I)V
    .registers 3
    .param p1, "rotation"    # I

    .line 475
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/DisplayRotation$RotationHistory;->addRecord(Lcom/android/server/wm/DisplayRotation;I)V

    .line 476
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v0, :cond_c

    .line 477
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->setCurrentRotation(I)V

    .line 479
    :cond_c
    return-void
.end method

.method canRotateSeamlessly(II)Z
    .registers 5
    .param p1, "oldRotation"    # I
    .param p2, "newRotation"    # I

    .line 945
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    const/4 v1, 0x1

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_16

    .line 952
    :cond_e
    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    if-eq p2, v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1

    .line 946
    :cond_16
    :goto_16
    return v1
.end method

.method cancelSeamlessRotation()V
    .registers 4

    .line 858
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    if-nez v0, :cond_5

    .line 859
    return-void

    .line 861
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda1;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 867
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    .line 868
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    .line 869
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotationIfPossible()V

    .line 870
    return-void
.end method

.method configure(II)V
    .registers 11
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 402
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 405
    .local v0, "res":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->isCarWithDisplay()Z

    move-result v1

    .line 406
    .local v1, "isCarWith":Z
    const v2, 0x111019b

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le p1, p2, :cond_29

    if-nez v1, :cond_29

    .line 407
    iput v6, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    .line 408
    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    .line 409
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 410
    iput v5, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .line 411
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    goto :goto_3c

    .line 413
    :cond_24
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .line 414
    iput v5, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    goto :goto_3c

    .line 417
    :cond_29
    iput v6, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .line 418
    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    .line 419
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 420
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    .line 421
    iput v5, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    goto :goto_3c

    .line 423
    :cond_38
    iput v5, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    .line 424
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    .line 430
    :goto_3c
    const-string/jumbo v2, "persist.demo.hdmirotation"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "portrait"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 431
    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    goto :goto_55

    .line 433
    :cond_51
    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    .line 435
    :goto_55
    const-string/jumbo v2, "persist.demo.hdmirotationlock"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    .line 439
    const-string/jumbo v2, "persist.demo.remoterotation"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 440
    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    goto :goto_74

    .line 442
    :cond_70
    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    .line 444
    :goto_74
    const-string/jumbo v2, "persist.demo.rotationlock"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    .line 447
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.automotive"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 450
    .local v2, "isCar":Z
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.software.leanback"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    .line 452
    .local v3, "isTv":Z
    if-nez v2, :cond_a7

    if-nez v3, :cond_a7

    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mIsPc:Z

    if-nez v4, :cond_a7

    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 453
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->forceDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_b8

    :cond_a7
    nop

    .line 457
    const-string v4, "config.override_forced_orient"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "true"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b8

    goto :goto_b9

    :cond_b8
    move v5, v6

    :goto_b9
    iput-boolean v5, p0, Lcom/android/server/wm/DisplayRotation;->mDefaultFixedToUserRotation:Z

    .line 458
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 1872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DisplayRotation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mCurrentAppOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 1874
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1873
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mLastOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDeferredRotationPauseCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mLandscapeRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSeascapeRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mPortraitRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUpsideDownRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mSupportAutoRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1885
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v0, :cond_134

    .line 1886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1888
    :cond_134
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mCarDockRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDeskDockRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mUserRotationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 1893
    invoke-static {v1}, Lcom/android/server/policy/WindowManagerPolicy;->userRotationModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1892
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUserRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mUserRotationModeOuter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationModeOuter:I

    .line 1897
    invoke-static {v1}, Lcom/android/server/policy/WindowManagerPolicy;->userRotationModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1896
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUserRotationOuter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationOuter:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mUserRotationModeInner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationModeInner:I

    .line 1900
    invoke-static {v1}, Lcom/android/server/policy/WindowManagerPolicy;->userRotationModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1899
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUserRotationInner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationInner:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCameraRotationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAllowAllRotations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    invoke-static {v1}, Lcom/android/server/wm/DisplayRotation;->allowAllRotationsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mDemoHdmiRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDemoHdmiRotationLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUndockedHdmiRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mLidOpenRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mFixedToUserRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1912
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33b

    .line 1913
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  RotationHistory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1916
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;

    .line 1917
    .local v1, "r":Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1918
    .end local v1    # "r":Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;
    goto :goto_32b

    .line 1920
    :cond_33b
    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1923
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1924
    .local v0, "token":J
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->getRotation()I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1925
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isRotationFrozen()Z

    move-result v2

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1926
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->getUserRotation()I

    move-result v2

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1927
    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1928
    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    const-wide v3, 0x10500000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1929
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v2

    const-wide v3, 0x10800000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1930
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1931
    return-void
.end method

.method freezeRotation(I)V
    .registers 3
    .param p1, "rotation"    # I

    .line 1195
    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    goto :goto_7

    :cond_6
    move v0, p1

    :goto_7
    move p1, v0

    .line 1196
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/DisplayRotation;->setUserRotation(II)V

    .line 1197
    return-void
.end method

.method public getCurrentAppOrientation()I
    .registers 2

    .line 1244
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    return v0
.end method

.method public getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;
    .registers 2

    .line 1248
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-object v0
.end method

.method getFixedToUserRotationMode()I
    .registers 2

    .line 1224
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    return v0
.end method

.method public getLandscapeRotation()I
    .registers 2

    .line 1228
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return v0
.end method

.method getLastOrientation()I
    .registers 2

    .line 493
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    return v0
.end method

.method public getOrientationListener()Lcom/android/server/wm/WindowOrientationListener;
    .registers 2

    .line 1252
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    return-object v0
.end method

.method public getPortraitRotation()I
    .registers 2

    .line 1236
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return v0
.end method

.method getRotation()I
    .registers 2

    .line 488
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    return v0
.end method

.method public getSeascapeRotation()I
    .registers 2

    .line 1232
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    return v0
.end method

.method public getUpsideDownRotation()I
    .registers 2

    .line 1240
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    return v0
.end method

.method public getUserRotation()I
    .registers 2

    .line 1256
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    return v0
.end method

.method public getUserRotationMode()I
    .registers 2

    .line 1260
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    return v0
.end method

.method hasSeamlessRotatingWindow()Z
    .registers 2

    .line 884
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isFixedToUserRotation()Z
    .registers 2

    .line 1213
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    packed-switch v0, :pswitch_data_c

    .line 1219
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mDefaultFixedToUserRotation:Z

    return v0

    .line 1217
    :pswitch_8
    const/4 v0, 0x1

    return v0

    .line 1215
    :pswitch_a
    const/4 v0, 0x0

    return v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_a
        :pswitch_8
    .end packed-switch
.end method

.method isRotatingSeamlessly()Z
    .registers 2

    .line 880
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    return v0
.end method

.method isRotationFrozen()Z
    .registers 6

    .line 1204
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_d

    .line 1205
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v0, v1, :cond_b

    goto :goto_c

    :cond_b
    move v1, v2

    :goto_c
    return v1

    .line 1208
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, -0x2

    const-string v4, "accelerometer_rotation"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    return v1
.end method

.method isRotationLocked(Z)Z
    .registers 4
    .param p1, "isFolded"    # Z

    .line 1125
    if-eqz p1, :cond_5

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationModeOuter:I

    goto :goto_7

    :cond_5
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationModeInner:I

    :goto_7
    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method isWaitingForRemoteRotation()Z
    .registers 2

    .line 765
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mIsWaitingForRemoteRotation:Z

    return v0
.end method

.method markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V
    .registers 8
    .param p1, "w"    # Lcom/android/server/wm/WindowState;
    .param p2, "seamlesslyRotated"    # Z

    .line 956
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-eq p2, v0, :cond_3a

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mForceSeamlesslyRotate:Z

    if-eqz v0, :cond_9

    goto :goto_3a

    .line 960
    :cond_9
    iput-boolean p2, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    .line 961
    if-eqz p2, :cond_14

    .line 962
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    goto :goto_1a

    .line 964
    :cond_14
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    .line 966
    :goto_1a
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mSeamlessRotationCount:I

    if-nez v0, :cond_39

    .line 967
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x2256254a

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v1, v3, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 970
    :cond_2f
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mRotatingSeamlessly:Z

    .line 971
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->finishAsyncRotationIfPossible()V

    .line 973
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateRotationAndSendNewConfigIfChanged()Z

    .line 975
    :cond_39
    return-void

    .line 957
    :cond_3a
    :goto_3a
    return-void
.end method

.method needsUpdate()Z
    .registers 4

    .line 1414
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 1415
    .local v0, "oldRotation":I
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(II)I

    move-result v1

    .line 1416
    .local v1, "rotation":I
    if-eq v0, v1, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    return v2
.end method

.method public onUserSwitch()V
    .registers 3

    .line 1790
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    if-eqz v0, :cond_8

    .line 1791
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->onChange(Z)V

    .line 1793
    :cond_8
    return-void
.end method

.method pause()V
    .registers 2

    .line 1278
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    .line 1279
    return-void
.end method

.method prepareNormalRotationAnimation()V
    .registers 6

    .line 819
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->cancelAppAnimationIfNeeded()V

    .line 820
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->cancelSeamlessRotation()V

    .line 821
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->selectRotationAnimation()Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    move-result-object v0

    .line 822
    .local v0, "anim":Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    iget v3, v0, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplay(IILcom/android/server/wm/DisplayContent;)V

    .line 823
    return-void
.end method

.method resetAllowAllRotations()V
    .registers 2

    .line 1431
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    .line 1432
    return-void
.end method

.method resetProposedRotation()V
    .registers 2

    .line 498
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v0, :cond_7

    .line 499
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->shouldResetProposedRotation()V

    .line 501
    :cond_7
    return-void
.end method

.method restoreSettings(III)V
    .registers 8
    .param p1, "userRotationMode"    # I
    .param p2, "userRotation"    # I
    .param p3, "fixedToUserRotation"    # I

    .line 1051
    iput p3, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 1054
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz v0, :cond_7

    .line 1055
    return-void

    .line 1057
    :cond_7
    const-string v0, " for "

    const-string v1, "WindowManager"

    if-eqz p1, :cond_31

    const/4 v2, 0x1

    if-eq p1, v2, :cond_31

    .line 1059
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to restore an invalid user rotation mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    const/4 p1, 0x0

    .line 1063
    :cond_31
    if-ltz p2, :cond_36

    const/4 v2, 0x3

    if-le p2, v2, :cond_57

    .line 1064
    :cond_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to restore an invalid user rotation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    const/4 p2, 0x0

    .line 1068
    :cond_57
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 1069
    iput p2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 1070
    return-void
.end method

.method resume()V
    .registers 2

    .line 1283
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    if-gtz v0, :cond_5

    .line 1284
    return-void

    .line 1287
    :cond_5
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    .line 1288
    if-nez v0, :cond_e

    .line 1289
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateRotationAndSendNewConfigIfChanged()Z

    .line 1291
    :cond_e
    return-void
.end method

.method rotationForOrientation(II)I
    .registers 27
    .param p1, "orientation"    # I
    .param p2, "lastRotation"    # I

    .line 1447
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v11, 0x1

    if-eqz v3, :cond_6a

    invoke-static/range {p1 .. p1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    int-to-long v12, v1

    .local v12, "protoLogParam1":J
    invoke-static/range {p2 .. p2}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .local v14, "protoLogParam2":Ljava/lang/String;
    int-to-long v4, v2

    .local v4, "protoLogParam3":J
    iget v15, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    invoke-static {v15}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .local v18, "protoLogParam4":Ljava/lang/String;
    iget v15, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    int-to-long v9, v15

    .local v9, "protoLogParam5":J
    iget v15, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v15, v11, :cond_33

    const-string v15, "USER_ROTATION_LOCKED"

    goto :goto_35

    :cond_33
    const-string v15, ""

    :goto_35
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .local v21, "protoLogParam6":Ljava/lang/String;
    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v3, v6, v7

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v6, v11

    const/16 v20, 0x2

    aput-object v14, v6, v20

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const/16 v22, 0x3

    aput-object v23, v6, v22

    const/16 v19, 0x4

    aput-object v18, v6, v19

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    const/16 v16, 0x5

    aput-object v23, v6, v16

    const/16 v17, 0x6

    aput-object v21, v6, v17

    const v7, 0xc0e4c8a

    const/16 v8, 0x444

    const/4 v11, 0x0

    invoke-static {v15, v7, v8, v11, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1455
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam3":J
    .end local v9    # "protoLogParam5":J
    .end local v12    # "protoLogParam1":J
    .end local v14    # "protoLogParam2":Ljava/lang/String;
    .end local v18    # "protoLogParam4":Ljava/lang/String;
    .end local v21    # "protoLogParam6":Ljava/lang/String;
    :cond_6a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 1456
    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    return v3

    .line 1459
    :cond_73
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    const/4 v4, -0x1

    if-eqz v3, :cond_7d

    .line 1460
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->getProposedRotation()I

    move-result v3

    goto :goto_7e

    .line 1461
    :cond_7d
    move v3, v4

    :goto_7e
    nop

    .line 1462
    .local v3, "sensorRotation":I
    iput v3, v0, Lcom/android/server/wm/DisplayRotation;->mLastSensorRotation:I

    .line 1463
    if-gez v3, :cond_85

    .line 1464
    move/from16 v3, p2

    .line 1467
    :cond_85
    invoke-static {}, Lcom/android/server/wm/DisplayRotationStub;->get()Lcom/android/server/wm/DisplayRotationStub;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/wm/DisplayRotationStub;->hasBootBlackCoverLayer()Z

    move-result v5

    if-eqz v5, :cond_97

    .line 1468
    invoke-static {}, Lcom/android/server/wm/DisplayRotationStub;->get()Lcom/android/server/wm/DisplayRotationStub;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/wm/DisplayRotationStub;->getBootSensorRotation()I

    move-result v3

    .line 1472
    :cond_97
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v5

    .line 1473
    .local v5, "lidState":I
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v6

    .line 1474
    .local v6, "dockMode":I
    iget-object v7, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayPolicy;->isHdmiPlugged()Z

    move-result v7

    .line 1475
    .local v7, "hdmiPlugged":Z
    iget-object v8, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1476
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayPolicy;->isCarDockEnablesAccelerometer()Z

    move-result v8

    .line 1477
    .local v8, "carDockEnablesAccelerometer":Z
    iget-object v9, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1478
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayPolicy;->isDeskDockEnablesAccelerometer()Z

    move-result v9

    .line 1481
    .local v9, "deskDockEnablesAccelerometer":Z
    iget-boolean v10, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-nez v10, :cond_bd

    .line 1484
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .local v4, "preferredRotation":I
    goto/16 :goto_18f

    .line 1485
    .end local v4    # "preferredRotation":I
    :cond_bd
    const/4 v10, 0x1

    if-ne v5, v10, :cond_c8

    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    if-ltz v10, :cond_c8

    .line 1487
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    .restart local v4    # "preferredRotation":I
    goto/16 :goto_18f

    .line 1488
    .end local v4    # "preferredRotation":I
    :cond_c8
    const/4 v10, 0x2

    if-ne v6, v10, :cond_d9

    if-nez v8, :cond_d1

    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    if-ltz v10, :cond_d9

    .line 1493
    :cond_d1
    if-eqz v8, :cond_d5

    move v4, v3

    goto :goto_d7

    :cond_d5
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    .restart local v4    # "preferredRotation":I
    :goto_d7
    goto/16 :goto_18f

    .line 1494
    .end local v4    # "preferredRotation":I
    :cond_d9
    const/4 v10, 0x1

    if-eq v6, v10, :cond_e2

    const/4 v10, 0x3

    if-eq v6, v10, :cond_e2

    const/4 v10, 0x4

    if-ne v6, v10, :cond_ea

    :cond_e2
    if-nez v9, :cond_189

    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    if-ltz v10, :cond_ea

    goto/16 :goto_189

    .line 1502
    :cond_ea
    if-nez v7, :cond_f0

    iget-boolean v10, v0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayConnected:Z

    if-eqz v10, :cond_f8

    :cond_f0
    iget-boolean v10, v0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    if-eqz v10, :cond_f8

    .line 1505
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    .restart local v4    # "preferredRotation":I
    goto/16 :goto_18f

    .line 1506
    .end local v4    # "preferredRotation":I
    :cond_f8
    iget-boolean v10, v0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayConnected:Z

    if-eqz v10, :cond_104

    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayRotation:I

    if-le v10, v4, :cond_104

    .line 1508
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mWifiDisplayRotation:I

    .restart local v4    # "preferredRotation":I
    goto/16 :goto_18f

    .line 1509
    .end local v4    # "preferredRotation":I
    :cond_104
    if-eqz v7, :cond_110

    if-nez v6, :cond_110

    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    if-ltz v10, :cond_110

    .line 1515
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    .restart local v4    # "preferredRotation":I
    goto/16 :goto_18f

    .line 1516
    .end local v4    # "preferredRotation":I
    :cond_110
    iget-boolean v10, v0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    if-eqz v10, :cond_118

    .line 1519
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    .restart local v4    # "preferredRotation":I
    goto/16 :goto_18f

    .line 1520
    .end local v4    # "preferredRotation":I
    :cond_118
    iget-object v10, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayPolicy;->isPersistentVrModeEnabled()Z

    move-result v10

    if-eqz v10, :cond_124

    .line 1525
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .restart local v4    # "preferredRotation":I
    goto/16 :goto_18f

    .line 1526
    .end local v4    # "preferredRotation":I
    :cond_124
    const/16 v10, 0xe

    if-ne v1, v10, :cond_12c

    .line 1528
    move/from16 v4, p2

    .restart local v4    # "preferredRotation":I
    goto/16 :goto_18f

    .line 1529
    .end local v4    # "preferredRotation":I
    :cond_12c
    iget-boolean v10, v0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-nez v10, :cond_133

    .line 1532
    const/4 v4, -0x1

    .restart local v4    # "preferredRotation":I
    goto/16 :goto_18f

    .line 1535
    .end local v4    # "preferredRotation":I
    :cond_133
    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/16 v11, 0xd

    const/16 v12, 0xa

    if-eqz v10, :cond_141

    .line 1536
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->getHoverModeRecommendRotation()I

    move-result v10

    if-lez v10, :cond_150

    :cond_141
    const/4 v10, 0x2

    if-eq v1, v10, :cond_175

    if-eq v1, v4, :cond_175

    const/16 v4, 0xb

    if-eq v1, v4, :cond_175

    const/16 v4, 0xc

    if-eq v1, v4, :cond_175

    if-eq v1, v11, :cond_175

    :cond_150
    const/4 v4, 0x4

    if-eq v1, v4, :cond_175

    if-eq v1, v12, :cond_175

    const/4 v4, 0x6

    if-eq v1, v4, :cond_175

    const/4 v4, 0x7

    if-ne v1, v4, :cond_15c

    goto :goto_175

    .line 1557
    :cond_15c
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_173

    const/4 v4, 0x5

    if-eq v1, v4, :cond_173

    if-eqz v1, :cond_173

    if-eq v1, v10, :cond_173

    const/16 v4, 0x8

    if-eq v1, v4, :cond_173

    const/16 v4, 0x9

    if-eq v1, v4, :cond_173

    .line 1571
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .restart local v4    # "preferredRotation":I
    goto :goto_18f

    .line 1575
    .end local v4    # "preferredRotation":I
    :cond_173
    const/4 v4, -0x1

    .restart local v4    # "preferredRotation":I
    goto :goto_18f

    .line 1549
    .end local v4    # "preferredRotation":I
    :cond_175
    :goto_175
    const/4 v4, 0x2

    if-ne v3, v4, :cond_187

    .line 1550
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->getAllowAllRotations()I

    move-result v4

    const/4 v10, 0x1

    if-eq v4, v10, :cond_187

    if-eq v1, v12, :cond_187

    if-ne v1, v11, :cond_184

    goto :goto_187

    .line 1555
    :cond_184
    move/from16 v4, p2

    .restart local v4    # "preferredRotation":I
    goto :goto_18f

    .line 1553
    .end local v4    # "preferredRotation":I
    :cond_187
    :goto_187
    move v4, v3

    .restart local v4    # "preferredRotation":I
    goto :goto_18f

    .line 1501
    .end local v4    # "preferredRotation":I
    :cond_189
    :goto_189
    if-eqz v9, :cond_18d

    move v4, v3

    goto :goto_18f

    :cond_18d
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    .line 1578
    .restart local v4    # "preferredRotation":I
    :goto_18f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->isCarWithDisplay()Z

    move-result v10

    if-eqz v10, :cond_196

    .line 1579
    const/4 v1, -0x1

    .line 1582
    .end local p1    # "orientation":I
    .local v1, "orientation":I
    :cond_196
    packed-switch v1, :pswitch_data_1e8

    .line 1636
    :pswitch_199
    if-ltz v4, :cond_1e6

    .line 1637
    return v4

    .line 1599
    :pswitch_19c
    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v10

    if-eqz v10, :cond_1a3

    .line 1600
    return v4

    .line 1602
    :cond_1a3
    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    return v10

    .line 1606
    :pswitch_1a6
    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v10

    if-eqz v10, :cond_1ad

    .line 1607
    return v4

    .line 1609
    :cond_1ad
    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    return v10

    .line 1625
    :pswitch_1b0
    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v10

    if-eqz v10, :cond_1b7

    .line 1626
    return v4

    .line 1628
    :cond_1b7
    invoke-direct {v0, v2}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v10

    if-eqz v10, :cond_1be

    .line 1629
    return v2

    .line 1631
    :cond_1be
    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return v10

    .line 1614
    :pswitch_1c1
    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v10

    if-eqz v10, :cond_1c8

    .line 1615
    return v4

    .line 1617
    :cond_1c8
    invoke-direct {v0, v2}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v10

    if-eqz v10, :cond_1cf

    .line 1618
    return v2

    .line 1620
    :cond_1cf
    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return v10

    .line 1585
    :pswitch_1d2
    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v10

    if-eqz v10, :cond_1d9

    .line 1586
    return v4

    .line 1588
    :cond_1d9
    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return v10

    .line 1592
    :pswitch_1dc
    invoke-direct {v0, v4}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v10

    if-eqz v10, :cond_1e3

    .line 1593
    return v4

    .line 1595
    :cond_1e3
    iget v10, v0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return v10

    .line 1639
    :cond_1e6
    const/4 v10, 0x0

    return v10

    :pswitch_data_1e8
    .packed-switch 0x0
        :pswitch_1dc
        :pswitch_1d2
        :pswitch_199
        :pswitch_199
        :pswitch_199
        :pswitch_199
        :pswitch_1c1
        :pswitch_1b0
        :pswitch_1a6
        :pswitch_19c
        :pswitch_199
        :pswitch_1c1
        :pswitch_1b0
    .end packed-switch
.end method

.method setFixedToUserRotation(I)V
    .registers 4
    .param p1, "fixedToUserRotation"    # I

    .line 1073
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    if-ne v0, p1, :cond_5

    .line 1074
    return-void

    .line 1077
    :cond_5
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 1078
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/DisplayWindowSettings;->setFixedToUserRotation(Lcom/android/server/wm/DisplayContent;I)V

    .line 1079
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1f

    .line 1082
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 1083
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 1082
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->onLastFocusedTaskDisplayAreaChanged(Lcom/android/server/wm/TaskDisplayArea;)V

    .line 1085
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    .line 1086
    return-void
.end method

.method setRotation(I)V
    .registers 2
    .param p1, "rotation"    # I

    .line 483
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 484
    return-void
.end method

.method setUserRotation()V
    .registers 3

    .line 1090
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isDisplayFolded()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1091
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationModeOuter:I

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationOuter:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayRotation;->setUserRotation(II)V

    goto :goto_19

    .line 1093
    :cond_12
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationModeInner:I

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationInner:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayRotation;->setUserRotation(II)V

    .line 1095
    :goto_19
    return-void
.end method

.method setUserRotation(II)V
    .registers 8
    .param p1, "userRotationMode"    # I
    .param p2, "userRotation"    # I

    .line 1162
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2c

    .line 1164
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1166
    .local v0, "res":Landroid/content/ContentResolver;
    if-ne p1, v2, :cond_f

    goto :goto_10

    :cond_f
    move v1, v2

    .line 1168
    .local v1, "accelerometerRotation":I
    :goto_10
    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 1169
    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->isDisplayFolded()Z

    move-result v3

    .line 1168
    invoke-interface {v2, v1, p2, v3}, Lcom/android/server/wm/MiuiOrientationStub;->setUserRotationLockedForSettings(IIZ)V

    .line 1170
    const-string v2, "accelerometer_rotation"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1172
    const-string/jumbo v2, "user_rotation"

    invoke-static {v0, v2, p2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1174
    return-void

    .line 1177
    .end local v0    # "res":Landroid/content/ContentResolver;
    .end local v1    # "accelerometerRotation":I
    :cond_2c
    const/4 v0, 0x0

    .line 1178
    .local v0, "changed":Z
    iget v3, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-eq v3, p1, :cond_34

    .line 1179
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 1180
    const/4 v0, 0x1

    .line 1182
    :cond_34
    iget v3, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    if-eq v3, p2, :cond_3b

    .line 1183
    iput p2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 1184
    const/4 v0, 0x1

    .line 1186
    :cond_3b
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setUserRotation(Lcom/android/server/wm/DisplayContent;II)V

    .line 1188
    if-eqz v0, :cond_49

    .line 1189
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 1192
    :cond_49
    return-void
.end method

.method setUserRotationForFold(IIZ)V
    .registers 5
    .param p1, "userRotationMode"    # I
    .param p2, "userRotation"    # I
    .param p3, "isFolded"    # Z

    .line 1109
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mFirstUpdateSettings:Z

    if-eqz v0, :cond_8

    .line 1110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mFirstUpdateSettings:Z

    .line 1111
    return-void

    .line 1113
    :cond_8
    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/MiuiOrientationStub;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    sget-boolean v0, Lcom/android/server/wm/MiuiOrientationStub;->IS_FOLD:Z

    if-eqz v0, :cond_25

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz v0, :cond_25

    .line 1114
    if-eqz p3, :cond_21

    .line 1115
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationModeOuter:I

    .line 1116
    iput p2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationOuter:I

    goto :goto_25

    .line 1118
    :cond_21
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationModeInner:I

    .line 1119
    iput p2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationInner:I

    .line 1122
    :cond_25
    :goto_25
    return-void
.end method

.method setUserRotationForFold(ZIZ)V
    .registers 7
    .param p1, "enable"    # Z
    .param p2, "rotation"    # I
    .param p3, "isFolded"    # Z

    .line 1098
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    goto :goto_7

    :cond_6
    move v0, p2

    :goto_7
    move p2, v0

    .line 1099
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_e

    move v2, v1

    goto :goto_f

    .line 1100
    :cond_e
    move v2, v0

    :goto_f
    nop

    .line 1102
    .local v2, "userRotationMode":I
    if-ne v2, v1, :cond_13

    goto :goto_14

    :cond_13
    move v0, v1

    .line 1103
    .local v0, "accelerometerRotation":I
    :goto_14
    invoke-virtual {p0, v2, p2, p3}, Lcom/android/server/wm/DisplayRotation;->setUserRotationForFold(IIZ)V

    .line 1104
    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v1

    invoke-interface {v1, v0, p2, p3}, Lcom/android/server/wm/MiuiOrientationStub;->setUserRotationLockedForSettings(IIZ)V

    .line 1106
    return-void
.end method

.method shouldRotateSeamlessly(IIZ)Z
    .registers 9
    .param p1, "oldRotation"    # I
    .param p2, "newRotation"    # I
    .param p3, "forceUpdate"    # Z

    .line 891
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->hasTopFixedRotationLaunchingApp()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 892
    return v1

    .line 895
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 896
    .local v0, "w":Lcom/android/server/wm/WindowState;
    const/4 v2, 0x0

    if-eqz v0, :cond_71

    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq v0, v3, :cond_1a

    goto :goto_71

    .line 902
    :cond_1a
    invoke-static {}, Lcom/android/server/wm/DisplayRotationStub;->get()Lcom/android/server/wm/DisplayRotationStub;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/server/wm/DisplayRotationStub;->forceEnableSeamless(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 903
    return v1

    .line 910
    :cond_25
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_70

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_70

    .line 914
    :cond_35
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayRotation;->canRotateSeamlessly(II)Z

    move-result v3

    if-nez v3, :cond_3c

    .line 915
    return v2

    .line 920
    :cond_3c
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_49

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    move-result v3

    if-nez v3, :cond_49

    .line 921
    return v2

    .line 926
    :cond_49
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->hasPinnedTask()Z

    move-result v3

    if-nez v3, :cond_6f

    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 927
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->hasAlertWindowSurfaces()Z

    move-result v3

    if-eqz v3, :cond_5e

    goto :goto_6f

    .line 934
    :cond_5e
    if-nez p3, :cond_6e

    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v4, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_6e

    .line 935
    return v2

    .line 938
    :cond_6e
    return v1

    .line 928
    :cond_6f
    :goto_6f
    return v2

    .line 911
    :cond_70
    :goto_70
    return v2

    .line 897
    :cond_71
    :goto_71
    return v2
.end method

.method thawRotation()V
    .registers 3

    .line 1200
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/DisplayRotation;->setUserRotation(II)V

    .line 1201
    return-void
.end method

.method updateOrientation(IZ)Z
    .registers 6
    .param p1, "newOrientation"    # I
    .param p2, "forceUpdate"    # Z

    .line 505
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_8

    if-nez p2, :cond_8

    .line 506
    return v1

    .line 510
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->shouldDeferRotation()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 513
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 518
    const-string v0, "WindowManager"

    const-string/jumbo v2, "updateOrientation Deferring rotation, recents animation in progress."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return v1

    .line 523
    :cond_1e
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 524
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    if-eq p1, v0, :cond_2d

    .line 525
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 526
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz v0, :cond_2d

    .line 527
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    .line 530
    :cond_2d
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayRotation;->updateRotationUnchecked(Z)Z

    move-result v0

    return v0
.end method

.method public updateOrientationListener()V
    .registers 3

    .line 1264
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1265
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    .line 1266
    monitor-exit v0

    .line 1267
    return-void

    .line 1266
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method updateRotationAndSendNewConfigIfChanged()Z
    .registers 3

    .line 539
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayRotation;->updateRotationUnchecked(Z)Z

    move-result v0

    .line 540
    .local v0, "changed":Z
    if-eqz v0, :cond_c

    .line 541
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    .line 543
    :cond_c
    return v0
.end method

.method updateRotationMode()V
    .registers 8

    .line 1130
    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/MiuiOrientationStub;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_56

    sget-boolean v0, Lcom/android/server/wm/MiuiOrientationStub;->IS_FOLD:Z

    if-eqz v0, :cond_56

    .line 1131
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1132
    .local v0, "resolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 1133
    .local v1, "shouldUpdateRotationMode":Z
    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v2

    .line 1134
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/server/wm/MiuiOrientationStub;->getUserRotationModeFromSettings(Z)I

    move-result v2

    .line 1135
    .local v2, "userRotationModeOuter":I
    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v4

    .line 1136
    invoke-interface {v4, v3}, Lcom/android/server/wm/MiuiOrientationStub;->getUserRotationFromSettings(Z)I

    move-result v3

    .line 1137
    .local v3, "userOrientationOuter":I
    iget v4, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationModeOuter:I

    if-ne v4, v2, :cond_2e

    iget v4, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationOuter:I

    if-eq v4, v3, :cond_33

    .line 1139
    :cond_2e
    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationModeOuter:I

    .line 1140
    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationOuter:I

    .line 1141
    const/4 v1, 0x1

    .line 1143
    :cond_33
    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v4

    .line 1144
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/server/wm/MiuiOrientationStub;->getUserRotationModeFromSettings(Z)I

    move-result v4

    .line 1145
    .local v4, "userRotationModeInner":I
    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v6

    .line 1146
    invoke-interface {v6, v5}, Lcom/android/server/wm/MiuiOrientationStub;->getUserRotationFromSettings(Z)I

    move-result v5

    .line 1147
    .local v5, "userOrientationInner":I
    iget v6, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationModeInner:I

    if-ne v6, v4, :cond_4c

    iget v6, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationInner:I

    if-eq v6, v5, :cond_51

    .line 1149
    :cond_4c
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationModeInner:I

    .line 1150
    iput v5, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationInner:I

    .line 1151
    const/4 v1, 0x1

    .line 1153
    :cond_51
    if-eqz v1, :cond_56

    .line 1154
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->setUserRotation()V

    .line 1157
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    .end local v1    # "shouldUpdateRotationMode":Z
    .end local v2    # "userRotationModeOuter":I
    .end local v3    # "userOrientationOuter":I
    .end local v4    # "userRotationModeInner":I
    .end local v5    # "userOrientationInner":I
    :cond_56
    return-void
.end method

.method updateRotationUnchecked(Z)Z
    .registers 33
    .param p1, "forceUpdate"    # Z

    .line 562
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    .line 563
    .local v2, "displayId":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_64

    .line 564
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    if-lez v5, :cond_22

    .line 567
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v5, :cond_21

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x593f0c8c

    move-object v7, v3

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v4, v3, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 568
    :cond_21
    return v4

    .line 571
    :cond_22
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 572
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v5

    .line 573
    .local v5, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v5, :cond_40

    invoke-virtual {v5}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 577
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v6, :cond_3f

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x11755f60

    move-object v8, v3

    check-cast v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v4, v3, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 578
    :cond_3f
    return v4

    .line 580
    :cond_40
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v6, :cond_56

    .line 584
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v6, :cond_55

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x7410831a

    move-object v8, v3

    check-cast v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v4, v3, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 586
    :cond_55
    return v4

    .line 589
    :cond_56
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->shouldDeferRotation()Z

    move-result v6

    if-eqz v6, :cond_64

    .line 592
    const/4 v3, -0x2

    iput v3, v0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 597
    return v4

    .line 601
    .end local v5    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_64
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez v5, :cond_85

    .line 604
    iget-boolean v5, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz v5, :cond_75

    .line 605
    invoke-static {}, Lcom/android/server/wm/DisplayRotationStub;->get()Lcom/android/server/wm/DisplayRotationStub;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/wm/DisplayRotationStub;->addBootBlackCoverLayer()V

    .line 608
    :cond_75
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v5, :cond_84

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x429d369a

    move-object v7, v3

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v4, v3, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 609
    :cond_84
    return v4

    .line 613
    :cond_85
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v5

    const-string v6, "WindowManager"

    if-eqz v5, :cond_ad

    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->isTopResumedActivityHoldingOn()Z

    move-result v5

    if-eqz v5, :cond_ad

    .line 614
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 615
    .local v5, "ar":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_ad

    iget-boolean v7, v5, Lcom/android/server/wm/ActivityRecord;->mIsHoldOn:Z

    if-eqz v7, :cond_ad

    .line 616
    const-string v3, "Abandon this rotation update, when in the holding state"

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return v4

    .line 622
    .end local v5    # "ar":Lcom/android/server/wm/ActivityRecord;
    :cond_ad
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 625
    .local v5, "oldRotation":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->getHoverModeRecommendRotation()I

    move-result v7

    .line 626
    .local v7, "hoverRecommendRotation":I
    const/16 v8, 0xb

    if-lez v7, :cond_b9

    .line 627
    iput v8, v0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 631
    :cond_b9
    iget v9, v0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 632
    .local v9, "lastOrientation":I
    invoke-virtual {v0, v9, v5}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(II)I

    move-result v10

    .line 633
    .local v10, "rotation":I
    sget-boolean v11, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v11, :cond_122

    invoke-static {v10}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .local v11, "protoLogParam0":Ljava/lang/String;
    int-to-long v12, v10

    .local v12, "protoLogParam1":J
    int-to-long v14, v2

    .local v14, "protoLogParam2":J
    invoke-static {v9}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .local v20, "protoLogParam3":Ljava/lang/String;
    int-to-long v3, v9

    .local v3, "protoLogParam4":J
    invoke-static {v5}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    move/from16 v24, v9

    .end local v9    # "lastOrientation":I
    .local v23, "protoLogParam5":Ljava/lang/String;
    .local v24, "lastOrientation":I
    int-to-long v8, v5

    move/from16 v26, v7

    .end local v7    # "hoverRecommendRotation":I
    .local v8, "protoLogParam6":J
    .local v26, "hoverRecommendRotation":I
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v11, v1, v21

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    const/16 v25, 0x1

    aput-object v29, v1, v25

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    const/16 v19, 0x2

    aput-object v29, v1, v19

    const/16 v18, 0x3

    aput-object v20, v1, v18

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    const/16 v17, 0x4

    aput-object v29, v1, v17

    const/16 v16, 0x5

    aput-object v23, v1, v16

    const/16 v29, 0x6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    aput-object v30, v1, v29

    move-wide/from16 v29, v3

    move-wide/from16 v27, v8

    const v3, -0x4b4cac2a

    const/16 v4, 0x1114

    const/4 v8, 0x0

    .end local v3    # "protoLogParam4":J
    .end local v8    # "protoLogParam6":J
    .local v27, "protoLogParam6":J
    .local v29, "protoLogParam4":J
    invoke-static {v7, v3, v4, v8, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_126

    .end local v11    # "protoLogParam0":Ljava/lang/String;
    .end local v12    # "protoLogParam1":J
    .end local v14    # "protoLogParam2":J
    .end local v20    # "protoLogParam3":Ljava/lang/String;
    .end local v23    # "protoLogParam5":Ljava/lang/String;
    .end local v24    # "lastOrientation":I
    .end local v26    # "hoverRecommendRotation":I
    .end local v27    # "protoLogParam6":J
    .end local v29    # "protoLogParam4":J
    .restart local v7    # "hoverRecommendRotation":I
    .restart local v9    # "lastOrientation":I
    :cond_122
    move/from16 v26, v7

    move/from16 v24, v9

    .line 641
    .end local v7    # "hoverRecommendRotation":I
    .end local v9    # "lastOrientation":I
    .restart local v24    # "lastOrientation":I
    .restart local v26    # "hoverRecommendRotation":I
    :goto_126
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v1, :cond_172

    int-to-long v3, v2

    .local v3, "protoLogParam0":J
    invoke-static/range {v24 .. v24}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move/from16 v7, v24

    .end local v24    # "lastOrientation":I
    .local v1, "protoLogParam1":Ljava/lang/String;
    .local v7, "lastOrientation":I
    int-to-long v8, v7

    .local v8, "protoLogParam2":J
    invoke-static {v10}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .local v11, "protoLogParam3":Ljava/lang/String;
    int-to-long v12, v10

    .local v12, "protoLogParam4":J
    sget-object v14, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v21, 0x0

    aput-object v16, v15, v21

    const/16 v16, 0x1

    aput-object v1, v15, v16

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v19, 0x2

    aput-object v16, v15, v19

    const/16 v16, 0x3

    aput-object v11, v15, v16

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x4

    aput-object v16, v15, v17

    move-object/from16 v16, v1

    move-wide/from16 v23, v3

    const v1, -0x2da92224

    const/16 v3, 0x111

    const/4 v4, 0x0

    .end local v1    # "protoLogParam1":Ljava/lang/String;
    .end local v3    # "protoLogParam0":J
    .local v16, "protoLogParam1":Ljava/lang/String;
    .local v23, "protoLogParam0":J
    invoke-static {v14, v1, v3, v4, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_174

    .end local v7    # "lastOrientation":I
    .end local v8    # "protoLogParam2":J
    .end local v11    # "protoLogParam3":Ljava/lang/String;
    .end local v12    # "protoLogParam4":J
    .end local v16    # "protoLogParam1":Ljava/lang/String;
    .end local v23    # "protoLogParam0":J
    .restart local v24    # "lastOrientation":I
    :cond_172
    move/from16 v7, v24

    .line 647
    .end local v24    # "lastOrientation":I
    .restart local v7    # "lastOrientation":I
    :goto_174
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v1

    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-interface {v1, v3, v10}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->isNeedPreventRotation(II)Z

    move-result v1

    if-eqz v1, :cond_187

    .line 648
    const-string v1, "When top activity is in embedded, don\'t rotate 180"

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/4 v1, 0x0

    return v1

    .line 653
    :cond_187
    const/4 v1, 0x0

    if-ne v5, v10, :cond_18b

    .line 655
    return v1

    .line 662
    :cond_18b
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 663
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    .line 664
    .local v1, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v1, :cond_196

    .line 665
    invoke-virtual {v1}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimationForDisplayChange()V

    .line 669
    :cond_196
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v5, v10}, Lcom/android/server/wm/WindowManagerService;->setRotationChangeForCastMode(II)V

    .line 671
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v3, :cond_1d8

    int-to-long v3, v2

    .restart local v3    # "protoLogParam0":J
    int-to-long v8, v10

    .local v8, "protoLogParam1":J
    int-to-long v11, v5

    .local v11, "protoLogParam2":J
    int-to-long v13, v7

    .local v13, "protoLogParam3":J
    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    move-object/from16 v16, v1

    .end local v1    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    .local v16, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/16 v21, 0x0

    aput-object v17, v1, v21

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/16 v24, 0x1

    aput-object v17, v1, v24

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/16 v19, 0x2

    aput-object v17, v1, v19

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/16 v18, 0x3

    aput-object v17, v1, v18

    move-wide/from16 v17, v3

    move-wide/from16 v22, v8

    const v3, -0x6720172c

    const/16 v4, 0x55

    const/4 v8, 0x0

    .end local v3    # "protoLogParam0":J
    .end local v8    # "protoLogParam1":J
    .local v17, "protoLogParam0":J
    .local v22, "protoLogParam1":J
    invoke-static {v15, v3, v4, v8, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1dd

    .end local v11    # "protoLogParam2":J
    .end local v13    # "protoLogParam3":J
    .end local v16    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    .end local v17    # "protoLogParam0":J
    .end local v22    # "protoLogParam1":J
    .restart local v1    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    :cond_1d8
    move-object/from16 v16, v1

    const/4 v8, 0x0

    const/16 v21, 0x0

    .line 675
    .end local v1    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    .restart local v16    # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    :goto_1dd
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v1, :cond_1e4

    .line 676
    iget-boolean v4, v1, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    goto :goto_1e6

    :cond_1e4
    move/from16 v4, v21

    :goto_1e6
    move v1, v4

    .line 677
    .local v1, "sensorEnabled":Z
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v3, :cond_1f0

    .line 678
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->getProposedRotation()I

    move-result v3

    goto :goto_1f1

    .line 679
    :cond_1f0
    const/4 v3, -0x1

    :goto_1f1
    nop

    .line 680
    .local v3, "sensorRotation":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rotation changed from "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " to "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " due "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v9, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 681
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "\nrequest="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 682
    invoke-static {v7}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " sensor="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 683
    invoke-static {v3}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ","

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, " user="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v11, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 684
    invoke-static {v11}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 685
    iget v9, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/4 v11, 0x1

    if-ne v9, v11, :cond_25e

    .line 686
    const-string v9, "USER_ROTATION_LOCKED"

    goto :goto_260

    :cond_25e
    const-string v9, ""

    :goto_260
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " displayId="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 680
    invoke-static {v6, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-static {v5, v10}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_281

    .line 691
    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 695
    :cond_281
    invoke-static {}, Lcom/android/server/wm/DisplayRotationStub;->get()Lcom/android/server/wm/DisplayRotationStub;

    move-result-object v4

    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-interface {v4, v6, v10}, Lcom/android/server/wm/DisplayRotationStub;->updateRotation(Lcom/android/server/wm/DisplayContent;I)V

    .line 697
    iput v10, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 699
    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 701
    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v4}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v4

    if-eqz v4, :cond_2c5

    .line 702
    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v4}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v4

    .line 703
    .local v4, "wasCollecting":Z
    if-eqz v4, :cond_2a7

    move-object v6, v8

    goto :goto_2b4

    .line 704
    :cond_2a7
    new-instance v6, Landroid/window/TransitionRequestInfo$DisplayChange;

    iget-object v8, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v8

    iget v9, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-direct {v6, v8, v5, v9}, Landroid/window/TransitionRequestInfo$DisplayChange;-><init>(III)V

    :goto_2b4
    nop

    .line 706
    .local v6, "change":Landroid/window/TransitionRequestInfo$DisplayChange;
    iget-object v8, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/high16 v9, 0x20000000

    invoke-virtual {v8, v9, v6}, Lcom/android/server/wm/DisplayContent;->requestChangeTransitionIfNeeded(ILandroid/window/TransitionRequestInfo$DisplayChange;)V

    .line 708
    if-eqz v4, :cond_2c3

    .line 712
    iget v8, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-direct {v0, v5, v8}, Lcom/android/server/wm/DisplayRotation;->startRemoteRotation(II)V

    .line 714
    :cond_2c3
    const/4 v8, 0x1

    return v8

    .line 717
    .end local v4    # "wasCollecting":Z
    .end local v6    # "change":Landroid/window/TransitionRequestInfo$DisplayChange;
    :cond_2c5
    const/4 v8, 0x1

    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iput v8, v4, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 718
    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const-wide/16 v8, 0x7d0

    const/16 v11, 0xb

    invoke-virtual {v4, v11, v6, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->sendNewMessageDelayed(ILjava/lang/Object;J)V

    .line 721
    move/from16 v4, p1

    invoke-virtual {v0, v5, v10, v4}, Lcom/android/server/wm/DisplayRotation;->shouldRotateSeamlessly(IIZ)Z

    move-result v6

    if-eqz v6, :cond_2e3

    .line 725
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->prepareSeamlessRotation()V

    goto :goto_2e6

    .line 727
    :cond_2e3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayRotation;->prepareNormalRotationAnimation()V

    .line 731
    :goto_2e6
    iget v6, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-direct {v0, v5, v6}, Lcom/android/server/wm/DisplayRotation;->startRemoteRotation(II)V

    .line 733
    const/4 v6, 0x1

    return v6
.end method

.method updateUserDependentConfiguration(Landroid/content/res/Resources;)V
    .registers 3
    .param p1, "currentUserRes"    # Landroid/content/res/Resources;

    .line 397
    nop

    .line 398
    const v0, 0x1110017

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    .line 399
    return-void
.end method

.method validateRotationAnimation(IIZ)Z
    .registers 8
    .param p1, "exitAnimId"    # I
    .param p2, "enterAnimId"    # I
    .param p3, "forceDefault"    # Z

    .line 1036
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_18

    .line 1046
    return v0

    .line 1040
    :pswitch_5
    const/4 v1, 0x0

    if-eqz p3, :cond_9

    .line 1041
    return v1

    .line 1043
    :cond_9
    invoke-direct {p0}, Lcom/android/server/wm/DisplayRotation;->selectRotationAnimation()Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;

    move-result-object v2

    .line 1044
    .local v2, "anim":Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;
    iget v3, v2, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mExit:I

    if-ne p1, v3, :cond_16

    iget v3, v2, Lcom/android/server/wm/DisplayRotation$RotationAnimationPair;->mEnter:I

    if-ne p2, v3, :cond_16

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    return v0

    :pswitch_data_18
    .packed-switch 0x10a008b
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
