.class public Lorg/apache/commons/math/analysis/solvers/BrentSolver;
.super Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;
.source "BrentSolver.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    const/16 v0, 0x64

    const-wide v1, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 71
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;-><init>(ID)V

    return-void
.end method


# virtual methods
.method public solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D
    .registers 20

    move-wide/from16 v2, p2

    move-wide/from16 v6, p4

    .line 225
    invoke-virtual {p0}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->clearResult()V

    .line 226
    invoke-virtual {p0, v2, v3, v6, v7}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->verifyInterval(DD)V

    .line 230
    invoke-interface/range {p1 .. p3}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v4

    .line 231
    invoke-interface {p1, v6, v7}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v8

    mul-double v10, v4, v8

    const-wide/16 v12, 0x0

    cmpl-double v0, v10, v12

    if-lez v0, :cond_52

    .line 237
    invoke-static {v4, v5}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v10, p0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->functionValueAccuracy:D

    cmpg-double v0, v0, v10

    const/4 v1, 0x0

    if-gtz v0, :cond_29

    .line 238
    invoke-virtual {p0, v2, v3, v1}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->setResult(DI)V

    return-wide v2

    .line 240
    :cond_29
    invoke-static {v8, v9}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v10

    iget-wide v12, p0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->functionValueAccuracy:D

    cmpg-double v0, v10, v12

    if-gtz v0, :cond_37

    .line 241
    invoke-virtual {p0, v6, v7, v1}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->setResult(DI)V

    return-wide v6

    .line 245
    :cond_37
    sget-object p0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->SAME_SIGN_AT_ENDPOINTS:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 246
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 245
    invoke-static {p0, v0}, Lorg/apache/commons/math/MathRuntimeException;->createIllegalArgumentException(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_52
    cmpg-double v0, v10, v12

    if-gez v0, :cond_60

    move-wide/from16 v10, p2

    move-wide v12, v4

    move-object v0, p0

    move-object v1, p1

    .line 250
    invoke-virtual/range {v0 .. v13}, Lorg/apache/commons/math/analysis/solvers/BrentSolver;->solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDDDDD)D

    move-result-wide v0

    return-wide v0

    :cond_60
    cmpl-double p0, v4, v12

    if-nez p0, :cond_65

    return-wide p2

    :cond_65
    return-wide p4
.end method

.method public final solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDDDDD)D
    .registers 47

    move-object/from16 v0, p0

    sub-double v1, p6, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide v14, v1

    move-wide/from16 v16, v14

    const/4 v3, 0x0

    .line 313
    :goto_12
    iget v1, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->maximalIterationCount:I

    if-ge v3, v1, :cond_12e

    .line 314
    invoke-static {v12, v13}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-static {v8, v9}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v18

    cmpg-double v1, v1, v18

    if-gez v1, :cond_28

    move-wide v1, v6

    move-wide v4, v12

    move-wide v12, v8

    move-wide v6, v10

    move-wide v10, v1

    goto :goto_2d

    :cond_28
    move-wide v1, v8

    move-wide v8, v4

    move-wide v4, v1

    move-wide/from16 v1, p2

    .line 323
    :goto_2d
    invoke-static {v4, v5}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v18

    move-wide/from16 p2, v1

    iget-wide v1, v0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->functionValueAccuracy:D

    cmpg-double v1, v18, v1

    if-gtz v1, :cond_3f

    .line 327
    invoke-virtual {v0, v6, v7, v3}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->setResult(DI)V

    .line 328
    iget-wide v0, v0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->result:D

    return-wide v0

    :cond_3f
    sub-double v1, v10, v6

    move-wide/from16 p4, v1

    .line 331
    iget-wide v1, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->relativeAccuracy:D

    .line 332
    invoke-static {v6, v7}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v18

    mul-double v1, v1, v18

    move-wide/from16 p6, v4

    iget-wide v4, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->absoluteAccuracy:D

    invoke-static {v1, v2, v4, v5}, Lorg/apache/commons/math/util/FastMath;->max(DD)D

    move-result-wide v1

    .line 333
    invoke-static/range {p4 .. p5}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, v1

    if-gtz v4, :cond_61

    .line 334
    invoke-virtual {v0, v6, v7, v3}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->setResult(DI)V

    .line 335
    iget-wide v0, v0, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverImpl;->result:D

    return-wide v0

    .line 337
    :cond_61
    invoke-static {v14, v15}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v4

    cmpg-double v4, v4, v1

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    const-wide/16 v20, 0x0

    if-ltz v4, :cond_d2

    .line 338
    invoke-static {v8, v9}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static/range {p6 .. p7}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v22

    cmpg-double v4, v4, v22

    if-gtz v4, :cond_7a

    goto :goto_d2

    :cond_7a
    div-double v4, p6, v8

    cmpl-double v22, p2, v10

    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    if-nez v22, :cond_89

    mul-double v8, p4, v4

    sub-double v23, v23, v4

    :goto_86
    move-wide/from16 v4, v23

    goto :goto_a7

    :cond_89
    div-double/2addr v8, v12

    div-double v25, p6, v12

    mul-double v27, p4, v8

    sub-double v29, v8, v25

    mul-double v27, v27, v29

    sub-double v29, v6, p2

    sub-double v25, v25, v23

    mul-double v29, v29, v25

    sub-double v27, v27, v29

    mul-double v27, v27, v4

    sub-double v8, v8, v23

    mul-double v8, v8, v25

    sub-double v4, v4, v23

    mul-double v23, v8, v4

    move-wide/from16 v8, v27

    goto :goto_86

    :goto_a7
    cmpl-double v22, v8, v20

    if-lez v22, :cond_ad

    neg-double v4, v4

    goto :goto_ae

    :cond_ad
    neg-double v8, v8

    :goto_ae
    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v22, v22, v8

    const-wide/high16 v24, 0x3ff8000000000000L    # 1.5

    mul-double v24, v24, p4

    mul-double v24, v24, v4

    mul-double v26, v1, v4

    .line 365
    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v26

    sub-double v24, v24, v26

    cmpl-double v22, v22, v24

    if-gez v22, :cond_d2

    mul-double v14, v14, v18

    mul-double/2addr v14, v4

    .line 366
    invoke-static {v14, v15}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v14

    cmpl-double v14, v8, v14

    if-ltz v14, :cond_d0

    goto :goto_d2

    :cond_d0
    div-double/2addr v8, v4

    goto :goto_d6

    :cond_d2
    :goto_d2
    mul-double v16, p4, v18

    move-wide/from16 v8, v16

    .line 381
    :goto_d6
    invoke-static {v8, v9}, Lorg/apache/commons/math/util/FastMath;->abs(D)D

    move-result-wide v4

    cmpl-double v4, v4, v1

    if-lez v4, :cond_e3

    add-double v1, v6, v8

    :goto_e0
    move-object/from16 v4, p1

    goto :goto_f7

    :cond_e3
    cmpl-double v4, p4, v20

    if-lez v4, :cond_eb

    mul-double v1, v1, v18

    add-double/2addr v1, v6

    goto :goto_e0

    :cond_eb
    cmpg-double v4, p4, v20

    if-gtz v4, :cond_f4

    mul-double v1, v1, v18

    sub-double v1, v6, v1

    goto :goto_e0

    :cond_f4
    move-object/from16 v4, p1

    move-wide v1, v6

    .line 388
    :goto_f7
    invoke-interface {v4, v1, v2}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v14

    cmpl-double v5, v14, v20

    const/16 v18, 0x1

    if-lez v5, :cond_104

    move/from16 v5, v18

    goto :goto_105

    :cond_104
    const/4 v5, 0x0

    :goto_105
    cmpl-double v19, v12, v20

    if-lez v19, :cond_110

    move-wide/from16 v31, v1

    move/from16 v1, v18

    move-wide/from16 v18, v31

    goto :goto_113

    :cond_110
    move-wide/from16 v18, v1

    const/4 v1, 0x0

    :goto_113
    if-ne v5, v1, :cond_11d

    sub-double v1, v18, v6

    move-wide/from16 v12, p6

    move-wide v8, v1

    move-wide/from16 v16, v8

    move-wide v10, v6

    :cond_11d
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 p2, v16

    move-wide/from16 v16, v8

    move-wide v8, v14

    move-wide/from16 v14, p2

    move-wide/from16 v4, p6

    move-wide/from16 p2, v6

    move-wide/from16 v6, v18

    goto/16 :goto_12

    .line 397
    :cond_12e
    new-instance v1, Lorg/apache/commons/math/MaxIterationsExceededException;

    iget v0, v0, Lorg/apache/commons/math/ConvergingAlgorithmImpl;->maximalIterationCount:I

    invoke-direct {v1, v0}, Lorg/apache/commons/math/MaxIterationsExceededException;-><init>(I)V

    throw v1
.end method
