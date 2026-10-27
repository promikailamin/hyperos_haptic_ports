.class public Lcom/android/server/wm/AppCompatAspectRatioOverrides;
.super Ljava/lang/Object;
.source "AppCompatAspectRatioOverrides.java"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAllowMinAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mAllowOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mAllowUserAspectRatioFullscreenOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mAllowUserAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

.field public final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

.field public final mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

.field public final mAppCompatReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

.field public mIsSystemFullscreenOverrideEnabled:Ljava/lang/Boolean;

.field public final mUserAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatConfiguration;Lcom/android/server/wm/utils/OptPropFactory;Lcom/android/server/wm/AppCompatDeviceStateQuery;Lcom/android/server/wm/AppCompatReachabilityOverrides;)V
    .registers 6

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 98
    iput-object p2, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 99
    iput-object p4, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    .line 100
    new-instance p1, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;

    const/4 p4, 0x0

    invoke-direct {p1, p4}, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;-><init>(Lcom/android/server/wm/AppCompatAspectRatioOverrides-IA;)V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mUserAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;

    .line 101
    iput-object p5, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

    .line 102
    const-string p1, "android.window.PROPERTY_COMPAT_ALLOW_MIN_ASPECT_RATIO_OVERRIDE"

    invoke-virtual {p3, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowMinAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 106
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/server/wm/AppCompatAspectRatioOverrides$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/server/wm/AppCompatAspectRatioOverrides$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    .line 104
    const-string p4, "android.window.PROPERTY_COMPAT_ALLOW_USER_ASPECT_RATIO_OVERRIDE"

    invoke-virtual {p3, p4, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowUserAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 109
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/server/wm/AppCompatAspectRatioOverrides$$ExternalSyntheticLambda1;

    invoke-direct {p1, p2}, Lcom/android/server/wm/AppCompatAspectRatioOverrides$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AppCompatConfiguration;)V

    .line 107
    const-string p2, "android.window.PROPERTY_COMPAT_ALLOW_USER_ASPECT_RATIO_FULLSCREEN_OVERRIDE"

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;Ljava/util/function/BooleanSupplier;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowUserAspectRatioFullscreenOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 110
    const-string p1, "android.window.PROPERTY_COMPAT_ALLOW_ORIENTATION_OVERRIDE"

    invoke-virtual {p3, p1}, Lcom/android/server/wm/utils/OptPropFactory;->create(Ljava/lang/String;)Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    return-void
.end method


# virtual methods
.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .registers 5

    const-wide v0, 0x1080000002aL

    .line 368
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldOverrideMinAspectRatio()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000002dL

    .line 370
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldEnableUserAspectRatioSettings()Z

    move-result v2

    .line 369
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000002eL

    .line 371
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->isUserFullscreenOverrideEnabled()Z

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    return-void
.end method

.method public getAllowUserAspectRatioOverridePropertyValue()Z
    .registers 1

    .line 339
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowUserAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    invoke-virtual {p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->isFalse()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getDefaultMinAspectRatio()F
    .registers 2

    .line 359
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 361
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->getIsDisplayAspectRatioEnabledForFixedOrientationLetterbox()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_16

    .line 364
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getDisplaySizeMinAspectRatio()F

    move-result p0

    return p0

    .line 362
    :cond_16
    :goto_16
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getFixedOrientationLetterboxAspectRatio()F

    move-result p0

    return p0
.end method

.method public final getDefaultMinAspectRatioForUnresizableApps()F
    .registers 3

    .line 347
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->getIsSplitScreenAspectRatioForUnresizableAppsEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 348
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_16

    .line 355
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getSplitScreenAspectRatio()F

    move-result p0

    return p0

    .line 350
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 349
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->getDefaultMinAspectRatioForUnresizableApps()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_29

    .line 351
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getDefaultMinAspectRatioForUnresizableApps()F

    move-result p0

    return p0

    .line 352
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getDefaultMinAspectRatio()F

    move-result p0

    return p0
.end method

.method public getDisplaySizeMinAspectRatio()F
    .registers 2

    .line 309
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-nez v0, :cond_11

    .line 311
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result p0

    return p0

    .line 313
    :cond_11
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 314
    invoke-static {p0}, Lcom/android/server/wm/AppCompatUtils;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result p0

    return p0
.end method

.method public getFixedOrientationLetterboxAspectRatio(Landroid/content/res/Configuration;)F
    .registers 2

    .line 292
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldUseSplitScreenAspectRatio(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 293
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getSplitScreenAspectRatio()F

    move-result p0

    return p0

    .line 294
    :cond_b
    iget-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->shouldCreateAppCompatDisplayInsets()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 295
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getDefaultMinAspectRatioForUnresizableApps()F

    move-result p0

    return p0

    .line 296
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getDefaultMinAspectRatio()F

    move-result p0

    return p0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .registers 1

    .line 402
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public getSplitScreenAspectRatio()F
    .registers 5

    .line 271
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-nez v0, :cond_d

    .line 273
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getDefaultMinAspectRatioForUnresizableApps()F

    move-result p0

    return p0

    .line 276
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050191

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 278
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x1050190

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v1, p0

    .line 280
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 281
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_4a

    .line 282
    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 283
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    goto :goto_55

    .line 285
    :cond_4a
    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v3, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 286
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 288
    :goto_55
    invoke-static {p0}, Lcom/android/server/wm/AppCompatUtils;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result p0

    return p0
.end method

.method public getUserMinAspectRatio()F
    .registers 4

    .line 252
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getUserMinAspectRatioOverrideCode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_40

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_37

    const/4 v1, 0x4

    if-eq v0, v1, :cond_33

    const/4 v1, 0x5

    if-ne v0, v1, :cond_16

    const/high16 p0, 0x3fc00000    # 1.5f

    return p0

    .line 264
    :cond_16
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected user min aspect ratio override: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mUserAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;

    invoke-static {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;->-$$Nest$fgetmUserAspectRatio(Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_33
    const p0, 0x3fe38e39

    return p0

    :cond_37
    const p0, 0x3faaaaab

    return p0

    .line 254
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getDisplaySizeMinAspectRatio()F

    move-result p0

    return p0

    .line 256
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getSplitScreenAspectRatio()F

    move-result p0

    return p0
.end method

.method public getUserMinAspectRatioOverrideCode()I
    .registers 2

    .line 343
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mUserAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0, p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;->-$$Nest$mgetUserAspectRatio(Lcom/android/server/wm/AppCompatAspectRatioOverrides$UserAspectRatioState;Lcom/android/server/wm/ActivityRecord;)I

    move-result p0

    return p0
.end method

.method public hasFullscreenOverride()Z
    .registers 2

    .line 234
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldApplyUserFullscreenOverride()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->isSystemOverrideToFullscreenEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 235
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldIgnoreActivitySizeRestrictionsForDisplay()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public hasFullscreenOverride(Lcom/android/server/wm/DisplayContent;)Z
    .registers 3

    .line 242
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldApplyUserFullscreenOverride()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->isSystemOverrideToFullscreenEnabled(Lcom/android/server/wm/DisplayContent;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 243
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldIgnoreActivitySizeRestrictionsForDisplay()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public hasSystemFullscreenOverrideCache()Z
    .registers 1

    .line 204
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mIsSystemFullscreenOverrideEnabled:Ljava/lang/Boolean;

    if-nez p0, :cond_e

    sget-object p0, Landroid/window/DesktopExperienceFlags;->LIMIT_SYSTEM_FULLSCREEN_OVERRIDE_TO_DEFAULT_DISPLAY:Landroid/window/DesktopExperienceFlags;

    .line 205
    invoke-virtual {p0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isSystemOverrideToFullscreenEnabled()Z
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->isSystemOverrideToFullscreenEnabled(Lcom/android/server/wm/DisplayContent;)Z

    move-result p0

    return p0
.end method

.method public isSystemOverrideToFullscreenEnabled(Lcom/android/server/wm/DisplayContent;)Z
    .registers 6

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mIsSystemFullscreenOverrideEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 178
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 180
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getUserMinAspectRatioOverrideCode()I

    move-result v0

    .line 181
    iget-object v1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v2, 0x1286aeb5

    .line 182
    invoke-static {v1, v2, v3}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_29

    .line 185
    iget-object v1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 186
    invoke-virtual {v1}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->isFalse()Z

    move-result v1

    if-nez v1, :cond_29

    if-eqz v0, :cond_27

    const/4 v1, 0x6

    if-ne v0, v1, :cond_29

    :cond_27
    move v0, v3

    goto :goto_2a

    :cond_29
    move v0, v2

    :goto_2a
    if-eqz p1, :cond_48

    .line 190
    sget-object v1, Landroid/window/DesktopExperienceFlags;->LIMIT_SYSTEM_FULLSCREEN_OVERRIDE_TO_DEFAULT_DISPLAY:Landroid/window/DesktopExperienceFlags;

    .line 191
    invoke-virtual {v1}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_48

    if-eqz v0, :cond_3d

    .line 196
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    if-nez p1, :cond_3d

    move v2, v3

    .line 195
    :cond_3d
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mIsSystemFullscreenOverrideEnabled:Ljava/lang/Boolean;

    .line 197
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_48
    return v0
.end method

.method public isUserFullscreenOverrideEnabled()Z
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowUserAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    invoke-virtual {v0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->isFalse()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowUserAspectRatioFullscreenOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 165
    invoke-virtual {v0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->isFalse()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 166
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->isUserAppAspectRatioFullscreenEnabled()Z

    move-result p0

    if-nez p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x1

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    return p0
.end method

.method public resetSystemFullscreenOverrideCache()Z
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mIsSystemFullscreenOverrideEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mIsSystemFullscreenOverrideEnabled:Ljava/lang/Boolean;

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public shouldApplyUserFullscreenOverride()Z
    .registers 3

    .line 154
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->isUserFullscreenOverrideEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 155
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getUserMinAspectRatioOverrideCode()I

    move-result p0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    return v1
.end method

.method public shouldApplyUserMinAspectRatioOverride()Z
    .registers 3

    .line 136
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldEnableUserAspectRatioSettings()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 140
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getUserMinAspectRatioOverrideCode()I

    move-result p0

    if-eqz p0, :cond_16

    const/4 v0, 0x7

    if-eq p0, v0, :cond_16

    const/4 v0, 0x6

    if-eq p0, v0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    return v1
.end method

.method public shouldEnableUserAspectRatioSettings()Z
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowUserAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    invoke-virtual {v0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->isFalse()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 225
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->isUserAppAspectRatioSettingsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_1e

    .line 227
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public shouldIgnoreActivitySizeRestrictionsForDisplay()Z
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0}, Lcom/android/server/wm/AppCompatUtils;->isDisplayIgnoreActivitySizeRestrictions(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowOrientationOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    .line 248
    invoke-virtual {p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->isFalse()Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public shouldOverrideMinAspectRatio()Z
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAllowMinAspectRatioOverrideOptProp:Lcom/android/server/wm/utils/OptPropFactory$OptProp;

    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    const-wide/32 v1, 0xa5faf64

    .line 128
    invoke-static {p0, v1, v2}, Lcom/android/server/wm/AppCompatUtils;->isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z

    move-result p0

    .line 127
    invoke-virtual {v0, p0}, Lcom/android/server/wm/utils/OptPropFactory$OptProp;->shouldEnableWithOptInOverrideAndOptOutProperty(Z)Z

    move-result p0

    return p0
.end method

.method public final shouldUseSplitScreenAspectRatio(Landroid/content/res/Configuration;)Z
    .registers 8

    .line 318
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    const/4 v1, 0x0

    .line 319
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndInPosture(Z)Z

    move-result v0

    .line 320
    iget-object v2, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatReachabilityOverrides:Lcom/android/server/wm/AppCompatReachabilityOverrides;

    .line 321
    invoke-virtual {v2, p1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->getHorizontalPositionMultiplier(Landroid/content/res/Configuration;)F

    move-result p1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v2

    const/4 v2, 0x1

    if-eqz p1, :cond_16

    move p1, v2

    goto :goto_17

    :cond_16
    move p1, v1

    .line 323
    :goto_17
    iget-object v3, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mAppCompatDeviceStateQuery:Lcom/android/server/wm/AppCompatDeviceStateQuery;

    .line 324
    invoke-virtual {v3, v2}, Lcom/android/server/wm/AppCompatDeviceStateQuery;->isDisplayFullScreenAndInPosture(Z)Z

    move-result v3

    .line 325
    iget-object v4, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 326
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v4

    .line 325
    invoke-static {v4}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v4

    .line 327
    iget-object v5, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 328
    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatController;->getCameraOverrides()Lcom/android/server/wm/AppCompatCameraOverrides;

    move-result-object v5

    if-eqz v0, :cond_33

    if-nez p1, :cond_45

    :cond_33
    if-eqz v3, :cond_37

    if-nez v4, :cond_45

    .line 331
    :cond_37
    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatCameraOverrides;->isCameraCompatSplitScreenAspectRatioAllowed()Z

    move-result p1

    if-eqz p1, :cond_46

    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 332
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->isTreatmentEnabledForActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_46

    :cond_45
    return v2

    :cond_46
    return v1
.end method

.method public userPreferenceCompatibleWithNonResizability()Z
    .registers 2

    .line 148
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getUserMinAspectRatioOverrideCode()I

    move-result p0

    if-eqz p0, :cond_c

    const/4 v0, 0x6

    if-ne p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    return p0

    :cond_c
    :goto_c
    const/4 p0, 0x1

    return p0
.end method
