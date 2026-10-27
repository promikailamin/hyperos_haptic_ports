.class public abstract Lcom/android/server/wm/LaunchParamsUtil;
.super Ljava/lang/Object;
.source "LaunchParamsUtil.java"


# static fields
.field public static final TMP_STABLE_BOUNDS:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$BuJm8dkey1UswkQQbLm_XtJeIB8(ILcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/TaskDisplayArea;
    .registers 3

    .line 309
    iget v0, p1, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    if-ne v0, p0, :cond_5

    return-object p1

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/LaunchParamsUtil;->TMP_STABLE_BOUNDS:Landroid/graphics/Rect;

    return-void
.end method

.method public static adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;ILandroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V
    .registers 7

    .line 149
    sget-object v0, Lcom/android/server/wm/LaunchParamsUtil;->TMP_STABLE_BOUNDS:Landroid/graphics/Rect;

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p0, p0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr p0, v1

    const/high16 v1, 0x41d80000    # 27.0f

    mul-float/2addr p0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p0, v1

    float-to-int p0, p0

    .line 153
    invoke-virtual {v0, p0, p0}, Landroid/graphics/Rect;->inset(II)V

    .line 155
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lt p0, v1, :cond_2d

    .line 156
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge p0, v1, :cond_7f

    .line 157
    :cond_2d
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p0, v1

    .line 159
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 160
    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v1, -0x1

    if-nez p2, :cond_4c

    move v2, v1

    goto :goto_4e

    .line 162
    :cond_4c
    iget v2, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    :goto_4e
    if-nez p2, :cond_51

    goto :goto_53

    .line 163
    :cond_51
    iget v1, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    .line 164
    :goto_53
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p0

    float-to-int p2, p2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 166
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p0

    float-to-int p0, v2

    .line 165
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 167
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lt v1, p2, :cond_a5

    .line 168
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ge v1, p0, :cond_76

    goto :goto_a5

    .line 178
    :cond_76
    iget p1, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p1

    add-int/2addr p0, v1

    invoke-virtual {p3, p1, v1, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 183
    :cond_7f
    iget p0, p3, Landroid/graphics/Rect;->right:I

    iget p1, v0, Landroid/graphics/Rect;->right:I

    const/4 p2, 0x0

    if-le p0, p1, :cond_88

    :goto_86
    sub-int/2addr p1, p0

    goto :goto_90

    .line 186
    :cond_88
    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget p1, v0, Landroid/graphics/Rect;->left:I

    if-ge p0, p1, :cond_8f

    goto :goto_86

    :cond_8f
    move p1, p2

    .line 195
    :goto_90
    iget p0, p3, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-ge p0, v1, :cond_99

    sub-int p2, v1, p0

    goto :goto_a1

    .line 198
    :cond_99
    iget p0, p3, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-le p0, v0, :cond_a1

    sub-int p2, v0, p0

    .line 205
    :cond_a1
    :goto_a1
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    return-void

    :cond_a5
    :goto_a5
    const/4 v1, 0x1

    if-ne p1, v1, :cond_ac

    .line 172
    iget p1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    goto :goto_ae

    .line 173
    :cond_ac
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 174
    :goto_ae
    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, p1

    add-int/2addr p0, v0

    invoke-virtual {p3, p1, v0, p2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static applyLayoutGravity(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 10

    .line 250
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 251
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    if-eq p1, v2, :cond_17

    const/4 v2, 0x5

    if-eq p1, v2, :cond_15

    move p1, v5

    goto :goto_18

    :cond_15
    move p1, v4

    goto :goto_18

    :cond_17
    move p1, v3

    :goto_18
    const/16 v2, 0x30

    if-eq p0, v2, :cond_23

    const/16 v2, 0x50

    if-eq p0, v2, :cond_22

    move v3, v5

    goto :goto_23

    :cond_22
    move v3, v4

    .line 277
    :cond_23
    :goto_23
    iget p0, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p0, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 278
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p0

    sub-int/2addr p0, v0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    .line 279
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    sub-int/2addr p1, v1

    int-to-float p1, p1

    mul-float/2addr v3, p1

    float-to-int p1, v3

    .line 280
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public static calculateLayoutBounds(Landroid/graphics/Rect;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;Landroid/util/Size;)V
    .registers 10

    .line 217
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 218
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez p3, :cond_17

    .line 225
    new-instance p3, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-direct {p3, v2, p0}, Landroid/util/Size;-><init>(II)V

    .line 228
    :cond_17
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p0

    .line 229
    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-lez v2, :cond_26

    if-ge v2, v0, :cond_26

    move p0, v2

    goto :goto_33

    .line 231
    :cond_26
    iget v2, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    cmpl-float v5, v2, v4

    if-lez v5, :cond_33

    cmpg-float v5, v2, v3

    if-gez v5, :cond_33

    int-to-float p0, v0

    mul-float/2addr p0, v2

    float-to-int p0, p0

    .line 235
    :cond_33
    :goto_33
    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    .line 236
    iget v0, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-lez v0, :cond_3f

    if-ge v0, v1, :cond_3f

    move p3, v0

    goto :goto_4c

    .line 238
    :cond_3f
    iget p1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    cmpl-float v0, p1, v4

    if-lez v0, :cond_4c

    cmpg-float v0, p1, v3

    if-gez v0, :cond_4c

    int-to-float p3, v1

    mul-float/2addr p3, p1

    float-to-int p3, p3

    :cond_4c
    :goto_4c
    const/4 p1, 0x0

    .line 242
    invoke-virtual {p2, p1, p1, p0, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static canPlaceEntityOnDisplay(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;Lcom/android/server/wm/ActivityTaskSupervisor;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 490
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result p0

    if-eqz p1, :cond_f

    .line 492
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->canBeLaunchedOnDisplay(I)Z

    move-result p0

    return p0

    :cond_f
    if-eqz p2, :cond_1e

    .line 495
    iget-object p1, p2, Lcom/android/server/wm/ActivityStarter$Request;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p1, :cond_1e

    .line 496
    iget v0, p2, Lcom/android/server/wm/ActivityStarter$Request;->callingPid:I

    iget p2, p2, Lcom/android/server/wm/ActivityStarter$Request;->callingUid:I

    invoke-virtual {p3, p0, v0, p2, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result p0

    return p0

    :cond_1e
    return v0
.end method

.method public static centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V
    .registers 6

    .line 68
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 69
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 71
    :cond_9
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    div-int/lit8 v0, p1, 0x2

    sub-int/2addr p0, v0

    .line 72
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    add-int/2addr p1, p0

    add-int/2addr p2, v0

    .line 73
    invoke-virtual {p3, p0, v0, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public static getDefaultFreeformSize(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;ILandroid/graphics/Rect;)Landroid/util/Size;
    .registers 10

    .line 86
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p1, v0

    if-nez p3, :cond_f

    const/16 v0, 0x428

    goto :goto_11

    :cond_f
    const/16 v0, 0x19c

    :goto_11
    if-nez p3, :cond_16

    const/16 v1, 0x258

    goto :goto_18

    :cond_16
    const/16 v1, 0x2dc

    :goto_18
    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v1, v2

    float-to-int p1, v1

    const/4 v1, -0x1

    if-nez p2, :cond_27

    move v3, v1

    goto :goto_29

    .line 95
    :cond_27
    iget v3, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    :goto_29
    if-nez p2, :cond_2c

    goto :goto_2e

    .line 96
    :cond_2c
    iget v1, p2, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    .line 103
    :goto_2e
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 104
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    invoke-static {v4, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    mul-int v4, p2, p2

    .line 105
    div-int/2addr v4, p4

    if-nez p3, :cond_4d

    move p4, p2

    goto :goto_4e

    :cond_4d
    move p4, v4

    :goto_4e
    if-nez p3, :cond_51

    move p2, v4

    .line 110
    :cond_51
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result p4

    .line 111
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 112
    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p4, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 115
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getMinAspectRatio()F

    move-result v0

    .line 116
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v1

    if-ltz v3, :cond_8c

    cmpg-float v3, p2, v0

    if-gez v3, :cond_8c

    if-nez p3, :cond_87

    int-to-float p0, p4

    div-float/2addr p0, v0

    add-float/2addr p0, v2

    float-to-int p1, p0

    goto :goto_9f

    :cond_87
    int-to-float p0, p1

    div-float/2addr p0, v0

    add-float/2addr p0, v2

    float-to-int p4, p0

    goto :goto_9f

    :cond_8c
    cmpl-float v0, p0, v1

    if-ltz v0, :cond_9f

    cmpl-float p2, p2, p0

    if-lez p2, :cond_9f

    if-nez p3, :cond_9b

    int-to-float p1, p4

    div-float/2addr p1, p0

    add-float/2addr p1, v2

    float-to-int p1, p1

    goto :goto_9f

    :cond_9b
    int-to-float p2, p1

    div-float/2addr p2, p0

    add-float/2addr p2, v2

    float-to-int p4, p2

    .line 141
    :cond_9f
    :goto_9f
    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, p4, p1}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method public static getFallbackDisplayAreaForActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;Lcom/android/server/wm/ActivityTaskSupervisor;Ljava/util/function/Consumer;)Lcom/android/server/wm/TaskDisplayArea;
    .registers 7

    if-eqz p0, :cond_5c

    .line 415
    iget-object v0, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPid:I

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 416
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 420
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 421
    invoke-static {v0, p0, p1, p2}, Lcom/android/server/wm/LaunchParamsUtil;->canPlaceEntityOnDisplay(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;Lcom/android/server/wm/ActivityTaskSupervisor;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 423
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "display-area-for-launching-record="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object v0

    .line 429
    :cond_2d
    iget-object v0, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 431
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    .line 430
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 434
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 435
    invoke-static {v0, p0, p1, p2}, Lcom/android/server/wm/LaunchParamsUtil;->canPlaceEntityOnDisplay(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;Lcom/android/server/wm/ActivityTaskSupervisor;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 437
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "display-area-for-record="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object v0

    :cond_5c
    if-eqz p1, :cond_89

    .line 444
    iget-object v0, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iget v2, p1, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    .line 445
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-eqz v0, :cond_89

    .line 449
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 450
    invoke-static {v0, p0, p1, p2}, Lcom/android/server/wm/LaunchParamsUtil;->canPlaceEntityOnDisplay(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;Lcom/android/server/wm/ActivityTaskSupervisor;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 452
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "display-area-source-process="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object v0

    .line 460
    :cond_89
    iget-object v0, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 461
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-static {v1, p0, p1, p2}, Lcom/android/server/wm/LaunchParamsUtil;->canPlaceEntityOnDisplay(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;Lcom/android/server/wm/ActivityTaskSupervisor;)Z

    move-result p0

    if-eqz p0, :cond_9e

    .line 465
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    goto :goto_a4

    .line 467
    :cond_9e
    iget-object p0, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 468
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    .line 470
    :goto_a4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "display-area-from-default-fallback="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static getPreferredLaunchTaskDisplayArea(Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;Ljava/util/function/Consumer;)Lcom/android/server/wm/TaskDisplayArea;
    .registers 15

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    .line 293
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    if-eqz v1, :cond_2a

    .line 296
    invoke-virtual {v1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 295
    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskDisplayArea;

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display-area-token-from-option="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p7, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_2b

    :cond_2a
    move-object v1, v0

    :goto_2b
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-nez v1, :cond_6a

    if-eqz p2, :cond_6a

    .line 301
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayAreaFeatureId()I

    move-result v4

    if-eq v4, v3, :cond_6a

    .line 303
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v5

    if-ne v5, v3, :cond_3f

    move v5, v2

    goto :goto_43

    .line 304
    :cond_3f
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v5

    .line 305
    :goto_43
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 306
    invoke-virtual {v6, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    if-eqz v5, :cond_6a

    .line 308
    new-instance v1, Lcom/android/server/wm/LaunchParamsUtil$$ExternalSyntheticLambda0;

    invoke-direct {v1, v4}, Lcom/android/server/wm/LaunchParamsUtil$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowContainer;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskDisplayArea;

    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "display-area-feature-from-option="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p7, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_6a
    if-nez v1, :cond_96

    if-eqz p2, :cond_73

    .line 318
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v4

    goto :goto_74

    :cond_73
    move v4, v3

    :goto_74
    if-eq v4, v3, :cond_96

    .line 320
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 321
    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_96

    .line 323
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "display-from-option="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p7, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_96
    if-nez v1, :cond_db

    if-eqz p3, :cond_db

    .line 331
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->isNoDisplay()Z

    move-result v3

    if-eqz v3, :cond_db

    .line 332
    iget-object v1, p3, Lcom/android/server/wm/ActivityRecord;->mHandoverTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v1, :cond_b9

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "display-area-from-no-display-source="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p7, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_db

    .line 337
    :cond_b9
    iget v3, p3, Lcom/android/server/wm/ActivityRecord;->mHandoverLaunchDisplayId:I

    .line 338
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 339
    invoke-virtual {v4, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-eqz v4, :cond_db

    .line 341
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 342
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "display-from-no-display-source="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p7, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_db
    :goto_db
    if-nez v1, :cond_f7

    if-eqz p3, :cond_f7

    .line 348
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 349
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display-area-from-source="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p7, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_f7
    if-nez v1, :cond_ff

    if-eqz p1, :cond_ff

    .line 354
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    :cond_ff
    if-eqz v0, :cond_11d

    .line 356
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "display-from-task="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p7, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 357
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :cond_11d
    if-nez v1, :cond_145

    if-eqz p2, :cond_145

    .line 361
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getCallerDisplayId()I

    move-result p1

    .line 362
    iget-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 363
    invoke-virtual {p2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    if-eqz p2, :cond_145

    .line 365
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 366
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "display-from-caller="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p7, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_145
    if-nez v1, :cond_15f

    if-eqz p4, :cond_15f

    .line 371
    iget-object v1, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 372
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "display-area-from-current-params="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p7, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_15f
    if-eqz v1, :cond_187

    .line 376
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-nez p1, :cond_187

    .line 377
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result p1

    if-eqz p1, :cond_187

    .line 378
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 379
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "display-area-from-no-multidisplay="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p7, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_187
    if-eqz v1, :cond_1b5

    if-eqz p5, :cond_1b5

    .line 383
    invoke-virtual {p5}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p1

    if-eqz p1, :cond_1b5

    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object p2, p5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 384
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result p1

    if-nez p1, :cond_1b5

    .line 386
    iget-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 387
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "display-area-from-home="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p7, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1b5
    if-eqz v1, :cond_1b8

    return-object v1

    .line 392
    :cond_1b8
    invoke-static {p5, p6, p0, p7}, Lcom/android/server/wm/LaunchParamsUtil;->getFallbackDisplayAreaForActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;Lcom/android/server/wm/ActivityTaskSupervisor;Ljava/util/function/Consumer;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    return-object p0
.end method
