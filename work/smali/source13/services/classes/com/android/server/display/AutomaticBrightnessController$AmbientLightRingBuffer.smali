.class final Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AmbientLightRingBuffer"
.end annotation


# static fields
.field private static final BUFFER_SLACK:F = 1.5f


# instance fields
.field private mCapacity:I

.field mClock:Lcom/android/server/display/AutomaticBrightnessController$Clock;

.field private mCount:I

.field private mEnd:I

.field private mRingLux:[F

.field private mRingTime:[J

.field private mStart:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCount(Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;)I
    .registers 1

    iget p0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    return p0
.end method

.method public constructor <init>(JILcom/android/server/display/AutomaticBrightnessController$Clock;)V
    .registers 7
    .param p1, "lightSensorRate"    # J
    .param p3, "ambientLightHorizon"    # I
    .param p4, "clock"    # Lcom/android/server/display/AutomaticBrightnessController$Clock;

    .line 1329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1330
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_22

    .line 1333
    int-to-float v0, p3

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    long-to-float v1, p1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 1334
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    .line 1335
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 1336
    iput-object p4, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mClock:Lcom/android/server/display/AutomaticBrightnessController$Clock;

    .line 1337
    return-void

    .line 1331
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "lightSensorRate must be above 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private offsetOf(I)I
    .registers 3
    .param p1, "index"    # I

    .line 1435
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    if-ge p1, v0, :cond_f

    if-ltz p1, :cond_f

    .line 1438
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    add-int/2addr p1, v0

    .line 1439
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    if-lt p1, v0, :cond_e

    .line 1440
    sub-int/2addr p1, v0

    .line 1442
    :cond_e
    return p1

    .line 1436
    :cond_f
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1411
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 1412
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 1413
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 1414
    return-void
.end method

.method public getLux(I)F
    .registers 4
    .param p1, "index"    # I

    .line 1340
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->offsetOf(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getMaxLux(JJ)F
    .registers 12
    .param p1, "now"    # J
    .param p3, "horizon"    # J

    .line 1447
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 1448
    .local v0, "N":I
    if-nez v0, :cond_e

    .line 1449
    const-string v1, "AutomaticBrightnessController"

    const-string v2, "getMax: No ambient light readings available"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    const/high16 v1, -0x40800000    # -1.0f

    return v1

    .line 1452
    :cond_e
    const/4 v1, 0x0

    .line 1453
    .local v1, "endIndex":I
    sub-long v2, p1, p3

    .line 1454
    .local v2, "horizonStartTime":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    add-int/lit8 v5, v0, -0x1

    if-ge v4, v5, :cond_25

    .line 1455
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-gtz v5, :cond_25

    .line 1456
    add-int/lit8 v1, v1, 0x1

    .line 1454
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 1461
    .end local v4    # "i":I
    :cond_25
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    .line 1462
    .local v4, "maxLux":F
    add-int/lit8 v5, v0, -0x1

    .local v5, "i":I
    :goto_2d
    if-lt v5, v1, :cond_3a

    .line 1463
    invoke-virtual {p0, v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v6

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1462
    add-int/lit8 v5, v5, -0x1

    goto :goto_2d

    .line 1465
    .end local v5    # "i":I
    :cond_3a
    return v4
.end method

.method public getTime(I)J
    .registers 4
    .param p1, "index"    # I

    .line 1344
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->offsetOf(I)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public prune(J)V
    .registers 8
    .param p1, "horizon"    # J

    .line 1378
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    if-nez v0, :cond_5

    .line 1379
    return-void

    .line 1382
    :cond_5
    :goto_5
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_22

    .line 1383
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    add-int/2addr v2, v1

    .line 1384
    .local v2, "next":I
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    if-lt v2, v1, :cond_12

    .line 1385
    sub-int/2addr v2, v1

    .line 1387
    :cond_12
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    aget-wide v3, v1, v2

    cmp-long v1, v3, p1

    if-lez v1, :cond_1b

    .line 1395
    goto :goto_22

    .line 1397
    :cond_1b
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 1398
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 1399
    .end local v2    # "next":I
    goto :goto_5

    .line 1401
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    aget-wide v2, v0, v1

    cmp-long v2, v2, p1

    if-gez v2, :cond_2e

    .line 1402
    aput-wide p1, v0, v1

    .line 1404
    :cond_2e
    return-void
.end method

.method public push(JF)V
    .registers 12
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .line 1348
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 1349
    .local v0, "next":I
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_38

    .line 1350
    mul-int/lit8 v1, v2, 0x2

    .line 1352
    .local v1, "newSize":I
    new-array v4, v1, [F

    .line 1353
    .local v4, "newRingLux":[F
    new-array v5, v1, [J

    .line 1354
    .local v5, "newRingTime":[J
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    sub-int/2addr v2, v6

    .line 1355
    .local v2, "length":I
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    invoke-static {v7, v6, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1356
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    invoke-static {v6, v7, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1357
    iget v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    if-eqz v6, :cond_2e

    .line 1358
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    invoke-static {v7, v3, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1359
    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    invoke-static {v6, v3, v5, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1361
    :cond_2e
    iput-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    .line 1362
    iput-object v5, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    .line 1364
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 1365
    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    .line 1366
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mStart:I

    .line 1368
    .end local v1    # "newSize":I
    .end local v2    # "length":I
    .end local v4    # "newRingLux":[F
    .end local v5    # "newRingTime":[J
    :cond_38
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingTime:[J

    aput-wide p1, v1, v0

    .line 1369
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mRingLux:[F

    aput p3, v1, v0

    .line 1370
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 1371
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCapacity:I

    if-ne v1, v2, :cond_4a

    .line 1372
    iput v3, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mEnd:I

    .line 1374
    :cond_4a
    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    .line 1375
    return-void
.end method

.method public size()I
    .registers 2

    .line 1407
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 1418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1419
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1420
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mCount:I

    if-ge v1, v2, :cond_45

    .line 1421
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v2, :cond_1a

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    goto :goto_20

    :cond_1a
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->mClock:Lcom/android/server/display/AutomaticBrightnessController$Clock;

    invoke-interface {v2}, Lcom/android/server/display/AutomaticBrightnessController$Clock;->uptimeMillis()J

    move-result-wide v2

    .line 1422
    .local v2, "next":J
    :goto_20
    if-eqz v1, :cond_27

    .line 1423
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    :cond_27
    invoke-virtual {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1426
    const-string v4, " / "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1427
    invoke-virtual {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1428
    const-string/jumbo v4, "ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1420
    .end local v2    # "next":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1430
    .end local v1    # "i":I
    :cond_45
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1431
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
