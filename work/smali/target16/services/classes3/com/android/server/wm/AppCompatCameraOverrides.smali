.class public Lcom/android/server/wm/AppCompatCameraOverrides;
.super Ljava/lang/Object;
.source "AppCompatCameraOverrides.java"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAllowMinAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mAppCompatCameraOverridesState:Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;

.field public final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

.field public final mCameraCompatAllowForceRotationOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mCameraCompatAllowOrientationTreatmentOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mCameraCompatAllowRefreshOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mCameraCompatEnableRefreshViaPauseOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;)V
    .registers 6

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 97
    iput-object p2, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 98
    new-instance p1, Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;

    invoke-direct {p1}, Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mAppCompatCameraOverridesState:Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;

    .line 99
    const-string p1, "android.window.PROPERTY_COMPAT_ALLOW_MIN_ASPECT_RATIO_OVERRIDE"

    invoke-virtual {p3, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mAllowMinAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 102
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/server/wm/AppCompatCameraOverrides$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/server/wm/AppCompatCameraOverrides$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    .line 101
    invoke-static {p1}, Lcom/android/server/wm/AppCompatUtils;->asLazy(Ljava/util/function/BooleanSupplier;)Ljava/util/function/BooleanSupplier;

    move-result-object p1

    .line 104
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/wm/AppCompatCameraOverrides$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/android/server/wm/AppCompatCameraOverrides$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    invoke-static {v0}, Lcom/android/server/wm/AppCompatUtils;->asLazy(Ljava/util/function/BooleanSupplier;)Ljava/util/function/BooleanSupplier;

    move-result-object v0

    .line 107
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/AppCompatCameraOverrides$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lcom/android/server/wm/AppCompatCameraOverrides$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    .line 106
    invoke-static {v1}, Lcom/android/server/wm/AppCompatUtils;->asLazy(Ljava/util/function/BooleanSupplier;)Ljava/util/function/BooleanSupplier;

    move-result-object p2

    .line 109
    const-string v1, "android.window.PROPERTY_CAMERA_COMPAT_ALLOW_REFRESH"

    invoke-virtual {p3, v1, p2}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mCameraCompatAllowRefreshOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 112
    const-string v1, "android.window.PROPERTY_CAMERA_COMPAT_ENABLE_REFRESH_VIA_PAUSE"

    invoke-virtual {p3, v1, p2}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mCameraCompatEnableRefreshViaPauseOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 115
    const-string p2, "android.window.PROPERTY_CAMERA_COMPAT_ALLOW_FORCE_ROTATION"

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mCameraCompatAllowForceRotationOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 118
    const-string p1, "android.window.PROPERTY_CAMERA_COMPAT_ALLOW_SIMULATE_REQUESTED_ORIENTATION"

    invoke-virtual {p3, p1, v0}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mCameraCompatAllowOrientationTreatmentOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    return-void
.end method


# virtual methods
.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .registers 5

    const-wide v0, 0x10800000027L

    .line 278
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldForceRotateForCameraCompat()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000028L

    .line 280
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldRefreshActivityForCameraCompat()Z

    move-result v2

    .line 279
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000029L

    .line 282
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldRefreshActivityViaPauseForCameraCompat()Z

    move-result v2

    .line 281
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000030L

    .line 284
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldApplyCameraCompatSimReqOrientationTreatment()Z

    move-result p0

    .line 283
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    return-void
.end method

.method public getActivityRefreshState()I
    .registers 1

    .line 242
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mAppCompatCameraOverridesState:Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;

    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;->-$$Nest$fgetmActivityRefreshState(Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;)I

    move-result p0

    return p0
.end method

.method public isCameraCompatSplitScreenAspectRatioAllowed()Z
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->isCameraCompatSplitScreenAspectRatioEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 274
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldCreateAppCompatDisplayInsets()Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isOverrideMinAspectRatioForCameraEnabled()Z
    .registers 4

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mAllowMinAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v1, 0x13680faa

    .line 139
    invoke-static {p0, v1, v2}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result p0

    .line 138
    invoke-virtual {v0, p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z

    move-result p0

    return p0
.end method

.method public isOverrideOrientationOnlyForCameraEnabled()Z
    .registers 3

    .line 234
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v0, 0xfd28b98

    invoke-static {p0, v0, v1}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result p0

    return p0
.end method

.method public setActivityRefreshState(I)V
    .registers 2

    .line 250
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mAppCompatCameraOverridesState:Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;

    invoke-static {p0, p1}, Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;->-$$Nest$fputmActivityRefreshState(Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;I)V

    return-void
.end method

.method public setIsRefreshRequested(Z)V
    .registers 2

    .line 265
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mAppCompatCameraOverridesState:Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;

    invoke-static {p0, p1}, Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;->-$$Nest$fputmIsRefreshRequested(Lcom/android/server/wm/AppCompatCameraOverrides$AppCompatCameraOverridesState;Z)V

    return-void
.end method

.method public shouldApplyCameraCompatSimReqOrientationTreatment()Z
    .registers 2

    .line 209
    sget-object v0, Landroid/window/DesktopModeFlags;->ENABLE_CAMERA_COMPAT_SIMULATE_REQUESTED_ORIENTATION:Landroid/window/DesktopModeFlags;

    invoke-virtual {v0}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 210
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldEnableCameraCompatSimulateRequestedOrientationTreatmentForApp()Z

    move-result v0

    if-nez v0, :cond_14

    .line 211
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatCameraOverrides;->shouldForceEnableCameraCompatSimulateRequestedOrientationTreatment()Z

    move-result p0

    if-eqz p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldEnableCameraCompatSimulateRequestedOrientationTreatmentForApp()Z
    .registers 4

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 216
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->isCameraCompatSimulateRequestedOrientationTreatmentEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mCameraCompatAllowOrientationTreatmentOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v1, 0x17bbfc67

    .line 218
    invoke-static {p0, v1, v2}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptOutOverrideAndProperty(Z)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldForceEnableCameraCompatSimulateRequestedOrientationTreatment()Z
    .registers 1

    .line 229
    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 230
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->isCameraCompatSimReqOrientationTreatmentForceEnabled()Z

    move-result p0

    return p0
.end method

.method public shouldForceRotateForCameraCompat()Z
    .registers 4

    .line 190
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mCameraCompatAllowForceRotationOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v1, 0xfbbb1dc

    .line 191
    invoke-static {p0, v1, v2}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result p0

    .line 190
    invoke-virtual {v0, p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptOutOverrideAndProperty(Z)Z

    move-result p0

    return p0
.end method

.method public shouldRefreshActivityForCameraCompat()Z
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mCameraCompatAllowRefreshOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v1, 0xfc0f74b

    .line 156
    invoke-static {p0, v1, v2}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result p0

    .line 155
    invoke-virtual {v0, p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptOutOverrideAndProperty(Z)Z

    move-result p0

    return p0
.end method

.method public shouldRefreshActivityViaPauseForCameraCompat()Z
    .registers 4

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mCameraCompatEnableRefreshViaPauseOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatCameraOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v1, 0xfc0ec12

    .line 175
    invoke-static {p0, v1, v2}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result p0

    .line 174
    invoke-virtual {v0, p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOverrideAndProperty(Z)Z

    move-result p0

    return p0
.end method
