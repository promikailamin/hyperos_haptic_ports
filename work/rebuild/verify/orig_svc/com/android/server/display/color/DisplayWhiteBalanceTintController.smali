.class public final Lcom/android/server/display/color/DisplayWhiteBalanceTintController;
.super Lcom/android/server/display/color/ColorTemperatureTintController;
.source "DisplayWhiteBalanceTintController.java"


# instance fields
.field public mAppliedCct:I

.field public mCctEvaluator:Lcom/android/server/display/color/CctEvaluator;

.field public mChromaticAdaptationMatrix:[F

.field mCurrentColorTemperature:I

.field public mCurrentColorTemperatureXYZ:[F

.field mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

.field public final mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public mDisplayNominalWhiteCct:I

.field mDisplayNominalWhiteXYZ:[F

.field public mIsAllowed:Z

.field public mIsAvailable:Ljava/lang/Boolean;

.field public final mLock:Ljava/lang/Object;

.field public final mMatrixDisplayWhiteBalance:[F

.field mSetUp:Z

.field public mTargetCct:I

.field public mTemperatureDefault:I

.field mTemperatureMax:I

.field mTemperatureMin:I

.field public mTransitionDuration:J

.field public mTransitionDurationDecrease:J

.field public mTransitionDurationIncrease:J


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .registers 4

    .line 83
    invoke-direct {p0}, Lcom/android/server/display/color/ColorTemperatureTintController;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mLock:Ljava/lang/Object;

    const/4 v0, 0x3

    .line 55
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayNominalWhiteXYZ:[F

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    const/16 v0, 0x10

    .line 67
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mIsAllowed:Z

    .line 84
    iput-object p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 85
    iput-object p2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayManagerFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    return-void
.end method

.method public static mul3x3([F[F)[F
    .registers 29

    const/4 v0, 0x0

    .line 200
    aget v1, p0, v0

    aget v2, p1, v0

    mul-float v3, v1, v2

    const/4 v4, 0x3

    aget v5, p0, v4

    const/4 v6, 0x1

    aget v7, p1, v6

    mul-float v8, v5, v7

    add-float/2addr v3, v8

    const/4 v8, 0x6

    aget v9, p0, v8

    const/4 v10, 0x2

    aget v11, p1, v10

    mul-float v12, v9, v11

    add-float/2addr v3, v12

    .line 201
    aget v12, p0, v6

    mul-float v13, v12, v2

    const/4 v14, 0x4

    aget v15, p0, v14

    mul-float v16, v15, v7

    add-float v13, v13, v16

    const/16 v16, 0x7

    aget v17, p0, v16

    mul-float v18, v17, v11

    add-float v13, v13, v18

    .line 202
    aget v18, p0, v10

    mul-float v2, v2, v18

    const/16 v19, 0x5

    aget v20, p0, v19

    mul-float v7, v7, v20

    add-float/2addr v2, v7

    const/16 v7, 0x8

    aget v21, p0, v7

    mul-float v11, v11, v21

    add-float/2addr v2, v11

    .line 203
    aget v11, p1, v4

    mul-float v22, v1, v11

    aget v23, p1, v14

    mul-float v24, v5, v23

    add-float v22, v22, v24

    aget v24, p1, v19

    mul-float v25, v9, v24

    add-float v22, v22, v25

    mul-float v25, v12, v11

    mul-float v26, v15, v23

    add-float v25, v25, v26

    mul-float v26, v17, v24

    add-float v25, v25, v26

    mul-float v11, v11, v18

    mul-float v23, v23, v20

    add-float v11, v11, v23

    mul-float v24, v24, v21

    add-float v11, v11, v24

    .line 206
    aget v23, p1, v8

    mul-float v1, v1, v23

    aget v24, p1, v16

    mul-float v5, v5, v24

    add-float/2addr v1, v5

    aget v5, p1, v7

    mul-float/2addr v9, v5

    add-float/2addr v1, v9

    mul-float v12, v12, v23

    mul-float v15, v15, v24

    add-float/2addr v12, v15

    mul-float v17, v17, v5

    add-float v12, v12, v17

    mul-float v18, v18, v23

    mul-float v20, v20, v24

    add-float v18, v18, v20

    mul-float v21, v21, v5

    add-float v18, v18, v21

    const/16 v5, 0x9

    .line 208
    new-array v5, v5, [F

    aput v3, v5, v0

    aput v13, v5, v6

    aput v2, v5, v10

    aput v22, v5, v4

    aput v25, v5, v14

    aput v11, v5, v19

    aput v1, v5, v8

    aput v12, v5, v16

    aput v18, v5, v7

    return-object v5
.end method


# virtual methods
.method public computeMatrixForCct(I)[F
    .registers 6

    .line 246
    iget-boolean v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    if-eqz v0, :cond_4e

    if-nez p1, :cond_7

    goto :goto_4e

    .line 251
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_a
    iput p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCurrentColorTemperature:I

    .line 254
    iget v1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayNominalWhiteCct:I

    if-ne p1, v1, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivated()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 256
    iget-object v1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto :goto_22

    :catchall_1d
    move-exception p0

    goto :goto_4c

    .line 258
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->computeMatrixForCctLocked(I)V

    .line 261
    :goto_22
    const-string v1, "ColorDisplayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "computeDisplayWhiteBalanceMatrix: cct ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " matrix ="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    const/16 v3, 0x10

    .line 262
    invoke-static {p1, v3}, Lcom/android/server/display/color/TintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object p0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    monitor-exit v0

    return-object p0

    .line 265
    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_a .. :try_end_4d} :catchall_1d

    throw p0

    .line 247
    :cond_4e
    :goto_4e
    const-string p0, "ColorDisplayService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t compute matrix for cct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sget-object p0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    return-object p0
.end method

.method public final computeMatrixForCctLocked(I)V
    .registers 11

    .line 270
    invoke-static {p1}, Landroid/graphics/ColorSpace;->cctToXyz(I)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCurrentColorTemperatureXYZ:[F

    .line 272
    sget-object v0, Landroid/graphics/ColorSpace$Adaptation;->BRADFORD:Landroid/graphics/ColorSpace$Adaptation;

    iget-object v1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayNominalWhiteXYZ:[F

    .line 273
    invoke-static {v0, v1, p1}, Landroid/graphics/ColorSpace;->chromaticAdaptation(Landroid/graphics/ColorSpace$Adaptation;[F[F)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mChromaticAdaptationMatrix:[F

    .line 277
    iget-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

    .line 278
    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Rgb;->getTransform()[F

    move-result-object v0

    .line 277
    invoke-static {p1, v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mul3x3([F[F)[F

    move-result-object p1

    .line 279
    iget-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Rgb;->getInverseTransform()[F

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mul3x3([F[F)[F

    move-result-object p1

    const/4 v0, 0x0

    .line 282
    aget v1, p1, v0

    const/4 v2, 0x3

    aget v3, p1, v2

    add-float/2addr v1, v3

    const/4 v3, 0x6

    aget v4, p1, v3

    add-float/2addr v1, v4

    const/4 v4, 0x1

    .line 283
    aget v4, p1, v4

    const/4 v5, 0x4

    aget v6, p1, v5

    add-float/2addr v4, v6

    const/4 v6, 0x7

    aget v6, p1, v6

    add-float/2addr v4, v6

    const/4 v6, 0x2

    .line 284
    aget v6, p1, v6

    const/4 v7, 0x5

    aget v7, p1, v7

    add-float/2addr v6, v7

    const/16 v7, 0x8

    aget v8, p1, v7

    add-float/2addr v6, v8

    .line 285
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 287
    iget-object v4, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    invoke-static {v4, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    move v4, v0

    .line 289
    :goto_54
    array-length v6, p1

    if-ge v4, v6, :cond_6d

    .line 290
    aget v6, p1, v4

    div-float/2addr v6, v1

    aput v6, p1, v4

    .line 291
    invoke-virtual {p0, v6}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isColorMatrixCoeffValid(F)Z

    move-result v6

    if-nez v6, :cond_6a

    .line 292
    const-string p0, "ColorDisplayService"

    const-string p1, "Invalid DWB color matrix"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6a
    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    .line 297
    :cond_6d
    iget-object v1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    iget-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    invoke-static {p1, v2, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    iget-object p0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    invoke-static {p1, v3, p0, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    .line 343
    iget-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mSetUp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    iget-boolean v1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    if-nez v1, :cond_22

    .line 346
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    goto/16 :goto_1a2

    .line 349
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mTemperatureMin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mTemperatureMax = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mTemperatureDefault = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureDefault:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mDisplayNominalWhiteCct = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayNominalWhiteCct:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mCurrentColorTemperature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCurrentColorTemperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mTargetCct = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTargetCct:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mAppliedCct = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mAppliedCct:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mCurrentColorTemperatureXYZ = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCurrentColorTemperatureXYZ:[F

    const/4 v3, 0x3

    .line 357
    invoke-static {v2, v3}, Lcom/android/server/display/color/TintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 356
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mDisplayColorSpaceRGB RGB-to-XYZ = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

    .line 359
    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Rgb;->getTransform()[F

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/server/display/color/TintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mChromaticAdaptationMatrix = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mChromaticAdaptationMatrix:[F

    .line 361
    invoke-static {v2, v3}, Lcom/android/server/display/color/TintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mDisplayColorSpaceRGB XYZ-to-RGB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

    .line 363
    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Rgb;->getInverseTransform()[F

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/server/display/color/TintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mMatrixDisplayWhiteBalance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    const/4 v3, 0x4

    .line 365
    invoke-static {v2, v3}, Lcom/android/server/display/color/TintController;->matrixToString([FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mIsAllowed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mIsAllowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mTransitionDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTransitionDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mTransitionDurationIncrease = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTransitionDurationIncrease:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    mTransitionDurationDecrease = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTransitionDurationDecrease:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    monitor-exit v0

    return-void

    :goto_1a2
    monitor-exit v0
    :try_end_1a3
    .catchall {:try_start_3 .. :try_end_1a3} :catchall_1f

    throw p0
.end method

.method public getAppliedCct()I
    .registers 1

    .line 304
    iget p0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mAppliedCct:I

    return p0
.end method

.method public getDisabledCct()I
    .registers 1

    .line 241
    iget p0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayNominalWhiteCct:I

    return p0
.end method

.method public final getDisplayColorSpaceFromResources(Landroid/content/res/Resources;)Landroid/graphics/ColorSpace$Rgb;
    .registers 9

    const v0, 0x1070069

    .line 421
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x9

    .line 423
    new-array v1, v0, [F

    const/4 v2, 0x3

    .line 425
    new-array v3, v2, [F

    const/4 v4, 0x0

    move v5, v4

    :goto_10
    if-ge v5, v0, :cond_1d

    .line 428
    aget-object v6, p1, v5

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_1d
    :goto_1d
    if-ge v4, v2, :cond_2c

    add-int v5, v0, v4

    .line 432
    aget-object v5, p1, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 436
    :cond_2c
    invoke-virtual {p0, v1, v3}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->makeRgbColorSpaceFromXYZ([F[F)Landroid/graphics/ColorSpace$Rgb;

    move-result-object p0

    return-object p0
.end method

.method public final getDisplayColorSpaceFromSurfaceControl()Landroid/graphics/ColorSpace$Rgb;
    .registers 13

    .line 403
    iget-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v1, 0x0

    .line 404
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayNativePrimaries(I)Landroid/view/SurfaceControl$DisplayPrimaries;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 405
    iget-object v2, v0, Landroid/view/SurfaceControl$DisplayPrimaries;->red:Landroid/view/SurfaceControl$CieXyz;

    if-eqz v2, :cond_5e

    iget-object v3, v0, Landroid/view/SurfaceControl$DisplayPrimaries;->green:Landroid/view/SurfaceControl$CieXyz;

    if-eqz v3, :cond_5e

    iget-object v4, v0, Landroid/view/SurfaceControl$DisplayPrimaries;->blue:Landroid/view/SurfaceControl$CieXyz;

    if-eqz v4, :cond_5e

    iget-object v0, v0, Landroid/view/SurfaceControl$DisplayPrimaries;->white:Landroid/view/SurfaceControl$CieXyz;

    if-nez v0, :cond_1a

    goto :goto_5e

    .line 410
    :cond_1a
    iget v5, v2, Landroid/view/SurfaceControl$CieXyz;->X:F

    iget v6, v2, Landroid/view/SurfaceControl$CieXyz;->Y:F

    iget v2, v2, Landroid/view/SurfaceControl$CieXyz;->Z:F

    iget v7, v3, Landroid/view/SurfaceControl$CieXyz;->X:F

    iget v8, v3, Landroid/view/SurfaceControl$CieXyz;->Y:F

    iget v3, v3, Landroid/view/SurfaceControl$CieXyz;->Z:F

    iget v9, v4, Landroid/view/SurfaceControl$CieXyz;->X:F

    iget v10, v4, Landroid/view/SurfaceControl$CieXyz;->Y:F

    iget v4, v4, Landroid/view/SurfaceControl$CieXyz;->Z:F

    const/16 v11, 0x9

    new-array v11, v11, [F

    aput v5, v11, v1

    const/4 v5, 0x1

    aput v6, v11, v5

    const/4 v6, 0x2

    aput v2, v11, v6

    const/4 v2, 0x3

    aput v7, v11, v2

    const/4 v7, 0x4

    aput v8, v11, v7

    const/4 v7, 0x5

    aput v3, v11, v7

    const/4 v3, 0x6

    aput v9, v11, v3

    const/4 v3, 0x7

    aput v10, v11, v3

    const/16 v3, 0x8

    aput v4, v11, v3

    iget v3, v0, Landroid/view/SurfaceControl$CieXyz;->X:F

    iget v4, v0, Landroid/view/SurfaceControl$CieXyz;->Y:F

    iget v0, v0, Landroid/view/SurfaceControl$CieXyz;->Z:F

    new-array v2, v2, [F

    aput v3, v2, v1

    aput v4, v2, v5

    aput v0, v2, v6

    invoke-virtual {p0, v11, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->makeRgbColorSpaceFromXYZ([F[F)Landroid/graphics/ColorSpace$Rgb;

    move-result-object p0

    return-object p0

    :cond_5e
    :goto_5e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEvaluator()Lcom/android/server/display/color/CctEvaluator;
    .registers 1

    .line 315
    iget-object p0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCctEvaluator:Lcom/android/server/display/color/CctEvaluator;

    return-object p0
.end method

.method public getLevel()I
    .registers 1

    .line 0
    const/16 p0, 0x7d

    return p0
.end method

.method public getLuminance()F
    .registers 4

    .line 374
    iget-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mChromaticAdaptationMatrix:[F

    if-eqz p0, :cond_1e

    array-length v1, p0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1e

    const/4 v1, 0x1

    .line 377
    aget v1, p0, v1

    const/4 v2, 0x4

    aget v2, p0, v2

    add-float/2addr v1, v2

    const/4 v2, 0x7

    aget p0, p0, v2

    add-float/2addr v1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    div-float/2addr p0, v1

    monitor-exit v0

    return p0

    :catchall_1c
    move-exception p0

    goto :goto_22

    :cond_1e
    const/high16 p0, -0x40800000    # -1.0f

    .line 380
    monitor-exit v0

    return p0

    .line 382
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_1c

    throw p0
.end method

.method public getMatrix()[F
    .registers 2

    .line 176
    iget-boolean v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/display/color/TintController;->isActivated()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_13

    .line 179
    :cond_b
    iget v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mAppliedCct:I

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->computeMatrixForCct(I)[F

    .line 180
    iget-object p0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mMatrixDisplayWhiteBalance:[F

    return-object p0

    .line 177
    :cond_13
    :goto_13
    sget-object p0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    return-object p0
.end method

.method public getTargetCct()I
    .registers 1

    .line 185
    iget p0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTargetCct:I

    return p0
.end method

.method public getTransitionDurationMilliseconds()J
    .registers 3

    .line 333
    iget-wide v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTransitionDuration:J

    return-wide v0
.end method

.method public getTransitionDurationMilliseconds(Z)J
    .registers 2

    if-eqz p1, :cond_5

    .line 338
    iget-wide p0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTransitionDurationIncrease:J

    return-wide p0

    :cond_5
    iget-wide p0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTransitionDurationDecrease:J

    return-wide p0
.end method

.method public isAllowed()Z
    .registers 1

    .line 390
    iget-boolean p0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mIsAllowed:Z

    return p0
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .registers 3

    .line 325
    iget-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mIsAvailable:Ljava/lang/Boolean;

    if-nez v0, :cond_e

    .line 326
    invoke-static {p1}, Landroid/hardware/display/ColorDisplayManager;->isDisplayWhiteBalanceAvailable(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mIsAvailable:Ljava/lang/Boolean;

    .line 328
    :cond_e
    iget-object p0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mIsAvailable:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isColorMatrixCoeffValid(F)Z
    .registers 2

    .line 440
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-nez p0, :cond_e

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final isColorMatrixValid([F)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    .line 444
    array-length v1, p1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_9

    goto :goto_1b

    .line 448
    :cond_9
    array-length v1, p1

    move v2, v0

    :goto_b
    if-ge v2, v1, :cond_19

    aget v3, p1, v2

    .line 449
    invoke-virtual {p0, v3}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isColorMatrixCoeffValid(F)Z

    move-result v3

    if-nez v3, :cond_16

    return v0

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_19
    const/4 p0, 0x1

    return p0

    :cond_1b
    :goto_1b
    return v0
.end method

.method public final makeRgbColorSpaceFromXYZ([F[F)Landroid/graphics/ColorSpace$Rgb;
    .registers 9

    .line 394
    new-instance v0, Landroid/graphics/ColorSpace$Rgb;

    const-string v1, "Display Color Space"

    const-wide v4, 0x40019999a0000000L    # 2.200000047683716

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FD)V

    return-object v0
.end method

.method public setAllowed(Z)V
    .registers 2

    .line 386
    iput-boolean p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mIsAllowed:Z

    return-void
.end method

.method public setAppliedCct(I)V
    .registers 2

    .line 309
    iput p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mAppliedCct:I

    return-void
.end method

.method public setMatrix(I)V
    .registers 2

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->setTargetCct(I)V

    .line 215
    iget p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTargetCct:I

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->computeMatrixForCct(I)[F

    return-void
.end method

.method public setTargetCct(I)V
    .registers 4

    .line 220
    iget-boolean v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    const-string v1, "ColorDisplayService"

    if-nez v0, :cond_c

    .line 221
    const-string p0, "Can\'t set display white balance temperature: uninitialized"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 226
    :cond_c
    iget v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMin:I

    if-ge p1, v0, :cond_1a

    .line 227
    const-string p1, "Requested display color temperature is below allowed minimum"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMin:I

    iput p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTargetCct:I

    return-void

    .line 230
    :cond_1a
    iget v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMax:I

    if-le p1, v0, :cond_28

    .line 231
    const-string p1, "Requested display color temperature is above allowed maximum"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMax:I

    iput p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTargetCct:I

    return-void

    .line 235
    :cond_28
    iput p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTargetCct:I

    return-void
.end method

.method public setUp(Landroid/content/Context;Z)V
    .registers 10

    const/4 p2, 0x0

    .line 90
    iput-boolean p2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1110159

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->setAllowed(Z)V

    .line 96
    invoke-virtual {p0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->getDisplayColorSpaceFromSurfaceControl()Landroid/graphics/ColorSpace$Rgb;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 98
    const-string v0, "ColorDisplayService"

    const-string v1, "Failed to get display color space from SurfaceControl, trying res"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->getDisplayColorSpaceFromResources(Landroid/content/res/Resources;)Landroid/graphics/ColorSpace$Rgb;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 102
    const-string p0, "ColorDisplayService"

    const-string p1, "Failed to get display color space from resources"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 108
    :cond_2c
    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Rgb;->getTransform()[F

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isColorMatrixValid([F)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 109
    const-string p0, "ColorDisplayService"

    const-string p1, "Invalid display color space RGB-to-XYZ transform"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 112
    :cond_3e
    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Rgb;->getInverseTransform()[F

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isColorMatrixValid([F)Z

    move-result v1

    if-nez v1, :cond_50

    .line 113
    const-string p0, "ColorDisplayService"

    const-string p1, "Invalid display color space XYZ-to-RGB transform"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_50
    const v1, 0x1070068

    .line 117
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 119
    new-array v2, v2, [F

    .line 120
    :goto_5a
    array-length v3, v1

    if-ge p2, v3, :cond_68

    .line 121
    aget-object v3, v1, p2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v2, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_5a

    :cond_68
    const p2, 0x10e0097

    .line 124
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    const v1, 0x10e0094

    .line 127
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-gtz v1, :cond_80

    .line 130
    const-string p0, "ColorDisplayService"

    const-string p1, "Display white balance minimum temperature must be greater than 0"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_80
    const v3, 0x10e0093

    .line 135
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ge v3, v1, :cond_91

    .line 138
    const-string p0, "ColorDisplayService"

    const-string p1, "Display white balance max temp must be greater or equal to min"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_91
    const v4, 0x10e0091

    .line 143
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v5, 0x10e0099

    .line 146
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTransitionDuration:J

    const v5, 0x10e009b

    .line 148
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTransitionDurationIncrease:J

    const v5, 0x10e009a

    .line 150
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTransitionDurationDecrease:J

    const v5, 0x107006a

    .line 153
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    const v6, 0x107006b

    .line 155
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    .line 157
    iget-object v6, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 158
    :try_start_c7
    iput-object v0, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayColorSpaceRGB:Landroid/graphics/ColorSpace$Rgb;

    .line 159
    iput-object v2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayNominalWhiteXYZ:[F

    .line 160
    iput p2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mDisplayNominalWhiteCct:I

    .line 161
    iput p2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTargetCct:I

    .line 162
    iput p2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mAppliedCct:I

    .line 163
    iput v1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMin:I

    .line 164
    iput v3, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureMax:I

    .line 165
    iput v4, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureDefault:I

    const/4 p2, 0x1

    .line 166
    iput-boolean p2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mSetUp:Z

    .line 167
    new-instance p2, Lcom/android/server/display/color/CctEvaluator;

    invoke-direct {p2, v1, v3, v5, p1}, Lcom/android/server/display/color/CctEvaluator;-><init>(II[I[I)V

    iput-object p2, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mCctEvaluator:Lcom/android/server/display/color/CctEvaluator;

    .line 169
    monitor-exit v6
    :try_end_e2
    .catchall {:try_start_c7 .. :try_end_e2} :catchall_e8

    .line 171
    iget p1, p0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->mTemperatureDefault:I

    invoke-virtual {p0, p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->setMatrix(I)V

    return-void

    :catchall_e8
    move-exception p0

    .line 169
    :try_start_e9
    monitor-exit v6
    :try_end_ea
    .catchall {:try_start_e9 .. :try_end_ea} :catchall_e8

    throw p0
.end method
