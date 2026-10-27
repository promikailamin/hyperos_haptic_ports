.class public Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;
.super Ljava/lang/Object;
.source "DesktopAppCompatAspectRatioPolicy.java"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

.field public final mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

.field public final mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatOverrides;Lcom/android/server/wm/TransparentPolicy;Lcom/android/server/wm/AppCompatConfiguration;)V
    .registers 5

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 64
    iput-object p2, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 65
    iput-object p3, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    .line 66
    iput-object p4, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    return-void
.end method


# virtual methods
.method public calculateAspectRatio(Lcom/android/server/wm/Task;Z)F
    .registers 5

    .line 74
    sget-object v0, Landroid/window/DesktopExperienceFlags;->PRESERVE_RECENTS_TASK_CONFIGURATION_ON_RELAUNCH:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-boolean v0, p1, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_3b

    .line 75
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 76
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 78
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 79
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/AppCompatDisplayInsets;->mAspectRatio:F

    return p0

    .line 82
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p0

    .line 83
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 84
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_36

    :cond_32
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 85
    :goto_36
    invoke-static {p0}, Lcom/android/server/wm/AppCompatUtils;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result p0

    return p0

    .line 87
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->getMaxAspectRatio()F

    move-result v0

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->getMinAspectRatio(Lcom/android/server/wm/Task;)F

    move-result v1

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->getDesiredAspectRatio(Lcom/android/server/wm/Task;Z)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p2, v0, p1

    if-ltz p2, :cond_52

    cmpl-float p2, p0, v0

    if-lez p2, :cond_52

    return v0

    :cond_52
    cmpl-float p1, v1, p1

    if-ltz p1, :cond_5b

    cmpg-float p1, p0, v1

    if-gez p1, :cond_5b

    return v1

    :cond_5b
    return p0
.end method

.method public final getDefaultMinAspectRatio(Lcom/android/server/wm/Task;)F
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->getIsDisplayAspectRatioEnabledForFixedOrientationLetterbox()Z

    move-result v0

    if-nez v0, :cond_f

    .line 172
    iget-object p0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getFixedOrientationLetterboxAspectRatio()F

    move-result p0

    return p0

    .line 174
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->getDisplayAreaMinAspectRatio(Lcom/android/server/wm/Task;)F

    move-result p0

    return p0
.end method

.method public final getDefaultMinAspectRatioForUnresizableApps(Lcom/android/server/wm/Task;)F
    .registers 4

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->getIsSplitScreenAspectRatioForUnresizableAppsEnabled()Z

    move-result v0

    if-nez v0, :cond_20

    .line 159
    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 158
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatConfiguration;->getDefaultMinAspectRatioForUnresizableApps()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1b

    .line 160
    iget-object p0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->getDefaultMinAspectRatioForUnresizableApps()F

    move-result p0

    return p0

    .line 161
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->getDefaultMinAspectRatio(Lcom/android/server/wm/Task;)F

    move-result p0

    return p0

    .line 164
    :cond_20
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->getSplitScreenAspectRatio(Lcom/android/server/wm/Task;)F

    move-result p0

    return p0
.end method

.method public getDesiredAspectRatio(Lcom/android/server/wm/Task;Z)F
    .registers 4

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->getFixedOrientationLetterboxAspectRatio(Lcom/android/server/wm/Task;)F

    move-result v0

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->isDefaultMultiWindowLetterboxAspectRatioDesired(Lcom/android/server/wm/Task;)Z

    move-result p0

    if-eqz p0, :cond_e

    const p0, 0x3f8147ae    # 1.01f

    return p0

    :cond_e
    if-eqz p2, :cond_17

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, v0, p0

    if-lez p0, :cond_17

    return v0

    .line 114
    :cond_17
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/AppCompatUtils;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result p0

    return p0
.end method

.method public final getDisplayAreaMinAspectRatio(Lcom/android/server/wm/Task;)F
    .registers 2

    .line 181
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    .line 182
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 183
    invoke-static {p1}, Lcom/android/server/wm/AppCompatUtils;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result p0

    return p0
.end method

.method public final getFixedOrientationLetterboxAspectRatio(Lcom/android/server/wm/Task;)F
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->shouldCreateAppCompatDisplayInsets()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 123
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->getDefaultMinAspectRatioForUnresizableApps(Lcom/android/server/wm/Task;)F

    move-result p0

    return p0

    .line 124
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->getDefaultMinAspectRatio(Lcom/android/server/wm/Task;)F

    move-result p0

    return p0
.end method

.method public final getMaxAspectRatio()F
    .registers 4

    .line 258
    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 259
    iget-object p0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy;->getInheritedMaxAspectRatio()F

    move-result p0

    return p0

    .line 261
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_26

    .line 262
    iget-object p0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

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

.method public final getMinAspectRatio(Lcom/android/server/wm/Task;)F
    .registers 6

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 202
    iget-object p0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mTransparentPolicy:Lcom/android/server/wm/TransparentPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy;->getInheritedMinAspectRatio()F

    move-result p0

    return p0

    .line 205
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 206
    iget-object v1, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    .line 207
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatOverrides;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v1

    .line 208
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->shouldApplyUserMinAspectRatioOverride(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 209
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getUserMinAspectRatio()F

    move-result p0

    return p0

    .line 212
    :cond_24
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->shouldOverrideMinAspectRatio()Z

    move-result v2

    if-nez v2, :cond_46

    iget-object v2, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 213
    invoke-static {v2}, Lcom/android/server/wm/AppCompatCameraPolicy;->shouldOverrideMinAspectRatioForCamera(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 214
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_45

    .line 215
    iget-object p0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isUniversalResizeable()Z

    move-result p0

    if-eqz p0, :cond_44

    goto :goto_45

    :cond_44
    return p1

    :cond_45
    :goto_45
    return v0

    :cond_46
    const-wide/32 v2, 0xc2368d6

    .line 221
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_60

    iget-object v2, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 223
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v2

    .line 222
    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v2

    if-nez v2, :cond_60

    .line 224
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result p0

    return p0

    :cond_60
    const-wide/32 v2, 0xd0d1070

    .line 227
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->isFullscreenPortrait(Lcom/android/server/wm/Task;)Z

    move-result p0

    if-eqz p0, :cond_74

    .line 229
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result p0

    return p0

    :cond_74
    const-wide/32 p0, 0xc6fb886

    .line 232
    invoke-virtual {v0, p0, p1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_8a

    .line 233
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getSplitScreenAspectRatio()F

    move-result p0

    .line 234
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result p1

    .line 233
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_8a
    const-wide/32 p0, 0xabf9183

    .line 237
    invoke-virtual {v0, p0, p1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_9f

    const p0, 0x3fe38e39

    .line 239
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result p1

    .line 238
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_9f
    const-wide/32 p0, 0xabf91bd

    .line 242
    invoke-virtual {v0, p0, p1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_b3

    const/high16 p0, 0x3fc00000    # 1.5f

    .line 244
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result p1

    .line 243
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_b3
    const-wide/32 p0, 0x14ce0124

    .line 247
    invoke-virtual {v0, p0, p1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p0

    if-eqz p0, :cond_c8

    const p0, 0x3faaaaab

    .line 249
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result p1

    .line 248
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    .line 251
    :cond_c8
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result p0

    return p0
.end method

.method public final getSplitScreenAspectRatio(Lcom/android/server/wm/Task;)F
    .registers 5

    .line 133
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 135
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050191

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 137
    iget-object p0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x1050190

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    .line 141
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 142
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/4 v2, 0x0

    if-lt p1, v1, :cond_4d

    .line 143
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 144
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->right:I

    goto :goto_58

    .line 146
    :cond_4d
    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v2, v0}, Landroid/graphics/Rect;->inset(II)V

    .line 147
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    .line 149
    :goto_58
    invoke-static {p0}, Lcom/android/server/wm/AppCompatUtils;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result p0

    return p0
.end method

.method public hasMinAspectRatioOverride(Lcom/android/server/wm/Task;)Z
    .registers 3

    .line 272
    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->getMinAspectRatio(Lcom/android/server/wm/Task;)F

    move-result p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final isDefaultMultiWindowLetterboxAspectRatioDesired(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 191
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 192
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p1

    .line 193
    invoke-static {p1}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result p1

    if-eqz p1, :cond_1a

    if-eqz p0, :cond_1a

    .line 194
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result p0

    if-nez p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public final isFullscreenPortrait(Lcom/android/server/wm/Task;)Z
    .registers 3

    .line 310
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_14

    .line 311
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    if-ne p0, v0, :cond_14

    return v0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public shouldApplyUserMinAspectRatioOverride(Lcom/android/server/wm/Task;)Z
    .registers 3

    .line 280
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->shouldEnableUserAspectRatioSettings(Lcom/android/server/wm/Task;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 284
    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatOverrides;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object p0

    .line 285
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getUserMinAspectRatioOverrideCode()I

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p1, 0x7

    if-eq p0, p1, :cond_1c

    const/4 p1, 0x6

    if-eq p0, p1, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    return v0
.end method

.method public final shouldEnableUserAspectRatioSettings(Lcom/android/server/wm/Task;)Z
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatOverrides;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->getAllowUserAspectRatioOverridePropertyValue()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/android/server/wm/DesktopAppCompatAspectRatioPolicy;->mAppCompatConfiguration:Lcom/android/server/wm/AppCompatConfiguration;

    .line 301
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfiguration;->isUserAppAspectRatioSettingsEnabled()Z

    move-result p0

    if-eqz p0, :cond_20

    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_20

    .line 303
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method
