.class public Lcom/android/server/wm/DisplayRotation;
.super Ljava/lang/Object;
.source "DisplayRotation.java"


# instance fields
.field public final isDefaultDisplay:Z

.field public mAllowAllRotations:I

.field public final mAllowRotationResolver:Z

.field public mAllowSeamlessRotationDespiteNavBarMoving:Z

.field public mCameraRotationMode:I

.field public final mCarDockRotation:I

.field public final mCompatPolicyForImmersiveApps:Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

.field public final mContext:Landroid/content/Context;

.field public mCurrentAppOrientation:I

.field final mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

.field public mDefaultFixedToUserRotation:Z

.field public mDeferredRotationPauseCount:I

.field public mDemoHdmiRotation:I

.field public mDemoHdmiRotationLock:Z

.field public mDemoRotation:I

.field public mDemoRotationLock:Z

.field public final mDeskDockRotation:I

.field public final mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field public final mDisplayRotationCoordinator:Lcom/android/server/wm/DisplayRotationCoordinator;

.field public final mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

.field public mFixedToUserRotation:I

.field public final mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

.field mLandscapeRotation:I

.field public mLastOrientation:I

.field public mLastSensorRotation:I

.field public final mLidOpenRotation:I

.field public final mLock:Ljava/lang/Object;

.field public mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

.field mPortraitRotation:I

.field public mRotation:I

.field public mRotationChoiceShownToUserForConfirmation:I

.field public final mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

.field public final mRotationLockHistory:Lcom/android/server/wm/DisplayRotation$RotationLockHistory;

.field mSeascapeRotation:I

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

.field public mShowRotationSuggestions:I

.field public final mSupportAutoRotation:Z

.field public final mUndockedHdmiRotation:I

.field mUpsideDownRotation:I

.field public mUserRotation:I

.field public mUserRotationAngles:I

.field public mUserRotationMode:I


# direct methods
.method public static synthetic $r8$lambda$ChUl1_ejh2U0f8FeCVay5UYuYWg(Lcom/android/server/wm/DisplayRotation;ILandroid/window/WindowContainerTransaction;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayRotation;->lambda$startRemoteRotation$0(ILandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAllowRotationResolver(Lcom/android/server/wm/DisplayRotation;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowRotationResolver:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCameraRotationMode(Lcom/android/server/wm/DisplayRotation;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wm/DisplayRotation;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/DisplayContent;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastOrientation(Lcom/android/server/wm/DisplayRotation;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/wm/DisplayRotation;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOrientationListener(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/DisplayRotation$OrientationListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRotation(Lcom/android/server/wm/DisplayRotation;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserRotation(Lcom/android/server/wm/DisplayRotation;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserRotationMode(Lcom/android/server/wm/DisplayRotation;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmRotationChoiceShownToUserForConfirmation(Lcom/android/server/wm/DisplayRotation;I)V
    .registers 2

    .line 0
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mRotationChoiceShownToUserForConfirmation:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$misRotationChoiceAllowed(Lcom/android/server/wm/DisplayRotation;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isRotationChoiceAllowed(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misValidRotationChoice(Lcom/android/server/wm/DisplayRotation;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isValidRotationChoice(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msendProposedRotationChangeToStatusBarInternal(Lcom/android/server/wm/DisplayRotation;IZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayRotation;->sendProposedRotationChangeToStatusBarInternal(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateOrientationListenerLw(Lcom/android/server/wm/DisplayRotation;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSettings(Lcom/android/server/wm/DisplayRotation;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateSettings()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/view/DisplayAddress;Lcom/android/server/wm/DeviceStateController;Lcom/android/server/wm/DisplayRotationCoordinator;)V
    .registers 16

    .line 242
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-object v6, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 243
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v8, p4

    move-object v9, p5

    .line 242
    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/DisplayRotation;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/view/DisplayAddress;Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayWindowSettings;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/wm/DeviceStateController;Lcom/android/server/wm/DisplayRotationCoordinator;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/view/DisplayAddress;Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/DisplayWindowSettings;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/wm/DeviceStateController;Lcom/android/server/wm/DisplayRotationCoordinator;)V
    .registers 12

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayRotation$RotationHistory;-><init>(Lcom/android/server/wm/DisplayRotation-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    .line 133
    new-instance v0, Lcom/android/server/wm/DisplayRotation$RotationLockHistory;

    invoke-direct {v0, v1}, Lcom/android/server/wm/DisplayRotation$RotationLockHistory;-><init>(Lcom/android/server/wm/DisplayRotation-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationLockHistory:Lcom/android/server/wm/DisplayRotation$RotationLockHistory;

    const/4 v0, -0x1

    .line 145
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 153
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 173
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mLastSensorRotation:I

    .line 190
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationChoiceShownToUserForConfirmation:I

    .line 207
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    .line 210
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationAngles:I

    const/4 v0, 0x0

    .line 212
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 215
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 220
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    .line 232
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 253
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 254
    iput-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 255
    iput-object p4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 256
    iput-object p5, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    .line 257
    iput-object p6, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    .line 258
    iput-object p7, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    .line 259
    iput-object p8, p0, Lcom/android/server/wm/DisplayRotation;->mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

    .line 260
    iget-boolean p4, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    iput-boolean p4, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    .line 261
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayRotation;->initImmersiveAppCompatPolicy(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mCompatPolicyForImmersiveApps:Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

    .line 263
    invoke-static {p6}, Lcom/android/server/wm/DisplayRotation;->isAutoRotateSupported(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    .line 265
    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const p7, 0x1110025

    invoke-virtual {p5, p7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p5

    iput-boolean p5, p0, Lcom/android/server/wm/DisplayRotation;->mAllowRotationResolver:Z

    const p5, 0x10e00d2

    .line 266
    invoke-virtual {p0, p5}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result p5

    iput p5, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    const p5, 0x10e0055

    .line 267
    invoke-virtual {p0, p5}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result p5

    iput p5, p0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    const p5, 0x10e008c

    .line 268
    invoke-virtual {p0, p5}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result p5

    iput p5, p0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    const p5, 0x10e0174

    .line 269
    invoke-virtual {p0, p5}, Lcom/android/server/wm/DisplayRotation;->readRotation(I)I

    move-result p5

    iput p5, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    .line 271
    invoke-virtual {p0, p3, p2}, Lcom/android/server/wm/DisplayRotation;->readDefaultDisplayRotation(Landroid/view/DisplayAddress;Lcom/android/server/wm/DisplayContent;)I

    move-result p3

    .line 272
    iput p3, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 274
    iput-object p9, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationCoordinator:Lcom/android/server/wm/DisplayRotationCoordinator;

    if-eqz p4, :cond_84

    .line 276
    invoke-virtual {p9, p3}, Lcom/android/server/wm/DisplayRotationCoordinator;->setDefaultDisplayDefaultRotation(I)V

    .line 278
    :cond_84
    new-instance p5, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;

    invoke-direct {p5, p0}, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayRotation;)V

    iput-object p5, p0, Lcom/android/server/wm/DisplayRotation;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    .line 280
    invoke-static {p2}, Lcom/android/server/wm/DisplayRotationCoordinator;->isSecondaryInternalDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result p7

    if-eqz p7, :cond_9e

    .line 282
    invoke-virtual {p8}, Lcom/android/server/wm/DeviceStateController;->shouldMatchBuiltInDisplayOrientationToReverseDefaultDisplay()Z

    move-result p7

    if-eqz p7, :cond_9e

    .line 284
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p2

    .line 283
    invoke-virtual {p9, p2, p5}, Lcom/android/server/wm/DisplayRotationCoordinator;->setDefaultDisplayRotationChangedCallback(ILjava/lang/Runnable;)V

    :cond_9e
    if-eqz p4, :cond_cd

    .line 288
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    .line 289
    new-instance p4, Lcom/android/server/wm/DisplayRotation$OrientationListener;

    invoke-direct {p4, p0, p6, p2, p3}, Lcom/android/server/wm/DisplayRotation$OrientationListener;-><init>(Lcom/android/server/wm/DisplayRotation;Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object p4, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 291
    iget p3, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-virtual {p4, p3}, Lcom/android/server/wm/WindowOrientationListener;->setCurrentRotation(I)V

    .line 292
    new-instance p3, Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    invoke-direct {p3, p0, p2}, Lcom/android/server/wm/DisplayRotation$SettingsObserver;-><init>(Lcom/android/server/wm/DisplayRotation;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/wm/DisplayRotation;->mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    .line 293
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->observe()V

    if-eqz p1, :cond_ca

    .line 294
    invoke-virtual {p8}, Lcom/android/server/wm/DeviceStateController;->isFoldable()Z

    move-result p1

    if-eqz p1, :cond_ca

    .line 295
    new-instance p1, Lcom/android/server/wm/DisplayRotation$FoldController;

    invoke-direct {p1, p0}, Lcom/android/server/wm/DisplayRotation$FoldController;-><init>(Lcom/android/server/wm/DisplayRotation;)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    return-void

    .line 297
    :cond_ca
    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    return-void

    .line 300
    :cond_cd
    iput-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    return-void
.end method

.method public static allowAllRotationsToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_13

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    .line 1458
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1456
    :cond_d
    const-string p0, "true"

    return-object p0

    .line 1454
    :cond_10
    const-string p0, "false"

    return-object p0

    .line 1452
    :cond_13
    const-string p0, "unknown"

    return-object p0
.end method

.method public static createDeviceStateAutoRotateDependencies(Landroid/content/Context;Lcom/android/server/wm/DeviceStateController;Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/DeviceStateAutoRotateSettingController;
    .registers 9

    .line 1720
    invoke-static {p0}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingUtils;->isDeviceStateRotationLockEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1730
    :cond_8
    new-instance v3, Lcom/android/settingslib/devicestate/AndroidSecureSettings;

    .line 1731
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/android/settingslib/devicestate/AndroidSecureSettings;-><init>(Landroid/content/ContentResolver;)V

    .line 1739
    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    .line 1741
    new-instance v5, Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;

    invoke-direct {v5, p0, v0}, Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;-><init>(Landroid/content/Context;Landroid/hardware/devicestate/DeviceStateManager;)V

    .line 1743
    new-instance v0, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;

    .line 1745
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v4, p2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManagerImpl;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/settingslib/devicestate/SecureSettings;Landroid/os/Handler;Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;)V

    .line 1747
    new-instance p0, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;

    invoke-direct {p0, p1, v0, p2, v5}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;-><init>(Lcom/android/server/wm/DeviceStateController;Lcom/android/settingslib/devicestate/DeviceStateAutoRotateSettingManager;Lcom/android/server/wm/WindowManagerService;Lcom/android/settingslib/devicestate/PostureDeviceStateConverter;)V

    return-object p0
.end method

.method public static isAutoRotateSupported(Landroid/content/Context;)Z
    .registers 2

    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110282

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public applyCurrentRotation(I)V
    .registers 3

    .line 442
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/DisplayRotation$RotationHistory;->addRecord(Lcom/android/server/wm/DisplayRotation;I)V

    .line 443
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz p0, :cond_c

    .line 444
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrientationListener;->setCurrentRotation(I)V

    :cond_c
    return-void
.end method

.method public canRotateSeamlessly(II)Z
    .registers 5

    .line 702
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    const/4 v1, 0x1

    if-nez v0, :cond_16

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->navigationBarCanMove()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_16

    :cond_e
    const/4 p0, 0x2

    if-eq p1, p0, :cond_14

    if-eq p2, p0, :cond_14

    return v1

    :cond_14
    const/4 p0, 0x0

    return p0

    :cond_16
    :goto_16
    return v1
.end method

.method public configure(II)V
    .registers 9

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110246

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le p1, p2, :cond_23

    .line 388
    iput v5, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    .line 389
    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    .line 390
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 391
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .line 392
    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    goto :goto_36

    .line 394
    :cond_1e
    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .line 395
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    goto :goto_36

    .line 398
    :cond_23
    iput v5, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    .line 399
    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    .line 400
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 401
    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    .line 402
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    goto :goto_36

    .line 404
    :cond_32
    iput v4, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    .line 405
    iput v3, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    .line 411
    :goto_36
    const-string p1, "persist.demo.hdmirotation"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "portrait"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 412
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    goto :goto_4d

    .line 414
    :cond_49
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    .line 416
    :goto_4d
    const-string p1, "persist.demo.hdmirotationlock"

    invoke-static {p1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    .line 420
    const-string p1, "persist.demo.remoterotation"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 421
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    goto :goto_6a

    .line 423
    :cond_66
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    .line 425
    :goto_6a
    const-string p1, "persist.demo.rotationlock"

    invoke-static {p1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    .line 428
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "android.hardware.type.automotive"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    .line 431
    iget-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const-string v0, "android.software.leanback"

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p2

    if-nez p1, :cond_9c

    if-nez p2, :cond_9c

    .line 433
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowManagerService;->mIsPc:Z

    if-nez p1, :cond_9c

    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 434
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->shouldRotateWithContent()Z

    move-result p1

    if-nez p1, :cond_ab

    :cond_9c
    const-string p1, "config.override_forced_orient"

    .line 438
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "true"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_ab

    goto :goto_ac

    :cond_ab
    move v4, v5

    :goto_ac
    iput-boolean v4, p0, Lcom/android/server/wm/DisplayRotation;->mDefaultFixedToUserRotation:Z

    return-void
.end method

.method public final continueRotation(ILandroid/window/WindowContainerTransaction;)V
    .registers 4

    .line 634
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    if-eq p1, v0, :cond_5

    return-void

    .line 640
    :cond_5
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 641
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result p1

    if-nez p1, :cond_20

    .line 643
    const-string p1, "WindowManager"

    const-string v0, "Trying to continue rotation outside a transition"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_20
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 647
    :cond_27
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 649
    :try_start_2e
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()Z

    if-eqz p2, :cond_41

    .line 651
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V
    :try_end_3e
    .catchall {:try_start_2e .. :try_end_3e} :catchall_3f

    goto :goto_41

    :catchall_3f
    move-exception p1

    goto :goto_49

    .line 654
    :cond_41
    :goto_41
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return-void

    :goto_49
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 655
    throw p1
.end method

.method public dispatchProposedRotation(I)V
    .registers 4

    .line 1441
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotationWatcherController:Lcom/android/server/wm/RotationWatcherController;

    invoke-virtual {v0}, Lcom/android/server/wm/RotationWatcherController;->hasProposedRotationListeners()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1442
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1443
    :try_start_d
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRotationWatcherController:Lcom/android/server/wm/RotationWatcherController;

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/RotationWatcherController;->dispatchProposedRotation(Lcom/android/server/wm/DisplayContent;I)V

    .line 1445
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_18

    throw p0

    :cond_1b
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    .line 1557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DisplayRotation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mCurrentAppOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 1559
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1558
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mLastOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDeferredRotationPauseCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mLandscapeRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSeascapeRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mPortraitRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUpsideDownRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mSupportAutoRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1570
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v0, :cond_118

    .line 1571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/wm/WindowOrientationListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1573
    :cond_118
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mCarDockRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDeskDockRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mUserRotationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 1578
    invoke-static {v1}, Lcom/android/server/policy/WindowManagerPolicy;->userRotationModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1577
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUserRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCameraRotationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAllowAllRotations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    invoke-static {v1}, Lcom/android/server/wm/DisplayRotation;->allowAllRotationsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDemoHdmiRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDemoHdmiRotationLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mUndockedHdmiRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mLidOpenRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mFixedToUserRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1589
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-eqz v0, :cond_304

    .line 1590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FoldController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mPauseAutorotationDuringUnfolding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    invoke-static {v1}, Lcom/android/server/wm/DisplayRotation$FoldController;->-$$Nest$fgetmPauseAutorotationDuringUnfolding(Lcom/android/server/wm/DisplayRotation$FoldController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mShouldDisableRotationSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    invoke-static {v1}, Lcom/android/server/wm/DisplayRotation$FoldController;->-$$Nest$fgetmShouldDisableRotationSensor(Lcom/android/server/wm/DisplayRotation$FoldController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mShouldIgnoreSensorRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    invoke-static {v1}, Lcom/android/server/wm/DisplayRotation$FoldController;->-$$Nest$fgetmShouldIgnoreSensorRotation(Lcom/android/server/wm/DisplayRotation$FoldController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mLastDisplaySwitchTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    invoke-static {v1}, Lcom/android/server/wm/DisplayRotation$FoldController;->-$$Nest$fgetmLastDisplaySwitchTime(Lcom/android/server/wm/DisplayRotation$FoldController;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mLastHingeAngleEventTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    invoke-static {v1}, Lcom/android/server/wm/DisplayRotation$FoldController;->-$$Nest$fgetmLastHingeAngleEventTime(Lcom/android/server/wm/DisplayRotation$FoldController;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDeviceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    invoke-static {v1}, Lcom/android/server/wm/DisplayRotation$FoldController;->-$$Nest$fgetmDeviceStateEnum(Lcom/android/server/wm/DisplayRotation$FoldController;)Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1605
    :cond_304
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const-string v1, "    "

    if-nez v0, :cond_34e

    .line 1606
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  RotationHistory"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1609
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationHistory:Lcom/android/server/wm/DisplayRotation$RotationHistory;

    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation$RotationHistory;->mRecords:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_33e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;

    .line 1610
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/DisplayRotation$RotationHistory$Record;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_33e

    .line 1614
    :cond_34e
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationLockHistory:Lcom/android/server/wm/DisplayRotation$RotationLockHistory;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation$RotationLockHistory;->-$$Nest$fgetmRecords(Lcom/android/server/wm/DisplayRotation$RotationLockHistory;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39a

    .line 1615
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  RotationLockHistory"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1618
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationLockHistory:Lcom/android/server/wm/DisplayRotation$RotationLockHistory;

    invoke-static {p0}, Lcom/android/server/wm/DisplayRotation$RotationLockHistory;->-$$Nest$fgetmRecords(Lcom/android/server/wm/DisplayRotation$RotationLockHistory;)Ljava/util/ArrayDeque;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_38a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;

    .line 1619
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayRotation$RotationLockHistory$Record;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_38a

    :cond_39a
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 1625
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    .line 1626
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->getRotation()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10800000002L

    .line 1627
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isRotationFrozen()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10500000003L

    .line 1628
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->getUserRotation()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000004L

    .line 1629
    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000005L

    .line 1630
    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10800000006L

    .line 1631
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1632
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public foldStateChanged(Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;)V
    .registers 3

    .line 1651
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-eqz v0, :cond_11

    .line 1652
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1653
    :try_start_7
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotation$FoldController;->foldStateChanged(Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;)V

    .line 1654
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p0

    :cond_11
    return-void
.end method

.method public freezeRotation(ILjava/lang/String;)V
    .registers 5

    .line 842
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DeviceStateController;->shouldReverseRotationDirectionAroundZAxis(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 843
    invoke-static {p1}, Landroid/util/RotationUtils;->reverseRotationDirectionAroundZAxis(I)I

    move-result p1

    :cond_e
    const/4 v0, -0x1

    if-ne p1, v0, :cond_13

    .line 846
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    :cond_13
    const/4 v0, 0x1

    .line 847
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/DisplayRotation;->setUserRotation(IILjava/lang/String;)V

    return-void
.end method

.method public final getAllowAllRotations()I
    .registers 3

    .line 1302
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_14

    .line 1305
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1308
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    .line 1311
    :cond_14
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    return p0
.end method

.method public getCurrentAppOrientation()I
    .registers 1

    .line 902
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    return p0
.end method

.method public getDemoUserRotationOverride()I
    .registers 2

    .line 1669
    const-string p0, "persist.demo.userrotation"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getDemoUserRotationPackage()Ljava/lang/String;
    .registers 1

    .line 1675
    const-string p0, "persist.demo.userrotation.package_name"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;
    .registers 1

    .line 906
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-object p0
.end method

.method public getFixedToUserRotationMode()I
    .registers 1

    .line 882
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    return p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1

    .line 2033
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    return-object p0
.end method

.method public getLastOrientation()I
    .registers 1

    .line 460
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    return p0
.end method

.method public getOrientationListener()Lcom/android/server/wm/WindowOrientationListener;
    .registers 1

    .line 910
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    return-object p0
.end method

.method public getRotation()I
    .registers 1

    .line 455
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    return p0
.end method

.method public getUserRotation()I
    .registers 1

    .line 914
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    return p0
.end method

.method public getUserRotationMode()I
    .registers 1

    .line 918
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    return p0
.end method

.method public final getUserRotationOverride()I
    .registers 5

    .line 1680
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->getDemoUserRotationOverride()I

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3a

    .line 1685
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1686
    invoke-virtual {v1}, Landroid/view/Display;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3a

    invoke-virtual {v1}, Landroid/view/Display;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1c

    goto :goto_3a

    .line 1690
    :cond_1c
    invoke-virtual {v1}, Landroid/view/Display;->getType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_38

    .line 1691
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->getDemoUserRotationPackage()Ljava/lang/String;

    move-result-object p0

    .line 1692
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_38

    invoke-virtual {v1}, Landroid/view/Display;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    goto :goto_3a

    :cond_38
    const/4 p0, 0x0

    return p0

    :cond_3a
    :goto_3a
    return v0
.end method

.method public initImmersiveAppCompatPolicy(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;
    .registers 3

    .line 312
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-static {p1, p0, p2}, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->createIfNeeded(Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/DisplayRotation;Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

    move-result-object p0

    return-object p0
.end method

.method public isAnyPortrait(I)Z
    .registers 3

    .line 1319
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    if-eq p1, v0, :cond_b

    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    if-ne p1, p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public isDeviceInPosture(Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;Z)Z
    .registers 3

    .line 1636
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1637
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayRotation$FoldController;->isDeviceInPosture(Lcom/android/server/wm/DeviceStateController$DeviceStateEnum;Z)Z

    move-result p0

    return p0
.end method

.method public isDisplaySeparatingHinge()Z
    .registers 1

    .line 1641
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation$FoldController;->isSeparatingHinge()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isFixedToUserRotation()Z
    .registers 5

    .line 869
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_11

    const/4 v3, 0x2

    if-eq v0, v3, :cond_10

    const/4 v2, 0x3

    if-eq v0, v2, :cond_f

    .line 877
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation;->mDefaultFixedToUserRotation:Z

    return p0

    :cond_f
    return v1

    :cond_10
    return v2

    :cond_11
    return v1
.end method

.method public isLandscapeOrSeascape(I)Z
    .registers 3

    .line 1315
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    if-eq p1, v0, :cond_b

    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    if-ne p1, p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public final isRotationChoiceAllowed(I)Z
    .registers 7

    .line 1358
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mCompatPolicyForImmersiveApps:Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    .line 1359
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->isRotationLockEnforced(I)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_12

    .line 1362
    :cond_d
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-eq p1, v1, :cond_12

    return v2

    .line 1369
    :cond_12
    :goto_12
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isTabletopAutoRotateOverrideEnabled()Z

    move-result p1

    if-eqz p1, :cond_19

    return v2

    .line 1375
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result p1

    if-eqz p1, :cond_20

    return v2

    .line 1379
    :cond_20
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result p1

    if-ne p1, v1, :cond_2d

    .line 1380
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    if-ltz p1, :cond_2d

    return v2

    .line 1384
    :cond_2d
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_37

    return v2

    .line 1390
    :cond_37
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1391
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->isDeskDockEnablesAccelerometer()Z

    move-result v3

    if-eq p1, v1, :cond_45

    const/4 v4, 0x3

    if-eq p1, v4, :cond_45

    const/4 v4, 0x4

    if-ne p1, v4, :cond_48

    :cond_45
    if-nez v3, :cond_48

    return v2

    .line 1399
    :cond_48
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->isHdmiPlugged()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 1400
    iget-boolean v4, p0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    if-eqz v4, :cond_55

    return v2

    :cond_55
    if-eqz v3, :cond_5e

    if-nez p1, :cond_5e

    .line 1403
    iget p1, p0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    if-ltz p1, :cond_5e

    return v2

    .line 1407
    :cond_5e
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    if-eqz p1, :cond_63

    return v2

    .line 1410
    :cond_63
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->isPersistentVrModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_6c

    return v2

    .line 1413
    :cond_6c
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-nez p1, :cond_71

    return v2

    .line 1418
    :cond_71
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_7c

    if-eq p0, v0, :cond_7c

    packed-switch p0, :pswitch_data_7e

    return v2

    :cond_7c
    :pswitch_7c
    return v1

    nop

    :pswitch_data_7e
    .packed-switch 0xb
        :pswitch_7c
        :pswitch_7c
        :pswitch_7c
    .end packed-switch
.end method

.method public isRotationFrozen()Z
    .registers 5

    .line 855
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_c

    .line 856
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne p0, v2, :cond_b

    return v2

    :cond_b
    return v1

    .line 859
    :cond_c
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accelerometer_rotation"

    const/4 v3, -0x2

    invoke-static {p0, v0, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_1c

    return v2

    :cond_1c
    return v1
.end method

.method public final isTabletopAutoRotateOverrideEnabled()Z
    .registers 1

    .line 1354
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation$FoldController;->overrideFrozenRotation()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final isValidRotationChoice(I)Z
    .registers 7

    .line 1324
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_1d

    if-eq v0, v2, :cond_1d

    packed-switch v0, :pswitch_data_2e

    return v4

    :pswitch_e
    if-ltz p1, :cond_11

    return v3

    :cond_11
    return v4

    .line 1333
    :pswitch_12
    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    if-ne p1, p0, :cond_17

    return v3

    :cond_17
    return v4

    .line 1337
    :pswitch_18
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result p0

    return p0

    .line 1342
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->getAllowAllRotations()I

    move-result p0

    if-ne p0, v3, :cond_27

    if-ltz p1, :cond_26

    return v3

    :cond_26
    return v4

    :cond_27
    if-ltz p1, :cond_2c

    if-eq p1, v2, :cond_2c

    return v3

    :cond_2c
    return v4

    nop

    :pswitch_data_2e
    .packed-switch 0xb
        :pswitch_18
        :pswitch_12
        :pswitch_e
    .end packed-switch
.end method

.method public final synthetic lambda$startRemoteRotation$0(ILandroid/window/WindowContainerTransaction;)V
    .registers 3

    .line 629
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayRotation;->continueRotation(ILandroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public final needSensorRunning()Z
    .registers 6

    .line 1013
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 1019
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation$FoldController;->shouldDisableRotationSensor()Z

    move-result v0

    if-eqz v0, :cond_13

    return v1

    .line 1023
    :cond_13
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_28

    .line 1024
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    if-eq v0, v2, :cond_27

    const/16 v4, 0xa

    if-eq v0, v4, :cond_27

    const/4 v4, 0x7

    if-eq v0, v4, :cond_27

    const/4 v4, 0x6

    if-ne v0, v4, :cond_28

    :cond_27
    return v3

    .line 1034
    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v0

    .line 1035
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isCarDockEnablesAccelerometer()Z

    move-result v4

    if-eqz v4, :cond_39

    const/4 v4, 0x2

    if-eq v0, v4, :cond_48

    :cond_39
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1037
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isDeskDockEnablesAccelerometer()Z

    move-result v4

    if-eqz v4, :cond_49

    if-eq v0, v3, :cond_48

    const/4 v4, 0x3

    if-eq v0, v4, :cond_48

    if-ne v0, v2, :cond_49

    :cond_48
    return v3

    .line 1046
    :cond_49
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v0, v3, :cond_57

    .line 1058
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-eqz v0, :cond_56

    iget p0, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    if-ne p0, v3, :cond_56

    return v3

    :cond_56
    return v1

    .line 1061
    :cond_57
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    return p0
.end method

.method public onDisplayRemoved()V
    .registers 1

    .line 1469
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->removeDefaultDisplayRotationChangedCallback()V

    .line 1470
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-eqz p0, :cond_a

    .line 1471
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation$FoldController;->onDisplayRemoved()V

    :cond_a
    return-void
.end method

.method public onSetRequestedOrientation()V
    .registers 3

    .line 1549
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mCompatPolicyForImmersiveApps:Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationChoiceShownToUserForConfirmation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    goto :goto_f

    .line 1553
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->onProposedRotationChanged(I)V

    :cond_f
    :goto_f
    return-void
.end method

.method public onUserSwitch()V
    .registers 2

    .line 1463
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mSettingsObserver:Lcom/android/server/wm/DisplayRotation$SettingsObserver;

    if-eqz p0, :cond_8

    const/4 v0, 0x0

    .line 1464
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayRotation$SettingsObserver;->onChange(Z)V

    :cond_8
    return-void
.end method

.method public pause()V
    .registers 2

    .line 936
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    return-void
.end method

.method public physicalDisplayChanged()V
    .registers 1

    .line 1662
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-eqz p0, :cond_7

    .line 1663
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation$FoldController;->onPhysicalDisplayChanged()V

    :cond_7
    return-void
.end method

.method public final readDefaultDisplayRotation(Landroid/view/DisplayAddress;Lcom/android/server/wm/DisplayContent;)I
    .registers 6

    .line 331
    instance-of p0, p1, Landroid/view/DisplayAddress$Physical;

    const-string v0, ""

    if-eqz p0, :cond_22

    .line 332
    check-cast p1, Landroid/view/DisplayAddress$Physical;

    .line 334
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ro.bootanim.set_orientation_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {p1}, Landroid/view/DisplayAddress$Physical;->getPhysicalDisplayId()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 334
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_23

    :cond_22
    move-object p0, v0

    .line 337
    :goto_23
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    iget-boolean p1, p2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz p1, :cond_46

    .line 338
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ro.bootanim.set_orientation_logical_"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 338
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 342
    :cond_46
    const-string p1, "ORIENTATION_90"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    const/4 p0, 0x1

    return p0

    .line 344
    :cond_50
    const-string p1, "ORIENTATION_180"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a

    const/4 p0, 0x2

    return p0

    .line 346
    :cond_5a
    const-string p1, "ORIENTATION_270"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_64

    const/4 p0, 0x3

    return p0

    :cond_64
    const/4 p0, 0x0

    return p0
.end method

.method public final readRotation(I)I
    .registers 2

    .line 354
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_a} :catch_21

    if-eqz p0, :cond_1f

    const/16 p1, 0x5a

    if-eq p0, p1, :cond_1d

    const/16 p1, 0xb4

    if-eq p0, p1, :cond_1b

    const/16 p1, 0x10e

    if-eq p0, p1, :cond_19

    goto :goto_21

    :cond_19
    const/4 p0, 0x3

    return p0

    :cond_1b
    const/4 p0, 0x2

    return p0

    :cond_1d
    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0

    :catch_21
    :goto_21
    const/4 p0, -0x1

    return p0
.end method

.method public removeDefaultDisplayRotationChangedCallback()V
    .registers 3

    .line 1539
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotationCoordinator;->isSecondaryInternalDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1540
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationCoordinator:Lcom/android/server/wm/DisplayRotationCoordinator;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1541
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDefaultDisplayRotationChangedCallback:Ljava/lang/Runnable;

    .line 1540
    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/DisplayRotationCoordinator;->removeDefaultDisplayRotationChangedCallback(ILjava/lang/Runnable;)V

    :cond_15
    return-void
.end method

.method public requestDeviceStateAutoRotateSettingChange(IZ)V
    .registers 3

    .line 835
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer;->mDeviceStateAutoRotateSettingController:Lcom/android/server/wm/DeviceStateAutoRotateSettingController;

    if-eqz p0, :cond_b

    .line 837
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->requestDeviceStateAutoRotateSettingChange(IZ)V

    :cond_b
    return-void
.end method

.method public resetAllowAllRotations()V
    .registers 2

    const/4 v0, -0x1

    .line 1089
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mAllowAllRotations:I

    return-void
.end method

.method public restoreSettings(III)V
    .registers 9

    .line 713
    iput p3, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 716
    iget-boolean p3, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz p3, :cond_7

    return-void

    :cond_7
    const/4 p3, 0x0

    .line 719
    const-string v0, " for "

    const-string v1, "WindowManager"

    const/4 v2, 0x1

    if-eqz p1, :cond_2e

    if-eq p1, v2, :cond_2e

    .line 721
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to restore an invalid user rotation mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, p3

    :cond_2e
    if-ltz p2, :cond_33

    const/4 v3, 0x3

    if-le p2, v3, :cond_50

    .line 726
    :cond_33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to restore an invalid user rotation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p2, p3

    .line 730
    :cond_50
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->getUserRotationOverride()I

    move-result p3

    if-eqz p3, :cond_58

    move p2, p3

    goto :goto_59

    :cond_58
    move v2, p1

    .line 735
    :goto_59
    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    .line 736
    iput p2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    return-void
.end method

.method public resume()V
    .registers 2

    .line 941
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    if-gtz v0, :cond_5

    goto :goto_e

    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 945
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    if-nez v0, :cond_e

    .line 947
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateRotationAndSendNewConfigIfChanged()Z

    :cond_e
    :goto_e
    return-void
.end method

.method public rotationForOrientation(II)I
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1104
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    const/4 v4, 0x0

    aget-boolean v3, v3, v4

    const/4 v5, 0x1

    if-eqz v3, :cond_56

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    int-to-long v7, v1

    invoke-static {v2}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    int-to-long v9, v2

    iget v11, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    invoke-static {v11}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iget v12, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    int-to-long v12, v12

    iget v14, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-ne v14, v5, :cond_34

    const-string v14, "USER_ROTATION_LOCKED"

    goto :goto_36

    :cond_34
    const-string v14, ""

    :goto_36
    sget-object v15, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object v10, v11

    move-object v12, v14

    move-object v11, v8

    move-object v8, v3

    filled-new-array/range {v6 .. v12}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v6, 0x65db0a35419733acL    # 4.488095312525632E182

    const/16 v8, 0x444

    invoke-static {v15, v6, v7, v8, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1112
    :cond_56
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 1113
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    return v0

    .line 1117
    :cond_5f
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    const/4 v6, -0x1

    if-eqz v3, :cond_69

    .line 1118
    invoke-virtual {v3}, Lcom/android/server/wm/WindowOrientationListener;->getProposedRotation()I

    move-result v3

    goto :goto_6a

    :cond_69
    move v3, v6

    .line 1120
    :goto_6a
    iget-object v7, v0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-eqz v7, :cond_75

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayRotation$FoldController;->shouldIgnoreSensorRotation()Z

    move-result v7

    if-eqz v7, :cond_75

    move v3, v6

    .line 1123
    :cond_75
    iget-object v7, v0, Lcom/android/server/wm/DisplayRotation;->mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

    iget-object v8, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v7, v8}, Lcom/android/server/wm/DeviceStateController;->shouldReverseRotationDirectionAroundZAxis(Lcom/android/server/wm/DisplayContent;)Z

    move-result v7

    if-eqz v7, :cond_83

    .line 1124
    invoke-static {v3}, Landroid/util/RotationUtils;->reverseRotationDirectionAroundZAxis(I)I

    move-result v3

    .line 1126
    :cond_83
    iput v3, v0, Lcom/android/server/wm/DisplayRotation;->mLastSensorRotation:I

    if-gez v3, :cond_88

    move v3, v2

    .line 1131
    :cond_88
    iget-object v7, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v7

    .line 1132
    iget-object v8, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v8

    .line 1133
    iget-object v9, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayPolicy;->isHdmiPlugged()Z

    move-result v9

    .line 1134
    iget-object v10, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1135
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayPolicy;->isCarDockEnablesAccelerometer()Z

    move-result v10

    .line 1136
    iget-object v11, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    .line 1137
    invoke-virtual {v11}, Lcom/android/server/wm/DisplayPolicy;->isDeskDockEnablesAccelerometer()Z

    move-result v11

    .line 1141
    iget-boolean v12, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    const/16 v13, 0xc

    const/16 v14, 0xb

    if-nez v12, :cond_b4

    .line 1144
    iget v6, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    :goto_b0
    move/from16 v16, v4

    goto/16 :goto_17a

    :cond_b4
    if-ne v7, v5, :cond_bf

    .line 1145
    iget v7, v0, Lcom/android/server/wm/DisplayRotation;->mLidOpenRotation:I

    if-ltz v7, :cond_bf

    move/from16 v16, v4

    move v6, v7

    goto/16 :goto_17a

    :cond_bf
    const/4 v7, 0x2

    if-ne v8, v7, :cond_cf

    if-nez v10, :cond_c8

    .line 1148
    iget v12, v0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    if-ltz v12, :cond_cf

    :cond_c8
    if-eqz v10, :cond_cc

    :goto_ca
    move v6, v3

    goto :goto_b0

    .line 1153
    :cond_cc
    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mCarDockRotation:I

    goto :goto_ca

    :cond_cf
    const/4 v10, 0x5

    const/16 v12, 0xe

    const/4 v15, 0x4

    move/from16 v16, v4

    const/4 v4, 0x3

    if-eq v8, v5, :cond_dc

    if-eq v8, v4, :cond_dc

    if-ne v8, v15, :cond_ee

    :cond_dc
    if-nez v11, :cond_e2

    .line 1154
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    if-ltz v5, :cond_ee

    :cond_e2
    if-eq v1, v12, :cond_ee

    if-eq v1, v10, :cond_ee

    if-eqz v11, :cond_eb

    :goto_e8
    move v6, v3

    goto/16 :goto_17a

    .line 1162
    :cond_eb
    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mDeskDockRotation:I

    goto :goto_e8

    :cond_ee
    if-eqz v9, :cond_f8

    .line 1163
    iget-boolean v5, v0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotationLock:Z

    if-eqz v5, :cond_f8

    .line 1166
    iget v6, v0, Lcom/android/server/wm/DisplayRotation;->mDemoHdmiRotation:I

    goto/16 :goto_17a

    :cond_f8
    if-eqz v9, :cond_103

    if-nez v8, :cond_103

    .line 1167
    iget v5, v0, Lcom/android/server/wm/DisplayRotation;->mUndockedHdmiRotation:I

    if-ltz v5, :cond_103

    move v6, v5

    goto/16 :goto_17a

    .line 1174
    :cond_103
    iget-boolean v5, v0, Lcom/android/server/wm/DisplayRotation;->mDemoRotationLock:Z

    if-eqz v5, :cond_10b

    .line 1177
    iget v6, v0, Lcom/android/server/wm/DisplayRotation;->mDemoRotation:I

    goto/16 :goto_17a

    .line 1178
    :cond_10b
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayPolicy;->isPersistentVrModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_117

    .line 1183
    iget v6, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    goto/16 :goto_17a

    :cond_117
    if-ne v1, v12, :cond_11c

    :cond_119
    move v6, v2

    goto/16 :goto_17a

    .line 1187
    :cond_11c
    iget-boolean v5, v0, Lcom/android/server/wm/DisplayRotation;->mSupportAutoRotation:Z

    if-nez v5, :cond_127

    .line 1188
    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    if-ne v3, v4, :cond_17a

    .line 1189
    iget v6, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    goto :goto_17a

    .line 1195
    :cond_127
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/16 v5, 0xa

    const/16 v8, 0xd

    if-eqz v4, :cond_135

    .line 1196
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->isTabletopAutoRotateOverrideEnabled()Z

    move-result v4

    if-eqz v4, :cond_13f

    :cond_135
    if-eq v1, v7, :cond_160

    if-eq v1, v6, :cond_160

    if-eq v1, v14, :cond_160

    if-eq v1, v13, :cond_160

    if-eq v1, v8, :cond_160

    :cond_13f
    if-eq v1, v15, :cond_160

    if-eq v1, v5, :cond_160

    const/4 v4, 0x6

    if-eq v1, v4, :cond_160

    const/4 v4, 0x7

    if-ne v1, v4, :cond_14a

    goto :goto_160

    .line 1219
    :cond_14a
    iget v3, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17a

    if-eq v1, v10, :cond_17a

    if-eqz v1, :cond_17a

    if-eq v1, v4, :cond_17a

    const/16 v3, 0x8

    if-eq v1, v3, :cond_17a

    const/16 v3, 0x9

    if-eq v1, v3, :cond_17a

    .line 1233
    iget v6, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    goto :goto_17a

    :cond_160
    :goto_160
    if-eq v1, v5, :cond_175

    if-eq v1, v8, :cond_175

    .line 1211
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationAngles:I

    .line 1212
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getAllowAllRotations()I

    move-result v5

    if-eqz v5, :cond_16e

    const/4 v5, 0x1

    goto :goto_170

    :cond_16e
    move/from16 v5, v16

    .line 1211
    :goto_170
    invoke-static {v3, v4, v5}, Lcom/android/internal/view/RotationPolicy;->isRotationAllowed(IIZ)Z

    move-result v4

    goto :goto_176

    :cond_175
    const/4 v4, 0x1

    :goto_176
    if-eqz v4, :cond_119

    goto/16 :goto_e8

    :cond_17a
    :goto_17a
    if-eqz v1, :cond_1ca

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1c0

    if-eq v1, v14, :cond_1af

    if-eq v1, v13, :cond_19e

    packed-switch v1, :pswitch_data_1d4

    if-ltz v6, :cond_189

    goto :goto_1d0

    :cond_189
    return v16

    .line 1257
    :pswitch_18a
    invoke-virtual {v0, v6}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_191

    goto :goto_1d0

    .line 1260
    :cond_191
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mUpsideDownRotation:I

    return v0

    .line 1264
    :pswitch_194
    invoke-virtual {v0, v6}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_19b

    goto :goto_1d0

    .line 1267
    :cond_19b
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mSeascapeRotation:I

    return v0

    .line 1283
    :cond_19e
    :pswitch_19e
    invoke-virtual {v0, v6}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_1a5

    goto :goto_1d0

    .line 1286
    :cond_1a5
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_1ac

    goto :goto_1bc

    .line 1289
    :cond_1ac
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return v0

    .line 1272
    :cond_1af
    :pswitch_1af
    invoke-virtual {v0, v6}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_1b6

    goto :goto_1d0

    .line 1275
    :cond_1b6
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_1bd

    :goto_1bc
    return v2

    .line 1278
    :cond_1bd
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return v0

    .line 1243
    :cond_1c0
    invoke-virtual {v0, v6}, Lcom/android/server/wm/DisplayRotation;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_1c7

    goto :goto_1d0

    .line 1246
    :cond_1c7
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mPortraitRotation:I

    return v0

    .line 1250
    :cond_1ca
    invoke-virtual {v0, v6}, Lcom/android/server/wm/DisplayRotation;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_1d1

    :goto_1d0
    return v6

    .line 1253
    :cond_1d1
    iget v0, v0, Lcom/android/server/wm/DisplayRotation;->mLandscapeRotation:I

    return v0

    :pswitch_data_1d4
    .packed-switch 0x6
        :pswitch_1af
        :pswitch_19e
        :pswitch_194
        :pswitch_18a
    .end packed-switch
.end method

.method public final sendProposedRotationChangeToStatusBarInternal(IZ)V
    .registers 4

    .line 1434
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1436
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onProposedRotationChanged(IIZ)V

    :cond_11
    return-void
.end method

.method public setFixedToUserRotation(I)V
    .registers 4

    .line 740
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    if-ne v0, p1, :cond_5

    return-void

    .line 744
    :cond_5
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mFixedToUserRotation:I

    .line 745
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/DisplayWindowSettings;->setFixedToUserRotation(Lcom/android/server/wm/DisplayContent;I)V

    .line 746
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1b

    .line 750
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 749
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->onLastFocusedTaskDisplayAreaChanged(Lcom/android/server/wm/TaskDisplayArea;)V

    .line 752
    :cond_1b
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    return-void
.end method

.method public setRotation(I)V
    .registers 2

    .line 450
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    return-void
.end method

.method public setRotationAtAngleIfAllowed(ILjava/lang/String;)V
    .registers 4

    .line 864
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayRotation;->isRotationChoiceAllowed(I)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 865
    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayRotation;->freezeRotation(ILjava/lang/String;)V

    return-void
.end method

.method public setUserRotation(IILjava/lang/String;)V
    .registers 9

    .line 757
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->useDefaultSettingsProvider()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2c

    .line 759
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-ne p1, v2, :cond_12

    move v3, v1

    goto :goto_13

    :cond_12
    move v3, v2

    .line 762
    :goto_13
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer;->mDeviceStateAutoRotateSettingController:Lcom/android/server/wm/DeviceStateAutoRotateSettingController;

    if-eqz v4, :cond_22

    if-ne v3, v2, :cond_1e

    move v1, v2

    .line 769
    :cond_1e
    invoke-virtual {v4, v1, p2, p3}, Lcom/android/server/wm/DeviceStateAutoRotateSettingController;->requestAccelerometerRotationSettingChange(ZILjava/lang/String;)V

    return-void

    .line 772
    :cond_22
    const-string v1, "accelerometer_rotation"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 774
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayRotation;->setUserRotationSetting(IILjava/lang/String;)V

    return-void

    .line 778
    :cond_2c
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationLockHistory:Lcom/android/server/wm/DisplayRotation$RotationLockHistory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/DisplayRotation$RotationLockHistory;->addRecord(IILjava/lang/String;)V

    const/4 p3, -0x1

    .line 779
    iput p3, p0, Lcom/android/server/wm/DisplayRotation;->mRotationChoiceShownToUserForConfirmation:I

    .line 781
    iget p3, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-eq p3, p1, :cond_3c

    .line 782
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    move p3, v2

    goto :goto_3d

    :cond_3c
    move p3, v1

    .line 785
    :goto_3d
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    if-eq v0, p2, :cond_44

    .line 786
    iput p2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    goto :goto_45

    :cond_44
    move v2, p3

    .line 789
    :goto_45
    iget-object p3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p3, v0, p1, p2}, Lcom/android/server/wm/DisplayWindowSettings;->setUserRotation(Lcom/android/server/wm/DisplayContent;II)V

    if-eqz v2, :cond_58

    .line 792
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v1, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 800
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->onMirrorOutputSurfaceOrientationChanged()V

    :cond_58
    return-void
.end method

.method public setUserRotationSetting(IILjava/lang/String;)V
    .registers 8

    const/4 v0, -0x2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_7

    .line 823
    iget p2, p0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    goto :goto_b

    :cond_7
    if-ne p2, v0, :cond_b

    .line 825
    iget p2, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    .line 827
    :cond_b
    :goto_b
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_rotation"

    invoke-static {v2, v3, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 830
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mRotationLockHistory:Lcom/android/server/wm/DisplayRotation$RotationLockHistory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/DisplayRotation$RotationLockHistory;->addRecord(IILjava/lang/String;)V

    .line 831
    iput v1, p0, Lcom/android/server/wm/DisplayRotation;->mRotationChoiceShownToUserForConfirmation:I

    return-void
.end method

.method public shouldRotateSeamlessly(IIZ)Z
    .registers 8

    .line 662
    iget-object p3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->hasTopFixedRotationLaunchingApp()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_a

    return v0

    .line 666
    :cond_a
    iget-object p3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object p3

    const/4 v1, 0x0

    if-eqz p3, :cond_56

    .line 667
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eq p3, v2, :cond_1a

    goto :goto_56

    .line 673
    :cond_1a
    iget-object v2, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_56

    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_56

    .line 674
    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v2

    if-eqz v2, :cond_2e

    goto :goto_56

    .line 678
    :cond_2e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayRotation;->canRotateSeamlessly(II)Z

    move-result p1

    if-nez p1, :cond_35

    return v1

    .line 684
    :cond_35
    iget-object p1, p3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_40

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    move-result p1

    if-nez p1, :cond_40

    return v1

    .line 690
    :cond_40
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->hasPinnedTask()Z

    move-result p1

    if-nez p1, :cond_56

    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 691
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->hasAlertWindowSurfaces()Z

    move-result p0

    if-eqz p0, :cond_55

    goto :goto_56

    :cond_55
    return v0

    :cond_56
    :goto_56
    return v1
.end method

.method public final startRemoteRotation(II)V
    .registers 5

    .line 627
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mRemoteDisplayChangeController:Lcom/android/server/wm/RemoteDisplayChangeController;

    new-instance v1, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2}, Lcom/android/server/wm/DisplayRotation$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayRotation;I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p2, p0, v1}, Lcom/android/server/wm/RemoteDisplayChangeController;->performRemoteDisplayChange(IILandroid/window/DisplayAreaInfo;Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;)Z

    return-void
.end method

.method public thawRotation(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 851
    iget v1, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/wm/DisplayRotation;->setUserRotation(IILjava/lang/String;)V

    return-void
.end method

.method public updateOrientation(IZ)Z
    .registers 5

    .line 464
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_8

    if-nez p2, :cond_8

    return v1

    .line 467
    :cond_8
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 468
    iget v0, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    if-eq p1, v0, :cond_18

    .line 469
    iput p1, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    .line 470
    iget-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz p1, :cond_23

    .line 471
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    goto :goto_23

    .line 473
    :cond_18
    iget-object p1, p0, Lcom/android/server/wm/DisplayRotation;->mCompatPolicyForImmersiveApps:Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;

    if-eqz p1, :cond_23

    .line 474
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayRotationImmersiveAppCompatPolicy;->deferOrientationUpdate()Z

    move-result p1

    if-eqz p1, :cond_23

    return v1

    .line 477
    :cond_23
    :goto_23
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayRotation;->updateRotationUnchecked(Z)Z

    move-result p0

    return p0
.end method

.method public updateOrientationListener()V
    .registers 2

    .line 922
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 923
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    .line 924
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final updateOrientationListenerLw()V
    .registers 15

    .line 963
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    if-eqz v0, :cond_7e

    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrientationListener;->canDetectOrientation()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_7e

    .line 968
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnEarly()Z

    move-result v0

    .line 969
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v1

    .line 970
    iget-object v2, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v2

    .line 971
    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->isWindowManagerDrawComplete()Z

    move-result v3

    .line 975
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_59

    iget v4, p0, Lcom/android/server/wm/DisplayRotation;->mCurrentAppOrientation:I

    int-to-long v4, v4

    iget-object v6, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-boolean v6, v6, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    filled-new-array/range {v8 .. v13}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, -0x21ac519cf589c1c6L

    const/16 v8, 0xfdf

    invoke-static {v7, v5, v6, v8, v4}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_59
    if-eqz v0, :cond_79

    if-nez v1, :cond_65

    .line 990
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    .line 991
    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrientationListener;->shouldStayEnabledWhileDreaming()Z

    move-result v0

    if-eqz v0, :cond_79

    :cond_65
    if-eqz v2, :cond_79

    if-eqz v3, :cond_79

    .line 993
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->needSensorRunning()Z

    move-result v0

    if-eqz v0, :cond_79

    .line 996
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayRotation$OrientationListener;->mEnabled:Z

    if-nez v0, :cond_7e

    .line 997
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->enable()V

    return-void

    .line 1003
    :cond_79
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mOrientationListener:Lcom/android/server/wm/DisplayRotation$OrientationListener;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation$OrientationListener;->disable()V

    :cond_7e
    :goto_7e
    return-void
.end method

.method public updateRotationAndSendNewConfigIfChanged()Z
    .registers 2

    const/4 v0, 0x0

    .line 486
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayRotation;->updateRotationUnchecked(Z)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 488
    iget-object p0, p0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()Z

    :cond_c
    return v0
.end method

.method public updateRotationUnchecked(Z)Z
    .registers 28

    move-object/from16 v0, p0

    .line 509
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_5e

    .line 511
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mDeferredRotationPauseCount:I

    if-lez v4, :cond_21

    .line 514
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x5e0b2e75d386c675L    # -4.168039617495083E-145

    invoke-static {v0, v4, v5, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_20
    return v3

    .line 518
    :cond_21
    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v4

    if-eqz v4, :cond_50

    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 519
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v4

    if-eqz v4, :cond_50

    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 520
    invoke-virtual {v4}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result v4

    if-nez v4, :cond_50

    .line 524
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_4f

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x673f09e71a893134L

    invoke-static {v0, v4, v5, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_4f
    return v3

    .line 528
    :cond_50
    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mFixedRotationTransitionListener:Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent$FixedRotationTransitionListener;->shouldDeferRotation()Z

    move-result v4

    if-eqz v4, :cond_5e

    const/4 v1, -0x2

    .line 531
    iput v1, v0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    return v3

    .line 540
    :cond_5e
    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez v4, :cond_75

    .line 542
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_74

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x1ed6693e8b42c2fcL    # -1.1242403078993441E160

    invoke-static {v0, v4, v5, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_74
    return v3

    .line 547
    :cond_75
    iget v2, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 549
    iget v4, v0, Lcom/android/server/wm/DisplayRotation;->mLastOrientation:I

    .line 551
    invoke-virtual {v0, v4, v2}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(II)I

    move-result v5

    .line 553
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    if-eqz v6, :cond_ba

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayRotation$FoldController;->shouldRevertOverriddenRotation()Z

    move-result v6

    if-eqz v6, :cond_ba

    .line 555
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mFoldController:Lcom/android/server/wm/DisplayRotation$FoldController;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayRotation$FoldController;->revertOverriddenRotation()I

    move-result v6

    .line 556
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v7, v7, v3

    if-eqz v7, :cond_b9

    invoke-static {v6}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v9, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v10, 0x9336858471d306cL

    filled-new-array {v7, v8, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v9, v10, v11, v3, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_b9
    move v5, v6

    .line 563
    :cond_ba
    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-static {v6}, Lcom/android/server/wm/DisplayRotationCoordinator;->isSecondaryInternalDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v6

    if-eqz v6, :cond_d4

    iget-object v6, v0, Lcom/android/server/wm/DisplayRotation;->mDeviceStateController:Lcom/android/server/wm/DeviceStateController;

    .line 565
    invoke-virtual {v6}, Lcom/android/server/wm/DeviceStateController;->shouldMatchBuiltInDisplayOrientationToReverseDefaultDisplay()Z

    move-result v6

    if-eqz v6, :cond_d4

    .line 566
    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationCoordinator:Lcom/android/server/wm/DisplayRotationCoordinator;

    .line 567
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayRotationCoordinator;->getDefaultDisplayCurrentRotation()I

    move-result v5

    .line 566
    invoke-static {v5}, Landroid/util/RotationUtils;->reverseRotationDirectionAroundZAxis(I)I

    move-result v5

    .line 570
    :cond_d4
    sget-object v6, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v6, v6, v3

    if-eqz v6, :cond_11e

    invoke-static {v5}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    int-to-long v8, v5

    int-to-long v10, v1

    invoke-static {v4}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    int-to-long v12, v4

    invoke-static {v2}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move v15, v3

    move/from16 p1, v4

    int-to-long v3, v2

    move/from16 v16, v15

    sget-object v15, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object v10, v6

    move-object v12, v14

    filled-new-array/range {v7 .. v13}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v6, -0x62b82bb785cfc627L

    const/16 v4, 0x1114

    invoke-static {v15, v6, v7, v4, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_122

    :cond_11e
    move/from16 v16, v3

    move/from16 p1, v4

    :goto_122
    if-ne v2, v5, :cond_125

    return v16

    .line 583
    :cond_125
    iget-boolean v3, v0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    if-eqz v3, :cond_12e

    .line 584
    iget-object v3, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationCoordinator:Lcom/android/server/wm/DisplayRotationCoordinator;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/DisplayRotationCoordinator;->onDefaultDisplayRotationChanged(I)V

    .line 587
    :cond_12e
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_CHANGE_enabled:[Z

    const/4 v4, 0x2

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_172

    int-to-long v3, v1

    int-to-long v6, v5

    int-to-long v8, v2

    move/from16 v1, p1

    int-to-long v10, v1

    iget v1, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    int-to-long v12, v1

    iget v1, v0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    int-to-long v14, v1

    iget v1, v0, Lcom/android/server/wm/DisplayRotation;->mLastSensorRotation:I

    move-wide/from16 v17, v3

    int-to-long v3, v1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION_CHANGE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    filled-new-array/range {v19 .. v25}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v6, -0x17b6afca0c08c3c2L    # -2.3098106839233037E194

    const/16 v4, 0x1555

    invoke-static {v1, v6, v7, v4, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 593
    :cond_172
    iput v5, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    .line 595
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->applyFixedRotationForNonTopVisibleActivityIfNeeded()V

    .line 596
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 597
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    .line 599
    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_1d2

    .line 600
    iget-object v1, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v4, "updateRot"

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActionChain$Tracker;->startTransit(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v1

    .line 601
    invoke-virtual {v1}, Lcom/android/server/wm/ActionChain;->isCollecting()Z

    move-result v4

    if-nez v4, :cond_1ba

    .line 602
    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getLastHasContent()Z

    move-result v4

    if-eqz v4, :cond_1c8

    .line 603
    new-instance v4, Landroid/window/TransitionRequestInfo$DisplayChange;

    iget-object v5, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 604
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    iget v6, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-direct {v4, v5, v2, v6}, Landroid/window/TransitionRequestInfo$DisplayChange;-><init>(III)V

    .line 606
    iget-object v2, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/high16 v5, 0x20000000

    invoke-virtual {v2, v5, v4, v1}, Lcom/android/server/wm/DisplayContent;->requestChangeTransition(ILandroid/window/TransitionRequestInfo$DisplayChange;Lcom/android/server/wm/ActionChain;)V

    goto :goto_1c8

    .line 610
    :cond_1ba
    iget-object v4, v0, Lcom/android/server/wm/DisplayRotation;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/android/server/wm/DisplayContent;->collectDisplayChange(Lcom/android/server/wm/Transition;)V

    .line 614
    iget v1, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/DisplayRotation;->startRemoteRotation(II)V

    .line 616
    :cond_1c8
    :goto_1c8
    iget-object v0, v0, Lcom/android/server/wm/DisplayRotation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {v0}, Lcom/android/server/wm/ActionChain$Tracker;->endPartial()V

    return v3

    .line 621
    :cond_1d2
    iget v1, v0, Lcom/android/server/wm/DisplayRotation;->mRotation:I

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/DisplayRotation;->startRemoteRotation(II)V

    return v3
.end method

.method public final updateSettings()Z
    .registers 10

    .line 1477
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1480
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1485
    :try_start_9
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v2

    const/4 v3, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_14

    move v2, v5

    goto :goto_1a

    .line 1487
    :cond_14
    const-string v2, "show_rotation_suggestions"

    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 1491
    :goto_1a
    iget v6, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    if-eq v6, v2, :cond_24

    .line 1492
    iput v2, p0, Lcom/android/server/wm/DisplayRotation;->mShowRotationSuggestions:I

    move v2, v4

    goto :goto_25

    :catchall_22
    move-exception p0

    goto :goto_6a

    :cond_24
    move v2, v5

    .line 1497
    :goto_25
    const-string v6, "user_rotation"

    invoke-static {v0, v6, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    .line 1500
    iget v7, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    if-eq v7, v6, :cond_33

    .line 1501
    iput v6, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotation:I

    move v6, v4

    goto :goto_34

    :cond_33
    move v6, v5

    .line 1505
    :goto_34
    const-string v7, "accelerometer_rotation_angles"

    const/4 v8, -0x1

    invoke-static {v0, v7, v8, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    .line 1507
    iget v8, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationAngles:I

    if-eq v8, v7, :cond_42

    .line 1508
    iput v7, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationAngles:I

    move v6, v4

    .line 1513
    :cond_42
    const-string v7, "accelerometer_rotation"

    .line 1512
    invoke-static {v0, v7, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_4c

    move v7, v5

    goto :goto_4d

    :cond_4c
    move v7, v4

    .line 1516
    :goto_4d
    iget v8, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    if-eq v8, v7, :cond_55

    .line 1517
    iput v7, p0, Lcom/android/server/wm/DisplayRotation;->mUserRotationMode:I

    move v2, v4

    move v6, v2

    :cond_55
    if-eqz v2, :cond_5a

    .line 1523
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListenerLw()V

    .line 1526
    :cond_5a
    const-string v2, "camera_autorotate"

    invoke-static {v0, v2, v5, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1529
    iget v2, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    if-eq v2, v0, :cond_67

    .line 1530
    iput v0, p0, Lcom/android/server/wm/DisplayRotation;->mCameraRotationMode:I

    goto :goto_68

    :cond_67
    move v4, v6

    .line 1533
    :goto_68
    monitor-exit v1

    return v4

    :goto_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_9 .. :try_end_6b} :catchall_22

    throw p0
.end method

.method public updateUserDependentConfiguration(Landroid/content/res/Resources;)V
    .registers 3

    const v0, 0x1110026

    .line 382
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayRotation;->mAllowSeamlessRotationDespiteNavBarMoving:Z

    return-void
.end method

.method public uptimeMillis()J
    .registers 3

    .line 1702
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public useDefaultSettingsProvider()Z
    .registers 1

    .line 373
    iget-boolean p0, p0, Lcom/android/server/wm/DisplayRotation;->isDefaultDisplay:Z

    return p0
.end method
