.class public Lcom/android/server/lineage/display/DisplayHardwareController;
.super Lcom/android/server/lineage/display/LiveDisplayFeature;
.source "DisplayHardwareController.java"


# static fields
.field public static final DISPLAY_ANTI_FLICKER:Landroid/net/Uri;

.field public static final DISPLAY_AUTO_CONTRAST:Landroid/net/Uri;

.field public static final DISPLAY_CABC:Landroid/net/Uri;

.field public static final DISPLAY_COLOR_ADJUSTMENT:Landroid/net/Uri;

.field public static final DISPLAY_COLOR_ENHANCE:Landroid/net/Uri;

.field public static final DISPLAY_READING_MODE:Landroid/net/Uri;


# instance fields
.field public final mAdditionalAdjustment:[F

.field public mAnimator:Landroid/animation/ValueAnimator;

.field public final mColorAdjustment:[F

.field public final mDefaultAntiFlicker:Z

.field public final mDefaultAutoContrast:Z

.field public final mDefaultCABC:Z

.field public final mDefaultColorEnhancement:Z

.field public final mHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

.field public final mMaxColor:I

.field public final mUseAntiFlicker:Z

.field public final mUseAutoContrast:Z

.field public final mUseCABC:Z

.field public final mUseColorAdjustment:Z

.field public final mUseColorEnhancement:Z

.field public final mUseDisplayModes:Z

.field public final mUseReaderMode:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHardware(Lcom/android/server/lineage/display/DisplayHardwareController;)Lcom/android/internal/lineage/hardware/LineageHardwareManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxColor(Lcom/android/server/lineage/display/DisplayHardwareController;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mMaxColor:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$mscreenRefresh(Lcom/android/server/lineage/display/DisplayHardwareController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->screenRefresh()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 70
    const-string v0, "display_auto_contrast"

    .line 71
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/lineage/display/DisplayHardwareController;->DISPLAY_AUTO_CONTRAST:Landroid/net/Uri;

    .line 72
    const-string v0, "display_color_adjustment"

    .line 73
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/lineage/display/DisplayHardwareController;->DISPLAY_COLOR_ADJUSTMENT:Landroid/net/Uri;

    .line 74
    const-string v0, "display_color_enhance"

    .line 75
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/lineage/display/DisplayHardwareController;->DISPLAY_COLOR_ENHANCE:Landroid/net/Uri;

    .line 76
    const-string v0, "display_low_power"

    .line 77
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/lineage/display/DisplayHardwareController;->DISPLAY_CABC:Landroid/net/Uri;

    .line 78
    const-string v0, "display_reading_mode"

    .line 79
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/lineage/display/DisplayHardwareController;->DISPLAY_READING_MODE:Landroid/net/Uri;

    .line 80
    const-string v0, "display_anti_flicker"

    .line 81
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/lineage/display/DisplayHardwareController;->DISPLAY_ANTI_FLICKER:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/server/lineage/display/LiveDisplayFeature;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 62
    invoke-static {}, Lcom/android/server/lineage/display/DisplayHardwareController;->getDefaultAdjustment()[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mAdditionalAdjustment:[F

    .line 63
    invoke-static {}, Lcom/android/server/lineage/display/DisplayHardwareController;->getDefaultAdjustment()[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mColorAdjustment:[F

    .line 86
    iget-object p2, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->getInstance(Landroid/content/Context;)Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    const/4 v0, 0x1

    .line 88
    invoke-virtual {p2, v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseCABC:Z

    .line 89
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110139

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mDefaultCABC:Z

    const/4 v0, 0x2

    .line 93
    invoke-virtual {p2, v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseColorEnhancement:Z

    .line 94
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111013a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mDefaultColorEnhancement:Z

    const/16 v0, 0x1000

    .line 98
    invoke-virtual {p2, v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseAutoContrast:Z

    .line 99
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mDefaultAutoContrast:Z

    const/4 v0, 0x4

    .line 103
    invoke-virtual {p2, v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseColorAdjustment:Z

    const/16 v1, 0x2000

    .line 106
    invoke-virtual {p2, v1}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseDisplayModes:Z

    const/16 v1, 0x4000

    .line 109
    invoke-virtual {p2, v1}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseReaderMode:Z

    const/high16 v1, 0x200000

    .line 112
    invoke-virtual {p2, v1}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseAntiFlicker:Z

    .line 113
    iget-object v1, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110133

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mDefaultAntiFlicker:Z

    if-eqz v0, :cond_98

    .line 117
    invoke-virtual {p2}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->getDisplayColorCalibrationMax()I

    move-result p2

    iput p2, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mMaxColor:I

    .line 118
    invoke-virtual {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->getColorAdjustment()[F

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/lineage/display/DisplayHardwareController;->copyColors([F[F)V

    return-void

    :cond_98
    const/4 p1, 0x0

    .line 120
    iput p1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mMaxColor:I

    return-void
.end method

.method public static getDefaultAdjustment()[F
    .registers 1

    const/4 v0, 0x3

    .line 532
    new-array v0, v0, [F

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public final declared-synchronized animateDisplayColor([F)V
    .registers 10

    monitor-enter p0

    .line 315
    :try_start_1
    iget-object v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    invoke-virtual {v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->getDisplayColorCalibration()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 316
    aget v2, v0, v1

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mMaxColor:I

    int-to-float v4, v3

    div-float/2addr v2, v4

    const/4 v4, 0x1

    aget v5, v0, v4

    int-to-float v5, v5

    int-to-float v6, v3

    div-float/2addr v5, v6

    const/4 v6, 0x2

    aget v0, v0, v6

    int-to-float v0, v0

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/4 v3, 0x3

    new-array v7, v3, [F

    aput v2, v7, v1

    aput v5, v7, v4

    aput v0, v7, v6

    .line 321
    aget v0, v7, v1

    aget v1, p1, v1

    cmpl-float v2, v0, v1

    if-nez v2, :cond_41

    aget v2, v7, v4

    aget v5, p1, v4

    cmpl-float v2, v2, v5

    if-nez v2, :cond_41

    aget v2, v7, v6

    aget v5, p1, v6
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3e

    cmpl-float v2, v2, v5

    if-nez v2, :cond_41

    .line 324
    monitor-exit p0

    return-void

    :catchall_3e
    move-exception p1

    goto/16 :goto_d2

    :cond_41
    sub-float/2addr v0, v1

    .line 329
    :try_start_42
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    aget v1, v7, v4

    aget v2, p1, v4

    sub-float/2addr v1, v2

    .line 330
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 328
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    aget v1, v7, v6

    aget v2, p1, v6

    sub-float/2addr v1, v2

    .line 331
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 328
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const v1, 0x443b8000    # 750.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 333
    sget-boolean v2, Lcom/android/server/lineage/display/LiveDisplayFeature;->DEBUG:Z

    if-eqz v2, :cond_97

    .line 334
    const-string v2, "LiveDisplay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "animateDisplayColor current="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " targetColors="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 334
    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_97
    iget-object v2, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_a3

    .line 339
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 340
    iget-object v2, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 343
    :cond_a3
    new-instance v2, Landroid/animation/FloatArrayEvaluator;

    new-array v3, v3, [F

    invoke-direct {v2, v3}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    filled-new-array {v7, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    .line 345
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 346
    iget-object p1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 347
    iget-object p1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/server/lineage/display/DisplayHardwareController$1;

    invoke-direct {v0, p0}, Lcom/android/server/lineage/display/DisplayHardwareController$1;-><init>(Lcom/android/server/lineage/display/DisplayHardwareController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 363
    iget-object p1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V
    :try_end_d0
    .catchall {:try_start_42 .. :try_end_d0} :catchall_3e

    .line 364
    monitor-exit p0

    return-void

    :goto_d2
    :try_start_d2
    monitor-exit p0
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_3e

    throw p1
.end method

.method public final copyColors([F[F)V
    .registers 4

    if-eqz p1, :cond_1a

    if-eqz p2, :cond_1a

    .line 536
    array-length p0, p1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1a

    array-length p0, p2

    if-ne p0, v0, :cond_1a

    const/4 p0, 0x0

    .line 537
    aget v0, p1, p0

    aput v0, p2, p0

    const/4 p0, 0x1

    .line 538
    aget v0, p1, p0

    aput v0, p2, p0

    const/4 p0, 0x2

    .line 539
    aget p1, p1, p0

    aput p1, p2, p0

    :cond_1a
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 228
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 229
    const-string v0, "DisplayHardwareController Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseAutoContrast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseAutoContrast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseColorAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseColorAdjustment:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseColorEnhancement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseColorEnhancement:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseCABC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseCABC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseDisplayModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseDisplayModes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseReaderMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseReaderMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseAntiFlicker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseAntiFlicker:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 238
    const-string v0, "  DisplayHardwareController State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAutoContrast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->isAutoContrastEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mColorEnhancement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->isColorEnhancementEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mCABC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->isCABCEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mColorAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mColorAdjustment:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAdditionalAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mAdditionalAdjustment:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    hardware setting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    invoke-virtual {p0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->getDisplayColorCalibration()[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCapabilities(Ljava/util/BitSet;)Z
    .registers 3

    .line 156
    iget-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseAutoContrast:Z

    if-eqz v0, :cond_9

    const/16 v0, 0xb

    .line 157
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 159
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseColorEnhancement:Z

    if-eqz v0, :cond_12

    const/16 v0, 0xc

    .line 160
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 162
    :cond_12
    iget-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseCABC:Z

    if-eqz v0, :cond_1b

    const/16 v0, 0xa

    .line 163
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 165
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseColorAdjustment:Z

    if-eqz v0, :cond_24

    const/16 v0, 0xd

    .line 166
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 168
    :cond_24
    iget-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseDisplayModes:Z

    if-eqz v0, :cond_2d

    const/16 v0, 0xf

    .line 169
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 171
    :cond_2d
    iget-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseReaderMode:Z

    if-eqz v0, :cond_36

    const/16 v0, 0x12

    .line 172
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 174
    :cond_36
    iget-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseAntiFlicker:Z

    if-eqz v0, :cond_3f

    const/16 v0, 0x13

    .line 175
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 177
    :cond_3f
    iget-boolean p1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseAutoContrast:Z

    if-nez p1, :cond_5e

    iget-boolean p1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseColorEnhancement:Z

    if-nez p1, :cond_5e

    iget-boolean p1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseCABC:Z

    if-nez p1, :cond_5e

    iget-boolean p1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseColorAdjustment:Z

    if-nez p1, :cond_5e

    iget-boolean p1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseDisplayModes:Z

    if-nez p1, :cond_5e

    iget-boolean p1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseReaderMode:Z

    if-nez p1, :cond_5e

    iget-boolean p0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseAntiFlicker:Z

    if-eqz p0, :cond_5c

    goto :goto_5e

    :cond_5c
    const/4 p0, 0x0

    return p0

    :cond_5e
    :goto_5e
    const/4 p0, 0x1

    return p0
.end method

.method public getColorAdjustment()[F
    .registers 3

    .line 500
    iget-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseColorAdjustment:Z

    if-nez v0, :cond_9

    .line 501
    invoke-static {}, Lcom/android/server/lineage/display/DisplayHardwareController;->getDefaultAdjustment()[F

    move-result-object p0

    return-object p0

    :cond_9
    const/4 v0, 0x3

    .line 503
    new-array v0, v0, [F

    .line 504
    const-string v1, "display_color_adjustment"

    invoke-virtual {p0, v1}, Lcom/android/server/lineage/display/LiveDisplayFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/lineage/display/DisplayHardwareController;->parseColorAdjustment(Ljava/lang/String;[F)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 506
    invoke-static {}, Lcom/android/server/lineage/display/DisplayHardwareController;->getDefaultAdjustment()[F

    move-result-object v0

    .line 507
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/display/DisplayHardwareController;->saveColorAdjustmentString([F)V

    :cond_1f
    return-object v0
.end method

.method public getDefaultAutoContrast()Z
    .registers 1

    .line 452
    iget-boolean p0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mDefaultAutoContrast:Z

    return p0
.end method

.method public getDefaultCABC()Z
    .registers 1

    .line 448
    iget-boolean p0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mDefaultCABC:Z

    return p0
.end method

.method public getDefaultColorEnhancement()Z
    .registers 1

    .line 456
    iget-boolean p0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mDefaultColorEnhancement:Z

    return p0
.end method

.method public hasColorAdjustment()Z
    .registers 1

    .line 528
    iget-boolean p0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseColorAdjustment:Z

    return p0
.end method

.method public isAntiFlickerEnabled()Z
    .registers 3

    .line 544
    iget-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseAntiFlicker:Z

    if-eqz v0, :cond_10

    const-string v0, "display_anti_flicker"

    iget-boolean v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mDefaultAntiFlicker:Z

    .line 545
    invoke-virtual {p0, v0, v1}, Lcom/android/server/lineage/display/LiveDisplayFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isAutoContrastEnabled()Z
    .registers 3

    .line 460
    iget-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseAutoContrast:Z

    if-eqz v0, :cond_10

    const-string v0, "display_auto_contrast"

    iget-boolean v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mDefaultAutoContrast:Z

    .line 461
    invoke-virtual {p0, v0, v1}, Lcom/android/server/lineage/display/LiveDisplayFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isCABCEnabled()Z
    .registers 3

    .line 473
    iget-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseCABC:Z

    if-eqz v0, :cond_10

    const-string v0, "display_low_power"

    iget-boolean v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mDefaultCABC:Z

    .line 474
    invoke-virtual {p0, v0, v1}, Lcom/android/server/lineage/display/LiveDisplayFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public isColorEnhancementEnabled()Z
    .registers 3

    .line 486
    iget-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseColorEnhancement:Z

    if-eqz v0, :cond_10

    const-string v0, "display_color_enhance"

    iget-boolean v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mDefaultColorEnhancement:Z

    .line 487
    invoke-virtual {p0, v0, v1}, Lcom/android/server/lineage/display/LiveDisplayFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized onScreenStateChanged()V
    .registers 2

    monitor-enter p0

    .line 217
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseColorAdjustment:Z

    if-eqz v0, :cond_26

    .line 218
    iget-object v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 219
    iget-object v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_26

    :catchall_1b
    move-exception v0

    goto :goto_28

    .line 220
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 221
    invoke-virtual {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->updateColorAdjustment()V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_1b

    .line 224
    :cond_26
    :goto_26
    monitor-exit p0

    return-void

    :goto_28
    :try_start_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_1b

    throw v0
.end method

.method public declared-synchronized onSettingsChanged(Landroid/net/Uri;)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_e

    .line 183
    :try_start_3
    sget-object v0, Lcom/android/server/lineage/display/DisplayHardwareController;->DISPLAY_CABC:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_e

    :catchall_c
    move-exception p1

    goto :goto_50

    .line 184
    :cond_e
    :goto_e
    invoke-virtual {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->updateCABCMode()V

    :cond_11
    if-eqz p1, :cond_1b

    .line 186
    sget-object v0, Lcom/android/server/lineage/display/DisplayHardwareController;->DISPLAY_AUTO_CONTRAST:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 187
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->updateAutoContrast()V

    :cond_1e
    if-eqz p1, :cond_28

    .line 189
    sget-object v0, Lcom/android/server/lineage/display/DisplayHardwareController;->DISPLAY_COLOR_ENHANCE:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 190
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->updateColorEnhancement()V

    :cond_2b
    if-eqz p1, :cond_35

    .line 192
    sget-object v0, Lcom/android/server/lineage/display/DisplayHardwareController;->DISPLAY_COLOR_ADJUSTMENT:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 193
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->getColorAdjustment()[F

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mColorAdjustment:[F

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lineage/display/DisplayHardwareController;->copyColors([F[F)V

    .line 194
    invoke-virtual {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->updateColorAdjustment()V

    :cond_41
    if-eqz p1, :cond_4b

    .line 196
    sget-object v0, Lcom/android/server/lineage/display/DisplayHardwareController;->DISPLAY_ANTI_FLICKER:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 197
    :cond_4b
    invoke-virtual {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->updateAntiFlicker()V
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_c

    .line 199
    :cond_4e
    monitor-exit p0

    return-void

    :goto_50
    :try_start_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_c

    throw p1
.end method

.method public onStart()V
    .registers 3

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    iget-boolean v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseCABC:Z

    if-eqz v1, :cond_e

    .line 129
    sget-object v1, Lcom/android/server/lineage/display/DisplayHardwareController;->DISPLAY_CABC:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_e
    iget-boolean v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseColorEnhancement:Z

    if-eqz v1, :cond_17

    .line 132
    sget-object v1, Lcom/android/server/lineage/display/DisplayHardwareController;->DISPLAY_COLOR_ENHANCE:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_17
    iget-boolean v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseAutoContrast:Z

    if-eqz v1, :cond_20

    .line 135
    sget-object v1, Lcom/android/server/lineage/display/DisplayHardwareController;->DISPLAY_AUTO_CONTRAST:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_20
    iget-boolean v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseColorAdjustment:Z

    if-eqz v1, :cond_29

    .line 138
    sget-object v1, Lcom/android/server/lineage/display/DisplayHardwareController;->DISPLAY_COLOR_ADJUSTMENT:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    :cond_29
    iget-boolean v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseReaderMode:Z

    if-eqz v1, :cond_32

    .line 141
    sget-object v1, Lcom/android/server/lineage/display/DisplayHardwareController;->DISPLAY_READING_MODE:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    :cond_32
    iget-boolean v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseAntiFlicker:Z

    if-eqz v1, :cond_3b

    .line 144
    sget-object v1, Lcom/android/server/lineage/display/DisplayHardwareController;->DISPLAY_ANTI_FLICKER:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_3b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_42

    return-void

    :cond_42
    const/4 v1, 0x0

    .line 151
    new-array v1, v1, [Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->registerSettings([Landroid/net/Uri;)V

    return-void
.end method

.method public onUpdate()V
    .registers 1

    .line 212
    invoke-virtual {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->updateHardware()V

    return-void
.end method

.method public final parseColorAdjustment(Ljava/lang/String;[F)Z
    .registers 6

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    .line 405
    :cond_4
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_a
    const/4 v0, 0x0

    if-eqz p1, :cond_40

    .line 407
    array-length v1, p1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_40

    if-eqz p2, :cond_40

    array-length v1, p2

    if-eq v1, v2, :cond_17

    goto :goto_40

    .line 412
    :cond_17
    :try_start_17
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    aput v1, p2, v0

    const/4 v1, 0x1

    .line 413
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    aput v2, p2, v1

    const/4 v1, 0x2

    .line 414
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    aput p1, p2, v1
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_31} :catch_36

    .line 421
    invoke-virtual {p0, p2}, Lcom/android/server/lineage/display/DisplayHardwareController;->validateColors([F)Z

    move-result p0

    return p0

    :catch_36
    move-exception p0

    .line 416
    const-string p1, "LiveDisplay"

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_40
    :goto_40
    return v0
.end method

.method public final saveColorAdjustmentString([F)V
    .registers 5

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 523
    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 524
    const-string p1, "display_color_adjustment"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final screenRefresh()V
    .registers 5

    .line 372
    :try_start_0
    const-string p0, "SurfaceFlinger"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 375
    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x3ec

    .line 376
    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    :cond_1b
    return-void

    :catch_1c
    move-exception p0

    .line 380
    const-string v0, "LiveDisplay"

    const-string v1, "Failed to refresh screen"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public declared-synchronized setAdditionalAdjustment([F)Z
    .registers 6

    monitor-enter p0

    .line 430
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseColorAdjustment:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_28

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 431
    monitor-exit p0

    return v1

    .line 434
    :cond_8
    :try_start_8
    sget-boolean v0, Lcom/android/server/lineage/display/LiveDisplayFeature;->DEBUG:Z

    if-eqz v0, :cond_2a

    .line 435
    const-string v0, "LiveDisplay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAdditionalAdjustment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    :catchall_28
    move-exception p1

    goto :goto_3d

    .line 439
    :cond_2a
    :goto_2a
    invoke-virtual {p0, p1}, Lcom/android/server/lineage/display/DisplayHardwareController;->validateColors([F)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 440
    iget-object v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mAdditionalAdjustment:[F

    invoke-virtual {p0, p1, v0}, Lcom/android/server/lineage/display/DisplayHardwareController;->copyColors([F[F)V

    .line 441
    invoke-virtual {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->updateColorAdjustment()V
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_28

    .line 442
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 444
    :cond_3b
    monitor-exit p0

    return v1

    :goto_3d
    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_28

    throw p1
.end method

.method public setAntiFlickerEnabled(Z)Z
    .registers 3

    .line 549
    iget-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseAntiFlicker:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 552
    :cond_6
    const-string v0, "display_anti_flicker"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/lineage/display/LiveDisplayFeature;->putBoolean(Ljava/lang/String;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public setAutoContrastEnabled(Z)Z
    .registers 3

    .line 465
    iget-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseAutoContrast:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 468
    :cond_6
    const-string v0, "display_auto_contrast"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/lineage/display/LiveDisplayFeature;->putBoolean(Ljava/lang/String;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public setCABCEnabled(Z)Z
    .registers 3

    .line 478
    iget-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseCABC:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 481
    :cond_6
    const-string v0, "display_low_power"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/lineage/display/LiveDisplayFeature;->putBoolean(Ljava/lang/String;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public setColorAdjustment([F)Z
    .registers 3

    .line 514
    iget-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseColorAdjustment:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/display/DisplayHardwareController;->validateColors([F)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_10

    .line 517
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/lineage/display/DisplayHardwareController;->saveColorAdjustmentString([F)V

    const/4 p0, 0x1

    return p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return p0
.end method

.method public setColorEnhancementEnabled(Z)Z
    .registers 3

    .line 492
    iget-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseColorEnhancement:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 495
    :cond_6
    const-string v0, "display_color_enhance"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/lineage/display/LiveDisplayFeature;->putBoolean(Ljava/lang/String;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateAntiFlicker()V
    .registers 3

    .line 303
    iget-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseAntiFlicker:Z

    if-nez v0, :cond_5

    return-void

    .line 306
    :cond_5
    iget-object v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    const/high16 v1, 0x200000

    invoke-virtual {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->isAntiFlickerEnabled()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->set(IZ)Z

    return-void
.end method

.method public final updateAutoContrast()V
    .registers 3

    .line 251
    iget-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseAutoContrast:Z

    if-nez v0, :cond_5

    return-void

    .line 254
    :cond_5
    iget-object v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    const/16 v1, 0x1000

    invoke-virtual {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->isAutoContrastEnabled()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->set(IZ)Z

    return-void
.end method

.method public final updateCABCMode()V
    .registers 3

    .line 272
    iget-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseCABC:Z

    if-nez v0, :cond_5

    return-void

    .line 275
    :cond_5
    iget-object v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->isCABCEnabled()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->set(IZ)Z

    return-void
.end method

.method public final declared-synchronized updateColorAdjustment()V
    .registers 6

    monitor-enter p0

    .line 279
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseColorAdjustment:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_4a

    if-nez v0, :cond_7

    .line 280
    monitor-exit p0

    return-void

    .line 283
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/android/server/lineage/display/DisplayHardwareController;->getDefaultAdjustment()[F

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mColorAdjustment:[F

    invoke-virtual {p0, v1, v0}, Lcom/android/server/lineage/display/DisplayHardwareController;->copyColors([F[F)V

    const/4 v1, 0x0

    .line 286
    aget v2, v0, v1

    iget-object v3, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mAdditionalAdjustment:[F

    aget v4, v3, v1

    mul-float/2addr v2, v4

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 287
    aget v2, v0, v1

    aget v4, v3, v1

    mul-float/2addr v2, v4

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 288
    aget v2, v0, v1

    aget v3, v3, v1

    mul-float/2addr v2, v3

    aput v2, v0, v1

    .line 290
    sget-boolean v1, Lcom/android/server/lineage/display/LiveDisplayFeature;->DEBUG:Z

    if-eqz v1, :cond_4c

    .line 291
    const-string v1, "LiveDisplay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateColorAdjustment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    :catchall_4a
    move-exception v0

    goto :goto_57

    .line 294
    :cond_4c
    :goto_4c
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/display/DisplayHardwareController;->validateColors([F)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 295
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/display/DisplayHardwareController;->animateDisplayColor([F)V
    :try_end_55
    .catchall {:try_start_7 .. :try_end_55} :catchall_4a

    .line 297
    :cond_55
    monitor-exit p0

    return-void

    :goto_57
    :try_start_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_4a

    throw v0
.end method

.method public final updateColorEnhancement()V
    .registers 3

    .line 261
    iget-boolean v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mUseColorEnhancement:Z

    if-nez v0, :cond_5

    return-void

    .line 264
    :cond_5
    iget-object v0, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    .line 265
    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->isLowPowerMode()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-boolean v1, p0, Lcom/android/server/lineage/display/DisplayHardwareController;->mDefaultColorEnhancement:Z

    if-eqz v1, :cond_19

    :cond_11
    invoke-virtual {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->isColorEnhancementEnabled()Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    const/4 v1, 0x2

    .line 264
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->set(IZ)Z

    return-void
.end method

.method public final declared-synchronized updateHardware()V
    .registers 2

    monitor-enter p0

    .line 202
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 203
    invoke-virtual {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->updateCABCMode()V

    .line 204
    invoke-virtual {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->updateAutoContrast()V

    .line 205
    invoke-virtual {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->updateColorEnhancement()V

    .line 206
    invoke-virtual {p0}, Lcom/android/server/lineage/display/DisplayHardwareController;->updateAntiFlicker()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_14

    goto :goto_16

    :catchall_14
    move-exception v0

    goto :goto_18

    .line 208
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    :goto_18
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_14

    throw v0
.end method

.method public final validateColors([F)Z
    .registers 6

    const/4 p0, 0x0

    if-eqz p1, :cond_19

    .line 391
    array-length v0, p1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    goto :goto_19

    :cond_8
    :goto_8
    if-ge p0, v1, :cond_18

    .line 396
    aget v0, p1, p0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    aput v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    :cond_18
    const/4 p0, 0x1

    :cond_19
    :goto_19
    return p0
.end method
