.class public Lcom/android/server/wm/AppCompatSizeCompatModePolicy;
.super Ljava/lang/Object;
.source "AppCompatSizeCompatModePolicy.java"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

.field public final mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

.field public mInSizeCompatModeForBounds:Z

.field public mSizeCompatBounds:Landroid/graphics/Rect;

.field public mSizeCompatScale:F


# direct methods
.method public static synthetic $r8$lambda$DB1xiXDatdealGYmVyfNK1FWtH8(Lcom/android/server/wm/AppCompatSizeCompatModePolicy;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)Ljava/lang/Float;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->lambda$updateSizeCompatScale$1(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HeRz3r9TstDN3ctZMaGIi9JNjrY(Lcom/android/server/wm/ActivityRecord;)Ljava/lang/Float;
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 160
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getCompatScale()F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/AppCompatOverrides;)V
    .registers 4

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mInSizeCompatModeForBounds:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 60
    iput v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    .line 77
    iput-object p1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 78
    iput-object p2, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    return-void
.end method


# virtual methods
.method public alignToTopIfNeeded(Landroid/graphics/Rect;)V
    .registers 3

    .line 140
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 141
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, p0, Landroid/graphics/Rect;->top:I

    :cond_c
    return-void
.end method

.method public applyOffsetIfNeeded(Landroid/graphics/Rect;Landroid/content/res/Configuration;II)Z
    .registers 6

    .line 129
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 130
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Rect;->offset(II)V

    .line 131
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget p3, p0, Landroid/graphics/Rect;->top:I

    iget p4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, p4

    .line 132
    iget p0, p0, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p0, p1

    .line 133
    invoke-static {p2, p0, p3}, Lcom/android/server/wm/AppCompatUtils;->offsetBounds(Landroid/content/res/Configuration;II)V

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public applySizeCompatScaleIfNeeded(Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .registers 6

    .line 147
    iget p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_1b

    .line 148
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 149
    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v0

    div-float/2addr v1, p0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v1, v0

    int-to-float v0, p1

    div-float/2addr v0, p0

    add-float/2addr v0, v2

    float-to-int p0, v0

    sub-int/2addr p0, p1

    .line 152
    invoke-static {p2, v1, p0}, Lcom/android/server/wm/AppCompatUtils;->offsetBounds(Landroid/content/res/Configuration;II)V

    :cond_1b
    return-void
.end method

.method public final calculateSizeCompatScale(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)F
    .registers 7

    .line 574
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 575
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 576
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 577
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 578
    iget-object v2, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object p3, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 579
    invoke-virtual {p3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p3

    .line 578
    invoke-static {v2, p3}, Lcom/android/server/wm/AppCompatUtils;->isInDesktopMode(Landroid/content/Context;I)Z

    move-result p3

    if-gt v0, v1, :cond_30

    if-gt p1, p2, :cond_30

    if-nez p3, :cond_30

    .line 585
    invoke-virtual {p0, p3}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->shouldAllowUpscalingForDisplayOrWindowingModeChange(Z)Z

    move-result p0

    if-eqz p0, :cond_2d

    goto :goto_30

    :cond_2d
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_30
    :goto_30
    int-to-float p0, v1

    int-to-float p3, v0

    div-float/2addr p0, p3

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 586
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public final clearOverrideConfiguration()Landroid/content/res/Configuration;
    .registers 3

    .line 181
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    .line 182
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 183
    invoke-virtual {p0}, Landroid/content/res/Configuration;->unset()V

    .line 186
    iget-object v1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v0}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    return-object p0
.end method

.method public clearSizeCompatMode()V
    .registers 2

    .line 191
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->clearSizeCompatModeAttributes()V

    .line 192
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->clearOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 193
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public clearSizeCompatModeAttributes()V
    .registers 4

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mInSizeCompatModeForBounds:Z

    .line 167
    iget v1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 168
    iput v2, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_17

    .line 170
    iget-object v1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    new-instance v2, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    :cond_17
    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    .line 174
    iput-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 175
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object p0

    .line 176
    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy;->clearInheritedAppCompatDisplayInsets()V

    return-void
.end method

.method public clearSizeCompatModeIfNeededOnResolveOverrideConfiguration()V
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isUniversalResizeable()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_13

    .line 200
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->clearSizeCompatModeAttributes()V

    .line 201
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->clearOverrideConfiguration()Landroid/content/res/Configuration;

    :cond_13
    :goto_13
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 205
    iget v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 206
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSizeCompatScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mSizeCompatBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->shouldCreateAppCompatDisplayInsets()Z

    move-result p0

    if-eqz p0, :cond_4b

    .line 210
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "shouldCreateAppCompatDisplayInsets=true"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4b
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .registers 4

    const-wide v0, 0x10800000020L

    .line 215
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->inSizeCompatMode()Z

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    return-void
.end method

.method public getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 105
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 107
    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->getInheritedAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object p0

    return-object p0

    .line 109
    :cond_13
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    return-object p0
.end method

.method public getAppSizeCompatBoundsIfAvailable(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 3

    .line 119
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    return-object p0

    :cond_9
    return-object p1
.end method

.method public getCompatScaleIfAvailable(Ljava/util/function/DoubleSupplier;)F
    .registers 3

    .line 113
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_9

    iget p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    return p0

    .line 114
    :cond_9
    invoke-interface {p1}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public hasAppCompatDisplayInsetsWithoutInheritance()Z
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public hasSizeCompatBounds()Z
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public inSizeCompatMode()Z
    .registers 4

    .line 419
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->isInSizeCompatModeForBounds()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 422
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_47

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->shouldCreateAppCompatDisplayInsets()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 424
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_47

    .line 427
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 428
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_2d

    return v2

    .line 433
    :cond_2d
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_36

    return v2

    .line 438
    :cond_36
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 442
    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, p0, :cond_47

    return v1

    :cond_47
    :goto_47
    return v2
.end method

.method public isInSizeCompatModeForBounds()Z
    .registers 1

    .line 82
    iget-boolean p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mInSizeCompatModeForBounds:Z

    return p0
.end method

.method public final isInSizeCompatModeForBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 11

    .line 523
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    return v1

    .line 528
    :cond_10
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 529
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 530
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 531
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-ne v2, v0, :cond_25

    if-ne p2, p1, :cond_25

    return v1

    :cond_25
    const/4 v3, 0x1

    if-le v2, v0, :cond_2b

    if-le p2, p1, :cond_2b

    return v3

    :cond_2b
    if-lt v2, v0, :cond_69

    if-ge p2, p1, :cond_30

    goto :goto_69

    .line 548
    :cond_30
    iget-object v4, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getMaxAspectRatio()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    const/high16 v7, 0x3f000000    # 0.5f

    if-lez v6, :cond_4e

    .line 550
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v7

    .line 551
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v6, p1

    cmpl-float p1, v6, v4

    if-ltz p1, :cond_4e

    return v1

    .line 557
    :cond_4e
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getMinAspectRatio()F

    move-result p0

    cmpl-float p1, p0, v5

    if-lez p1, :cond_69

    .line 562
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v7

    .line 563
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_69

    return v1

    :cond_69
    :goto_69
    return v3
.end method

.method public final isOnInternalDisplay()Z
    .registers 2

    .line 616
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_12

    return v0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$updateSizeCompatScale$1(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)Ljava/lang/Float;
    .registers 4

    .line 161
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->calculateSizeCompatScale(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public replaceResolvedBoundsIfNeeded(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 3

    .line 124
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    return-object p0

    :cond_9
    return-object p1
.end method

.method public resolveSizeCompatModeConfiguration(Landroid/content/res/Configuration;Lcom/android/server/wm/AppCompatDisplayInsets;Landroid/graphics/Rect;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 224
    iget-object v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 225
    iget-object v3, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    .line 231
    iget-object v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 232
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatController;->getAspectRatioPolicy()Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    move-result-object v11

    .line 233
    invoke-virtual {v11}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isAspectRatioApplied()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 235
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_25
    move-object v12, v4

    goto :goto_2e

    .line 236
    :cond_27
    iget-object v4, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-object v4, v4, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentBoundsOverride:Landroid/graphics/Rect;

    goto :goto_25

    :goto_2e
    if-eqz v3, :cond_3d

    .line 238
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_3b
    move-object v13, v3

    goto :goto_44

    .line 239
    :cond_3d
    iget-object v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-object v3, v3, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    goto :goto_3b

    .line 241
    :goto_44
    iget-object v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v3

    const/4 v15, 0x0

    if-eqz v3, :cond_4f

    const/4 v7, 0x1

    goto :goto_50

    :cond_4f
    move v7, v15

    .line 243
    :goto_50
    iget-object v4, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-boolean v5, v4, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    if-eqz v5, :cond_5b

    .line 244
    iget v4, v4, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideConfigOrientation:I

    goto :goto_5d

    .line 245
    :cond_5b
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    :goto_5d
    if-eqz v7, :cond_61

    :goto_5f
    move v6, v3

    goto :goto_67

    .line 250
    :cond_61
    iget v3, v2, Lcom/android/server/wm/AppCompatDisplayInsets;->mOriginalRequestedOrientation:I

    if-eqz v3, :cond_66

    goto :goto_5f

    :cond_66
    move v6, v4

    .line 253
    :goto_67
    iget-object v3, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    .line 254
    iget-object v5, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v5, :cond_80

    .line 255
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v5

    if-eqz v5, :cond_7e

    goto :goto_80

    :cond_7e
    move v8, v15

    goto :goto_81

    :cond_80
    :goto_80
    const/4 v8, 0x1

    .line 256
    :goto_81
    iget-object v5, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 257
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v16

    if-nez v8, :cond_91

    if-nez v16, :cond_91

    .line 262
    iget-object v5, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5, v3}, Landroid/app/WindowConfiguration;->setRotation(I)V

    goto :goto_9b

    .line 264
    :cond_91
    iget-object v5, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v5

    const/4 v14, -0x1

    if-eq v5, v14, :cond_9b

    goto :goto_9c

    :cond_9b
    :goto_9b
    move v5, v3

    .line 274
    :goto_9c
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move v14, v4

    move-object/from16 v4, p3

    .line 276
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/AppCompatDisplayInsets;->getContainerBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V

    .line 278
    invoke-virtual {v10, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 280
    iget-boolean v5, v2, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsFloating:Z

    if-nez v5, :cond_b1

    .line 281
    invoke-virtual {v11, v10, v3, v4}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->applyAspectRatioForLetterbox(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 288
    :cond_b1
    iget-object v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iput-object v2, v5, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpCompatInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 289
    invoke-virtual {v3, v9, v1}, Lcom/android/server/wm/ActivityRecord;->computeConfigByResolveHint(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 291
    iget-object v2, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 292
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    iget v3, v9, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v5, v9, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 291
    invoke-static {v2, v3, v5}, Lcom/android/server/wm/WindowContainer;->computeScreenLayout(III)I

    move-result v2

    iput v2, v9, Landroid/content/res/Configuration;->screenLayout:I

    .line 297
    iget v2, v9, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, v9, Landroid/content/res/Configuration;->screenHeightDp:I

    if-ne v2, v3, :cond_d4

    .line 298
    iput v14, v9, Landroid/content/res/Configuration;->orientation:I

    .line 320
    :cond_d4
    iget-object v2, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 323
    iget v3, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    .line 324
    invoke-virtual {v0, v2, v13, v1}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->updateSizeCompatScale(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    if-eqz v16, :cond_e3

    move v1, v15

    goto :goto_e8

    .line 328
    :cond_e3
    iget v1, v13, Landroid/graphics/Rect;->top:I

    iget v5, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v5

    .line 329
    :goto_e8
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    if-eq v1, v5, :cond_f1

    const/4 v14, 0x1

    goto :goto_f2

    :cond_f1
    move v14, v15

    .line 331
    :goto_f2
    iget v5, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_101

    if-eqz v14, :cond_fd

    goto :goto_101

    :cond_fd
    const/4 v1, 0x0

    .line 341
    iput-object v1, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    goto :goto_124

    .line 332
    :cond_101
    :goto_101
    iget-object v5, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    if-nez v5, :cond_10c

    .line 333
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    .line 335
    :cond_10c
    iget-object v5, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 336
    iget-object v5, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v15, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 337
    iget-object v5, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v6, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->scale(F)V

    .line 339
    iget-object v5, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v1

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 343
    :goto_124
    iget v1, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_134

    .line 344
    iget-object v1, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    new-instance v3, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, v3, v15}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 350
    :cond_134
    invoke-virtual {v10, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13d

    .line 351
    iget v3, v12, Landroid/graphics/Rect;->left:I

    goto :goto_13f

    :cond_13d
    iget v3, v13, Landroid/graphics/Rect;->left:I

    :goto_13f
    if-eqz v1, :cond_144

    .line 352
    iget v1, v12, Landroid/graphics/Rect;->top:I

    goto :goto_146

    :cond_144
    iget v1, v13, Landroid/graphics/Rect;->top:I

    :goto_146
    if-nez v3, :cond_14a

    if-eqz v1, :cond_15e

    .line 355
    :cond_14a
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    move-result v4

    if-eqz v4, :cond_155

    .line 356
    iget-object v4, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 359
    :cond_155
    iget v4, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    .line 360
    iget v4, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v4

    .line 361
    invoke-static {v9, v3, v1}, Lcom/android/server/wm/AppCompatUtils;->offsetBounds(Landroid/content/res/Configuration;II)V

    .line 364
    :cond_15e
    invoke-virtual {v0, v2, v13}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->isInSizeCompatModeForBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mInSizeCompatModeForBounds:Z

    return-void
.end method

.method public final shouldAllowUpscalingForDisplayOrWindowingModeChange(Z)Z
    .registers 7

    .line 601
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    .line 602
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/AppCompatDisplayInsets;->mInDesktopMode:Z

    if-eqz v0, :cond_14

    if-nez p1, :cond_14

    move p1, v2

    goto :goto_15

    :cond_14
    move p1, v1

    .line 603
    :goto_15
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 604
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getDisplayCompatModePolicy()Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->getDisplayChangedWithoutRestart()Z

    move-result v0

    .line 605
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->isOnInternalDisplay()Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 606
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result v3

    if-eqz v3, :cond_35

    move v3, v2

    goto :goto_36

    :cond_35
    move v3, v1

    .line 608
    :goto_36
    sget-object v4, Landroid/window/DesktopExperienceFlags;->ENABLE_UPSCALING_SIZE_COMPAT_ON_EXITING_DESKTOP_BUGFIX:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v4}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v4

    if-eqz v4, :cond_51

    if-nez p1, :cond_42

    if-eqz v0, :cond_51

    :cond_42
    if-eqz v3, :cond_50

    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 611
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/AppCompatUtils;->isDesktopFirst(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    if-eqz p0, :cond_51

    :cond_50
    return v2

    :cond_51
    return v1
.end method

.method public shouldCreateAppCompatDisplayInsets()Z
    .registers 5

    .line 456
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v0

    .line 457
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->hasFullscreenOverride()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    return v1

    .line 463
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->supportsSizeChanges()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_78

    const/4 v3, 0x2

    if-eq v0, v3, :cond_77

    const/4 v3, 0x3

    if-eq v0, v3, :cond_77

    .line 475
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 476
    iget-object v3, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_33

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 477
    :cond_33
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 478
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    :goto_41
    if-eqz v0, :cond_4e

    .line 479
    iget-object v3, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, v3, :cond_4e

    .line 480
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->shouldCreateAppCompatDisplayInsets()Z

    move-result v0

    if-nez v0, :cond_4e

    return v1

    .line 486
    :cond_4e
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 487
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getAspectRatioPolicy()Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    move-result-object v0

    .line 488
    iget-object v3, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v3

    if-nez v3, :cond_77

    iget-object v3, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->isFixedOrientation()Z

    move-result v3

    if-nez v3, :cond_6e

    .line 489
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->hasFixedAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_77

    :cond_6e
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 496
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result p0

    if-eqz p0, :cond_77

    return v2

    :cond_77
    return v1

    :cond_78
    return v2
.end method

.method public supportsSizeChanges()I
    .registers 3

    .line 504
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatOverrides:Lcom/android/server/wm/AppCompatOverrides;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatOverrides;->getResizeOverrides()Lcom/android/server/wm/AppCompatResizeOverrides;

    move-result-object v0

    .line 505
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatResizeOverrides;->shouldOverrideForceNonResizeApp()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 p0, 0x1

    return p0

    .line 509
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean p0, p0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    if-eqz p0, :cond_18

    const/4 p0, 0x2

    return p0

    .line 513
    :cond_18
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatResizeOverrides;->shouldOverrideForceResizeApp()Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x3

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public updateAppCompatDisplayInsets()V
    .registers 6

    .line 370
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object v0

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 371
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->shouldCreateAppCompatDisplayInsets()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_79

    .line 376
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 377
    iget-object v1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 384
    iget v2, v1, Landroid/content/res/Configuration;->colorMode:I

    iput v2, v0, Landroid/content/res/Configuration;->colorMode:I

    .line 385
    iget v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 386
    sget-object v2, Landroid/window/DesktopExperienceFlags;->ENABLE_SIZE_COMPAT_MODE_IMPROVEMENTS_FOR_CONNECTED_DISPLAYS:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v2}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 387
    iget v2, v1, Landroid/content/res/Configuration;->touchscreen:I

    iput v2, v0, Landroid/content/res/Configuration;->touchscreen:I

    .line 388
    iget v2, v1, Landroid/content/res/Configuration;->navigation:I

    iput v2, v0, Landroid/content/res/Configuration;->navigation:I

    .line 389
    iget v2, v1, Landroid/content/res/Configuration;->keyboard:I

    iput v2, v0, Landroid/content/res/Configuration;->keyboard:I

    .line 390
    iget v2, v1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v2, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 391
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 392
    iget v2, v1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v2, v0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 396
    :cond_43
    iget v2, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v2, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 397
    iget-object v2, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v2

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->isFixedOrientation(I)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 400
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 401
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    .line 400
    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 404
    :cond_5e
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 405
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getAspectRatioPolicy()Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getLetterboxedContainerBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 408
    new-instance v1, Lcom/android/server/wm/AppCompatDisplayInsets;

    iget-object v2, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-boolean v4, v4, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    invoke-direct {v1, v3, v2, v0, v4}, Lcom/android/server/wm/AppCompatDisplayInsets;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;Z)V

    iput-object v1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mAppCompatDisplayInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    :cond_79
    :goto_79
    return-void
.end method

.method public updateSizeCompatScale(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .registers 6

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->findOpaqueNotFinishingActivityBelow()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda1;-><init>()V

    .line 160
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/AppCompatSizeCompatModePolicy;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    .line 161
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->mSizeCompatScale:F

    return-void
.end method
