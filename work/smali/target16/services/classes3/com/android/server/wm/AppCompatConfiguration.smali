.class public final Lcom/android/server/wm/AppCompatConfiguration;
.super Ljava/lang/Object;
.source "AppCompatConfiguration.java"


# instance fields
.field public final mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

.field public mCameraCompatAspectRatio:F

.field public final mContext:Landroid/content/Context;

.field public mDefaultMinAspectRatioForUnresizableApps:F

.field public mDefaultPositionForHorizontalReachability:I

.field public mDefaultPositionForVerticalReachability:I

.field public final mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

.field public mFixedOrientationLetterboxAspectRatio:F

.field public mIsAutomaticReachabilityInBookModeEnabled:Z

.field public mIsCameraCompatRefreshCycleThroughStopEnabled:Z

.field public final mIsCameraCompatSimulateRequestedOrientationTreatmentEnabled:Z

.field public mIsCameraCompatSimulateRequestedOrientationTreatmentForceEnabled:Z

.field public final mIsCameraCompatSplitScreenAspectRatioEnabled:Z

.field public mIsCameraCompatTreatmentRefreshEnabled:Z

.field public mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

.field public mIsEducationEnabled:Z

.field public mIsHorizontalReachabilityEnabled:Z

.field public final mIsPolicyForIgnoringRequestedOrientationEnabled:Z

.field public mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

.field public mIsVerticalReachabilityEnabled:Z

.field public mLetterboxActivityCornersRadius:I

.field public mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

.field public mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

.field public final mLetterboxBackgroundType:I

.field public mLetterboxBackgroundTypeOverride:I

.field public mLetterboxBackgroundWallpaperBlurRadiusPx:I

.field public mLetterboxBackgroundWallpaperDarkScrimAlpha:F

.field public mLetterboxBookModePositionMultiplier:F

.field public mLetterboxHorizontalPositionMultiplier:F

.field public mLetterboxTabletopModePositionMultiplier:F

.field public mLetterboxVerticalPositionMultiplier:F

.field public final mThinLetterboxHeightPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

.field public final mThinLetterboxWidthPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

.field public mTranslucentLetterboxingOverrideEnabled:Z

.field public mUserAppAspectRatioFullscreenOverrideEnabled:Z

.field public mUserAppAspectRatioSettingsOverrideEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$1T9-bd9hU1PBwmmR2Ukw6jXdOCc(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 2

    const/4 v0, 0x1

    .line 337
    invoke-static {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BiemjI3Bs0jz1dJh3ts4y4kSTFo(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 2

    const/4 v0, 0x0

    .line 335
    invoke-static {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KQ2bkE3MuAlvpzaFzr-XNi9YiUM(ZLjava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    .line 1104
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p0, :cond_8

    const/4 p0, 0x2

    goto :goto_9

    :cond_8
    const/4 p0, 0x1

    :goto_9
    sub-int/2addr p1, p0

    const/4 p0, 0x0

    .line 1103
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Oh5I2_GJ2LhD0pXm_ZTUkNtr-Jw(ZLjava/lang/Integer;)Ljava/lang/Integer;
    .registers 3

    .line 1094
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-eqz p0, :cond_9

    move p0, v0

    goto :goto_a

    :cond_9
    const/4 p0, 0x1

    :goto_a
    add-int/2addr p1, p0

    .line 1093
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PTOq1ckEo7_ZoQCBsa5eR2iH428(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 2

    const/4 v0, 0x1

    .line 339
    invoke-static {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Vaw-d6xHC7DU4IzQJxPTXUI96zU(ZLjava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    .line 1125
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p0, :cond_8

    const/4 p0, 0x2

    goto :goto_9

    :cond_8
    const/4 p0, 0x1

    :goto_9
    sub-int/2addr p1, p0

    const/4 p0, 0x0

    .line 1124
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YGl2W9-CUHlXccr4c-FWxmqxcZA(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 2

    const/4 v0, 0x0

    .line 333
    invoke-static {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$q8CyIDu5FF5I69ki5uRYf3180RY(ZLjava/lang/Integer;)Ljava/lang/Integer;
    .registers 3

    .line 1114
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-eqz p0, :cond_9

    move p0, v0

    goto :goto_a

    :cond_9
    const/4 p0, 0x1

    :goto_a
    add-int/2addr p1, p0

    .line 1113
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 332
    new-instance v0, Lcom/android/server/wm/AppCompatConfigurationPersister;

    new-instance v1, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda2;

    invoke-direct {v3, p1}, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda3;

    invoke-direct {v4, p1}, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda3;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wm/AppCompatConfigurationPersister;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;-><init>(Landroid/content/Context;Lcom/android/server/wm/AppCompatConfigurationPersister;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/AppCompatConfigurationPersister;)V
    .registers 7

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 288
    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundTypeOverride:I

    const v0, 0x3fe38e39

    .line 304
    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mCameraCompatAspectRatio:F

    const/4 v0, 0x1

    .line 308
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatTreatmentRefreshEnabled:Z

    .line 314
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatRefreshCycleThroughStopEnabled:Z

    const/4 v1, 0x0

    .line 321
    iput-boolean v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatSimulateRequestedOrientationTreatmentForceEnabled:Z

    .line 346
    iput-object p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    .line 348
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    .line 350
    invoke-static {p1}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxBackgroundTypeFromConfig(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundType:I

    .line 351
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    .line 353
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050104

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperBlurRadiusPx:I

    .line 355
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050103

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    .line 357
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050107

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppCompatConfiguration;->setLetterboxHorizontalPositionMultiplier(F)V

    .line 359
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105010b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppCompatConfiguration;->setLetterboxVerticalPositionMultiplier(F)V

    .line 361
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050105

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppCompatConfiguration;->setLetterboxBookModePositionMultiplier(F)V

    .line 363
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050108

    .line 364
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    .line 363
    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppCompatConfiguration;->setLetterboxTabletopModePositionMultiplier(F)V

    .line 365
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101fb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsHorizontalReachabilityEnabled:Z

    .line 367
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsVerticalReachabilityEnabled:Z

    .line 369
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    .line 372
    invoke-static {p1, v1}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForHorizontalReachability:I

    .line 374
    invoke-static {p1, v1}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForVerticalReachability:I

    .line 375
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsEducationEnabled:Z

    .line 377
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050106

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/AppCompatConfiguration;->setDefaultMinAspectRatioForUnresizableApps(F)V

    .line 379
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    .line 381
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101f7

    .line 382
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    .line 384
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatSplitScreenAspectRatioEnabled:Z

    .line 386
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101e3

    .line 387
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatSimulateRequestedOrientationTreatmentEnabled:Z

    .line 389
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsPolicyForIgnoringRequestedOrientationEnabled:Z

    .line 392
    new-instance v2, Lcom/android/server/wm/utils/DimenPxIntSupplier;

    const v3, 0x105010a

    invoke-direct {v2, p1, v3}, Lcom/android/server/wm/utils/DimenPxIntSupplier;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mThinLetterboxWidthPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

    .line 394
    new-instance v2, Lcom/android/server/wm/utils/DimenPxIntSupplier;

    const v3, 0x1050109

    invoke-direct {v2, p1, v3}, Lcom/android/server/wm/utils/DimenPxIntSupplier;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mThinLetterboxHeightPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

    .line 397
    iput-object p2, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 398
    invoke-virtual {p2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->start()V

    .line 400
    const-string p2, "window_manager"

    .line 401
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 400
    invoke-static {p2, v2}, Lcom/android/server/wm/SynchedDeviceConfig;->builder(Ljava/lang/String;Ljava/util/concurrent/Executor;)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    move-result-object p2

    .line 404
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 402
    const-string v3, "enable_compat_camera_treatment"

    invoke-virtual {p2, v3, v0, v2}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    move-result-object p2

    .line 408
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 406
    const-string v3, "enable_display_rotation_immersive_app_compat_policy"

    invoke-virtual {p2, v3, v0, v2}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    move-result-object p2

    const-string v2, "allow_ignore_orientation_request"

    .line 410
    invoke-virtual {p2, v2, v0, v0}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    move-result-object p2

    .line 414
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 412
    const-string v3, "enable_compat_fake_focus"

    invoke-virtual {p2, v3, v0, v2}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    move-result-object p2

    .line 417
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11101fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 415
    const-string v3, "enable_letterbox_translucent_activity"

    invoke-virtual {p2, v3, v0, v2}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    move-result-object p2

    .line 421
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 419
    const-string v3, "enable_app_compat_aspect_ratio_user_settings"

    invoke-virtual {p2, v3, v0, v2}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    move-result-object p2

    const-string v2, "enable_letterbox_background_wallpaper"

    .line 423
    invoke-virtual {p2, v2, v1, v0}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    move-result-object p2

    .line 427
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x1110033

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 425
    const-string v1, "enable_app_compat_user_aspect_ratio_fullscreen"

    invoke-virtual {p2, v1, v0, p1}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->addDeviceConfigEntry(Ljava/lang/String;ZZ)Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;

    move-result-object p1

    .line 429
    invoke-virtual {p1}, Lcom/android/server/wm/SynchedDeviceConfig$SynchedDeviceConfigBuilder;->build()Lcom/android/server/wm/SynchedDeviceConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    return-void
.end method

.method public static letterboxBackgroundTypeToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_26

    const/4 v0, 0x1

    if-eq p0, v0, :cond_23

    const/4 v0, 0x2

    if-eq p0, v0, :cond_20

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1d

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 613
    :cond_1d
    const-string p0, "LETTERBOX_BACKGROUND_WALLPAPER"

    return-object p0

    .line 611
    :cond_20
    const-string p0, "LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND_FLOATING"

    return-object p0

    .line 609
    :cond_23
    const-string p0, "LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND"

    return-object p0

    .line 607
    :cond_26
    const-string p0, "LETTERBOX_BACKGROUND_SOLID_COLOR"

    return-object p0
.end method

.method public static letterboxHorizontalReachabilityPositionToString(I)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    .line 1065
    const-string p0, "LETTERBOX_HORIZONTAL_REACHABILITY_POSITION_RIGHT"

    return-object p0

    .line 1067
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected letterbox position type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1063
    :cond_22
    const-string p0, "LETTERBOX_HORIZONTAL_REACHABILITY_POSITION_CENTER"

    return-object p0

    .line 1061
    :cond_25
    const-string p0, "LETTERBOX_HORIZONTAL_REACHABILITY_POSITION_LEFT"

    return-object p0
.end method

.method public static letterboxVerticalReachabilityPositionToString(I)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    .line 1081
    const-string p0, "LETTERBOX_VERTICAL_REACHABILITY_POSITION_BOTTOM"

    return-object p0

    .line 1083
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected letterbox position type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 1079
    :cond_22
    const-string p0, "LETTERBOX_VERTICAL_REACHABILITY_POSITION_CENTER"

    return-object p0

    .line 1077
    :cond_25
    const-string p0, "LETTERBOX_VERTICAL_REACHABILITY_POSITION_TOP"

    return-object p0
.end method

.method public static readLetterboxBackgroundTypeFromConfig(Landroid/content/Context;)I
    .registers 2

    .line 621
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e00cb

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-eqz p0, :cond_18

    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/4 v0, 0x2

    if-eq p0, v0, :cond_18

    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :cond_18
    :goto_18
    return p0
.end method

.method public static readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I
    .registers 3

    .line 965
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_a

    const p1, 0x10e00cc

    goto :goto_d

    :cond_a
    const p1, 0x10e00cd

    :goto_d
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1b

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1a

    goto :goto_1b

    :cond_1a
    return p1

    :cond_1b
    :goto_1b
    return p0
.end method

.method public static readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I
    .registers 3

    .line 978
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_a

    const p1, 0x10e00ce

    goto :goto_d

    :cond_a
    const p1, 0x10e00cf

    :goto_d
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1b

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1a

    goto :goto_1b

    :cond_1a
    return p1

    :cond_1b
    :goto_1b
    return p0
.end method


# virtual methods
.method public final assertValidMultiplier(FLjava/lang/String;)F
    .registers 5

    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    if-ltz p0, :cond_c

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-gtz p0, :cond_c

    return p1

    .line 1514
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " out of bounds: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 1485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  letterboxPositionForHorizontalReachability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 1487
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result v2

    .line 1486
    invoke-static {v2}, Lcom/android/server/wm/AppCompatConfiguration;->letterboxHorizontalReachabilityPositionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1485
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  letterboxPositionForVerticalReachability="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1491
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxPositionForVerticalReachability(Z)I

    move-result v1

    .line 1490
    invoke-static {v1}, Lcom/android/server/wm/AppCompatConfiguration;->letterboxVerticalReachabilityPositionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1489
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  fixedOrientationLetterboxAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1494
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getFixedOrientationLetterboxAspectRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1493
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  defaultMinAspectRatioForUnresizableApps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1496
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getDefaultMinAspectRatioForUnresizableApps()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1495
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  isSplitScreenAspectRatioForUnresizableAppsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1498
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getIsSplitScreenAspectRatioForUnresizableAppsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1497
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  isDisplayAspectRatioEnabledForFixedOrientationLetterbox="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getIsDisplayAspectRatioEnabledForFixedOrientationLetterbox()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1499
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCameraCompatAspectRatio()F
    .registers 1

    .line 1358
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mCameraCompatAspectRatio:F

    return p0
.end method

.method public final getDefaultLetterboxBackgroundType()I
    .registers 3

    .line 598
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string v1, "enable_letterbox_background_wallpaper"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x3

    return p0

    .line 599
    :cond_c
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundType:I

    return p0
.end method

.method public getDefaultMinAspectRatioForUnresizableApps()F
    .registers 1

    .line 478
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultMinAspectRatioForUnresizableApps:F

    return p0
.end method

.method public getDefaultPositionForHorizontalReachability()I
    .registers 1

    .line 857
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForHorizontalReachability:I

    return p0
.end method

.method public getDefaultPositionForVerticalReachability()I
    .registers 1

    .line 869
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForVerticalReachability:I

    return p0
.end method

.method public getFixedOrientationLetterboxAspectRatio()F
    .registers 1

    .line 463
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    return p0
.end method

.method public getHorizontalMultiplierForReachability(Z)F
    .registers 4

    .line 995
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 996
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result p0

    if-eqz p0, :cond_2b

    const/4 p1, 0x1

    if-eq p0, p1, :cond_28

    const/4 p1, 0x2

    if-ne p0, p1, :cond_11

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 1006
    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected letterbox position type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_28
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public getIsAutomaticReachabilityInBookModeEnabled()Z
    .registers 1

    .line 791
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    return p0
.end method

.method public getIsDisplayAspectRatioEnabledForFixedOrientationLetterbox()Z
    .registers 1

    .line 1163
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    return p0
.end method

.method public getIsEducationEnabled()Z
    .registers 1

    .line 1133
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsEducationEnabled:Z

    return p0
.end method

.method public getIsHorizontalReachabilityEnabled()Z
    .registers 1

    .line 775
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsHorizontalReachabilityEnabled:Z

    return p0
.end method

.method public getIsSplitScreenAspectRatioForUnresizableAppsEnabled()Z
    .registers 1

    .line 1156
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    return p0
.end method

.method public getIsVerticalReachabilityEnabled()Z
    .registers 1

    .line 783
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsVerticalReachabilityEnabled:Z

    return p0
.end method

.method public getLetterboxActivityCornersRadius()I
    .registers 1

    .line 518
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    return p0
.end method

.method public getLetterboxBackgroundColor()Landroid/graphics/Color;
    .registers 2

    .line 527
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

    if-eqz v0, :cond_5

    return-object v0

    .line 530
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    .line 531
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_11

    :cond_e
    const v0, 0x10601fc

    .line 535
    :goto_11
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    return-object p0
.end method

.method public getLetterboxBackgroundType()I
    .registers 3

    .line 571
    iget v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundTypeOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    .line 573
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getDefaultLetterboxBackgroundType()I

    move-result p0

    return p0
.end method

.method public getLetterboxBackgroundWallpaperBlurRadiusPx()I
    .registers 1

    .line 685
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperBlurRadiusPx:I

    return p0
.end method

.method public getLetterboxBackgroundWallpaperDarkScrimAlpha()F
    .registers 1

    .line 655
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    return p0
.end method

.method public getLetterboxHorizontalPositionMultiplier(Z)F
    .registers 2

    if-eqz p1, :cond_5

    .line 695
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBookModePositionMultiplier:F

    return p0

    .line 696
    :cond_5
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    return p0
.end method

.method public getLetterboxPositionForHorizontalReachability(Z)I
    .registers 2

    .line 1042
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result p0

    return p0
.end method

.method public getLetterboxPositionForVerticalReachability(Z)I
    .registers 2

    .line 1052
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForVerticalReachability(Z)I

    move-result p0

    return p0
.end method

.method public getLetterboxVerticalPositionMultiplier(Z)F
    .registers 2

    if-eqz p1, :cond_5

    .line 706
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxTabletopModePositionMultiplier:F

    return p0

    .line 707
    :cond_5
    iget p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxVerticalPositionMultiplier:F

    return p0
.end method

.method public getThinLetterboxHeightPx()I
    .registers 1

    .line 1181
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mThinLetterboxHeightPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

    invoke-virtual {p0}, Lcom/android/server/wm/utils/DimenPxIntSupplier;->getAsInt()I

    move-result p0

    return p0
.end method

.method public getThinLetterboxWidthPx()I
    .registers 1

    .line 1172
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mThinLetterboxWidthPxSupplier:Lcom/android/server/wm/utils/DimenPxIntSupplier;

    invoke-virtual {p0}, Lcom/android/server/wm/utils/DimenPxIntSupplier;->getAsInt()I

    move-result p0

    return p0
.end method

.method public getVerticalMultiplierForReachability(Z)F
    .registers 4

    .line 1019
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 1020
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForVerticalReachability(Z)I

    move-result p0

    if-eqz p0, :cond_2b

    const/4 p1, 0x1

    if-eq p0, p1, :cond_28

    const/4 p1, 0x2

    if-ne p0, p1, :cond_11

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 1030
    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected letterbox position type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_28
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0
.end method

.method public isAnyCameraCompatTreatmentEnabled()Z
    .registers 2

    .line 1415
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->isCameraCompatForceRotateTreatmentEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1416
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->isCameraCompatSimulateRequestedOrientationTreatmentEnabled()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public isCameraCompatForceRotateTreatmentEnabled()Z
    .registers 2

    .line 1292
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string v0, "enable_compat_camera_treatment"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isCameraCompatForceRotateTreatmentEnabledAtBuildTime()Z
    .registers 2

    .line 1301
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string v0, "enable_compat_camera_treatment"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SynchedDeviceConfig;->isBuildTimeFlagEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isCameraCompatRefreshCycleThroughStopEnabled()Z
    .registers 1

    .line 1326
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatRefreshCycleThroughStopEnabled:Z

    return p0
.end method

.method public isCameraCompatRefreshEnabled()Z
    .registers 1

    .line 1306
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatTreatmentRefreshEnabled:Z

    return p0
.end method

.method public isCameraCompatSimReqOrientationTreatmentForceEnabled()Z
    .registers 1

    .line 1399
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatSimulateRequestedOrientationTreatmentForceEnabled:Z

    return p0
.end method

.method public isCameraCompatSimulateRequestedOrientationTreatmentEnabled()Z
    .registers 1

    .line 1383
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatSimulateRequestedOrientationTreatmentEnabled:Z

    return p0
.end method

.method public isCameraCompatSplitScreenAspectRatioEnabled()Z
    .registers 1

    .line 1285
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatSplitScreenAspectRatioEnabled:Z

    return p0
.end method

.method public isCompatFakeFocusEnabled()Z
    .registers 2

    .line 1268
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string v0, "enable_compat_fake_focus"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isDisplayRotationImmersiveAppCompatPolicyEnabled()Z
    .registers 2

    .line 1443
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string v0, "enable_display_rotation_immersive_app_compat_policy"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isDisplayRotationImmersiveAppCompatPolicyEnabledAtBuildTime()Z
    .registers 2

    .line 1430
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string v0, "enable_display_rotation_immersive_app_compat_policy"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SynchedDeviceConfig;->isBuildTimeFlagEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isIgnoreOrientationRequestAllowed()Z
    .registers 2

    .line 437
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string v0, "allow_ignore_orientation_request"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isLetterboxActivityCornersRounded()Z
    .registers 1

    .line 511
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getLetterboxActivityCornersRadius()I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isPolicyForIgnoringRequestedOrientationEnabled()Z
    .registers 1

    .line 1277
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsPolicyForIgnoringRequestedOrientationEnabled:Z

    return p0
.end method

.method public isTranslucentLetterboxingEnabled()Z
    .registers 2

    .line 1220
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mTranslucentLetterboxingOverrideEnabled:Z

    if-nez v0, :cond_11

    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string v0, "enable_letterbox_translucent_activity"

    .line 1221
    invoke-virtual {p0, v0}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public isUserAppAspectRatioFullscreenEnabled()Z
    .registers 2

    .line 1470
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->isUserAppAspectRatioSettingsEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioFullscreenOverrideEnabled:Z

    if-nez v0, :cond_14

    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string v0, "enable_app_compat_user_aspect_ratio_fullscreen"

    .line 1472
    invoke-virtual {p0, v0}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public isUserAppAspectRatioSettingsEnabled()Z
    .registers 2

    .line 1450
    iget-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioSettingsOverrideEnabled:Z

    if-nez v0, :cond_11

    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDeviceConfig:Lcom/android/server/wm/SynchedDeviceConfig;

    const-string v0, "enable_app_compat_aspect_ratio_user_settings"

    .line 1451
    invoke-virtual {p0, v0}, Lcom/android/server/wm/SynchedDeviceConfig;->getFlagValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public movePositionForHorizontalReachabilityToNextLeftStop(Z)V
    .registers 3

    .line 1103
    new-instance v0, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda4;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->updatePositionForHorizontalReachability(ZLjava/util/function/Function;)V

    return-void
.end method

.method public movePositionForHorizontalReachabilityToNextRightStop(Z)V
    .registers 3

    .line 1093
    new-instance v0, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda6;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->updatePositionForHorizontalReachability(ZLjava/util/function/Function;)V

    return-void
.end method

.method public movePositionForVerticalReachabilityToNextBottomStop(Z)V
    .registers 3

    .line 1113
    new-instance v0, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda7;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->updatePositionForVerticalReachability(ZLjava/util/function/Function;)V

    return-void
.end method

.method public movePositionForVerticalReachabilityToNextTopStop(Z)V
    .registers 3

    .line 1124
    new-instance v0, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/android/server/wm/AppCompatConfiguration$$ExternalSyntheticLambda5;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->updatePositionForVerticalReachability(ZLjava/util/function/Function;)V

    return-void
.end method

.method public resetCameraCompatAspectRatio()V
    .registers 2

    const v0, 0x3fe38e39

    .line 1366
    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mCameraCompatAspectRatio:F

    return-void
.end method

.method public resetCameraCompatRefreshCycleThroughStopEnabled()V
    .registers 2

    const/4 v0, 0x1

    .line 1342
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatRefreshCycleThroughStopEnabled:Z

    return-void
.end method

.method public resetCameraCompatRefreshEnabled()V
    .registers 2

    const/4 v0, 0x1

    .line 1318
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatTreatmentRefreshEnabled:Z

    return-void
.end method

.method public resetDefaultMinAspectRatioForUnresizableApps()V
    .registers 3

    .line 470
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050106

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->setDefaultMinAspectRatioForUnresizableApps(F)V

    return-void
.end method

.method public resetDefaultPositionForHorizontalReachability()V
    .registers 3

    .line 895
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 896
    invoke-static {v0, v1}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForHorizontalReachability:I

    return-void
.end method

.method public resetDefaultPositionForVerticalReachability()V
    .registers 3

    .line 905
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 906
    invoke-static {v0, v1}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForVerticalReachability:I

    return-void
.end method

.method public resetEnabledAutomaticReachabilityInBookMode()V
    .registers 3

    .line 844
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    return-void
.end method

.method public resetFixedOrientationLetterboxAspectRatio()V
    .registers 3

    .line 455
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    return-void
.end method

.method public resetIsCameraCompatSimReqOrientationTreatmentForceEnabled()V
    .registers 2

    const/4 v0, 0x0

    .line 1407
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatSimulateRequestedOrientationTreatmentForceEnabled:Z

    return-void
.end method

.method public resetIsDisplayAspectRatioEnabledForFixedOrientationLetterbox()V
    .registers 3

    .line 1214
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101f7

    .line 1215
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    return-void
.end method

.method public resetIsEducationEnabled()V
    .registers 3

    .line 1148
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsEducationEnabled:Z

    return-void
.end method

.method public resetIsHorizontalReachabilityEnabled()V
    .registers 3

    .line 824
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsHorizontalReachabilityEnabled:Z

    return-void
.end method

.method public resetIsSplitScreenAspectRatioForUnresizableAppsEnabled()V
    .registers 3

    .line 1205
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    return-void
.end method

.method public resetIsVerticalReachabilityEnabled()V
    .registers 3

    .line 834
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsVerticalReachabilityEnabled:Z

    return-void
.end method

.method public resetLetterboxActivityCornersRadius()V
    .registers 3

    .line 503
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    return-void
.end method

.method public resetLetterboxBackgroundColor()V
    .registers 2

    const/4 v0, 0x0

    .line 562
    iput-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

    .line 563
    iput-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

    return-void
.end method

.method public resetLetterboxBackgroundType()V
    .registers 2

    const/4 v0, -0x1

    .line 590
    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundTypeOverride:I

    return-void
.end method

.method public resetLetterboxBackgroundWallpaperBlurRadiusPx()V
    .registers 3

    .line 676
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050104

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperBlurRadiusPx:I

    return-void
.end method

.method public resetLetterboxBackgroundWallpaperDarkScrimAlpha()V
    .registers 3

    .line 647
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    return-void
.end method

.method public resetLetterboxHorizontalPositionMultiplier()V
    .registers 3

    .line 735
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050107

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    return-void
.end method

.method public resetLetterboxVerticalPositionMultiplier()V
    .registers 3

    .line 744
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105010b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxVerticalPositionMultiplier:F

    return-void
.end method

.method public resetPersistentLetterboxPositionForHorizontalReachability()V
    .registers 4

    .line 936
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    .line 938
    invoke-static {v1, v2}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v1

    .line 936
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForHorizontalReachability(ZI)V

    .line 940
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    .line 942
    invoke-static {p0, v1}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxHorizontalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result p0

    .line 940
    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForHorizontalReachability(ZI)V

    return-void
.end method

.method public resetPersistentLetterboxPositionForVerticalReachability()V
    .registers 4

    .line 952
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    .line 954
    invoke-static {v1, v2}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result v1

    .line 952
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForVerticalReachability(ZI)V

    .line 956
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    .line 958
    invoke-static {p0, v1}, Lcom/android/server/wm/AppCompatConfiguration;->readLetterboxVerticalReachabilityPositionFromConfig(Landroid/content/Context;Z)I

    move-result p0

    .line 956
    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForVerticalReachability(ZI)V

    return-void
.end method

.method public resetTranslucentLetterboxingEnabled()V
    .registers 2

    const/4 v0, 0x0

    .line 1239
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->setTranslucentLetterboxingOverrideEnabled(Z)V

    return-void
.end method

.method public resetUserAppAspectRatioFullscreenEnabled()V
    .registers 2

    const/4 v0, 0x0

    .line 1480
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->setUserAppAspectRatioFullscreenOverrideEnabled(Z)V

    return-void
.end method

.method public resetUserAppAspectRatioSettingsEnabled()V
    .registers 2

    const/4 v0, 0x0

    .line 1463
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatConfiguration;->setUserAppAspectRatioSettingsOverrideEnabled(Z)V

    return-void
.end method

.method public setCameraCompatAspectRatio(F)V
    .registers 2

    .line 1350
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mCameraCompatAspectRatio:F

    return-void
.end method

.method public setCameraCompatRefreshCycleThroughStopEnabled(Z)V
    .registers 2

    .line 1334
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatRefreshCycleThroughStopEnabled:Z

    return-void
.end method

.method public setCameraCompatRefreshEnabled(Z)V
    .registers 2

    .line 1311
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatTreatmentRefreshEnabled:Z

    return-void
.end method

.method public setDefaultMinAspectRatioForUnresizableApps(F)V
    .registers 2

    .line 485
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultMinAspectRatioForUnresizableApps:F

    return-void
.end method

.method public setDefaultPositionForHorizontalReachability(I)V
    .registers 2

    .line 878
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForHorizontalReachability:I

    return-void
.end method

.method public setDefaultPositionForVerticalReachability(I)V
    .registers 2

    .line 887
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mDefaultPositionForVerticalReachability:I

    return-void
.end method

.method public setFixedOrientationLetterboxAspectRatio(F)V
    .registers 2

    .line 447
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    return-void
.end method

.method public setIsAutomaticReachabilityInBookModeEnabled(Z)V
    .registers 2

    .line 815
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsAutomaticReachabilityInBookModeEnabled:Z

    return-void
.end method

.method public setIsCameraCompatSimReqOrientationTreatmentForceEnabled(Z)V
    .registers 2

    .line 1391
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsCameraCompatSimulateRequestedOrientationTreatmentForceEnabled:Z

    return-void
.end method

.method public setIsDisplayAspectRatioEnabledForFixedOrientationLetterbox(Z)V
    .registers 2

    .line 1197
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsDisplayAspectRatioEnabledForFixedOrientationLetterbox:Z

    return-void
.end method

.method public setIsEducationEnabled(Z)V
    .registers 2

    .line 1140
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsEducationEnabled:Z

    return-void
.end method

.method public setIsHorizontalReachabilityEnabled(Z)V
    .registers 2

    .line 799
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsHorizontalReachabilityEnabled:Z

    return-void
.end method

.method public setIsSplitScreenAspectRatioForUnresizableAppsEnabled(Z)V
    .registers 2

    .line 1189
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsSplitScreenAspectRatioForUnresizableAppsEnabled:Z

    return-void
.end method

.method public setIsVerticalReachabilityEnabled(Z)V
    .registers 2

    .line 807
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mIsVerticalReachabilityEnabled:Z

    return-void
.end method

.method public setLetterboxActivityCornersRadius(I)V
    .registers 2

    .line 495
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxActivityCornersRadius:I

    return-void
.end method

.method public setLetterboxBackgroundColor(Landroid/graphics/Color;)V
    .registers 2

    .line 545
    iput-object p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

    return-void
.end method

.method public setLetterboxBackgroundColorResourceId(I)V
    .registers 2

    .line 554
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

    return-void
.end method

.method public setLetterboxBackgroundTypeOverride(I)V
    .registers 2

    .line 578
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundTypeOverride:I

    return-void
.end method

.method public setLetterboxBackgroundWallpaperBlurRadiusPx(I)V
    .registers 2

    .line 667
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperBlurRadiusPx:I

    return-void
.end method

.method public setLetterboxBackgroundWallpaperDarkScrimAlpha(F)V
    .registers 2

    .line 639
    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    return-void
.end method

.method public setLetterboxBookModePositionMultiplier(F)V
    .registers 3

    .line 766
    const-string v0, "mLetterboxBookModePositionMultiplier"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->assertValidMultiplier(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxBookModePositionMultiplier:F

    return-void
.end method

.method public setLetterboxHorizontalPositionMultiplier(F)V
    .registers 3

    .line 716
    const-string v0, "mLetterboxHorizontalPositionMultiplier"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->assertValidMultiplier(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    return-void
.end method

.method public setLetterboxTabletopModePositionMultiplier(F)V
    .registers 3

    .line 755
    const-string v0, "mLetterboxTabletopModePositionMultiplier"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->assertValidMultiplier(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxTabletopModePositionMultiplier:F

    return-void
.end method

.method public setLetterboxVerticalPositionMultiplier(F)V
    .registers 3

    .line 726
    const-string v0, "mLetterboxVerticalPositionMultiplier"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AppCompatConfiguration;->assertValidMultiplier(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mLetterboxVerticalPositionMultiplier:F

    return-void
.end method

.method public setPersistentLetterboxPositionForHorizontalReachability(ZI)V
    .registers 3

    .line 916
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForHorizontalReachability(ZI)V

    return-void
.end method

.method public setPersistentLetterboxPositionForVerticalReachability(ZI)V
    .registers 3

    .line 926
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForVerticalReachability(ZI)V

    return-void
.end method

.method public setTranslucentLetterboxingOverrideEnabled(Z)V
    .registers 2

    .line 1230
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mTranslucentLetterboxingOverrideEnabled:Z

    return-void
.end method

.method public setUserAppAspectRatioFullscreenOverrideEnabled(Z)V
    .registers 2

    .line 1476
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioFullscreenOverrideEnabled:Z

    return-void
.end method

.method public setUserAppAspectRatioSettingsOverrideEnabled(Z)V
    .registers 2

    .line 1455
    iput-boolean p1, p0, Lcom/android/server/wm/AppCompatConfiguration;->mUserAppAspectRatioSettingsOverrideEnabled:Z

    return-void
.end method

.method public final updatePositionForHorizontalReachability(ZLjava/util/function/Function;)V
    .registers 4

    .line 1245
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 1246
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForHorizontalReachability(Z)I

    move-result v0

    .line 1249
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1248
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1250
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForHorizontalReachability(ZI)V

    return-void
.end method

.method public final updatePositionForVerticalReachability(ZLjava/util/function/Function;)V
    .registers 4

    .line 1257
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    .line 1258
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatConfigurationPersister;->getLetterboxPositionForVerticalReachability(Z)I

    move-result v0

    .line 1261
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1260
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1262
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfiguration;->mAppCompatConfigurationPersister:Lcom/android/server/wm/AppCompatConfigurationPersister;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->setLetterboxPositionForVerticalReachability(ZI)V

    return-void
.end method
