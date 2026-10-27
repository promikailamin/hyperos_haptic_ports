.class public Lcom/android/server/wm/AppCompatCameraPolicy;
.super Ljava/lang/Object;
.source "AppCompatCameraPolicy.java"


# instance fields
.field final mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

.field final mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

.field public final mDisplayRotationPolicy:Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;

.field public final mSimReqOrientationPolicy:Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 10

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p2}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->isPolicyEnabled(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    .line 57
    invoke-static {p2}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->isPolicyEnabled(Lcom/android/server/wm/DisplayContent;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    if-eqz v1, :cond_11

    goto :goto_1a

    .line 73
    :cond_11
    iput-object v2, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationPolicy:Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;

    .line 74
    iput-object v2, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mSimReqOrientationPolicy:Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;

    .line 75
    iput-object v2, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 76
    iput-object v2, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    return-void

    .line 59
    :cond_1a
    :goto_1a
    new-instance v3, Lcom/android/server/wm/AppCompatCameraStateSource;

    invoke-direct {v3}, Lcom/android/server/wm/AppCompatCameraStateSource;-><init>()V

    .line 61
    new-instance v4, Lcom/android/server/wm/CameraStateMonitor;

    iget-object v5, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v4, p2, v5, v3}, Lcom/android/server/wm/CameraStateMonitor;-><init>(Lcom/android/server/wm/DisplayContent;Landroid/os/Handler;Lcom/android/server/wm/AppCompatCameraStatePolicy;)V

    iput-object v4, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 63
    new-instance v5, Lcom/android/server/wm/ActivityRefresher;

    iget-object v6, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v5, p1, v6}, Lcom/android/server/wm/ActivityRefresher;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    if-eqz v0, :cond_39

    .line 65
    new-instance p1, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;

    invoke-direct {p1, p2, v4, v3, v5}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/CameraStateMonitor;Lcom/android/server/wm/AppCompatCameraStateSource;Lcom/android/server/wm/ActivityRefresher;)V

    goto :goto_3a

    :cond_39
    move-object p1, v2

    .line 67
    :goto_3a
    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationPolicy:Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;

    if-eqz v1, :cond_43

    .line 69
    new-instance v2, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;

    invoke-direct {v2, p2, v4, v3, v5}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/CameraStateMonitor;Lcom/android/server/wm/AppCompatCameraStateSource;Lcom/android/server/wm/ActivityRefresher;)V

    .line 71
    :cond_43
    iput-object v2, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mSimReqOrientationPolicy:Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;

    return-void
.end method

.method public static getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;
    .registers 1

    .line 89
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_7

    .line 90
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCameraCompatMinAspectRatio(Lcom/android/server/wm/ActivityRecord;)F
    .registers 4

    .line 268
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_9

    return v1

    .line 273
    :cond_9
    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationPolicy:Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;

    if-eqz v2, :cond_12

    .line 274
    invoke-virtual {v2, p0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->getCameraCompatAspectRatio(Lcom/android/server/wm/ActivityRecord;)F

    move-result v2

    goto :goto_13

    :cond_12
    move v2, v1

    .line 276
    :goto_13
    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mSimReqOrientationPolicy:Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;

    if-eqz v0, :cond_1b

    .line 277
    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->getCameraCompatAspectRatio(Lcom/android/server/wm/ActivityRecord;)F

    move-result v1

    .line 279
    :cond_1b
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static isActivityEligibleForOrientationOverride(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 134
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 135
    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationPolicy:Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;

    if-eqz v0, :cond_12

    .line 137
    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->isActivityEligibleForOrientationOverride(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5

    .line 246
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 250
    :cond_8
    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationPolicy:Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;

    const/4 v3, 0x1

    if-eqz v2, :cond_13

    .line 252
    invoke-virtual {v2, p0, v3}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_13
    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mSimReqOrientationPolicy:Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;

    if-eqz v0, :cond_1e

    .line 256
    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_1e

    :cond_1d
    return v3

    :cond_1e
    return v1
.end method

.method public static isFreeformLetterboxingForCameraAllowed(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 216
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 220
    :cond_8
    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mSimReqOrientationPolicy:Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;

    if-eqz v0, :cond_14

    .line 222
    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->isFreeformLetterboxingForCameraAllowed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v1
.end method

.method public static isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 151
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 152
    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationPolicy:Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;

    if-eqz v0, :cond_12

    .line 154
    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static onActivityConfigurationChanging(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 4

    .line 101
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 102
    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    if-eqz v0, :cond_d

    .line 103
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/ActivityRefresher;->onActivityConfigurationChanging(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    :cond_d
    return-void
.end method

.method public static onActivityRefreshed(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 81
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 82
    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    if-eqz v0, :cond_d

    .line 83
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRefresher;->onActivityRefreshed(Lcom/android/server/wm/ActivityRecord;)V

    :cond_d
    return-void
.end method

.method public static onActivityRelaunching(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 115
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 116
    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    if-eqz v0, :cond_d

    .line 117
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRefresher;->onActivityRelaunching(Lcom/android/server/wm/ActivityRecord;)V

    :cond_d
    return-void
.end method

.method public static shouldCameraCompatControlAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 227
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 231
    :cond_8
    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationPolicy:Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;

    if-eqz v2, :cond_12

    .line 233
    invoke-virtual {v2, p0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->shouldCameraCompatControlAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_12
    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mSimReqOrientationPolicy:Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;

    if-eqz v0, :cond_1e

    .line 236
    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->shouldCameraCompatControlAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_1e

    :cond_1c
    const/4 p0, 0x1

    return p0

    :cond_1e
    return v1
.end method

.method public static shouldCameraCompatControlOrientation(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 202
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getAppCompatCameraPolicy(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatCameraPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 206
    :cond_8
    iget-object v2, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationPolicy:Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;

    if-eqz v2, :cond_12

    .line 208
    invoke-virtual {v2, p0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->shouldCameraCompatControlOrientation(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-nez v2, :cond_1c

    :cond_12
    iget-object v0, v0, Lcom/android/server/wm/AppCompatCameraPolicy;->mSimReqOrientationPolicy:Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;

    if-eqz v0, :cond_1e

    .line 211
    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->shouldCameraCompatControlOrientation(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_1e

    :cond_1c
    const/4 p0, 0x1

    return p0

    :cond_1e
    return v1
.end method

.method public static shouldOverrideMinAspectRatioForCamera(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 304
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 305
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object p0

    .line 306
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraOverrides;->isOverrideMinAspectRatioForCameraEnabled()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationPolicy:Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;

    if-eqz v0, :cond_7

    .line 171
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->dispose()V

    .line 173
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mSimReqOrientationPolicy:Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;

    if-eqz v0, :cond_e

    .line 174
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->dispose()V

    .line 176
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    if-eqz p0, :cond_15

    .line 177
    invoke-virtual {p0}, Lcom/android/server/wm/CameraStateMonitor;->stopListeningToCameraState()V

    :cond_15
    return-void
.end method

.method public getOrientation()I
    .registers 1

    .line 195
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationPolicy:Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;

    if-eqz p0, :cond_9

    .line 196
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->getOrientation()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public getSummaryForDisplayRotationHistoryRecord()Ljava/lang/String;
    .registers 1

    .line 261
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationPolicy:Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;

    if-eqz p0, :cond_9

    .line 262
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->getSummaryForDisplayRotationHistoryRecord()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasDisplayRotationPolicy()Z
    .registers 1

    .line 182
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationPolicy:Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public onScreenRotationAnimationFinished()V
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationPolicy:Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;

    if-eqz p0, :cond_7

    .line 129
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->onScreenRotationAnimationFinished()V

    :cond_7
    return-void
.end method

.method public start()V
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mDisplayRotationPolicy:Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;

    if-eqz v0, :cond_7

    .line 159
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->start()V

    .line 161
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mSimReqOrientationPolicy:Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;

    if-eqz v0, :cond_e

    .line 162
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraSimReqOrientationPolicy;->start()V

    .line 164
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    if-eqz p0, :cond_15

    .line 165
    invoke-virtual {p0}, Lcom/android/server/wm/CameraStateMonitor;->startListeningToCameraState()V

    :cond_15
    return-void
.end method
