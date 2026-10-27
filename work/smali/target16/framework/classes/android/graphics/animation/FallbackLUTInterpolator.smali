.class public Landroid/graphics/animation/FallbackLUTInterpolator;
.super Ljava/lang/Object;
.source "FallbackLUTInterpolator.java"

# interfaces
.implements Landroid/graphics/animation/NativeInterpolator;
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation runtime Landroid/graphics/animation/HasNativeInterpolator;
.end annotation


# static fields
.field private static final blacklist MAX_SAMPLE_POINTS:I = 0x12c


# instance fields
.field private final blacklist mLut:[F

.field private blacklist mSourceInterpolator:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor blacklist <init>(Landroid/animation/TimeInterpolator;J)V
    .registers 4

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/graphics/animation/FallbackLUTInterpolator;->mSourceInterpolator:Landroid/animation/TimeInterpolator;

    .line 45
    invoke-static {p1, p2, p3}, Landroid/graphics/animation/FallbackLUTInterpolator;->createLUT(Landroid/animation/TimeInterpolator;J)[F

    move-result-object p1

    iput-object p1, p0, Landroid/graphics/animation/FallbackLUTInterpolator;->mLut:[F

    .line 46
    return-void
.end method

.method private static blacklist createLUT(Landroid/animation/TimeInterpolator;J)[F
    .registers 7

    .line 49
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v0

    .line 50
    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 52
    long-to-double p1, p1

    int-to-double v0, v0

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    const/4 p2, 0x2

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 53
    const/16 p2, 0x12c

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 54
    new-array p2, p1, [F

    .line 55
    add-int/lit8 v0, p1, -0x1

    int-to-float v0, v0

    .line 56
    const/4 v1, 0x0

    :goto_26
    if-ge v1, p1, :cond_33

    .line 57
    int-to-float v2, v1

    div-float/2addr v2, v0

    .line 58
    invoke-interface {p0, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    aput v2, p2, v1

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    .line 60
    :cond_33
    return-object p2
.end method

.method public static blacklist createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J
    .registers 3

    .line 72
    invoke-static {p0, p1, p2}, Landroid/graphics/animation/FallbackLUTInterpolator;->createLUT(Landroid/animation/TimeInterpolator;J)[F

    move-result-object p0

    .line 73
    invoke-static {p0}, Landroid/graphics/animation/NativeInterpolatorFactory;->createLutInterpolator([F)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public blacklist createNativeInterpolator()J
    .registers 3

    .line 65
    iget-object v0, p0, Landroid/graphics/animation/FallbackLUTInterpolator;->mLut:[F

    invoke-static {v0}, Landroid/graphics/animation/NativeInterpolatorFactory;->createLutInterpolator([F)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getInterpolation(F)F
    .registers 3

    .line 78
    iget-object v0, p0, Landroid/graphics/animation/FallbackLUTInterpolator;->mSourceInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    return p1
.end method
