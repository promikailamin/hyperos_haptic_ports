.class public final Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;
.super Ljava/lang/Object;
.source "Histogram.java"

# interfaces
.implements Lcom/android/modules/expresslog/Histogram$BinOptions;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/modules/expresslog/Histogram;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScaledRangeOptions"
.end annotation


# instance fields
.field final blacklist mBins:[J


# direct methods
.method public constructor blacklist <init>(IIFF)V
    .registers 8

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const/4 v0, 0x1

    if-lt p1, v0, :cond_28

    .line 170
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p3, v1

    if-ltz v2, :cond_20

    .line 175
    cmpg-float v1, p4, v1

    if-ltz v1, :cond_18

    .line 181
    add-int/2addr p1, v0

    invoke-static {p1, p2, p3, p4}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;->initBins(IIFF)[J

    move-result-object p1

    iput-object p1, p0, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;->mBins:[J

    .line 182
    return-void

    .line 176
    :cond_18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Scaled factor invalid (should be 1.f at minimum)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "First bin width invalid (should be 1.f at minimum)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 167
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bin count should be positive number"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static blacklist initBins(IIFF)[J
    .registers 10

    .line 216
    new-array v0, p0, [J

    .line 217
    const/4 v1, 0x0

    int-to-long v2, p1

    aput-wide v2, v0, v1

    .line 218
    float-to-double p1, p2

    .line 219
    const/4 v1, 0x1

    :goto_8
    if-ge v1, p0, :cond_29

    .line 221
    add-int/lit8 v2, v1, -0x1

    aget-wide v2, v0, v2

    long-to-double v2, v2

    add-double/2addr v2, p1

    .line 222
    const-wide v4, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v4, v2, v4

    if-gtz v4, :cond_21

    .line 227
    double-to-long v2, v2

    aput-wide v2, v0, v1

    .line 228
    float-to-double v2, p3

    mul-double/2addr p1, v2

    .line 219
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 223
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attempted to create a bucket larger than maxint"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 230
    :cond_29
    return-object v0
.end method

.method private static blacklist lower_bound([JJ)I
    .registers 3

    .line 204
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p0

    .line 206
    if-gez p0, :cond_d

    .line 209
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x2

    return p0

    .line 211
    :cond_d
    return p0
.end method


# virtual methods
.method public blacklist getBinForSample(F)I
    .registers 6

    .line 191
    iget-object v0, p0, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;->mBins:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    long-to-float v0, v2

    cmpg-float v0, p1, v0

    if-gez v0, :cond_b

    .line 193
    return v1

    .line 194
    :cond_b
    iget-object v0, p0, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;->mBins:[J

    iget-object v1, p0, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;->mBins:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    long-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1d

    .line 196
    iget-object p1, p0, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;->mBins:[J

    array-length p1, p1

    return p1

    .line 199
    :cond_1d
    iget-object v0, p0, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;->mBins:[J

    float-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;->lower_bound([JJ)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public blacklist getBinsCount()I
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/android/modules/expresslog/Histogram$ScaledRangeOptions;->mBins:[J

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
