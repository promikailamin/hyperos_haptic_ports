.class public abstract Lcom/android/server/wm/DesktopModeBoundsCalculator;
.super Ljava/lang/Object;
.source "DesktopModeBoundsCalculator.java"


# static fields
.field public static final DESKTOP_MODE_INITIAL_BOUNDS_SCALE:F

.field public static final DESKTOP_MODE_LANDSCAPE_APP_PADDING:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 56
    const-string v0, "persist.wm.debug.desktop_mode_initial_bounds_scale"

    const/16 v1, 0x48

    .line 57
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sput v0, Lcom/android/server/wm/DesktopModeBoundsCalculator;->DESKTOP_MODE_INITIAL_BOUNDS_SCALE:F

    .line 58
    const-string v0, "persist.wm.debug.desktop_mode_landscape_app_padding"

    const/16 v1, 0x19

    .line 59
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/wm/DesktopModeBoundsCalculator;->DESKTOP_MODE_LANDSCAPE_APP_PADDING:I

    return-void
.end method

.method public static calculateIdealSize(Landroid/graphics/Rect;F)Landroid/util/Size;
    .registers 3

    .line 334
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 335
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    .line 336
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1
.end method

.method public static calculateInitialBounds(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Landroid/app/ActivityOptions;Lcom/android/server/wm/DisplayContent;ZI)Landroid/graphics/Rect;
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p6

    .line 149
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 150
    sget v4, Lcom/android/server/wm/DesktopModeBoundsCalculator;->DESKTOP_MODE_INITIAL_BOUNDS_SCALE:F

    invoke-static {v3, v4}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->calculateIdealSize(Landroid/graphics/Rect;F)Landroid/util/Size;

    move-result-object v4

    .line 151
    sget-object v5, Landroid/window/DesktopModeFlags;->ENABLE_WINDOWING_DYNAMIC_INITIAL_BOUNDS:Landroid/window/DesktopModeFlags;

    invoke-virtual {v5}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v5

    if-eqz v5, :cond_c6

    if-nez v1, :cond_1c

    goto/16 :goto_c6

    .line 155
    :cond_1c
    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatController;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v5

    .line 156
    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->hasFullscreenOverride()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 160
    invoke-static {v4, v3}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->centerInScreen(Landroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 162
    :cond_2d
    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 163
    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatController;->getDesktopAspectRatioPolicy()Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;

    move-result-object v5

    .line 165
    invoke-static/range {p2 .. p2}, Lcom/android/internal/policy/DesktopModeCompatUtils;->computeConfigOrientation(Landroid/graphics/Rect;)I

    move-result v6

    .line 166
    invoke-static {v1, v0, v6}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->getActivityConfigurationOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)I

    move-result v1

    const/4 v7, 0x1

    if-eq v6, v1, :cond_40

    move v8, v7

    goto :goto_41

    :cond_40
    const/4 v8, 0x0

    .line 171
    :goto_41
    invoke-virtual {v5, v0, v8}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->calculateAspectRatio(Lcom/android/server/wm/Task;Z)F

    move-result v9

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v13, 0x2

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    if-eq v6, v7, :cond_7a

    if-eq v6, v13, :cond_5a

    goto :goto_b4

    :cond_5a
    cmpl-float v6, v9, v15

    if-nez v6, :cond_5f

    move v9, v14

    .line 181
    :cond_5f
    invoke-static {v5, v0}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->canChangeAspectRatio(Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_75

    if-eqz v8, :cond_b4

    .line 185
    new-instance v0, Landroid/util/Size;

    div-float/2addr v11, v9

    add-float/2addr v11, v12

    float-to-int v1, v11

    .line 186
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    move-object v4, v0

    goto :goto_b4

    .line 193
    :cond_75
    invoke-static {v1, v4, v9, v2}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->maximizeSizeGivenAspectRatio(ILandroid/util/Size;FI)Landroid/util/Size;

    move-result-object v4

    goto :goto_b4

    .line 198
    :cond_7a
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    sget v7, Lcom/android/server/wm/DesktopModeBoundsCalculator;->DESKTOP_MODE_LANDSCAPE_APP_PADDING:I

    mul-int/2addr v7, v13

    sub-int/2addr v6, v7

    .line 200
    invoke-static {v5, v0}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->canChangeAspectRatio(Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_9b

    if-eqz v8, :cond_b4

    cmpl-float v0, v9, v15

    if-nez v0, :cond_92

    sub-float v0, v10, v14

    div-float v9, v10, v0

    .line 207
    :cond_92
    new-instance v4, Landroid/util/Size;

    div-float/2addr v10, v9

    add-float/2addr v10, v12

    float-to-int v0, v10

    invoke-direct {v4, v6, v0}, Landroid/util/Size;-><init>(II)V

    goto :goto_b4

    :cond_9b
    cmpl-float v0, v9, v15

    if-nez v0, :cond_a0

    move v9, v14

    :cond_a0
    if-eqz v8, :cond_b0

    .line 220
    new-instance v0, Landroid/util/Size;

    .line 221
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-direct {v0, v6, v4}, Landroid/util/Size;-><init>(II)V

    .line 220
    invoke-static {v1, v0, v9, v2}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->maximizeSizeGivenAspectRatio(ILandroid/util/Size;FI)Landroid/util/Size;

    move-result-object v4

    goto :goto_b4

    .line 226
    :cond_b0
    invoke-static {v1, v4, v9, v2}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->maximizeSizeGivenAspectRatio(ILandroid/util/Size;FI)Landroid/util/Size;

    move-result-object v4

    :cond_b4
    :goto_b4
    if-eqz p5, :cond_c1

    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-static {v4, v1, v0}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->respectShellCascading(Landroid/util/Size;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 234
    :cond_c1
    invoke-static {v4, v3}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->centerInScreen(Landroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 153
    :cond_c6
    :goto_c6
    invoke-static {v4, v3}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->centerInScreen(Landroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static canChangeAspectRatio(Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;Lcom/android/server/wm/Task;)Z
    .registers 3

    .line 244
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->hasMinAspectRatioOverride(Lcom/android/server/wm/Task;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static centerInScreen(Landroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7

    .line 346
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3ec00000    # 0.375f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 347
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 348
    new-instance v2, Landroid/graphics/Rect;

    .line 349
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    const/4 v4, 0x0

    invoke-direct {v2, v4, v4, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 350
    iget p0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    invoke-virtual {v2, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    return-object v2
.end method

.method public static getActivityConfigurationOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;I)I
    .registers 4

    .line 251
    sget-object v0, Landroid/window/DesktopExperienceFlags;->PRESERVE_RECENTS_TASK_CONFIGURATION_ON_RELAUNCH:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-boolean v0, p1, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_2e

    .line 252
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 255
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p0

    .line 256
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_25

    .line 257
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_29

    :cond_25
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 258
    :goto_29
    invoke-static {p0}, Lcom/android/internal/policy/DesktopModeCompatUtils;->computeConfigOrientation(Landroid/graphics/Rect;)I

    move-result p0

    return p0

    .line 260
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v0

    .line 261
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 262
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getDesktopAspectRatioPolicy()Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;

    move-result-object p0

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->shouldApplyUserMinAspectRatioOverride(Lcom/android/server/wm/Task;)Z

    move-result p0

    if-eqz p0, :cond_48

    .line 264
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientation(I)Z

    move-result p0

    if-eqz p0, :cond_4e

    const/16 p0, 0xe

    if-eq v0, p0, :cond_4e

    .line 266
    :cond_48
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result p0

    if-eqz p0, :cond_50

    :cond_4e
    const/4 p0, 0x1

    return p0

    .line 272
    :cond_50
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result p0

    if-eqz p0, :cond_58

    const/4 p0, 0x2

    return p0

    :cond_58
    return p2
.end method

.method public static maximizeSizeGivenAspectRatio(ILandroid/util/Size;FI)Landroid/util/Size;
    .registers 7

    .line 288
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    sub-int/2addr v0, p3

    .line 289
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    const/4 v1, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    if-ne p0, v1, :cond_18

    int-to-float p0, v0

    div-float/2addr p0, p2

    add-float/2addr p0, v2

    float-to-int p0, p0

    if-gt p0, p1, :cond_15

    goto :goto_1d

    :cond_15
    int-to-float p0, p1

    mul-float/2addr p0, p2

    goto :goto_22

    :cond_18
    int-to-float p0, v0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    if-gt p0, p1, :cond_1f

    :goto_1d
    move p1, p0

    goto :goto_23

    :cond_1f
    int-to-float p0, p1

    div-float/2addr p0, p2

    add-float/2addr p0, v2

    :goto_22
    float-to-int v0, p0

    .line 325
    :goto_23
    new-instance p0, Landroid/util/Size;

    add-int/2addr v0, p3

    invoke-direct {p0, p1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method public static respectShellCascading(Landroid/util/Size;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 10

    .line 362
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_a

    move v0, v3

    goto :goto_b

    :cond_a
    move v0, v2

    .line 363
    :goto_b
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    if-ne v1, v4, :cond_13

    move v1, v3

    goto :goto_14

    :cond_13
    move v1, v2

    .line 364
    :goto_14
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    if-ne v4, v5, :cond_1c

    move v4, v3

    goto :goto_1d

    :cond_1c
    move v4, v2

    .line 365
    :goto_1d
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v5, v6, :cond_24

    move v2, v3

    :cond_24
    if-eqz v0, :cond_3e

    if-eqz v4, :cond_3e

    .line 368
    new-instance p1, Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 371
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 372
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    add-int/2addr p2, p0

    invoke-direct {p1, v0, v1, v2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_3e
    if-eqz v0, :cond_5a

    if-eqz v2, :cond_5a

    .line 377
    new-instance p1, Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 379
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/graphics/Rect;->left:I

    .line 380
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    add-int/2addr v2, p0

    iget p0, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_5a
    if-eqz v1, :cond_74

    if-eqz v4, :cond_74

    .line 386
    new-instance p1, Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->right:I

    .line 387
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->top:I

    iget p2, p2, Landroid/graphics/Rect;->right:I

    .line 390
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    add-int/2addr p0, v1

    invoke-direct {p1, v0, v1, p2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    :cond_74
    if-eqz v1, :cond_90

    if-eqz v2, :cond_90

    .line 395
    new-instance p1, Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->right:I

    .line 396
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 397
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    sub-int/2addr v1, p0

    iget p0, p2, Landroid/graphics/Rect;->right:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p1, v0, v1, p0, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 402
    :cond_90
    invoke-static {p0, p1}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->centerInScreen(Landroid/util/Size;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static updateInitialBounds(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Ljava/util/function/Consumer;)V
    .registers 19

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 79
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v4, p4

    .line 80
    invoke-virtual {v4, v2}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_20

    .line 82
    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 83
    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatController;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->hasFullscreenOverride()Z

    move-result v5

    if-eqz v5, :cond_20

    move v5, v0

    goto :goto_21

    :cond_20
    move v5, v3

    :goto_21
    if-eqz p3, :cond_2d

    .line 87
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getFlexibleLaunchSize()Z

    move-result v6

    if-eqz v6, :cond_2d

    if-nez v5, :cond_2d

    move v5, v0

    goto :goto_2e

    :cond_2d
    move v5, v3

    :goto_2e
    if-eqz v5, :cond_39

    .line 90
    sget-object v6, Landroid/window/DesktopModeFlags;->ENABLE_CASCADING_WINDOWS:Landroid/window/DesktopModeFlags;

    .line 91
    invoke-virtual {v6}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v6

    if-eqz v6, :cond_39

    goto :goto_3a

    :cond_39
    move v0, v3

    .line 93
    :goto_3a
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v6

    .line 94
    iget-object v9, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v6

    if-eqz p2, :cond_5a

    .line 95
    iget-object v9, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 96
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v10

    iget-boolean v11, p2, Lcom/android/server/wm/ActivityRecord;->mOptOutEdgeToEdge:Z

    .line 95
    invoke-static {v9, v10, v11}, Lcom/android/internal/policy/DesktopModeCompatUtils;->shouldExcludeCaptionFromAppBounds(Landroid/content/pm/ActivityInfo;ZZ)Z

    move-result v9

    if-eqz v9, :cond_5a

    .line 97
    invoke-static {v6}, Lcom/android/internal/policy/SystemBarUtils;->getDesktopViewAppHeaderHeightPx(Landroid/content/Context;)I

    move-result v3

    :cond_5a
    move v6, v3

    if-eqz p3, :cond_86

    .line 99
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_86

    if-nez v5, :cond_86

    .line 101
    iget-object p0, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 102
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "inherit-from-options="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v8, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto/16 :goto_100

    .line 103
    :cond_86
    const-string v9, "respecting option bounds cascaded position="

    if-eqz p1, :cond_da

    .line 104
    iget v3, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v10, v3, 0x70

    and-int/lit8 v11, v3, 0x7

    .line 106
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v3

    if-eqz v3, :cond_ac

    .line 107
    iget-object p0, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    sget v0, Lcom/android/server/wm/DesktopModeBoundsCalculator;->DESKTOP_MODE_INITIAL_BOUNDS_SCALE:F

    .line 108
    invoke-static {v2, v0}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->calculateIdealSize(Landroid/graphics/Rect;F)Landroid/util/Size;

    move-result-object v0

    .line 107
    invoke-static {v2, p1, p0, v0}, Lcom/android/server/wm/LaunchParamsUtil;->calculateLayoutBounds(Landroid/graphics/Rect;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;Landroid/util/Size;)V

    .line 109
    iget-object p0, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-static {v10, v11, p0, v2}, Lcom/android/server/wm/LaunchParamsUtil;->applyLayoutGravity(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 111
    const-string p0, "layout specifies sizes, inheriting size and applying gravity"

    invoke-interface {v8, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_100

    :cond_ac
    if-gtz v10, :cond_b0

    if-lez v11, :cond_100

    .line 113
    :cond_b0
    iget-object p1, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object v1, p2

    move-object v3, p3

    move v5, v0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->calculateInitialBounds(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Landroid/app/ActivityOptions;Lcom/android/server/wm/DisplayContent;ZI)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 115
    iget-object p0, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-static {v10, v11, p0, v2}, Lcom/android/server/wm/LaunchParamsUtil;->applyLayoutGravity(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 117
    const-string p0, "layout specifies gravity, applying desired bounds and gravity"

    invoke-interface {v8, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 118
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v8, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_100

    :cond_da
    move v5, v0

    .line 122
    iget-object p1, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->calculateInitialBounds(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Landroid/app/ActivityOptions;Lcom/android/server/wm/DisplayContent;ZI)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 124
    const-string p0, "layout not specified, applying desired bounds"

    invoke-interface {v8, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 125
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v8, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_100
    :goto_100
    if-eqz v6, :cond_115

    .line 129
    iget-object p0, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    iget-object p1, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 130
    iget-object p0, v7, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mAppBounds:Landroid/graphics/Rect;

    iget p1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v6

    iput p1, p0, Landroid/graphics/Rect;->top:I

    .line 131
    const-string p0, "exclude-caption-height-from-app-bounds"

    invoke-interface {v8, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_115
    return-void
.end method
