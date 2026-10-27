.class public final Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;
.super Ljava/lang/Object;
.source "AppCompatCameraSimReqOrientationPolicy.java"

# interfaces
.implements Lcom/android/server/wm/AppCompatCameraStatePolicy;
.implements Lcom/android/server/wm/ActivityRefresher$Evaluator;


# instance fields
.field public final mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field final mCameraDisplayRotationProvider:Lcom/android/server/wm/AppCompatCameraRotationState;

.field public final mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

.field public final mCameraStateNotifier:Lcom/android/server/wm/AppCompatCameraStateSource;

.field public mIsRunning:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/CameraStateMonitor;Lcom/android/server/wm/AppCompatCameraStateSource;Lcom/android/server/wm/ActivityRefresher;)V
    .registers 6

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v0, p0, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 93
    iput-object p2, p0, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 94
    iput-object p3, p0, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->mCameraStateNotifier:Lcom/android/server/wm/AppCompatCameraStateSource;

    .line 95
    iput-object p4, p0, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    .line 96
    new-instance p2, Lcom/android/server/wm/AppCompatCameraRotationState;

    invoke-direct {p2, p1}, Lcom/android/server/wm/AppCompatCameraRotationState;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object p2, p0, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->mCameraDisplayRotationProvider:Lcom/android/server/wm/AppCompatCameraRotationState;

    return-void
.end method

.method public static getRotationDegreesToEnum(I)I
    .registers 2

    .line 0
    if-eqz p0, :cond_16

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_14

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_12

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_10

    const/4 p0, -0x1

    return p0

    :cond_10
    const/4 p0, 0x3

    return p0

    :cond_12
    const/4 p0, 0x2

    return p0

    :cond_14
    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static getRotationToDegrees(I)I
    .registers 2

    .line 0
    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 p0, -0x1

    return p0

    :cond_d
    const/16 p0, 0x10e

    return p0

    :cond_10
    const/16 p0, 0xb4

    return p0

    :cond_13
    const/16 p0, 0x5a

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method private isActivityForCameraIdRefreshing(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    .line 546
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->isCompatibilityTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 547
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/CameraStateMonitor;->isCameraWithIdRunningForActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_10

    goto :goto_17

    .line 551
    :cond_10
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRefresher;->isActivityRefreshing(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x0

    return p0
.end method

.method public static isPolicyEnabled(Lcom/android/server/wm/DisplayContent;)Z
    .registers 2

    .line 129
    sget-object v0, Landroid/window/DesktopModeFlags;->ENABLE_CAMERA_COMPAT_SIMULATE_REQUESTED_ORIENTATION:Landroid/window/DesktopModeFlags;

    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 130
    invoke-static {v0}, Lcom/android/server/wm/DesktopModeHelper;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1f

    .line 131
    :cond_13
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 133
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->isCameraCompatSimulateRequestedOrientationTreatmentEnabled()Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public canCameraBeClosed(Ljava/lang/String;Lcom/android/server/wm/Task;)Z
    .registers 7

    .line 189
    invoke-virtual {p0, p2}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->getTopActivityFromCameraTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p2, :cond_8

    return v0

    .line 194
    :cond_8
    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->isActivityForCameraIdRefreshing(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 195
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v1, 0x0

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_32

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v2, p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v2, -0x52db8a423db4c2a5L    # -3.1387403959183365E-91

    invoke-static {p1, v2, v3, v0, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_32
    return v1

    :cond_33
    return v0
.end method

.method public dispose()V
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->mCameraStateNotifier:Lcom/android/server/wm/AppCompatCameraStateSource;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppCompatCameraStateSource;->removeCameraStatePolicy(Lcom/android/server/wm/AppCompatCameraStatePolicy;)V

    .line 114
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->mCameraDisplayRotationProvider:Lcom/android/server/wm/AppCompatCameraRotationState;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraRotationState;->dispose()V

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->mIsRunning:Z

    return-void
.end method

.method public getCameraCompatAspectRatio(Lcom/android/server/wm/ActivityRecord;)F
    .registers 2

    .line 424
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->shouldCameraCompatControlAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 425
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getCameraCompatAspectRatio()F

    move-result p0

    return p0

    :cond_f
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public final getCameraCompatibilityInfo(Lcom/android/server/wm/ActivityRecord;)Landroid/content/res/CameraCompatibilityInfo;
    .registers 7

    .line 266
    new-instance v0, Landroid/content/res/CameraCompatibilityInfo$Builder;

    invoke-direct {v0}, Landroid/content/res/CameraCompatibilityInfo$Builder;-><init>()V

    if-eqz p1, :cond_47

    const/4 v1, 0x1

    .line 269
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->isCompatibilityTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_34

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->getDesiredDisplaySandboxForCompat(Lcom/android/server/wm/ActivityRecord;)I

    move-result p1

    .line 275
    invoke-virtual {v0, p1}, Landroid/content/res/CameraCompatibilityInfo$Builder;->setDisplayRotationSandbox(I)Landroid/content/res/CameraCompatibilityInfo$Builder;

    move-result-object v2

    const/4 v4, -0x1

    if-eq p1, v4, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v3

    .line 276
    :goto_1c
    invoke-virtual {v2, v1}, Landroid/content/res/CameraCompatibilityInfo$Builder;->setShouldLetterboxForCameraCompat(Z)Landroid/content/res/CameraCompatibilityInfo$Builder;

    move-result-object v1

    .line 277
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->getCameraRotationFromSandboxedDisplayRotation(I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/content/res/CameraCompatibilityInfo$Builder;->setRotateAndCropRotation(I)Landroid/content/res/CameraCompatibilityInfo$Builder;

    move-result-object p1

    .line 279
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->shouldOverrideSensorOrientation()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/res/CameraCompatibilityInfo$Builder;->setShouldOverrideSensorOrientation(Z)Landroid/content/res/CameraCompatibilityInfo$Builder;

    move-result-object p0

    .line 280
    invoke-virtual {p0, v3}, Landroid/content/res/CameraCompatibilityInfo$Builder;->setShouldAllowTransformInverseDisplay(Z)Landroid/content/res/CameraCompatibilityInfo$Builder;

    goto :goto_47

    .line 281
    :cond_34
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->isExternalDisplaySandboxEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 283
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->mCameraDisplayRotationProvider:Lcom/android/server/wm/AppCompatCameraRotationState;

    .line 284
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraRotationState;->getCameraDeviceRotation()I

    move-result p0

    .line 283
    invoke-virtual {v0, p0}, Landroid/content/res/CameraCompatibilityInfo$Builder;->setDisplayRotationSandbox(I)Landroid/content/res/CameraCompatibilityInfo$Builder;

    move-result-object p0

    .line 285
    invoke-virtual {p0, v3}, Landroid/content/res/CameraCompatibilityInfo$Builder;->setShouldAllowTransformInverseDisplay(Z)Landroid/content/res/CameraCompatibilityInfo$Builder;

    .line 289
    :cond_47
    :goto_47
    invoke-virtual {v0}, Landroid/content/res/CameraCompatibilityInfo$Builder;->build()Landroid/content/res/CameraCompatibilityInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getCameraRotationFromSandboxedDisplayRotation(I)I
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return v0

    .line 322
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->mCameraDisplayRotationProvider:Lcom/android/server/wm/AppCompatCameraRotationState;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraRotationState;->getCameraDeviceRotation()I

    move-result v0

    .line 329
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->shouldOverrideSensorOrientation()Z

    move-result p0

    if-eqz p0, :cond_13

    const/16 p0, 0x10e

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    .line 330
    :goto_14
    invoke-static {p1}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->getRotationToDegrees(I)I

    move-result p1

    .line 331
    invoke-static {v0}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->getRotationToDegrees(I)I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, p0

    add-int/lit16 p1, p1, 0x168

    .line 334
    rem-int/lit16 p1, p1, 0x168

    invoke-static {p1}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->getRotationDegreesToEnum(I)I

    move-result p0

    return p0
.end method

.method public final getDesiredDisplaySandboxForCompat(Lcom/android/server/wm/ActivityRecord;)I
    .registers 3

    .line 297
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    const/4 v0, 0x2

    if-ne p0, v0, :cond_d

    return p1

    :cond_d
    const/4 p0, -0x1

    return p0
.end method

.method public final getTopActivityFromCameraTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    if-eqz p1, :cond_8

    const/4 p0, 0x0

    .line 540
    invoke-virtual {p1, p0, p0}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public final haveCameraCompatAttributesChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 9

    .line 157
    iget-object p0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object p1, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/app/WindowConfiguration;->diff(Landroid/app/WindowConfiguration;Z)J

    move-result-wide p0

    const-wide/16 v0, 0x2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    move v0, p2

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    const-wide/16 v4, 0x80

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1f

    move p0, p2

    goto :goto_20

    :cond_1f
    move p0, v1

    :goto_20
    if-nez v0, :cond_26

    if-eqz p0, :cond_25

    goto :goto_26

    :cond_25
    return v1

    :cond_26
    :goto_26
    return p2
.end method

.method public isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 398
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v0

    .line 399
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldApplyCameraCompatSimReqOrientationTreatment()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 402
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 403
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->isWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 404
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->isCameraRunningForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    const/4 p0, 0x0

    return p0
.end method

.method public isCompatibilityTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;Z)Z
    .registers 4

    .line 486
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v0

    .line 487
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldApplyCameraCompatSimReqOrientationTreatment()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 490
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 491
    invoke-virtual {v0, p1}, Lcom/android/server/wm/CameraStateMonitor;->isCameraRunningForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 492
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->isOrientationEligibleForTreatment(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p2

    if-eqz p2, :cond_32

    .line 493
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->isWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_32

    .line 495
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result p0

    if-nez p0, :cond_32

    const/4 p0, 0x1

    return p0

    :cond_32
    const/4 p0, 0x0

    return p0
.end method

.method public isExternalDisplaySandboxEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 7

    .line 517
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 518
    invoke-virtual {v0, p1}, Lcom/android/server/wm/CameraStateMonitor;->isCameraRunningForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    const/4 v0, 0x1

    .line 522
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->isCompatibilityTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_42

    .line 526
    :cond_11
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 527
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldApplyCameraCompatSimReqOrientationTreatment()Z

    move-result v2

    .line 528
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3c

    .line 532
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->mCameraDisplayRotationProvider:Lcom/android/server/wm/AppCompatCameraRotationState;

    .line 533
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraRotationState;->getCameraDeviceRotation()I

    move-result p0

    if-eq p1, p0, :cond_3c

    move p0, v0

    goto :goto_3d

    :cond_3c
    move p0, v1

    :goto_3d
    if-eqz v2, :cond_42

    if-eqz p0, :cond_42

    return v0

    :cond_42
    :goto_42
    return v1
.end method

.method public isFreeformLetterboxingForCameraAllowed(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public final isOrientationEligibleForTreatment(Lcom/android/server/wm/ActivityRecord;Z)Z
    .registers 3

    .line 500
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result p0

    if-eqz p2, :cond_8

    if-eqz p0, :cond_19

    .line 504
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result p0

    const/4 p2, 0x5

    if-eq p0, p2, :cond_19

    .line 505
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedOrientation()I

    move-result p0

    const/16 p1, 0xe

    if-eq p0, p1, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public isRunning()Z
    .registers 1

    .line 120
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->mIsRunning:Z

    return p0
.end method

.method public final isWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 409
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const/4 p0, 0x1

    return p0
.end method

.method public onCameraClosed(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)V
    .registers 3

    .line 208
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->updateAndDispatchCameraConfiguration(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public onCameraOpened(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)V
    .registers 5

    .line 168
    invoke-virtual {p0, p2}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->getTopActivityFromCameraTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_17

    const/4 v1, 0x0

    .line 176
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->isCompatibilityTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v1

    if-nez v1, :cond_14

    .line 178
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->isExternalDisplaySandboxEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_17

    .line 182
    :cond_14
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->updateAndDispatchCameraConfiguration(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public shouldCameraCompatControlAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 418
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->getCameraCompatibilityInfo(Lcom/android/server/wm/ActivityRecord;)Landroid/content/res/CameraCompatibilityInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/CameraCompatibilityInfo;->shouldLetterboxForCameraCompat()Z

    move-result p0

    if-eqz p0, :cond_18

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 419
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object p0

    .line 420
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraOverrides;->isOverrideMinAspectRatioForCameraEnabled()Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public shouldCameraCompatControlOrientation(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 394
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public final shouldOverrideSensorOrientation()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldRefreshActivity(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 6

    const/4 v0, 0x1

    .line 141
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->isCompatibilityTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v1

    if-nez v1, :cond_d

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->isExternalDisplaySandboxEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 144
    :cond_d
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->haveCameraCompatAttributesChanged(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result p0

    if-eqz p0, :cond_14

    return v0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public start()V
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->mCameraStateNotifier:Lcom/android/server/wm/AppCompatCameraStateSource;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppCompatCameraStateSource;->addCameraStatePolicy(Lcom/android/server/wm/AppCompatCameraStatePolicy;)V

    .line 104
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->mCameraDisplayRotationProvider:Lcom/android/server/wm/AppCompatCameraRotationState;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraRotationState;->start()V

    const/4 v0, 0x1

    .line 105
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->mIsRunning:Z

    return-void
.end method

.method public final updateAndDispatchCameraConfiguration(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)V
    .registers 5

    .line 213
    invoke-virtual {p0, p2}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->getTopActivityFromCameraTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 215
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    :cond_9
    const/4 v1, 0x1

    if-eqz p2, :cond_f

    .line 218
    invoke-virtual {p2, v1}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    :cond_f
    if-eqz p1, :cond_1e

    .line 221
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->updateCompatibilityInfo(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_1e

    .line 225
    iget-object p1, p0, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRefresher;->requestRefresh(Lcom/android/server/wm/ActivityRecord;)V

    :cond_1e
    if-eqz v0, :cond_28

    .line 230
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    .line 232
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRefresher;->refreshActivityIfEnabled(Lcom/android/server/wm/ActivityRecord;)V

    :cond_28
    return-void
.end method

.method public final updateCompatibilityInfo(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 7

    .line 239
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_46

    iget-object v0, p1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_c

    goto :goto_46

    .line 246
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 247
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 248
    invoke-virtual {p0, p2}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->getCameraCompatibilityInfo(Lcom/android/server/wm/ActivityRecord;)Landroid/content/res/CameraCompatibilityInfo;

    move-result-object p0

    iput-object p0, v0, Landroid/content/res/CompatibilityInfo;->cameraCompatibilityInfo:Landroid/content/res/CameraCompatibilityInfo;

    .line 251
    :try_start_1a
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p0

    iget-object p2, p1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, p2, v0}, Landroid/app/IApplicationThread;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_25} :catch_2c

    .line 259
    iget-object p0, v0, Landroid/content/res/CompatibilityInfo;->cameraCompatibilityInfo:Landroid/content/res/CameraCompatibilityInfo;

    invoke-static {p0}, Landroid/content/res/CameraCompatibilityInfo;->isCameraCompatModeActive(Landroid/content/res/CameraCompatibilityInfo;)Z

    move-result p0

    return p0

    .line 254
    :catch_2c
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 p2, 0x3

    aget-boolean p0, p0, p2

    if-eqz p0, :cond_45

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0x69ff8311ee8c3c17L    # 3.859339337425301E202

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_45
    return v1

    .line 240
    :cond_46
    :goto_46
    const-string p0, "WindowManager"

    const-string p1, "Insufficient app information. Cannot revert display rotation sandboxing."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
