.class public abstract Lorg/apache/commons/math/special/Beta;
.super Ljava/lang/Object;
.source "Beta.java"


# direct methods
.method public static logBeta(DDDI)D
    .registers 9

    .line 193
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p4

    if-nez p4, :cond_27

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result p4

    if-nez p4, :cond_27

    const-wide/16 p4, 0x0

    cmpg-double p6, p0, p4

    if-lez p6, :cond_27

    cmpg-double p4, p2, p4

    if-gtz p4, :cond_17

    goto :goto_27

    .line 196
    :cond_17
    invoke-static {p0, p1}, Lorg/apache/commons/math/special/Gamma;->logGamma(D)D

    move-result-wide p4

    invoke-static {p2, p3}, Lorg/apache/commons/math/special/Gamma;->logGamma(D)D

    move-result-wide v0

    add-double/2addr p4, v0

    add-double/2addr p0, p2

    .line 197
    invoke-static {p0, p1}, Lorg/apache/commons/math/special/Gamma;->logGamma(D)D

    move-result-wide p0

    sub-double/2addr p4, p0

    return-wide p4

    :cond_27
    :goto_27
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method

.method public static regularizedBeta(DDD)D
    .registers 15

    const-wide v6, 0x3d06849b86a12b9bL    # 1.0E-14

    const v8, 0x7fffffff

    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 55
    invoke-static/range {v0 .. v8}, Lorg/apache/commons/math/special/Beta;->regularizedBeta(DDDDI)D

    move-result-wide p0

    return-wide p0
.end method

.method public static regularizedBeta(DDDDI)D
    .registers 22

    .line 122
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_72

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_72

    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_72

    const-wide/16 v0, 0x0

    cmpg-double v2, p0, v0

    if-ltz v2, :cond_72

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p0, v9

    if-gtz v2, :cond_72

    cmpg-double v2, p2, v0

    if-lez v2, :cond_72

    cmpg-double v0, p4, v0

    if-gtz v0, :cond_27

    goto :goto_72

    :cond_27
    add-double v0, p2, v9

    add-double v2, p2, p4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    cmpl-double v0, p0, v0

    if-lez v0, :cond_42

    sub-double v0, v9, p0

    move-wide v4, p2

    move-wide/from16 v2, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    .line 127
    invoke-static/range {v0 .. v8}, Lorg/apache/commons/math/special/Beta;->regularizedBeta(DDDDI)D

    move-result-wide p0

    sub-double/2addr v9, p0

    return-wide v9

    :cond_42
    move-wide v4, p2

    move-wide/from16 v2, p4

    .line 129
    new-instance v0, Lorg/apache/commons/math/special/Beta$1;

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/apache/commons/math/special/Beta$1;-><init>(DD)V

    .line 152
    invoke-static {p0, p1}, Lorg/apache/commons/math/util/FastMath;->log(D)D

    move-result-wide v6

    mul-double/2addr v6, v4

    sub-double v11, v9, p0

    invoke-static {v11, v12}, Lorg/apache/commons/math/util/FastMath;->log(D)D

    move-result-wide v11

    mul-double/2addr v11, v2

    add-double/2addr v6, v11

    .line 153
    invoke-static {v4, v5}, Lorg/apache/commons/math/util/FastMath;->log(D)D

    move-result-wide v11

    sub-double/2addr v6, v11

    invoke-static/range {p2 .. p8}, Lorg/apache/commons/math/special/Beta;->logBeta(DDDI)D

    move-result-wide v1

    sub-double/2addr v6, v1

    .line 152
    invoke-static {v6, v7}, Lorg/apache/commons/math/util/FastMath;->exp(D)D

    move-result-wide v1

    mul-double v6, v1, v9

    move-wide v1, p0

    move-wide/from16 v3, p6

    move/from16 v5, p8

    .line 154
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math/util/ContinuedFraction;->evaluate(DDI)D

    move-result-wide p0

    div-double/2addr v6, p0

    return-wide v6

    :cond_72
    :goto_72
    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0
.end method
