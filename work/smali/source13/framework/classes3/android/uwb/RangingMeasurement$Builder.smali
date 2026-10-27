.class public final Landroid/uwb/RangingMeasurement$Builder;
.super Ljava/lang/Object;
.source "RangingMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/uwb/RangingMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

.field private blacklist mDestinationAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

.field private blacklist mDistanceMeasurement:Landroid/uwb/DistanceMeasurement;

.field private blacklist mElapsedRealtimeNanos:J

.field private blacklist mLineOfSight:I

.field private blacklist mMeasurementFocus:I

.field private blacklist mRemoteDeviceAddress:Landroid/uwb/UwbAddress;

.field private blacklist mRssiDbm:I

.field private blacklist mStatus:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 4

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/uwb/RangingMeasurement$Builder;->mRemoteDeviceAddress:Landroid/uwb/UwbAddress;

    .line 348
    const/4 v1, -0x1

    iput v1, p0, Landroid/uwb/RangingMeasurement$Builder;->mStatus:I

    .line 349
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/uwb/RangingMeasurement$Builder;->mElapsedRealtimeNanos:J

    .line 350
    iput-object v0, p0, Landroid/uwb/RangingMeasurement$Builder;->mDistanceMeasurement:Landroid/uwb/DistanceMeasurement;

    .line 351
    iput-object v0, p0, Landroid/uwb/RangingMeasurement$Builder;->mAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    .line 352
    iput-object v0, p0, Landroid/uwb/RangingMeasurement$Builder;->mDestinationAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    .line 353
    const/16 v0, 0xff

    iput v0, p0, Landroid/uwb/RangingMeasurement$Builder;->mLineOfSight:I

    .line 354
    const/4 v0, 0x0

    iput v0, p0, Landroid/uwb/RangingMeasurement$Builder;->mMeasurementFocus:I

    .line 355
    const/16 v0, -0x80

    iput v0, p0, Landroid/uwb/RangingMeasurement$Builder;->mRssiDbm:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/uwb/RangingMeasurement;
    .registers 14

    .line 476
    iget v0, p0, Landroid/uwb/RangingMeasurement$Builder;->mStatus:I

    if-eqz v0, :cond_1d

    .line 477
    iget-object v0, p0, Landroid/uwb/RangingMeasurement$Builder;->mDistanceMeasurement:Landroid/uwb/DistanceMeasurement;

    if-nez v0, :cond_15

    .line 482
    iget-object v0, p0, Landroid/uwb/RangingMeasurement$Builder;->mAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    if-nez v0, :cond_d

    goto :goto_1d

    .line 483
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Angle of Arrival must be null if ranging is not successful"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Distance Measurement must be null if ranging is not successful"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_1d
    :goto_1d
    iget-object v0, p0, Landroid/uwb/RangingMeasurement$Builder;->mRemoteDeviceAddress:Landroid/uwb/UwbAddress;

    if-eqz v0, :cond_5e

    .line 494
    iget-wide v0, p0, Landroid/uwb/RangingMeasurement$Builder;->mElapsedRealtimeNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_43

    .line 499
    new-instance v0, Landroid/uwb/RangingMeasurement;

    iget-object v2, p0, Landroid/uwb/RangingMeasurement$Builder;->mRemoteDeviceAddress:Landroid/uwb/UwbAddress;

    iget v3, p0, Landroid/uwb/RangingMeasurement$Builder;->mStatus:I

    iget-wide v4, p0, Landroid/uwb/RangingMeasurement$Builder;->mElapsedRealtimeNanos:J

    iget-object v6, p0, Landroid/uwb/RangingMeasurement$Builder;->mDistanceMeasurement:Landroid/uwb/DistanceMeasurement;

    iget-object v7, p0, Landroid/uwb/RangingMeasurement$Builder;->mAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    iget-object v8, p0, Landroid/uwb/RangingMeasurement$Builder;->mDestinationAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    iget v9, p0, Landroid/uwb/RangingMeasurement$Builder;->mLineOfSight:I

    iget v10, p0, Landroid/uwb/RangingMeasurement$Builder;->mMeasurementFocus:I

    iget v11, p0, Landroid/uwb/RangingMeasurement$Builder;->mRssiDbm:I

    const/4 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Landroid/uwb/RangingMeasurement;-><init>(Landroid/uwb/UwbAddress;IJLandroid/uwb/DistanceMeasurement;Landroid/uwb/AngleOfArrivalMeasurement;Landroid/uwb/AngleOfArrivalMeasurement;IIILandroid/uwb/RangingMeasurement-IA;)V

    return-object v0

    .line 495
    :cond_43
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "elapsedRealtimeNanos must be >=0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/uwb/RangingMeasurement$Builder;->mElapsedRealtimeNanos:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 491
    :cond_5e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No remote device address was set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setAngleOfArrivalMeasurement(Landroid/uwb/AngleOfArrivalMeasurement;)Landroid/uwb/RangingMeasurement$Builder;
    .registers 2
    .param p1, "angleOfArrivalMeasurement"    # Landroid/uwb/AngleOfArrivalMeasurement;

    .line 413
    iput-object p1, p0, Landroid/uwb/RangingMeasurement$Builder;->mAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    .line 414
    return-object p0
.end method

.method public whitelist setDestinationAngleOfArrivalMeasurement(Landroid/uwb/AngleOfArrivalMeasurement;)Landroid/uwb/RangingMeasurement$Builder;
    .registers 2
    .param p1, "angleOfArrivalMeasurement"    # Landroid/uwb/AngleOfArrivalMeasurement;

    .line 426
    iput-object p1, p0, Landroid/uwb/RangingMeasurement$Builder;->mDestinationAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    .line 427
    return-object p0
.end method

.method public whitelist setDistanceMeasurement(Landroid/uwb/DistanceMeasurement;)Landroid/uwb/RangingMeasurement$Builder;
    .registers 2
    .param p1, "distanceMeasurement"    # Landroid/uwb/DistanceMeasurement;

    .line 400
    iput-object p1, p0, Landroid/uwb/RangingMeasurement$Builder;->mDistanceMeasurement:Landroid/uwb/DistanceMeasurement;

    .line 401
    return-object p0
.end method

.method public whitelist setElapsedRealtimeNanos(J)Landroid/uwb/RangingMeasurement$Builder;
    .registers 5
    .param p1, "elapsedRealtimeNanos"    # J

    .line 386
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 389
    iput-wide p1, p0, Landroid/uwb/RangingMeasurement$Builder;->mElapsedRealtimeNanos:J

    .line 390
    return-object p0

    .line 387
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "elapsedRealtimeNanos must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setLineOfSight(I)Landroid/uwb/RangingMeasurement$Builder;
    .registers 2
    .param p1, "lineOfSight"    # I

    .line 437
    iput p1, p0, Landroid/uwb/RangingMeasurement$Builder;->mLineOfSight:I

    .line 438
    return-object p0
.end method

.method public whitelist setMeasurementFocus(I)Landroid/uwb/RangingMeasurement$Builder;
    .registers 2
    .param p1, "measurementFocus"    # I

    .line 448
    iput p1, p0, Landroid/uwb/RangingMeasurement$Builder;->mMeasurementFocus:I

    .line 449
    return-object p0
.end method

.method public whitelist setRemoteDeviceAddress(Landroid/uwb/UwbAddress;)Landroid/uwb/RangingMeasurement$Builder;
    .registers 2
    .param p1, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;

    .line 364
    iput-object p1, p0, Landroid/uwb/RangingMeasurement$Builder;->mRemoteDeviceAddress:Landroid/uwb/UwbAddress;

    .line 365
    return-object p0
.end method

.method public whitelist setRssiDbm(I)Landroid/uwb/RangingMeasurement$Builder;
    .registers 5
    .param p1, "rssiDbm"    # I

    .line 459
    const/16 v0, -0x80

    if-eq p1, v0, :cond_25

    const/16 v0, -0x7f

    if-lt p1, v0, :cond_c

    const/4 v0, -0x1

    if-gt p1, v0, :cond_c

    goto :goto_25

    .line 460
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rssiDbm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_25
    :goto_25
    iput p1, p0, Landroid/uwb/RangingMeasurement$Builder;->mRssiDbm:I

    .line 463
    return-object p0
.end method

.method public whitelist setStatus(I)Landroid/uwb/RangingMeasurement$Builder;
    .registers 2
    .param p1, "status"    # I

    .line 375
    iput p1, p0, Landroid/uwb/RangingMeasurement$Builder;->mStatus:I

    .line 376
    return-object p0
.end method
