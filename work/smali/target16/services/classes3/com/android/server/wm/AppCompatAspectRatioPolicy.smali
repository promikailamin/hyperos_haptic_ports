.class public Lcom/android/server/wm/AppCompatAspectRatioPolicy;
.super Ljava/lang/Object;
.source "AppCompatAspectRatioPolicy.java"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

.field public final mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TransparentPolicy;Lcom/android/server/wm/AppCompatOverrides;)V
    .registers 5

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTmpBounds:Landroid/graphics/Rect;

    .line 65
    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 66
    iput-object p2, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    .line 67
    iput-object p3, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 68
    new-instance p1, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;-><init>(Lcom/android/server/wm/AppCompatAspectRatioPolicy-IA;)V

    iput-object p1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    return-void
.end method


# virtual methods
.method public final applyAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;F)Z
    .registers 13

    .line 282
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getMaxAspectRatio()F

    move-result v0

    .line 283
    iget-object v1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 284
    iget-object v2, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 285
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getMinAspectRatio()F

    move-result v3

    .line 286
    iget-object v4, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v2, :cond_ea

    if-eqz v1, :cond_ea

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v6, v0, v1

    if-gez v6, :cond_2d

    cmpg-float v6, v3, v1

    if-gez v6, :cond_2d

    cmpg-float v6, p4, v1

    if-ltz v6, :cond_ea

    .line 288
    :cond_2d
    iget-object v6, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 291
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/wm/AppCompatUtils;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result v6

    if-nez v6, :cond_ea

    if-eqz v4, :cond_41

    .line 294
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->fillsParent()Z

    move-result v4

    if-eqz v4, :cond_ea

    :cond_41
    sget-object v4, Landroid/window/DesktopModeFlags;->IGNORE_ASPECT_RATIO_RESTRICTIONS_FOR_RESIZEABLE_FREEFORM_ACTIVITIES:Landroid/window/DesktopModeFlags;

    .line 303
    invoke-virtual {v4}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v4

    if-eqz v4, :cond_62

    .line 304
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_62

    iget-object v2, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 305
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->shouldCreateAppCompatDisplayInsets()Z

    move-result v2

    if-nez v2, :cond_62

    iget-object v2, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 306
    invoke-static {v2}, Lcom/android/server/wm/AppCompatCameraPolicy;->shouldCameraCompatControlAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-nez v2, :cond_62

    goto/16 :goto_ea

    .line 311
    :cond_62
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 312
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 313
    invoke-static {p2}, Lcom/android/server/wm/AppCompatUtils;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result v6

    cmpg-float v7, p4, v1

    if-gez v7, :cond_73

    move p4, v6

    :cond_73
    cmpl-float v7, v0, v1

    if-ltz v7, :cond_7c

    cmpl-float v7, p4, v0

    if-lez v7, :cond_7c

    goto :goto_87

    :cond_7c
    cmpl-float v0, v3, v1

    if-ltz v0, :cond_86

    cmpg-float v0, p4, v3

    if-gez v0, :cond_86

    move v0, v3

    goto :goto_87

    :cond_86
    move v0, p4

    :goto_87
    sub-float p4, v6, v0

    const v1, 0x3ba3d70a    # 0.005f

    cmpl-float p4, p4, v1

    const/4 v3, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    if-lez p4, :cond_af

    .line 329
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p4, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p4, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->shouldForceCutoutFullscreen(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a0

    goto :goto_c9

    :cond_a0
    if-ge v2, v4, :cond_a9

    int-to-float p0, v2

    mul-float/2addr p0, v0

    :goto_a4
    add-float/2addr p0, v7

    float-to-int p0, p0

    move p4, p0

    move p0, v2

    goto :goto_cb

    :cond_a9
    int-to-float p0, v4

    mul-float/2addr p0, v0

    :goto_ab
    add-float/2addr p0, v7

    float-to-int p0, p0

    :goto_ad
    move p4, v4

    goto :goto_cb

    :cond_af
    sub-float p4, v0, v6

    cmpl-float p4, p4, v1

    if-lez p4, :cond_c9

    .line 342
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result p0

    if-eq p0, v3, :cond_c6

    const/4 p4, 0x2

    if-eq p0, p4, :cond_c3

    if-ge v2, v4, :cond_c3

    goto :goto_c6

    :cond_c3
    int-to-float p0, v2

    div-float/2addr p0, v0

    goto :goto_a4

    :cond_c6
    :goto_c6
    int-to-float p0, v4

    div-float/2addr p0, v0

    goto :goto_ab

    :cond_c9
    :goto_c9
    move p0, v2

    goto :goto_ad

    :goto_cb
    if-gt v2, p0, :cond_d0

    if-gt v4, p4, :cond_d0

    return v5

    .line 386
    :cond_d0
    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v0

    .line 388
    iget v1, p2, Landroid/graphics/Rect;->right:I

    if-lt p0, v1, :cond_db

    .line 389
    iget p0, p3, Landroid/graphics/Rect;->right:I

    .line 390
    iget v0, p3, Landroid/graphics/Rect;->left:I

    .line 392
    :cond_db
    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr p4, v1

    .line 394
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-lt p4, p2, :cond_e6

    .line 395
    iget p4, p3, Landroid/graphics/Rect;->bottom:I

    .line 396
    iget v1, p3, Landroid/graphics/Rect;->top:I

    .line 398
    :cond_e6
    invoke-virtual {p1, v0, v1, p0, p4}, Landroid/graphics/Rect;->set(IIII)V

    return v3

    :cond_ea
    :goto_ea
    return v5
.end method

.method public applyAspectRatioForLetterbox(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6

    .line 104
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->applyAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;F)Z

    move-result p0

    invoke-static {v0, p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->-$$Nest$fputmIsAspectRatioApplied(Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;Z)V

    return-void
.end method

.method public applyDesiredAspectRatio(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getDesiredAspectRatio(Landroid/content/res/Configuration;Landroid/graphics/Rect;)F

    move-result p1

    .line 98
    iget-object p2, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    invoke-virtual {p0, p3, p4, p5, p1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->applyAspectRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;F)Z

    move-result p0

    invoke-static {p2, p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->-$$Nest$fputmIsAspectRatioApplied(Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;Z)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .registers 4

    const-wide v0, 0x10200000021L

    .line 423
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getMinAspectRatio()F

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    return-void
.end method

.method public final getDesiredAspectRatio(Landroid/content/res/Configuration;Landroid/graphics/Rect;)F
    .registers 4

    .line 81
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 82
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatOverrides;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getFixedOrientationLetterboxAspectRatio(Landroid/content/res/Configuration;)F

    move-result v0

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isDefaultMultiWindowLetterboxAspectRatioDesired(Landroid/content/res/Configuration;)Z

    move-result p0

    if-eqz p0, :cond_14

    const p0, 0x3f8147ae    # 1.01f

    return p0

    :cond_14
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, v0, p0

    if-lez p0, :cond_1b

    return v0

    .line 91
    :cond_1b
    invoke-static {p2}, Lcom/android/server/wm/AppCompatUtils;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result p0

    return p0
.end method

.method public getLetterboxedContainerBounds()Landroid/graphics/Rect;
    .registers 1

    .line 194
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->getLetterboxedContainerBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getMaxAspectRatio()F
    .registers 4

    .line 182
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 183
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy;->getInheritedMaxAspectRatio()F

    move-result p0

    return p0

    .line 185
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_26

    .line 186
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isUniversalResizeable()Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_26

    :cond_25
    return v0

    :cond_26
    :goto_26
    return v1
.end method

.method public getMinAspectRatio()F
    .registers 5

    .line 119
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 120
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy;->getInheritedMinAspectRatio()F

    move-result p0

    return p0

    .line 123
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 127
    invoke-static {v0}, Lcom/android/server/wm/AppCompatCameraPolicy;->shouldCameraCompatControlAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 128
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->getCameraCompatMinAspectRatio(Lcom/android/server/wm/ActivityRecord;)F

    move-result p0

    .line 129
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v0

    .line 128
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    .line 132
    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 133
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatOverrides;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldApplyUserMinAspectRatioOverride()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 135
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getUserMinAspectRatio()F

    move-result p0

    return p0

    .line 137
    :cond_39
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldOverrideMinAspectRatio()Z

    move-result v2

    if-nez v2, :cond_5b

    iget-object v2, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 138
    invoke-static {v2}, Lcom/android/server/wm/AppCompatCameraPolicy;->shouldOverrideMinAspectRatioForCamera(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 139
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_5a

    .line 140
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isUniversalResizeable()Z

    move-result p0

    if-eqz p0, :cond_59

    goto :goto_5a

    :cond_59
    return v0

    :cond_5a
    :goto_5a
    return v1

    :cond_5b
    const-wide/32 v2, 0xc2368d6

    .line 146
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 148
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v2

    .line 147
    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v2

    if-nez v2, :cond_75

    .line 149
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result p0

    return p0

    :cond_75
    const-wide/32 v2, 0xd0d1070

    .line 152
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 153
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isParentFullscreenPortrait()Z

    move-result p0

    if-eqz p0, :cond_89

    .line 156
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result p0

    return p0

    :cond_89
    const-wide/32 v2, 0xc6fb886

    .line 159
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_9f

    .line 160
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getSplitScreenAspectRatio()F

    move-result p0

    .line 161
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v0

    .line 160
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_9f
    const-wide/32 v2, 0xabf9183

    .line 164
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_b4

    const p0, 0x3fe38e39

    .line 166
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v0

    .line 165
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_b4
    const-wide/32 v2, 0xabf91bd

    .line 169
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_c8

    const/high16 p0, 0x3fc00000    # 1.5f

    .line 171
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v0

    .line 170
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_c8
    const-wide/32 v2, 0x14ce0124

    .line 174
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_dd

    const p0, 0x3faaaaab

    .line 176
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v0

    .line 175
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    .line 178
    :cond_dd
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result p0

    return p0
.end method

.method public final getOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;
    .registers 1

    .line 419
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object p0

    return-object p0
.end method

.method public hasFixedAspectRatio()Z
    .registers 3

    .line 225
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getMaxAspectRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getMinAspectRatio()F

    move-result p0

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    return p0

    :cond_14
    :goto_14
    const/4 p0, 0x1

    return p0
.end method

.method public isAspectRatioApplied()Z
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    invoke-static {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->-$$Nest$fgetmIsAspectRatioApplied(Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;)Z

    move-result p0

    return p0
.end method

.method public final isDefaultMultiWindowLetterboxAspectRatioDesired(Landroid/content/res/Configuration;)Z
    .registers 3

    .line 408
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 412
    :cond_8
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p1

    .line 413
    invoke-static {p1}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 414
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result p0

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    return v0
.end method

.method public isLetterboxedForAspectRatioOnly()Z
    .registers 1

    .line 210
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->isLetterboxedForAspectRatioOnly()Z

    move-result p0

    return p0
.end method

.method public isLetterboxedForFixedOrientationAndAspectRatio()Z
    .registers 1

    .line 206
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->isLetterboxedForFixedOrientationAndAspectRatio()Z

    move-result p0

    return p0
.end method

.method public final isParentFullscreenPortrait()Z
    .registers 3

    .line 268
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 270
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 271
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    if-ne p0, v1, :cond_1c

    return v1

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->reset()V

    return-void
.end method

.method public resolveAspectRatioRestrictionIfNeeded(Landroid/content/res/Configuration;)V
    .registers 7

    .line 238
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isLetterboxedForFixedOrientationAndAspectRatio()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 239
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->hasFullscreenOverride()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_5f

    .line 242
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-object v2, v1, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    .line 245
    iget-object v1, v1, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentBoundsOverride:Landroid/graphics/Rect;

    .line 246
    iget-object v3, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 249
    iget-object v4, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 250
    iget-object v4, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v2, v1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->applyAspectRatioForLetterbox(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 253
    iget-object v2, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3c

    .line 254
    iget-object v2, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 256
    :cond_3c
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5f

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 260
    iget-object v1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    .line 261
    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iput-object v1, v2, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 262
    iget-object v1, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/wm/ActivityRecord;->computeConfigByResolveHint(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 263
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->setLetterboxBoundsForAspectRatio(Landroid/graphics/Rect;)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method public setLetterboxBoundsForAspectRatio(Landroid/graphics/Rect;)V
    .registers 2

    .line 218
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    invoke-static {p0, p1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->-$$Nest$fputmLetterboxBoundsForAspectRatio(Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;Landroid/graphics/Rect;)V

    return-void
.end method

.method public setLetterboxBoundsForFixedOrientationAndAspectRatio(Landroid/graphics/Rect;)V
    .registers 2

    .line 214
    iget-object p0, p0, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->mAppCompatAspectRatioState:Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;

    invoke-static {p0, p1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;->-$$Nest$fputmLetterboxBoundsForFixedOrientationAndAspectRatio(Lcom/android/server/wm/AppCompatAspectRatioPolicy$AppCompatAspectRatioState;Landroid/graphics/Rect;)V

    return-void
.end method
