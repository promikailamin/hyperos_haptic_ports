.class public abstract Lorg/apache/commons/math/util/ContinuedFraction;
.super Ljava/lang/Object;
.source "ContinuedFraction.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(DDI)D
    .registers 45

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p5

    const/4 v4, 0x0

    .line 130
    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/math/util/ContinuedFraction;->getA(ID)D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double v9, v5, v7

    const-wide/16 v11, 0x0

    const-wide v13, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move v15, v4

    move-wide/from16 v16, v7

    move-wide/from16 v18, v16

    move-wide/from16 v20, v11

    :goto_1d
    if-ge v15, v3, :cond_fe

    cmpl-double v13, v13, p3

    if-lez v13, :cond_fe

    add-int/lit8 v15, v15, 0x1

    .line 138
    invoke-virtual {v0, v15, v1, v2}, Lorg/apache/commons/math/util/ContinuedFraction;->getA(ID)D

    move-result-wide v13

    move-wide/from16 v22, v5

    .line 139
    invoke-virtual {v0, v15, v1, v2}, Lorg/apache/commons/math/util/ContinuedFraction;->getB(ID)D

    move-result-wide v4

    mul-double v24, v13, v22

    mul-double v26, v4, v16

    add-double v24, v24, v26

    mul-double v26, v13, v18

    mul-double v28, v4, v20

    add-double v26, v26, v28

    .line 143
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-nez v6, :cond_4f

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v6

    if-eqz v6, :cond_48

    goto :goto_4f

    :cond_48
    move-wide/from16 v33, v7

    move-wide/from16 v5, v24

    const/16 v32, 0x0

    goto :goto_b0

    .line 152
    :cond_4f
    :goto_4f
    invoke-static {v13, v14, v4, v5}, Lorg/apache/commons/math/util/FastMath;->max(DD)D

    move-result-wide v28

    cmpg-double v6, v28, v11

    if-lez v6, :cond_ee

    move-wide/from16 v30, v7

    move-wide/from16 v33, v30

    const/4 v6, 0x0

    const/16 v32, 0x1

    :goto_5e
    const/4 v7, 0x5

    if-ge v6, v7, :cond_a8

    mul-double v7, v30, v28

    cmpl-double v32, v13, v11

    if-eqz v32, :cond_7c

    cmpl-double v32, v13, v4

    if-lez v32, :cond_7c

    div-double v24, v22, v30

    div-double v26, v4, v7

    mul-double v35, v26, v16

    add-double v24, v24, v35

    div-double v30, v18, v30

    mul-double v26, v26, v20

    add-double v30, v30, v26

    move-wide/from16 v26, v30

    goto :goto_94

    :cond_7c
    cmpl-double v32, v4, v11

    if-eqz v32, :cond_94

    div-double v24, v13, v7

    mul-double v26, v24, v22

    div-double v35, v16, v30

    add-double v26, v26, v35

    mul-double v24, v24, v18

    div-double v30, v20, v30

    add-double v24, v24, v30

    move-wide/from16 v37, v26

    move-wide/from16 v26, v24

    move-wide/from16 v24, v37

    .line 169
    :cond_94
    :goto_94
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v30

    if-nez v30, :cond_a4

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v30

    if-eqz v30, :cond_a1

    goto :goto_a4

    :cond_a1
    const/16 v32, 0x0

    goto :goto_a6

    :cond_a4
    :goto_a4
    const/16 v32, 0x1

    :goto_a6
    if-nez v32, :cond_ab

    :cond_a8
    move-wide/from16 v5, v24

    goto :goto_b0

    :cond_ab
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v30, v7

    goto :goto_5e

    :goto_b0
    if-nez v32, :cond_de

    div-double v7, v5, v26

    .line 185
    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_ce

    div-double v9, v7, v9

    sub-double v9, v9, v33

    .line 190
    invoke-static {v9, v10}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v13

    move-wide v9, v7

    move-wide/from16 v20, v18

    move-wide/from16 v16, v22

    move-wide/from16 v18, v26

    move-wide/from16 v7, v33

    const/4 v4, 0x0

    goto/16 :goto_1d

    .line 186
    :cond_ce
    new-instance v0, Lorg/apache/commons/math/ConvergenceException;

    sget-object v3, Lorg/apache/commons/math/exception/util/LocalizedFormats;->CONTINUED_FRACTION_NAN_DIVERGENCE:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 188
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/apache/commons/math/ConvergenceException;-><init>(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 178
    :cond_de
    new-instance v0, Lorg/apache/commons/math/ConvergenceException;

    sget-object v3, Lorg/apache/commons/math/exception/util/LocalizedFormats;->CONTINUED_FRACTION_INFINITY_DIVERGENCE:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 180
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/apache/commons/math/ConvergenceException;-><init>(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 154
    :cond_ee
    new-instance v0, Lorg/apache/commons/math/ConvergenceException;

    sget-object v3, Lorg/apache/commons/math/exception/util/LocalizedFormats;->CONTINUED_FRACTION_INFINITY_DIVERGENCE:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 156
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/apache/commons/math/ConvergenceException;-><init>(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_fe
    if-ge v15, v3, :cond_101

    return-wide v9

    .line 201
    :cond_101
    new-instance v0, Lorg/apache/commons/math/MaxIterationsExceededException;

    sget-object v4, Lorg/apache/commons/math/exception/util/LocalizedFormats;->NON_CONVERGENT_CONTINUED_FRACTION:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 203
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v3, v4, v1}, Lorg/apache/commons/math/MaxIterationsExceededException;-><init>(ILorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public abstract getA(ID)D
.end method

.method public abstract getB(ID)D
.end method
