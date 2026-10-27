.class public Lcom/android/server/display/HysteresisLevels;
.super Ljava/lang/Object;
.source "HysteresisLevels.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HysteresisLevels"


# instance fields
.field private final mBrighteningThresholds:[F

.field private final mDarkeningThresholds:[F

.field private final mMinBrightening:F

.field private final mMinDarkening:F

.field private final mThresholdLevels:[F


# direct methods
.method constructor <init>([I[I[IFF)V
    .registers 8
    .param p1, "brighteningThresholds"    # [I
    .param p2, "darkeningThresholds"    # [I
    .param p3, "thresholdLevels"    # [I
    .param p4, "minDarkeningThreshold"    # F
    .param p5, "minBrighteningThreshold"    # F

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_28

    array-length v0, p2

    array-length v1, p3

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_28

    .line 59
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/HysteresisLevels;->setArrayFormat([IF)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/HysteresisLevels;->mBrighteningThresholds:[F

    .line 60
    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-direct {p0, p2, v1}, Lcom/android/server/display/HysteresisLevels;->setArrayFormat([IF)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/HysteresisLevels;->mDarkeningThresholds:[F

    .line 61
    invoke-direct {p0, p3, v0}, Lcom/android/server/display/HysteresisLevels;->setArrayFormat([IF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/HysteresisLevels;->mThresholdLevels:[F

    .line 62
    iput p4, p0, Lcom/android/server/display/HysteresisLevels;->mMinDarkening:F

    .line 63
    iput p5, p0, Lcom/android/server/display/HysteresisLevels;->mMinBrightening:F

    .line 64
    return-void

    .line 55
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mismatch between hysteresis array lengths."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getReferenceLevel(F[F)F
    .registers 6
    .param p1, "value"    # F
    .param p2, "referenceLevels"    # [F

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "index":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/HysteresisLevels;->mThresholdLevels:[F

    array-length v2, v1

    if-le v2, v0, :cond_f

    aget v1, v1, v0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_f

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    :cond_f
    aget v1, p2, v0

    return v1
.end method

.method private setArrayFormat([IF)[F
    .registers 6
    .param p1, "configArray"    # [I
    .param p2, "divideFactor"    # F

    .line 112
    array-length v0, p1

    new-array v0, v0, [F

    .line 113
    .local v0, "levelArray":[F
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_4
    array-length v2, v0

    if-le v2, v1, :cond_10

    .line 114
    aget v2, p1, v1

    int-to-float v2, v2

    div-float/2addr v2, p2

    aput v2, v0, v1

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 116
    .end local v1    # "index":I
    :cond_10
    return-object v0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 120
    const-string v0, "HysteresisLevels"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrighteningThresholds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/HysteresisLevels;->mBrighteningThresholds:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDarkeningThresholds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/HysteresisLevels;->mDarkeningThresholds:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mThresholdLevels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/HysteresisLevels;->mThresholdLevels:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public getBrighteningThreshold(F)F
    .registers 5
    .param p1, "value"    # F

    .line 70
    iget-object v0, p0, Lcom/android/server/display/HysteresisLevels;->mBrighteningThresholds:[F

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/HysteresisLevels;->getReferenceLevel(F[F)F

    move-result v0

    .line 73
    .local v0, "brightConstant":F
    add-float v1, p1, v0

    .line 79
    .local v1, "brightThreshold":F
    iget v2, p0, Lcom/android/server/display/HysteresisLevels;->mMinBrightening:F

    add-float/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 80
    return v1
.end method

.method public getDarkeningThreshold(F)F
    .registers 5
    .param p1, "value"    # F

    .line 87
    iget-object v0, p0, Lcom/android/server/display/HysteresisLevels;->mDarkeningThresholds:[F

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/HysteresisLevels;->getReferenceLevel(F[F)F

    move-result v0

    .line 88
    .local v0, "darkConstant":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    .line 93
    .local v1, "darkThreshold":F
    iget v2, p0, Lcom/android/server/display/HysteresisLevels;->mMinDarkening:F

    sub-float v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 94
    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2
.end method
