.class public Lcom/android/server/lineage/display/ColorTemperatureController;
.super Lcom/android/server/lineage/display/LiveDisplayFeature;
.source "ColorTemperatureController.java"


# static fields
.field public static final DISPLAY_TEMPERATURE_DAY:Landroid/net/Uri;

.field public static final DISPLAY_TEMPERATURE_NIGHT:Landroid/net/Uri;


# instance fields
.field public mAnimator:Landroid/animation/ValueAnimator;

.field public final mColorBalanceCurve:[D

.field public final mColorBalanceRange:Landroid/util/Range;

.field public mColorTemperature:I

.field public final mColorTemperatureRange:Landroid/util/Range;

.field public mDayTemperature:I

.field public final mDefaultDayTemperature:I

.field public final mDefaultNightTemperature:I

.field public final mDisplayHardware:Lcom/android/server/lineage/display/DisplayHardwareController;

.field public final mHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

.field public mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field public mNightTemperature:I

.field public final mTransitionRunnable:Ljava/lang/Runnable;

.field public final mUseColorBalance:Z

.field public final mUseTemperatureAdjustment:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHardware(Lcom/android/server/lineage/display/ColorTemperatureController;)Lcom/android/internal/lineage/hardware/LineageHardwareManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateColorTemperature(Lcom/android/server/lineage/display/ColorTemperatureController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/lineage/display/ColorTemperatureController;->updateColorTemperature()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 69
    const-string v0, "display_temperature_day"

    .line 70
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/lineage/display/ColorTemperatureController;->DISPLAY_TEMPERATURE_DAY:Landroid/net/Uri;

    .line 71
    const-string v0, "display_temperature_night"

    .line 72
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/lineage/display/ColorTemperatureController;->DISPLAY_TEMPERATURE_NIGHT:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/lineage/display/DisplayHardwareController;)V
    .registers 10

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/server/lineage/display/LiveDisplayFeature;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const/4 p1, -0x1

    .line 58
    iput p1, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mColorTemperature:I

    .line 173
    new-instance p1, Lcom/android/server/lineage/display/ColorTemperatureController$1;

    invoke-direct {p1, p0}, Lcom/android/server/lineage/display/ColorTemperatureController$1;-><init>(Lcom/android/server/lineage/display/ColorTemperatureController;)V

    iput-object p1, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mTransitionRunnable:Ljava/lang/Runnable;

    .line 77
    iput-object p3, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mDisplayHardware:Lcom/android/server/lineage/display/DisplayHardwareController;

    .line 78
    iget-object p1, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->getInstance(Landroid/content/Context;)Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    const/high16 p2, 0x20000

    .line 81
    invoke-virtual {p1, p2}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->isSupported(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mUseColorBalance:Z

    .line 82
    invoke-virtual {p1}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->getColorBalanceRange()Landroid/util/Range;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mColorBalanceRange:Landroid/util/Range;

    .line 84
    iget-boolean p1, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mNightDisplayAvailable:Z

    if-nez p1, :cond_33

    if-nez p2, :cond_31

    .line 85
    invoke-virtual {p3}, Lcom/android/server/lineage/display/DisplayHardwareController;->hasColorAdjustment()Z

    move-result p1

    if-eqz p1, :cond_33

    :cond_31
    const/4 p1, 0x1

    goto :goto_34

    :cond_33
    const/4 p1, 0x0

    :goto_34
    iput-boolean p1, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mUseTemperatureAdjustment:Z

    .line 87
    iget-object p1, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e0063

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mDefaultDayTemperature:I

    .line 89
    iget-object p2, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10e0107

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mDefaultNightTemperature:I

    .line 92
    iget-object p2, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10e00f3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x10e00e2

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 92
    invoke-static {p2, p3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mColorTemperatureRange:Landroid/util/Range;

    .line 99
    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-double v0, p3

    int-to-double v2, p1

    .line 101
    invoke-virtual {p2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v4, p1

    .line 98
    invoke-static/range {v0 .. v5}, Lcom/android/internal/lineage/util/MathUtils;->powerCurve(DDD)[D

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mColorBalanceCurve:[D

    .line 103
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    return-void
.end method


# virtual methods
.method public final adj(JJJ)F
    .registers 11

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_3a

    cmp-long v0, p5, v0

    if-ltz v0, :cond_3a

    const-wide/32 v0, 0x1b7740

    sub-long v2, p3, v0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_3a

    add-long/2addr v0, p5

    cmp-long v0, p1, v0

    if-lez v0, :cond_19

    goto :goto_3a

    :cond_19
    cmp-long v0, p1, p3

    const v1, 0x49dbba00    # 1800000.0f

    if-gtz v0, :cond_2a

    .line 308
    iget-object p0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    sub-long/2addr p3, p1

    long-to-float p1, p3

    div-float/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result p0

    return p0

    :cond_2a
    cmp-long p3, p1, p5

    if-ltz p3, :cond_38

    .line 313
    iget-object p0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    sub-long/2addr p1, p5

    long-to-float p1, p1

    div-float/2addr p1, v1

    invoke-virtual {p0, p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result p0

    return p0

    :cond_38
    const/4 p0, 0x0

    return p0

    :cond_3a
    :goto_3a
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public final declared-synchronized animateColorBalance(I)V
    .registers 8

    monitor-enter p0

    .line 220
    :try_start_1
    iget-object v0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mHardware:Lcom/android/internal/lineage/hardware/LineageHardwareManager;

    invoke-virtual {v0}, Lcom/android/internal/lineage/hardware/LineageHardwareManager;->getColorBalance()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_3f

    if-ne v0, p1, :cond_b

    .line 223
    monitor-exit p0

    return-void

    :cond_b
    sub-int v1, v0, p1

    .line 226
    :try_start_d
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    int-to-long v1, v1

    .line 229
    sget-boolean v3, Lcom/android/server/lineage/display/LiveDisplayFeature;->DEBUG:Z

    if-eqz v3, :cond_41

    .line 230
    const-string v3, "LiveDisplay"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "animateDisplayColor current="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " duration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    :catchall_3f
    move-exception p1

    goto :goto_72

    .line 234
    :cond_41
    :goto_41
    iget-object v3, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_4d

    .line 235
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 236
    iget-object v3, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 239
    :cond_4d
    filled-new-array {v0, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    .line 240
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 241
    iget-object p1, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 242
    iget-object p1, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/server/lineage/display/ColorTemperatureController$2;

    invoke-direct {v0, p0}, Lcom/android/server/lineage/display/ColorTemperatureController$2;-><init>(Lcom/android/server/lineage/display/ColorTemperatureController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 253
    iget-object p1, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V
    :try_end_70
    .catchall {:try_start_d .. :try_end_70} :catchall_3f

    .line 254
    monitor-exit p0

    return-void

    :goto_72
    :try_start_72
    monitor-exit p0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_3f

    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 163
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 164
    const-string v0, "ColorTemperatureController Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDayTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mDayTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNightTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mNightTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 168
    const-string v0, "  ColorTemperatureController State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mColorTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mColorTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    isTransitioning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/lineage/display/ColorTemperatureController;->isTransitioning()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getCapabilities(Ljava/util/BitSet;)Z
    .registers 3

    .line 120
    iget-boolean v0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mUseTemperatureAdjustment:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x2

    .line 121
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    const/4 v0, 0x4

    .line 122
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    const/4 v0, 0x1

    .line 123
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 124
    iget-boolean v0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mUseColorBalance:Z

    if-eqz v0, :cond_19

    const/16 v0, 0x10

    .line 125
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->set(I)V

    .line 128
    :cond_19
    iget-boolean p0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mUseTemperatureAdjustment:Z

    return p0
.end method

.method public getColorBalanceRange()Landroid/util/Range;
    .registers 1

    .line 374
    iget-object p0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mColorBalanceRange:Landroid/util/Range;

    return-object p0
.end method

.method public getColorTemperature()I
    .registers 1

    .line 348
    iget p0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mColorTemperature:I

    return p0
.end method

.method public getColorTemperatureRange()Landroid/util/Range;
    .registers 1

    .line 370
    iget-object p0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mColorTemperatureRange:Landroid/util/Range;

    return-object p0
.end method

.method public getDayColorTemperature()I
    .registers 3

    .line 352
    const-string v0, "display_temperature_day"

    iget v1, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mDefaultDayTemperature:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lineage/display/LiveDisplayFeature;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getDefaultDayTemperature()I
    .registers 1

    .line 340
    iget p0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mDefaultDayTemperature:I

    return p0
.end method

.method public getDefaultNightTemperature()I
    .registers 1

    .line 344
    iget p0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mDefaultNightTemperature:I

    return p0
.end method

.method public getNightColorTemperature()I
    .registers 3

    .line 361
    const-string v0, "display_temperature_night"

    iget v1, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mDefaultNightTemperature:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lineage/display/LiveDisplayFeature;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getTwilightK()I
    .registers 9

    .line 328
    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->getTwilight()Lcom/android/server/lineage/display/TwilightTracker$TwilightState;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 332
    invoke-virtual {v0}, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->getYesterdaySunset()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->getTodaySunrise()J

    move-result-wide v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/lineage/display/ColorTemperatureController;->adj(JJJ)F

    move-result p0

    .line 333
    invoke-virtual {v0}, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->getTodaySunset()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/android/server/lineage/display/TwilightTracker$TwilightState;->getTomorrowSunrise()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/lineage/display/ColorTemperatureController;->adj(JJJ)F

    move-result v0

    mul-float/2addr p0, v0

    goto :goto_28

    :cond_25
    move-object v1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    .line 336
    :goto_28
    iget v0, v1, Lcom/android/server/lineage/display/ColorTemperatureController;->mNightTemperature:I

    iget v1, v1, Lcom/android/server/lineage/display/ColorTemperatureController;->mDayTemperature:I

    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public final isTransitioning()Z
    .registers 3

    .line 181
    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    iget v0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mColorTemperature:I

    iget v1, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mDayTemperature:I

    if-eq v0, v1, :cond_13

    iget p0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mNightTemperature:I

    if-eq v0, p0, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public final mapColorTemperatureToBalance(I)I
    .registers 5

    .line 261
    iget-object v0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mColorBalanceCurve:[D

    int-to-double v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/internal/lineage/util/MathUtils;->powerCurveToLinear([DD)D

    move-result-wide v0

    .line 262
    iget-object p1, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mColorBalanceRange:Landroid/util/Range;

    invoke-virtual {p1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mColorBalanceRange:Landroid/util/Range;

    .line 263
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-float p0, p0

    double-to-float v0, v0

    .line 262
    invoke-static {p1, p0, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public onScreenStateChanged()V
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_16

    .line 139
    iget-object p0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    .line 141
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/lineage/display/ColorTemperatureController;->updateColorTemperature()V

    return-void
.end method

.method public declared-synchronized onSettingsChanged(Landroid/net/Uri;)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_e

    .line 152
    :try_start_3
    sget-object v0, Lcom/android/server/lineage/display/ColorTemperatureController;->DISPLAY_TEMPERATURE_DAY:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_e

    :catchall_c
    move-exception p1

    goto :goto_29

    .line 153
    :cond_e
    :goto_e
    invoke-virtual {p0}, Lcom/android/server/lineage/display/ColorTemperatureController;->getDayColorTemperature()I

    move-result v0

    iput v0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mDayTemperature:I

    :cond_14
    if-eqz p1, :cond_1e

    .line 155
    sget-object v0, Lcom/android/server/lineage/display/ColorTemperatureController;->DISPLAY_TEMPERATURE_NIGHT:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 156
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/lineage/display/ColorTemperatureController;->getNightColorTemperature()I

    move-result p1

    iput p1, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mNightTemperature:I

    .line 158
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/lineage/display/ColorTemperatureController;->updateColorTemperature()V
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_c

    .line 159
    monitor-exit p0

    return-void

    :goto_29
    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_c

    throw p1
.end method

.method public onStart()V
    .registers 4

    .line 108
    iget-boolean v0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mUseTemperatureAdjustment:Z

    if-nez v0, :cond_5

    return-void

    .line 112
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/lineage/display/ColorTemperatureController;->getDayColorTemperature()I

    move-result v0

    iput v0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mDayTemperature:I

    .line 113
    invoke-virtual {p0}, Lcom/android/server/lineage/display/ColorTemperatureController;->getNightColorTemperature()I

    move-result v0

    iput v0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mNightTemperature:I

    const/4 v0, 0x2

    .line 115
    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/lineage/display/ColorTemperatureController;->DISPLAY_TEMPERATURE_DAY:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/server/lineage/display/ColorTemperatureController;->DISPLAY_TEMPERATURE_NIGHT:Landroid/net/Uri;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->registerSettings([Landroid/net/Uri;)V

    return-void
.end method

.method public onTwilightUpdated()V
    .registers 1

    .line 147
    invoke-virtual {p0}, Lcom/android/server/lineage/display/ColorTemperatureController;->updateColorTemperature()V

    return-void
.end method

.method public onUpdate()V
    .registers 1

    .line 133
    invoke-virtual {p0}, Lcom/android/server/lineage/display/ColorTemperatureController;->updateColorTemperature()V

    return-void
.end method

.method public setDayColorTemperature(I)V
    .registers 3

    .line 357
    const-string v0, "display_temperature_day"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/lineage/display/LiveDisplayFeature;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final declared-synchronized setDisplayTemperature(I)V
    .registers 6

    monitor-enter p0

    .line 267
    :try_start_1
    iget-object v0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mColorTemperatureRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 268
    const-string v0, "LiveDisplay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Color temperature out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_25

    .line 269
    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    goto :goto_86

    .line 272
    :cond_27
    :try_start_27
    iput p1, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mColorTemperature:I

    .line 274
    iget-boolean v0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mUseColorBalance:Z

    if-eqz v0, :cond_59

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/server/lineage/display/ColorTemperatureController;->mapColorTemperatureToBalance(I)I

    move-result v0

    .line 276
    const-string v1, "LiveDisplay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set color balance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " (temperature="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/display/ColorTemperatureController;->animateColorBalance(I)V
    :try_end_57
    .catchall {:try_start_27 .. :try_end_57} :catchall_25

    .line 278
    monitor-exit p0

    return-void

    .line 281
    :cond_59
    :try_start_59
    invoke-static {p1}, Lcom/android/internal/lineage/util/ColorUtils;->temperatureToRGB(I)[F

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mDisplayHardware:Lcom/android/server/lineage/display/DisplayHardwareController;

    invoke-virtual {v1, v0}, Lcom/android/server/lineage/display/DisplayHardwareController;->setAdditionalAdjustment([F)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 283
    sget-boolean v0, Lcom/android/server/lineage/display/LiveDisplayFeature;->DEBUG:Z

    if-eqz v0, :cond_84

    .line 284
    const-string v0, "LiveDisplay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adjust display temperature to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "K"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_59 .. :try_end_84} :catchall_25

    .line 287
    :cond_84
    monitor-exit p0

    return-void

    :goto_86
    :try_start_86
    monitor-exit p0
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_25

    throw p1
.end method

.method public setNightColorTemperature(I)V
    .registers 3

    .line 366
    const-string v0, "display_temperature_night"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/lineage/display/LiveDisplayFeature;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final declared-synchronized updateColorTemperature()V
    .registers 6

    monitor-enter p0

    .line 187
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mUseTemperatureAdjustment:Z

    if-eqz v0, :cond_67

    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_67

    .line 190
    :cond_c
    iget v0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mDayTemperature:I

    .line 191
    invoke-virtual {p0}, Lcom/android/server/lineage/display/LiveDisplayFeature;->getMode()I

    move-result v1

    if-nez v1, :cond_19

    .line 194
    iget v0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mDefaultDayTemperature:I

    goto :goto_26

    :catchall_17
    move-exception v0

    goto :goto_69

    :cond_19
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    .line 196
    iget v0, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mNightTemperature:I

    goto :goto_26

    :cond_1f
    const/4 v2, 0x2

    if-ne v1, v2, :cond_26

    .line 198
    invoke-virtual {p0}, Lcom/android/server/lineage/display/ColorTemperatureController;->getTwilightK()I

    move-result v0

    .line 201
    :cond_26
    :goto_26
    sget-boolean v2, Lcom/android/server/lineage/display/LiveDisplayFeature;->DEBUG:Z

    if-eqz v2, :cond_53

    .line 202
    const-string v2, "LiveDisplay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateColorTemperature mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " temperature="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mColorTemperature="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mColorTemperature:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_53
    invoke-virtual {p0, v0}, Lcom/android/server/lineage/display/ColorTemperatureController;->setDisplayTemperature(I)V

    .line 208
    invoke-virtual {p0}, Lcom/android/server/lineage/display/ColorTemperatureController;->isTransitioning()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 210
    iget-object v0, p0, Lcom/android/server/lineage/display/LiveDisplayFeature;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/lineage/display/ColorTemperatureController;->mTransitionRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_65
    .catchall {:try_start_1 .. :try_end_65} :catchall_17

    .line 212
    :cond_65
    monitor-exit p0

    return-void

    .line 188
    :cond_67
    :goto_67
    monitor-exit p0

    return-void

    :goto_69
    :try_start_69
    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_17

    throw v0
.end method
