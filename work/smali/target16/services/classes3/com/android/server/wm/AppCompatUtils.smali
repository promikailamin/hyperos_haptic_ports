.class public abstract Lcom/android/server/wm/AppCompatUtils;
.super Ljava/lang/Object;
.source "AppCompatUtils.java"


# direct methods
.method public static synthetic $r8$lambda$L9SqUNqcwkBnFgT--g2ID_uX7xA(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 3

    .line 130
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 131
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getScreenResolvedBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_b
    return-object p1
.end method

.method public static adjustBoundsForTaskbar(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .registers 3

    .line 300
    invoke-static {p0}, Lcom/android/server/wm/AppCompatUtils;->getExpandedTaskbarOrNull(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsSource;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 303
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_14
    return-void
.end method

.method public static asLazy(Ljava/util/function/BooleanSupplier;)Ljava/util/function/BooleanSupplier;
    .registers 2

    .line 58
    new-instance v0, Lcom/android/server/wm/AppCompatUtils$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppCompatUtils$1;-><init>(Ljava/util/function/BooleanSupplier;)V

    return-object v0
.end method

.method public static clearAppCompatTaskInfo(Landroid/app/AppCompatTaskInfo;)V
    .registers 3

    const/4 v0, -0x1

    .line 350
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    .line 351
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    .line 352
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    .line 353
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    .line 354
    iget-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v0, 0x0

    .line 355
    iput-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxBounds:Landroid/graphics/Rect;

    .line 356
    iget-object v0, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    const/4 v1, 0x0

    iput v1, v0, Landroid/app/CameraCompatTaskInfo;->cameraCompatMode:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 358
    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topNonResizableActivityAspectRatio:F

    .line 359
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->clearTopActivityFlags()V

    return-void
.end method

.method public static computeAspectRatio(Landroid/graphics/Rect;)F
    .registers 3

    .line 77
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 78
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-eqz v0, :cond_19

    if-nez p0, :cond_d

    goto :goto_19

    .line 82
    :cond_d
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v1, p0

    return v1

    :cond_19
    :goto_19
    const/4 p0, 0x0

    return p0
.end method

.method public static createAppCompatTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Landroid/window/AppCompatTransitionInfo;
    .registers 2

    .line 339
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 340
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object p0

    .line 341
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 342
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 343
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->getLetterboxInnerBounds(Landroid/graphics/Rect;)V

    .line 344
    new-instance p0, Landroid/window/AppCompatTransitionInfo;

    invoke-direct {p0, v0}, Landroid/window/AppCompatTransitionInfo;-><init>(Landroid/graphics/Rect;)V

    return-object p0

    :cond_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fillAppCompatTaskInfo(Lcom/android/server/wm/Task;Landroid/app/TaskInfo;Lcom/android/server/wm/ActivityRecord;)V
    .registers 10

    .line 139
    iget-object v0, p1, Landroid/app/TaskInfo;->appCompatTaskInfo:Landroid/app/AppCompatTaskInfo;

    .line 140
    invoke-static {v0}, Lcom/android/server/wm/AppCompatUtils;->clearAppCompatTaskInfo(Landroid/app/AppCompatTaskInfo;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AppCompatTaskInfo;->setIsLeafTask(Z)V

    if-nez p2, :cond_f

    return-void

    .line 145
    :cond_f
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 146
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getReachabilityOverrides()Lcom/android/server/wm/AppCompatReachabilityOverrides;

    move-result-object v1

    .line 147
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, p0, :cond_27

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p2, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    if-eqz v2, :cond_27

    move v2, v3

    goto :goto_28

    :cond_27
    move v2, v4

    .line 148
    :goto_28
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-ne v5, p0, :cond_3c

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 151
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v5

    if-eqz v5, :cond_3c

    move v5, v3

    goto :goto_3d

    :cond_3c
    move v5, v4

    .line 150
    :goto_3d
    invoke-virtual {v0, v5}, Landroid/app/AppCompatTaskInfo;->setTopActivityInSizeCompat(Z)V

    .line 152
    invoke-virtual {v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityInSizeCompat()Z

    move-result v5

    if-eqz v5, :cond_57

    iget-object v5, p2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 153
    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatConfiguration;->isTranslucentLetterboxingEnabled()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 155
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/app/AppCompatTaskInfo;->setTopActivityInSizeCompat(Z)V

    :cond_57
    if-eqz v2, :cond_67

    .line 158
    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 159
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object v2

    .line 160
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->isEligibleForLetterboxEducation()Z

    move-result v2

    if-eqz v2, :cond_67

    move v2, v3

    goto :goto_68

    :cond_67
    move v2, v4

    .line 158
    :goto_68
    invoke-virtual {v0, v2}, Landroid/app/AppCompatTaskInfo;->setEligibleForLetterboxEducation(Z)V

    .line 161
    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 162
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatController;->getLetterboxOverrides()Lcom/android/server/wm/AppCompatLetterboxOverrides;

    move-result-object v2

    .line 163
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->isLetterboxEducationEnabled()Z

    move-result v2

    .line 161
    invoke-virtual {v0, v2}, Landroid/app/AppCompatTaskInfo;->setLetterboxEducationEnabled(Z)V

    .line 165
    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 166
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatController;->getDisplayCompatModePolicy()Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->isRestartMenuEnabledForDisplayMove()Z

    move-result v2

    .line 165
    invoke-virtual {v0, v2}, Landroid/app/AppCompatTaskInfo;->setRestartMenuEnabledForDisplayMove(Z)V

    .line 171
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->areSafeRegionBoundsApplied()Z

    move-result v2

    if-nez v2, :cond_9a

    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 172
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatController;->getSafeRegionPolicy()Lcom/android/server/wm/AppCompatSafeRegionPolicy;

    move-result-object v2

    .line 173
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->isLetterboxedForSafeRegionOnlyAllowed()Z

    move-result v2

    if-eqz v2, :cond_98

    goto :goto_9a

    :cond_98
    move v2, v4

    goto :goto_9b

    :cond_9a
    :goto_9a
    move v2, v3

    .line 171
    :goto_9b
    invoke-virtual {v0, v2}, Landroid/app/AppCompatTaskInfo;->setTopActivitySafeRegionLetterboxed(Z)V

    .line 175
    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 176
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatController;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v2

    .line 178
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldApplyUserFullscreenOverride()Z

    move-result v5

    .line 177
    invoke-virtual {v0, v5}, Landroid/app/AppCompatTaskInfo;->setUserFullscreenOverrideEnabled(Z)V

    .line 180
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->isSystemOverrideToFullscreenEnabled()Z

    move-result v5

    .line 179
    invoke-virtual {v0, v5}, Landroid/app/AppCompatTaskInfo;->setSystemFullscreenOverrideEnabled(Z)V

    .line 182
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isFromDoubleTap()Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/app/AppCompatTaskInfo;->setIsFromLetterboxDoubleTap(Z)V

    .line 184
    iget-object v5, v0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    invoke-static {p2}, Lcom/android/server/wm/AppCompatUtils;->getAppBounds(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 186
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object v5

    if-eqz v5, :cond_cf

    .line 187
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object v5

    iget v5, v5, Lcom/android/server/wm/AppCompatDisplayInsets;->mAspectRatio:F

    goto :goto_d1

    :cond_cf
    const/high16 v5, -0x40800000    # -1.0f

    .line 188
    :goto_d1
    iput v5, v0, Landroid/app/AppCompatTaskInfo;->topNonResizableActivityAspectRatio:F

    .line 189
    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 190
    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object v5

    .line 191
    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->isRunning()Z

    move-result v6

    .line 192
    invoke-virtual {v0, v6}, Landroid/app/AppCompatTaskInfo;->setTopActivityLetterboxed(Z)V

    if-eqz v6, :cond_130

    .line 195
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxBounds:Landroid/graphics/Rect;

    .line 196
    invoke-virtual {v5, v6}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->getLetterboxInnerBounds(Landroid/graphics/Rect;)V

    .line 197
    iget-object v5, v0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxBounds:Landroid/graphics/Rect;

    .line 198
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    .line 199
    iget-object v5, v0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxBounds:Landroid/graphics/Rect;

    .line 200
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    .line 204
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->isLetterboxDoubleTapEducationEnabled()Z

    move-result v5

    .line 203
    invoke-virtual {v0, v5}, Landroid/app/AppCompatTaskInfo;->setLetterboxDoubleTapEnabled(Z)V

    .line 205
    invoke-virtual {v0}, Landroid/app/AppCompatTaskInfo;->isLetterboxDoubleTapEnabled()Z

    move-result v5

    if-eqz v5, :cond_130

    .line 206
    invoke-virtual {v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityPillarboxShaped()Z

    move-result v5

    if-eqz v5, :cond_120

    .line 207
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->allowHorizontalReachabilityForThinLetterbox()Z

    move-result v5

    if-eqz v5, :cond_11c

    .line 211
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->getLetterboxPositionForHorizontalReachability()I

    move-result v1

    iput v1, v0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    goto :goto_130

    .line 213
    :cond_11c
    invoke-virtual {v0, v4}, Landroid/app/AppCompatTaskInfo;->setLetterboxDoubleTapEnabled(Z)V

    goto :goto_130

    .line 216
    :cond_120
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->allowVerticalReachabilityForThinLetterbox()Z

    move-result v5

    if-eqz v5, :cond_12d

    .line 219
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->getLetterboxPositionForVerticalReachability()I

    move-result v1

    iput v1, v0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    goto :goto_130

    .line 221
    :cond_12d
    invoke-virtual {v0, v4}, Landroid/app/AppCompatTaskInfo;->setLetterboxDoubleTapEnabled(Z)V

    .line 227
    :cond_130
    :goto_130
    iget-boolean p1, p1, Landroid/app/TaskInfo;->isTopActivityTransparent:Z

    if-nez p1, :cond_141

    .line 228
    invoke-virtual {v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityInSizeCompat()Z

    move-result p1

    if-nez p1, :cond_141

    .line 229
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldEnableUserAspectRatioSettings()Z

    move-result p1

    if-eqz p1, :cond_141

    goto :goto_142

    :cond_141
    move v3, v4

    .line 230
    :goto_142
    invoke-virtual {v0, v3}, Landroid/app/AppCompatTaskInfo;->setEligibleForUserAspectRatioButton(Z)V

    .line 238
    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 239
    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatController;->getDesktopAspectRatioPolicy()Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->hasMinAspectRatioOverride(Lcom/android/server/wm/Task;)Z

    move-result p0

    .line 238
    invoke-virtual {v0, p0}, Landroid/app/AppCompatTaskInfo;->setHasMinAspectRatioOverride(Z)V

    .line 240
    iget-boolean p0, p2, Lcom/android/server/wm/ActivityRecord;->mOptOutEdgeToEdge:Z

    invoke-virtual {v0, p0}, Landroid/app/AppCompatTaskInfo;->setOptOutEdgeToEdge(Z)V

    return-void
.end method

.method public static getAppBounds(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;
    .registers 4

    .line 122
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_11

    .line 124
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 126
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v1

    .line 127
    invoke-virtual {v1}, Lcom/android/server/wm/TransparentPolicy;->findOpaqueNotFinishingActivityBelow()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/AppCompatUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/wm/AppCompatUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 128
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/AppCompatUtils$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/AppCompatUtils$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V

    .line 129
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public static getExpandedTaskbarOrNull(Lcom/android/server/wm/WindowState;)Landroid/view/InsetsSource;
    .registers 5

    .line 278
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getInsetsState()Landroid/view/InsetsState;

    move-result-object p0

    .line 279
    invoke-virtual {p0}, Landroid/view/InsetsState;->sourceSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_2b

    .line 280
    invoke-virtual {p0, v0}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v1

    .line 281
    invoke-virtual {v1}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    if-ne v2, v3, :cond_28

    const/4 v2, 0x2

    .line 282
    invoke-virtual {v1, v2}, Landroid/view/InsetsSource;->hasFlags(I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 283
    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_28

    return-object v1

    :cond_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_2b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLetterboxReasonString(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;)Ljava/lang/String;
    .registers 4

    .line 252
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 253
    const-string p0, "SIZE_COMPAT_MODE"

    return-object p0

    .line 255
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 256
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getAspectRatioPolicy()Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isLetterboxedForFixedOrientationAndAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 258
    const-string p0, "FIXED_ORIENTATION"

    return-object p0

    .line 260
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutout()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 261
    const-string p0, "DISPLAY_CUTOUT"

    return-object p0

    .line 263
    :cond_21
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isLetterboxedForAspectRatioOnly()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 264
    const-string p0, "ASPECT_RATIO"

    return-object p0

    .line 266
    :cond_2a
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getSafeRegionPolicy()Lcom/android/server/wm/AppCompatSafeRegionPolicy;

    move-result-object p0

    .line 267
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->isLetterboxedForSafeRegionOnlyAllowed()Z

    move-result p0

    if-eqz p0, :cond_39

    .line 268
    const-string p0, "SAFE_REGION"

    return-object p0

    .line 270
    :cond_39
    const-string p0, "UNKNOWN_REASON"

    return-object p0
.end method

.method public static isChangeEnabled(Lcom/android/server/wm/ActivityRecord;J)Z
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 101
    invoke-static {p0}, Lcom/android/server/wm/AppCompatUtils;->isDisplayIgnoreActivitySizeRestrictions(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static isDesktopFirst(Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 2

    if-eqz p0, :cond_b

    .line 325
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static isDisplayIgnoreActivitySizeRestrictions(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_c

    .line 111
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isDisplayIgnoreActivitySizeRestrictions()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static isInDesktopMode(Landroid/content/Context;I)Z
    .registers 3

    const/4 v0, 0x5

    if-ne p1, v0, :cond_b

    .line 317
    invoke-static {p0}, Lcom/android/server/wm/DesktopModeHelper;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public static isInVrUiMode(Landroid/content/res/Configuration;)Z
    .registers 2

    .line 90
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x7

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static offsetBounds(Landroid/content/res/Configuration;II)V
    .registers 4

    .line 308
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 309
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method
