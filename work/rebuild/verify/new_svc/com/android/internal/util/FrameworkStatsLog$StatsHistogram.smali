.class public final Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;
.super Ljava/lang/Object;
.source "FrameworkStatsLog.java"


# static fields
.field public static final UNDERFLOW:F = -3.4028235E38f


# instance fields
.field private final mBinCounts:[I

.field private final mBins:[F


# direct methods
.method private constructor <init>([F)V
    .registers 2

    .line 17456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17457
    iput-object p1, p0, Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;->mBins:[F

    .line 17458
    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;->mBinCounts:[I

    return-void
.end method

.method public static varargs createExplicitBins([F)Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;
    .registers 5

    .line 17504
    array-length v0, p0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [F

    const v2, -0x800001

    const/4 v3, 0x0

    .line 17505
    aput v2, v0, v3

    .line 17506
    array-length v2, p0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17508
    new-instance p0, Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;

    invoke-direct {p0, v0}, Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;-><init>([F)V

    return-object p0
.end method

.method public static createExponentialBins(FFI)Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;
    .registers 9

    add-int/lit8 v0, p2, 0x2

    .line 17484
    new-array v0, v0, [F

    const/4 v1, 0x0

    const v2, -0x800001

    .line 17485
    aput v2, v0, v1

    const/4 v1, 0x1

    .line 17486
    aput p0, v0, v1

    add-int/lit8 v1, p2, 0x1

    .line 17487
    aput p1, v0, v1

    div-float/2addr p1, p0

    float-to-double p0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    int-to-double v4, p2

    div-double/2addr v2, v4

    .line 17491
    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    const/4 p1, 0x2

    :goto_1d
    if-ge p1, v1, :cond_29

    add-int/lit8 p2, p1, -0x1

    .line 17493
    aget p2, v0, p2

    mul-float/2addr p2, p0

    aput p2, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1d

    .line 17496
    :cond_29
    new-instance p0, Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;

    invoke-direct {p0, v0}, Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;-><init>([F)V

    return-object p0
.end method

.method public static createLinearBins(FFI)Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;
    .registers 6

    add-int/lit8 v0, p2, 0x2

    .line 17466
    new-array v0, v0, [F

    const/4 v1, 0x0

    const v2, -0x800001

    .line 17467
    aput v2, v0, v1

    const/4 v1, 0x1

    .line 17468
    aput p0, v0, v1

    add-int/lit8 v1, p2, 0x1

    .line 17469
    aput p1, v0, v1

    sub-float/2addr p1, p0

    int-to-float p0, p2

    div-float/2addr p1, p0

    const/4 p0, 0x2

    :goto_15
    if-ge p0, v1, :cond_21

    add-int/lit8 p2, p0, -0x1

    .line 17473
    aget p2, v0, p2

    add-float/2addr p2, p1

    aput p2, v0, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_15

    .line 17476
    :cond_21
    new-instance p0, Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;

    invoke-direct {p0, v0}, Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;-><init>([F)V

    return-object p0
.end method


# virtual methods
.method public addValue(F)V
    .registers 5

    const/4 v0, 0x0

    .line 17516
    :goto_1
    iget-object v1, p0, Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;->mBins:[F

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_13

    add-int/lit8 v2, v0, 0x1

    .line 17517
    aget v1, v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_11

    goto :goto_13

    :cond_11
    move v0, v2

    goto :goto_1

    .line 17522
    :cond_13
    :goto_13
    iget-object p0, p0, Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;->mBinCounts:[I

    aget p1, p0, v0

    add-int/lit8 p1, p1, 0x1

    aput p1, p0, v0

    return-void
.end method

.method public clear()V
    .registers 2

    .line 17529
    iget-object p0, p0, Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;->mBinCounts:[I

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public getBinCounts()[I
    .registers 1

    .line 17536
    iget-object p0, p0, Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;->mBinCounts:[I

    return-object p0
.end method

.method public getBins()[F
    .registers 1

    .line 17543
    iget-object p0, p0, Lcom/android/internal/util/FrameworkStatsLog$StatsHistogram;->mBins:[F

    return-object p0
.end method
