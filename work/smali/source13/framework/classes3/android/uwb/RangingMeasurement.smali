.class public final Landroid/uwb/RangingMeasurement;
.super Ljava/lang/Object;
.source "RangingMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/uwb/RangingMeasurement$Builder;,
        Landroid/uwb/RangingMeasurement$MeasurementFocus;,
        Landroid/uwb/RangingMeasurement$LineOfSight;,
        Landroid/uwb/RangingMeasurement$Status;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/uwb/RangingMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LOS:I = 0x0

.field public static final whitelist LOS_UNDETERMINED:I = 0xff

.field public static final whitelist MEASUREMENT_FOCUS_ANGLE_OF_ARRIVAL_AZIMUTH:I = 0x2

.field public static final whitelist MEASUREMENT_FOCUS_ANGLE_OF_ARRIVAL_ELEVATION:I = 0x3

.field public static final whitelist MEASUREMENT_FOCUS_NONE:I = 0x0

.field public static final whitelist MEASUREMENT_FOCUS_RANGE:I = 0x1

.field public static final whitelist NLOS:I = 0x1

.field public static final whitelist RANGING_STATUS_FAILURE_OUT_OF_RANGE:I = 0x1

.field public static final whitelist RANGING_STATUS_FAILURE_UNKNOWN_ERROR:I = -0x1

.field public static final whitelist RANGING_STATUS_SUCCESS:I = 0x0

.field public static final whitelist RSSI_MAX:I = -0x1

.field public static final whitelist RSSI_MIN:I = -0x7f

.field public static final whitelist RSSI_UNKNOWN:I = -0x80


# instance fields
.field private final blacklist mAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

.field private final blacklist mDestinationAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

.field private final blacklist mDistanceMeasurement:Landroid/uwb/DistanceMeasurement;

.field private final blacklist mElapsedRealtimeNanos:J

.field private final blacklist mLineOfSight:I

.field private final blacklist mMeasurementFocus:I

.field private final blacklist mRemoteDeviceAddress:Landroid/uwb/UwbAddress;

.field private final blacklist mRssiDbm:I

.field private final blacklist mStatus:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 304
    new-instance v0, Landroid/uwb/RangingMeasurement$1;

    invoke-direct {v0}, Landroid/uwb/RangingMeasurement$1;-><init>()V

    sput-object v0, Landroid/uwb/RangingMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/uwb/UwbAddress;IJLandroid/uwb/DistanceMeasurement;Landroid/uwb/AngleOfArrivalMeasurement;Landroid/uwb/AngleOfArrivalMeasurement;III)V
    .registers 11
    .param p1, "remoteDeviceAddress"    # Landroid/uwb/UwbAddress;
    .param p2, "status"    # I
    .param p3, "elapsedRealtimeNanos"    # J
    .param p5, "distanceMeasurement"    # Landroid/uwb/DistanceMeasurement;
    .param p6, "angleOfArrivalMeasurement"    # Landroid/uwb/AngleOfArrivalMeasurement;
    .param p7, "destinationAngleOfArrivalMeasurement"    # Landroid/uwb/AngleOfArrivalMeasurement;
    .param p8, "lineOfSight"    # I
    .param p9, "measurementFocus"    # I
    .param p10, "rssiDbm"    # I

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroid/uwb/RangingMeasurement;->mRemoteDeviceAddress:Landroid/uwb/UwbAddress;

    .line 61
    iput p2, p0, Landroid/uwb/RangingMeasurement;->mStatus:I

    .line 62
    iput-wide p3, p0, Landroid/uwb/RangingMeasurement;->mElapsedRealtimeNanos:J

    .line 63
    iput-object p5, p0, Landroid/uwb/RangingMeasurement;->mDistanceMeasurement:Landroid/uwb/DistanceMeasurement;

    .line 64
    iput-object p6, p0, Landroid/uwb/RangingMeasurement;->mAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    .line 65
    iput-object p7, p0, Landroid/uwb/RangingMeasurement;->mDestinationAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    .line 66
    iput p8, p0, Landroid/uwb/RangingMeasurement;->mLineOfSight:I

    .line 67
    iput p9, p0, Landroid/uwb/RangingMeasurement;->mMeasurementFocus:I

    .line 68
    iput p10, p0, Landroid/uwb/RangingMeasurement;->mRssiDbm:I

    .line 69
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/uwb/UwbAddress;IJLandroid/uwb/DistanceMeasurement;Landroid/uwb/AngleOfArrivalMeasurement;Landroid/uwb/AngleOfArrivalMeasurement;IIILandroid/uwb/RangingMeasurement-IA;)V
    .registers 12

    invoke-direct/range {p0 .. p10}, Landroid/uwb/RangingMeasurement;-><init>(Landroid/uwb/UwbAddress;IJLandroid/uwb/DistanceMeasurement;Landroid/uwb/AngleOfArrivalMeasurement;Landroid/uwb/AngleOfArrivalMeasurement;III)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 254
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 255
    return v0

    .line 258
    :cond_4
    instance-of v1, p1, Landroid/uwb/RangingMeasurement;

    const/4 v2, 0x0

    if-eqz v1, :cond_69

    .line 259
    move-object v1, p1

    check-cast v1, Landroid/uwb/RangingMeasurement;

    .line 260
    .local v1, "other":Landroid/uwb/RangingMeasurement;
    iget-object v3, p0, Landroid/uwb/RangingMeasurement;->mRemoteDeviceAddress:Landroid/uwb/UwbAddress;

    invoke-virtual {v1}, Landroid/uwb/RangingMeasurement;->getRemoteDeviceAddress()Landroid/uwb/UwbAddress;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    iget v3, p0, Landroid/uwb/RangingMeasurement;->mStatus:I

    .line 261
    invoke-virtual {v1}, Landroid/uwb/RangingMeasurement;->getStatus()I

    move-result v4

    if-ne v3, v4, :cond_67

    iget-wide v3, p0, Landroid/uwb/RangingMeasurement;->mElapsedRealtimeNanos:J

    .line 262
    invoke-virtual {v1}, Landroid/uwb/RangingMeasurement;->getElapsedRealtimeNanos()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_67

    iget-object v3, p0, Landroid/uwb/RangingMeasurement;->mDistanceMeasurement:Landroid/uwb/DistanceMeasurement;

    .line 263
    invoke-virtual {v1}, Landroid/uwb/RangingMeasurement;->getDistanceMeasurement()Landroid/uwb/DistanceMeasurement;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    iget-object v3, p0, Landroid/uwb/RangingMeasurement;->mAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    .line 265
    invoke-virtual {v1}, Landroid/uwb/RangingMeasurement;->getAngleOfArrivalMeasurement()Landroid/uwb/AngleOfArrivalMeasurement;

    move-result-object v4

    .line 264
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    iget-object v3, p0, Landroid/uwb/RangingMeasurement;->mDestinationAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    .line 268
    invoke-virtual {v1}, Landroid/uwb/RangingMeasurement;->getDestinationAngleOfArrivalMeasurement()Landroid/uwb/AngleOfArrivalMeasurement;

    move-result-object v4

    .line 266
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    iget v3, p0, Landroid/uwb/RangingMeasurement;->mLineOfSight:I

    .line 269
    invoke-virtual {v1}, Landroid/uwb/RangingMeasurement;->getLineOfSight()I

    move-result v4

    if-ne v3, v4, :cond_67

    iget v3, p0, Landroid/uwb/RangingMeasurement;->mMeasurementFocus:I

    .line 270
    invoke-virtual {v1}, Landroid/uwb/RangingMeasurement;->getMeasurementFocus()I

    move-result v4

    if-ne v3, v4, :cond_67

    iget v3, p0, Landroid/uwb/RangingMeasurement;->mRssiDbm:I

    .line 271
    invoke-virtual {v1}, Landroid/uwb/RangingMeasurement;->getRssiDbm()I

    move-result v4

    if-ne v3, v4, :cond_67

    goto :goto_68

    :cond_67
    move v0, v2

    .line 260
    :goto_68
    return v0

    .line 273
    .end local v1    # "other":Landroid/uwb/RangingMeasurement;
    :cond_69
    return v2
.end method

.method public whitelist getAngleOfArrivalMeasurement()Landroid/uwb/AngleOfArrivalMeasurement;
    .registers 2

    .line 151
    iget-object v0, p0, Landroid/uwb/RangingMeasurement;->mAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    return-object v0
.end method

.method public whitelist getDestinationAngleOfArrivalMeasurement()Landroid/uwb/AngleOfArrivalMeasurement;
    .registers 2

    .line 162
    iget-object v0, p0, Landroid/uwb/RangingMeasurement;->mDestinationAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    return-object v0
.end method

.method public whitelist getDistanceMeasurement()Landroid/uwb/DistanceMeasurement;
    .registers 2

    .line 140
    iget-object v0, p0, Landroid/uwb/RangingMeasurement;->mDistanceMeasurement:Landroid/uwb/DistanceMeasurement;

    return-object v0
.end method

.method public whitelist getElapsedRealtimeNanos()J
    .registers 3

    .line 129
    iget-wide v0, p0, Landroid/uwb/RangingMeasurement;->mElapsedRealtimeNanos:J

    return-wide v0
.end method

.method public whitelist getLineOfSight()I
    .registers 2

    .line 196
    iget v0, p0, Landroid/uwb/RangingMeasurement;->mLineOfSight:I

    return v0
.end method

.method public whitelist getMeasurementFocus()I
    .registers 2

    .line 246
    iget v0, p0, Landroid/uwb/RangingMeasurement;->mMeasurementFocus:I

    return v0
.end method

.method public whitelist getRemoteDeviceAddress()Landroid/uwb/UwbAddress;
    .registers 2

    .line 78
    iget-object v0, p0, Landroid/uwb/RangingMeasurement;->mRemoteDeviceAddress:Landroid/uwb/UwbAddress;

    return-object v0
.end method

.method public whitelist getRssiDbm()I
    .registers 2

    .line 203
    iget v0, p0, Landroid/uwb/RangingMeasurement;->mRssiDbm:I

    return v0
.end method

.method public whitelist getStatus()I
    .registers 2

    .line 118
    iget v0, p0, Landroid/uwb/RangingMeasurement;->mStatus:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 281
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/uwb/RangingMeasurement;->mRemoteDeviceAddress:Landroid/uwb/UwbAddress;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/uwb/RangingMeasurement;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/uwb/RangingMeasurement;->mElapsedRealtimeNanos:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/uwb/RangingMeasurement;->mDistanceMeasurement:Landroid/uwb/DistanceMeasurement;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/uwb/RangingMeasurement;->mAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/uwb/RangingMeasurement;->mDestinationAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/uwb/RangingMeasurement;->mLineOfSight:I

    .line 283
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/uwb/RangingMeasurement;->mMeasurementFocus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/uwb/RangingMeasurement;->mRssiDbm:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 281
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RangingMeasurement[distance measurement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/uwb/RangingMeasurement;->mDistanceMeasurement:Landroid/uwb/DistanceMeasurement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", aoa measurement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/uwb/RangingMeasurement;->mAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dest aoa measurement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/uwb/RangingMeasurement;->mDestinationAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lineOfSight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/uwb/RangingMeasurement;->mLineOfSight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rssiDbm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/uwb/RangingMeasurement;->mRssiDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 293
    iget-object v0, p0, Landroid/uwb/RangingMeasurement;->mRemoteDeviceAddress:Landroid/uwb/UwbAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 294
    iget v0, p0, Landroid/uwb/RangingMeasurement;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget-wide v0, p0, Landroid/uwb/RangingMeasurement;->mElapsedRealtimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 296
    iget-object v0, p0, Landroid/uwb/RangingMeasurement;->mDistanceMeasurement:Landroid/uwb/DistanceMeasurement;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 297
    iget-object v0, p0, Landroid/uwb/RangingMeasurement;->mAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 298
    iget-object v0, p0, Landroid/uwb/RangingMeasurement;->mDestinationAngleOfArrivalMeasurement:Landroid/uwb/AngleOfArrivalMeasurement;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 299
    iget v0, p0, Landroid/uwb/RangingMeasurement;->mLineOfSight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget v0, p0, Landroid/uwb/RangingMeasurement;->mMeasurementFocus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget v0, p0, Landroid/uwb/RangingMeasurement;->mRssiDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    return-void
.end method
