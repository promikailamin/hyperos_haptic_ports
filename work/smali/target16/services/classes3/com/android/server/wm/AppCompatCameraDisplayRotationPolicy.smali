.class public final Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;
.super Ljava/lang/Object;
.source "AppCompatCameraDisplayRotationPolicy.java"

# interfaces
.implements Lcom/android/server/wm/AppCompatCameraStatePolicy;
.implements Lcom/android/server/wm/ActivityRefresher$Evaluator;


# instance fields
.field public final mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

.field public final mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

.field public final mCameraStateNotifier:Lcom/android/server/wm/AppCompatCameraStateSource;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mIsRunning:Z

.field public mLastReportedOrientation:I

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$PSgdYEGE7v1gClAckJvT-gczTgs(Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;ILjava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->lambda$showToast$1(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZUawjyNmJWZfIy5ybDCiixzHwWc(Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->lambda$showToast$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/CameraStateMonitor;Lcom/android/server/wm/AppCompatCameraStateSource;Lcom/android/server/wm/ActivityRefresher;)V
    .registers 6

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 80
    iput v0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mLastReportedOrientation:I

    .line 94
    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 95
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 96
    iput-object p2, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 97
    iput-object p3, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mCameraStateNotifier:Lcom/android/server/wm/AppCompatCameraStateSource;

    .line 98
    iput-object p4, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    return-void
.end method

.method public static isPolicyEnabled(Lcom/android/server/wm/DisplayContent;)Z
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 122
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->isCameraCompatForceRotateTreatmentEnabledAtBuildTime()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public canCameraBeClosed(Ljava/lang/String;Lcom/android/server/wm/Task;)Z
    .registers 7

    .line 391
    invoke-virtual {p0, p2}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->getTopActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    const/4 v0, 0x1

    if-nez p2, :cond_8

    return v0

    .line 397
    :cond_8
    monitor-enter p0

    .line 398
    :try_start_9
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->isActivityForCameraIdRefreshing(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 399
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    const/4 p2, 0x0

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v1, p1

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v2, -0x3f6e7c966e13c22cL    # -1120.8530957138764

    invoke-static {p1, v2, v3, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_30

    :catchall_2e
    move-exception p1

    goto :goto_34

    .line 403
    :cond_30
    :goto_30
    monitor-exit p0

    return p2

    .line 405
    :cond_32
    monitor-exit p0

    return v0

    :goto_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_9 .. :try_end_35} :catchall_2e

    throw p1
.end method

.method public dispose()V
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mCameraStateNotifier:Lcom/android/server/wm/AppCompatCameraStateSource;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppCompatCameraStateSource;->removeCameraStatePolicy(Lcom/android/server/wm/AppCompatCameraStatePolicy;)V

    .line 110
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRefresher;->removeEvaluator(Lcom/android/server/wm/ActivityRefresher$Evaluator;)V

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mIsRunning:Z

    return-void
.end method

.method public getCameraCompatAspectRatio(Lcom/android/server/wm/ActivityRecord;)F
    .registers 2

    .line 0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getOrientation()I
    .registers 3

    .line 139
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->getOrientationInternal()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mLastReportedOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_d

    .line 141
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->rememberOverriddenOrientationIfNeeded()V

    goto :goto_10

    .line 143
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->restoreOverriddenOrientationIfNeeded()V

    .line 145
    :goto_10
    iget p0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mLastReportedOrientation:I

    return p0
.end method

.method public final declared-synchronized getOrientationInternal()I
    .registers 8

    monitor-enter p0

    .line 155
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->isTreatmentEnabledForDisplay()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_6c

    const/4 v1, -0x1

    if-nez v0, :cond_a

    .line 156
    monitor-exit p0

    return v1

    .line 158
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_6c

    if-nez v3, :cond_19

    .line 161
    monitor-exit p0

    return v1

    .line 164
    :cond_19
    :try_start_19
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_22

    move v1, v2

    goto :goto_23

    :cond_22
    move v1, v3

    .line 166
    :goto_23
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getNaturalOrientation()I

    move-result v4

    if-ne v4, v2, :cond_2f

    move v4, v2

    goto :goto_30

    :cond_2f
    move v4, v3

    :goto_30
    if-eqz v1, :cond_34

    if-nez v4, :cond_3a

    :cond_34
    if-nez v1, :cond_39

    if-nez v4, :cond_39

    goto :goto_3a

    :cond_39
    move v2, v3

    .line 181
    :cond_3a
    :goto_3a
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v3, v5, v3

    if-eqz v3, :cond_6e

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v5, v0

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v5, v0, v1, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v4, -0x253274aca634cbf9L    # -2.5598881405145372E129

    const/16 v1, 0xf1

    invoke-static {v3, v4, v5, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    :try_end_6b
    .catchall {:try_start_19 .. :try_end_6b} :catchall_6c

    goto :goto_6e

    :catchall_6c
    move-exception v0

    goto :goto_70

    .line 187
    :cond_6e
    :goto_6e
    monitor-exit p0

    return v2

    :goto_70
    :try_start_70
    monitor-exit p0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6c

    throw v0
.end method

.method public getSummaryForDisplayRotationHistoryRecord()Ljava/lang/String;
    .registers 4

    .line 208
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->isTreatmentEnabledForDisplay()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 209
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mLastReportedOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mLastReportedOrientation:I

    .line 213
    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " topActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2a

    .line 215
    const-string v2, "null"

    goto :goto_2c

    :cond_2a
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    :goto_2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isTreatmentEnabledForActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "mCameraStateMonitor="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4c

    .line 208
    :cond_4a
    const-string v0, ""

    .line 220
    :goto_4c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisplayRotationCompatPolicy{ isTreatmentEnabledForDisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->isTreatmentEnabledForDisplay()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTopActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;
    .registers 3

    if-eqz p1, :cond_9

    const/4 p0, 0x1

    const/4 v0, 0x0

    .line 448
    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public isActivityEligibleForOrientationOverride(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 288
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->isTreatmentEnabledForDisplay()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    .line 289
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p0

    if-eqz p0, :cond_1a

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 290
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object p0

    .line 291
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldForceRotateForCameraCompat()Z

    move-result p0

    if-eqz p0, :cond_1a

    return v0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public final isActivityForCameraIdRefreshing(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .registers 4

    .line 431
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 432
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/CameraStateMonitor;->isCameraWithIdRunningForActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_f

    goto :goto_16

    .line 435
    :cond_f
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRefresher;->isActivityRefreshing(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x0

    return p0
.end method

.method public isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;Z)Z
    .registers 3

    if-eqz p2, :cond_8

    .line 321
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p2

    if-nez p2, :cond_12

    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mCameraStateMonitor:Lcom/android/server/wm/CameraStateMonitor;

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/server/wm/CameraStateMonitor;->isCameraRunningForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final isOrientationOverridden()Z
    .registers 2

    .line 240
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotationReversionController()Lcom/android/server/wm/DisplayRotationReversionController;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayRotationReversionController;->isOverrideActive(I)Z

    move-result p0

    return p0
.end method

.method public isRunning()Z
    .registers 1

    .line 116
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mIsRunning:Z

    return p0
.end method

.method public isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    const/4 v0, 0x1

    .line 305
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p0

    return p0
.end method

.method public final isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;Z)Z
    .registers 3

    if-eqz p1, :cond_2b

    .line 328
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 329
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result p0

    if-eqz p0, :cond_2b

    .line 332
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result p0

    const/4 p2, 0x5

    if-eq p0, p2, :cond_2b

    .line 333
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result p0

    const/16 p2, 0xe

    if-eq p0, p2, :cond_2b

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 334
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object p0

    .line 335
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldForceRotateForCameraCompat()Z

    move-result p0

    if-eqz p0, :cond_2b

    const/4 p0, 0x1

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public final isTreatmentEnabledForDisplay()Z
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->isCameraCompatForceRotateTreatmentEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 283
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 284
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_20

    return v0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$showToast$0(I)V
    .registers 3

    .line 377
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final synthetic lambda$showToast$1(ILjava/lang/String;)V
    .registers 3

    .line 383
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 385
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 383
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 386
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onCameraClosed(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)V
    .registers 7

    .line 411
    invoke-virtual {p0, p2}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->getTopActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_2c

    .line 416
    :cond_7
    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    const/4 v0, 0x0

    aget-boolean p2, p2, v0

    const/4 v0, 0x1

    if-eqz p2, :cond_26

    iget-object p2, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget p2, p2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v1, p2

    sget-object p2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v2, -0x315b1c46ab9c13eL    # -5.250177019236889E293

    invoke-static {p2, v2, v3, v0, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 421
    :cond_26
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p2

    if-eq p2, v0, :cond_2d

    :goto_2c
    return-void

    .line 424
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->recomputeConfigurationForCameraCompatIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 425
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    return-void
.end method

.method public onCameraOpened(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)V
    .registers 5

    .line 341
    invoke-virtual {p0, p2}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->getTopActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_e

    .line 343
    const-string p0, "WindowManager"

    const-string p1, "Camera activity is null in onCameraOpened()."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 349
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1e

    .line 350
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->recomputeConfigurationForCameraCompatIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 351
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    return-void

    .line 356
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p2

    const/4 v0, 0x6

    if-ne p2, v0, :cond_62

    const/4 p2, 0x0

    .line 357
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 358
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 360
    :try_start_34
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 363
    invoke-virtual {v0, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 362
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x1040398

    .line 360
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->showToast(ILjava/lang/String;)V
    :try_end_46
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_34 .. :try_end_46} :catch_47

    return-void

    .line 366
    :catch_47
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    const/4 v0, 0x4

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_62

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v0, 0x7e3137fd9e803b55L    # 7.207031212178502E299

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, v1, p2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_62
    return-void
.end method

.method public onScreenRotationAnimationFinished()V
    .registers 3

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 199
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->isTreatmentEnabledForDisplay()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 200
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_1a

    :cond_14
    const v0, 0x1040397

    .line 203
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->showToast(I)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public final recomputeConfigurationForCameraCompatIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 440
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->shouldRecomputeConfigurationForCameraCompat(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 441
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    :cond_9
    return-void
.end method

.method public final rememberOverriddenOrientationIfNeeded()V
    .registers 5

    .line 245
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->isOrientationOverridden()Z

    move-result v0

    if-nez v0, :cond_30

    .line 246
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotationReversionController()Lcom/android/server/wm/DisplayRotationReversionController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayRotationReversionController;->beforeOverrideApplied(I)V

    .line 248
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_30

    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result p0

    int-to-long v2, p0

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, 0x6ea3d1e42a8736e3L    # 9.170393460826904E224

    invoke-static {p0, v2, v3, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_30
    return-void
.end method

.method public final restoreOverriddenOrientationIfNeeded()V
    .registers 6

    .line 227
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->isOrientationOverridden()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2a

    .line 230
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotationReversionController()Lcom/android/server/wm/DisplayRotationReversionController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayRotationReversionController;->revertOverride(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 232
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, 0x222252167a6e3b68L

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 235
    :cond_26
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-object v2, p0, Lcom/android/server/wm/WindowContainer;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    :cond_2a
    :goto_2a
    return-void
.end method

.method public shouldCameraCompatControlAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldCameraCompatControlOrientation(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    const/4 v0, 0x1

    .line 309
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p0

    return p0
.end method

.method public final shouldOverrideMinAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 468
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v0

    .line 469
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->isOverrideMinAspectRatioForCameraEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 470
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->isCameraRunningAndWindowingModeEligible(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result p0

    if-eqz p0, :cond_14

    return v0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldRecomputeConfigurationForCameraCompat(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 460
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 461
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v0

    .line 462
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->isOverrideOrientationOnlyForCameraEnabled()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 463
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatCameraOverrides;->isCameraCompatSplitScreenAspectRatioAllowed()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 464
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->shouldOverrideMinAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method public shouldRefreshActivity(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 6

    .line 259
    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result p2

    iget-object p3, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 260
    invoke-virtual {p3}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, p3, :cond_12

    move p2, v1

    goto :goto_13

    :cond_12
    move p2, v0

    .line 261
    :goto_13
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->isTreatmentEnabledForDisplay()Z

    move-result p3

    if-eqz p3, :cond_3a

    .line 262
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_3a

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 263
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object p0

    .line 264
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldRefreshActivityForCameraCompat()Z

    move-result p0

    if-eqz p0, :cond_3a

    if-nez p2, :cond_39

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 266
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object p0

    .line 267
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraOverrides;->isCameraCompatSplitScreenAspectRatioAllowed()Z

    move-result p0

    if-eqz p0, :cond_3a

    :cond_39
    return v1

    :cond_3a
    return v0
.end method

.method public showToast(I)V
    .registers 4

    .line 376
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showToast(ILjava/lang/String;)V
    .registers 5

    .line 382
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public start()V
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mCameraStateNotifier:Lcom/android/server/wm/AppCompatCameraStateSource;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppCompatCameraStateSource;->addCameraStatePolicy(Lcom/android/server/wm/AppCompatCameraStatePolicy;)V

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mActivityRefresher:Lcom/android/server/wm/ActivityRefresher;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRefresher;->addEvaluator(Lcom/android/server/wm/ActivityRefresher$Evaluator;)V

    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatCameraDisplayRotationPolicy;->mIsRunning:Z

    return-void
.end method
