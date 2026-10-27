.class public abstract Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;
.super Ljava/lang/Object;
.source "UnivariateRealSolverUtils.java"


# direct methods
.method public static bracket(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)[D
    .registers 15

    const v7, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    .line 128
    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;->bracket(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDDI)[D

    move-result-object p0

    return-object p0
.end method

.method public static bracket(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDDI)[D
    .registers 33

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-wide/from16 v3, p5

    move/from16 v5, p7

    if-eqz v0, :cond_a7

    if-lez v5, :cond_98

    cmpg-double v6, p1, v1

    if-ltz v6, :cond_81

    cmpl-double v6, p1, v3

    if-gtz v6, :cond_81

    cmpl-double v6, v1, v3

    if-gez v6, :cond_81

    const/4 v6, 0x0

    move-wide/from16 v7, p1

    move-wide v9, v7

    move v11, v6

    :cond_1d
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v7, v12

    .line 189
    invoke-static {v7, v8, v1, v2}, Lorg/apache/commons/math/util/FastMath;->max(DD)D

    move-result-wide v7

    add-double/2addr v9, v12

    .line 190
    invoke-static {v9, v10, v3, v4}, Lorg/apache/commons/math/util/FastMath;->min(DD)D

    move-result-wide v9

    .line 191
    invoke-interface {v0, v7, v8}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v12

    .line 193
    invoke-interface {v0, v9, v10}, Lorg/apache/commons/math/analysis/UnivariateRealFunction;->value(D)D

    move-result-wide v14

    const/16 v16, 0x1

    add-int/lit8 v11, v11, 0x1

    mul-double v17, v12, v14

    const-wide/16 v19, 0x0

    cmpl-double v17, v17, v19

    if-lez v17, :cond_47

    if-ge v11, v5, :cond_47

    cmpl-double v18, v7, v1

    if-gtz v18, :cond_1d

    cmpg-double v18, v9, v3

    if-ltz v18, :cond_1d

    :cond_47
    if-gtz v17, :cond_51

    const/4 v0, 0x2

    .line 205
    new-array v0, v0, [D

    aput-wide v7, v0, v6

    aput-wide v9, v0, v16

    return-object v0

    .line 199
    :cond_51
    new-instance v0, Lorg/apache/commons/math/ConvergenceException;

    sget-object v6, Lorg/apache/commons/math/exception/util/LocalizedFormats;->FAILED_BRACKETING:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 201
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    .line 202
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v23

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v24

    filled-new-array/range {v16 .. v24}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lorg/apache/commons/math/ConvergenceException;-><init>(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 178
    :cond_81
    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->INVALID_BRACKETING_PARAMETERS:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 180
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 178
    invoke-static {v0, v1}, Lorg/apache/commons/math/MathRuntimeException;->createIllegalArgumentException(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 174
    :cond_98
    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->INVALID_MAX_ITERATIONS:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    .line 175
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 174
    invoke-static {v0, v1}, Lorg/apache/commons/math/MathRuntimeException;->createIllegalArgumentException(Lorg/apache/commons/math/exception/util/Localizable;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 171
    :cond_a7
    new-instance v0, Lorg/apache/commons/math/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math/exception/util/LocalizedFormats;->FUNCTION:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    invoke-direct {v0, v1}, Lorg/apache/commons/math/exception/NullArgumentException;-><init>(Lorg/apache/commons/math/exception/util/Localizable;)V

    throw v0
.end method

.method public static setup(Lorg/apache/commons/math/analysis/UnivariateRealFunction;)V
    .registers 2

    if-eqz p0, :cond_3

    return-void

    .line 226
    :cond_3
    new-instance p0, Lorg/apache/commons/math/exception/NullArgumentException;

    sget-object v0, Lorg/apache/commons/math/exception/util/LocalizedFormats;->FUNCTION:Lorg/apache/commons/math/exception/util/LocalizedFormats;

    invoke-direct {p0, v0}, Lorg/apache/commons/math/exception/NullArgumentException;-><init>(Lorg/apache/commons/math/exception/util/Localizable;)V

    throw p0
.end method

.method public static solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DDD)D
    .registers 8

    .line 79
    invoke-static {p0}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils;->setup(Lorg/apache/commons/math/analysis/UnivariateRealFunction;)V

    .line 80
    # getter for: Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils$LazyHolder;->FACTORY:Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverFactory;
    invoke-static {}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverUtils$LazyHolder;->access$000()Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolverFactory;->newDefaultSolver()Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolver;

    move-result-object v0

    .line 81
    invoke-interface {v0, p5, p6}, Lorg/apache/commons/math/ConvergingAlgorithm;->setAbsoluteAccuracy(D)V

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    move-object p0, v0

    .line 82
    invoke-interface/range {p0 .. p5}, Lorg/apache/commons/math/analysis/solvers/UnivariateRealSolver;->solve(Lorg/apache/commons/math/analysis/UnivariateRealFunction;DD)D

    move-result-wide p0

    return-wide p0
.end method
