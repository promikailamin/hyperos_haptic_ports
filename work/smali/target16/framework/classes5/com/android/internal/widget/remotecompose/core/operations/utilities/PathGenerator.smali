.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;
.super Ljava/lang/Object;
.source "PathGenerator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;,
        Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;,
        Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;,
        Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Linear;
    }
.end annotation


# static fields
.field public static final blacklist LINEAR:I = 0x4

.field public static final blacklist MONOTONIC:I = 0x2

.field public static final blacklist SPLINE:I


# instance fields
.field private final blacklist mExpression:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

.field private blacklist mLinear:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Linear;

.field private blacklist mMonotonic:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;

.field private blacklist mSpline:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;

.field blacklist mXData:[F

.field blacklist mYData:[F


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mExpression:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    .line 35
    const/4 v0, 0x0

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mXData:[F

    .line 36
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mYData:[F

    return-void
.end method


# virtual methods
.method public blacklist getPath([F[F[FFFIIZLcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;)I
    .registers 24

    .line 171
    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p6

    move/from16 v4, p8

    move-object/from16 v5, p9

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mXData:[F

    array-length v6, v6

    if-eq v6, v3, :cond_17

    .line 172
    new-array v6, v3, [F

    iput-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mXData:[F

    .line 173
    new-array v6, v3, [F

    iput-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mYData:[F

    .line 175
    :cond_17
    sub-float v6, p5, p4

    .line 176
    const/4 v7, 0x1

    if-eqz v4, :cond_1d

    goto :goto_1e

    :cond_1d
    sub-int/2addr v3, v7

    :goto_1e
    int-to-float v3, v3

    div-float/2addr v6, v3

    .line 177
    const/4 v3, 0x0

    if-nez v5, :cond_4e

    .line 178
    move v5, v3

    :goto_24
    iget-object v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mXData:[F

    array-length v8, v8

    if-ge v5, v8, :cond_79

    .line 179
    int-to-float v8, v5

    mul-float/2addr v8, v6

    add-float v8, p4, v8

    .line 180
    iget-object v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mXData:[F

    iget-object v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mExpression:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    array-length v11, v1

    new-array v12, v7, [F

    aput v8, v12, v3

    invoke-virtual {v10, v1, v11, v12}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval([FI[F)F

    move-result v10

    aput v10, v9, v5

    .line 181
    iget-object v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mYData:[F

    iget-object v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mExpression:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    array-length v11, v2

    new-array v12, v7, [F

    aput v8, v12, v3

    invoke-virtual {v10, v2, v11, v12}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval([FI[F)F

    move-result v8

    aput v8, v9, v5

    .line 178
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 184
    :cond_4e
    move v8, v3

    :goto_4f
    iget-object v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mXData:[F

    array-length v9, v9

    if-ge v8, v9, :cond_79

    .line 185
    int-to-float v9, v8

    mul-float/2addr v9, v6

    add-float v9, p4, v9

    .line 186
    iget-object v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mXData:[F

    iget-object v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mExpression:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    array-length v12, v1

    new-array v13, v7, [F

    aput v9, v13, v3

    invoke-virtual {v11, v5, v1, v12, v13}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI[F)F

    move-result v11

    aput v11, v10, v8

    .line 187
    iget-object v10, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mYData:[F

    iget-object v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mExpression:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    array-length v12, v2

    new-array v13, v7, [F

    aput v9, v13, v3

    invoke-virtual {v11, v5, v2, v12, v13}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI[F)F

    move-result v9

    aput v9, v10, v8

    .line 184
    add-int/lit8 v8, v8, 0x1

    goto :goto_4f

    .line 191
    :cond_79
    const/4 v1, 0x0

    packed-switch p7, :pswitch_data_cc

    .line 204
    :pswitch_7d
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mSpline:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;

    if-nez v2, :cond_bd

    .line 205
    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;

    invoke-direct {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator-IA;)V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mSpline:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;

    goto :goto_bd

    .line 193
    :pswitch_89
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mLinear:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Linear;

    if-nez v2, :cond_94

    .line 194
    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Linear;

    invoke-direct {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Linear;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator-IA;)V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mLinear:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Linear;

    .line 196
    :cond_94
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mLinear:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Linear;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mXData:[F

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mYData:[F

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Linear;->asPath([F[FZ)Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->copyPoints([F)I

    move-result v0

    return v0

    .line 198
    :pswitch_a3
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mMonotonic:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;

    if-nez v2, :cond_ae

    .line 199
    new-instance v2, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;

    invoke-direct {v2, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator-IA;)V

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mMonotonic:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;

    .line 201
    :cond_ae
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mMonotonic:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mXData:[F

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mYData:[F

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->asPath([F[FZ)Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->copyPoints([F)I

    move-result v0

    return v0

    .line 207
    :cond_bd
    :goto_bd
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mSpline:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mXData:[F

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mYData:[F

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->asPath([F[FZ)Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->copyPoints([F)I

    move-result v0

    .line 208
    return v0

    :pswitch_data_cc
    .packed-switch 0x2
        :pswitch_a3
        :pswitch_7d
        :pswitch_89
    .end packed-switch
.end method

.method public blacklist getPath([F[F[FIZ)I
    .registers 7

    .line 131
    const/4 v0, 0x0

    packed-switch p4, :pswitch_data_32

    .line 139
    :pswitch_4
    iget-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mSpline:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;

    if-nez p4, :cond_26

    .line 140
    new-instance p4, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;

    invoke-direct {p4, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator-IA;)V

    iput-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mSpline:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;

    goto :goto_26

    .line 134
    :pswitch_10
    iget-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mMonotonic:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;

    if-nez p4, :cond_1b

    .line 135
    new-instance p4, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;

    invoke-direct {p4, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator-IA;)V

    iput-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mMonotonic:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;

    .line 137
    :cond_1b
    iget-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mMonotonic:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;

    invoke-virtual {p4, p2, p3, p5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->asPath([F[FZ)Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->copyPoints([F)I

    move-result p1

    return p1

    .line 143
    :cond_26
    :goto_26
    iget-object p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mSpline:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;

    invoke-virtual {p4, p2, p3, p5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->asPath([F[FZ)Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->copyPoints([F)I

    move-result p1

    return p1

    nop

    :pswitch_data_32
    .packed-switch 0x2
        :pswitch_10
        :pswitch_4
        :pswitch_10
    .end packed-switch
.end method

.method public blacklist getPolarPath([F[F[FFFIIZLcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;)I
    .registers 26

    .line 236
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p6

    move/from16 v4, p8

    move-object/from16 v5, p9

    iget-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mXData:[F

    array-length v6, v6

    if-eq v6, v3, :cond_19

    .line 237
    new-array v6, v3, [F

    iput-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mXData:[F

    .line 238
    new-array v6, v3, [F

    iput-object v6, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mYData:[F

    .line 240
    :cond_19
    sub-float v6, p5, p4

    .line 241
    const/4 v7, 0x1

    if-eqz v4, :cond_1f

    goto :goto_20

    :cond_1f
    sub-int/2addr v3, v7

    :goto_20
    int-to-float v3, v3

    div-float/2addr v6, v3

    .line 242
    const/4 v3, 0x0

    if-nez v5, :cond_58

    .line 243
    move v5, v3

    :goto_26
    iget-object v8, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mXData:[F

    array-length v8, v8

    if-ge v5, v8, :cond_90

    .line 244
    int-to-float v8, v5

    mul-float/2addr v8, v6

    add-float v8, p4, v8

    .line 245
    iget-object v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mExpression:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    array-length v10, v2

    new-array v11, v7, [F

    aput v8, v11, v3

    invoke-virtual {v9, v2, v10, v11}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval([FI[F)F

    move-result v9

    .line 246
    iget-object v10, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mXData:[F

    aget v11, p3, v3

    float-to-double v12, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    double-to-float v8, v14

    mul-float/2addr v8, v9

    add-float/2addr v11, v8

    aput v11, v10, v5

    .line 247
    iget-object v8, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mYData:[F

    aget v10, p3, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v9, v11

    add-float/2addr v10, v9

    aput v10, v8, v5

    .line 243
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 250
    :cond_58
    move v8, v3

    :goto_59
    iget-object v9, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mXData:[F

    array-length v9, v9

    if-ge v8, v9, :cond_90

    .line 251
    int-to-float v9, v8

    mul-float/2addr v9, v6

    add-float v9, p4, v9

    .line 252
    iget-object v10, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mExpression:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    array-length v11, v2

    new-array v12, v7, [F

    aput v9, v12, v3

    invoke-virtual {v10, v5, v2, v11, v12}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI[F)F

    move-result v10

    .line 253
    iget-object v11, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mXData:[F

    aget v12, p3, v3

    float-to-double v13, v9

    move/from16 p5, v7

    move v9, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v7, v10

    add-float/2addr v12, v7

    aput v12, v11, v9

    .line 254
    iget-object v7, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mYData:[F

    aget v8, p3, p5

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    double-to-float v11, v11

    mul-float/2addr v10, v11

    add-float/2addr v8, v10

    aput v8, v7, v9

    .line 250
    add-int/lit8 v8, v9, 0x1

    move/from16 v7, p5

    goto :goto_59

    .line 258
    :cond_90
    const/4 v2, 0x0

    packed-switch p7, :pswitch_data_e4

    .line 271
    :pswitch_94
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mSpline:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;

    if-nez v3, :cond_d4

    .line 272
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;

    invoke-direct {v3, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator-IA;)V

    iput-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mSpline:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;

    goto :goto_d4

    .line 260
    :pswitch_a0
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mLinear:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Linear;

    if-nez v3, :cond_ab

    .line 261
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Linear;

    invoke-direct {v3, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Linear;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator-IA;)V

    iput-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mLinear:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Linear;

    .line 263
    :cond_ab
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mLinear:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Linear;

    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mXData:[F

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mYData:[F

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Linear;->asPath([F[FZ)Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->copyPoints([F)I

    move-result v0

    return v0

    .line 265
    :pswitch_ba
    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mMonotonic:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;

    if-nez v3, :cond_c5

    .line 266
    new-instance v3, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;

    invoke-direct {v3, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;-><init>(Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator-IA;)V

    iput-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mMonotonic:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;

    .line 268
    :cond_c5
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mMonotonic:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;

    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mXData:[F

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mYData:[F

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Monotonic;->asPath([F[FZ)Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->copyPoints([F)I

    move-result v0

    return v0

    .line 274
    :cond_d4
    :goto_d4
    iget-object v2, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mSpline:Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;

    iget-object v3, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mXData:[F

    iget-object v0, v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator;->mYData:[F

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Spline;->asPath([F[FZ)Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/PathGenerator$Path;->copyPoints([F)I

    move-result v0

    .line 275
    return v0

    nop

    :pswitch_data_e4
    .packed-switch 0x2
        :pswitch_ba
        :pswitch_94
        :pswitch_a0
    .end packed-switch
.end method

.method public blacklist getReturnLength(IZ)I
    .registers 3

    .line 110
    nop

    .line 111
    if-eqz p2, :cond_8

    mul-int/lit8 p1, p1, 0x9

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_8
    add-int/lit8 p1, p1, -0x1

    mul-int/lit8 p1, p1, 0x9

    :goto_c
    add-int/lit8 p1, p1, 0x3

    .line 112
    return p1
.end method
