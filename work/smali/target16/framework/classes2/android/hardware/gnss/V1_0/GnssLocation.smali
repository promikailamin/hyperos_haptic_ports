.class public final Landroid/hardware/gnss/V1_0/GnssLocation;
.super Ljava/lang/Object;
.source "GnssLocation.java"


# instance fields
.field public blacklist altitudeMeters:D

.field public blacklist bearingAccuracyDegrees:F

.field public blacklist bearingDegrees:F

.field public blacklist gnssLocationFlags:S

.field public blacklist horizontalAccuracyMeters:F

.field public blacklist latitudeDegrees:D

.field public blacklist longitudeDegrees:D

.field public blacklist speedAccuracyMetersPerSecond:F

.field public blacklist speedMetersPerSec:F

.field public blacklist timestamp:J

.field public blacklist verticalAccuracyMeters:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->latitudeDegrees:D

    .line 16
    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->longitudeDegrees:D

    .line 20
    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->altitudeMeters:D

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->speedMetersPerSec:F

    .line 28
    iput v0, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->bearingDegrees:F

    .line 33
    iput v0, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->horizontalAccuracyMeters:F

    .line 38
    iput v0, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->verticalAccuracyMeters:F

    .line 43
    iput v0, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->speedAccuracyMetersPerSecond:F

    .line 48
    iput v0, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->bearingAccuracyDegrees:F

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->timestamp:J

    return-void
.end method

.method public static final blacklist readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V1_0/GnssLocation;",
            ">;"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 158
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 159
    mul-int/lit8 v3, v2, 0x40

    int-to-long v5, v3

    .line 160
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 159
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 163
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 165
    new-instance v3, Landroid/hardware/gnss/V1_0/GnssLocation;

    invoke-direct {v3}, Landroid/hardware/gnss/V1_0/GnssLocation;-><init>()V

    .line 166
    mul-int/lit8 v5, v1, 0x40

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/gnss/V1_0/GnssLocation;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 167
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 171
    :cond_37
    return-object v0
.end method

.method public static final blacklist writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V1_0/GnssLocation;",
            ">;)V"
        }
    .end annotation

    .line 197
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 199
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 200
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 201
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 202
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x40

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 203
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 204
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/gnss/V1_0/GnssLocation;

    mul-int/lit8 v5, v4, 0x40

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/gnss/V1_0/GnssLocation;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 203
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 206
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 209
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 210
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 56
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 57
    return v0

    .line 59
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 60
    return v1

    .line 62
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V1_0/GnssLocation;

    if-eq v2, v3, :cond_11

    .line 63
    return v1

    .line 65
    :cond_11
    check-cast p1, Landroid/hardware/gnss/V1_0/GnssLocation;

    .line 66
    iget-short v2, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->gnssLocationFlags:S

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    iget-short v3, p1, Landroid/hardware/gnss/V1_0/GnssLocation;->gnssLocationFlags:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 67
    return v1

    .line 69
    :cond_26
    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->latitudeDegrees:D

    iget-wide v4, p1, Landroid/hardware/gnss/V1_0/GnssLocation;->latitudeDegrees:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2f

    .line 70
    return v1

    .line 72
    :cond_2f
    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->longitudeDegrees:D

    iget-wide v4, p1, Landroid/hardware/gnss/V1_0/GnssLocation;->longitudeDegrees:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_38

    .line 73
    return v1

    .line 75
    :cond_38
    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->altitudeMeters:D

    iget-wide v4, p1, Landroid/hardware/gnss/V1_0/GnssLocation;->altitudeMeters:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_41

    .line 76
    return v1

    .line 78
    :cond_41
    iget v2, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->speedMetersPerSec:F

    iget v3, p1, Landroid/hardware/gnss/V1_0/GnssLocation;->speedMetersPerSec:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4a

    .line 79
    return v1

    .line 81
    :cond_4a
    iget v2, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->bearingDegrees:F

    iget v3, p1, Landroid/hardware/gnss/V1_0/GnssLocation;->bearingDegrees:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_53

    .line 82
    return v1

    .line 84
    :cond_53
    iget v2, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->horizontalAccuracyMeters:F

    iget v3, p1, Landroid/hardware/gnss/V1_0/GnssLocation;->horizontalAccuracyMeters:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5c

    .line 85
    return v1

    .line 87
    :cond_5c
    iget v2, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->verticalAccuracyMeters:F

    iget v3, p1, Landroid/hardware/gnss/V1_0/GnssLocation;->verticalAccuracyMeters:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_65

    .line 88
    return v1

    .line 90
    :cond_65
    iget v2, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->speedAccuracyMetersPerSecond:F

    iget v3, p1, Landroid/hardware/gnss/V1_0/GnssLocation;->speedAccuracyMetersPerSecond:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_6e

    .line 91
    return v1

    .line 93
    :cond_6e
    iget v2, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->bearingAccuracyDegrees:F

    iget v3, p1, Landroid/hardware/gnss/V1_0/GnssLocation;->bearingAccuracyDegrees:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_77

    .line 94
    return v1

    .line 96
    :cond_77
    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->timestamp:J

    iget-wide v4, p1, Landroid/hardware/gnss/V1_0/GnssLocation;->timestamp:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_80

    .line 97
    return v1

    .line 99
    :cond_80
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 14

    .line 104
    iget-short v0, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->gnssLocationFlags:S

    .line 105
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->latitudeDegrees:D

    .line 106
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->longitudeDegrees:D

    .line 107
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->altitudeMeters:D

    .line 108
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->speedMetersPerSec:F

    .line 109
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->bearingDegrees:F

    .line 110
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->horizontalAccuracyMeters:F

    .line 111
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->verticalAccuracyMeters:F

    .line 112
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v0, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->speedAccuracyMetersPerSecond:F

    .line 113
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v0, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->bearingAccuracyDegrees:F

    .line 114
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-wide v11, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->timestamp:J

    .line 115
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    move-result-object v0

    .line 104
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7

    .line 176
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt16(J)S

    move-result p1

    iput-short p1, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->gnssLocationFlags:S

    .line 177
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->latitudeDegrees:D

    .line 178
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->longitudeDegrees:D

    .line 179
    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->altitudeMeters:D

    .line 180
    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result p1

    iput p1, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->speedMetersPerSec:F

    .line 181
    const-wide/16 v0, 0x24

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result p1

    iput p1, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->bearingDegrees:F

    .line 182
    const-wide/16 v0, 0x28

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result p1

    iput p1, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->horizontalAccuracyMeters:F

    .line 183
    const-wide/16 v0, 0x2c

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result p1

    iput p1, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->verticalAccuracyMeters:F

    .line 184
    const-wide/16 v0, 0x30

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result p1

    iput p1, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->speedAccuracyMetersPerSecond:F

    .line 185
    const-wide/16 v0, 0x34

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result p1

    iput p1, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->bearingAccuracyDegrees:F

    .line 186
    const-wide/16 v0, 0x38

    add-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->timestamp:J

    .line 187
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 149
    const-wide/16 v0, 0x40

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 150
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V1_0/GnssLocation;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 151
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, ".gnssLocationFlags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-short v1, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->gnssLocationFlags:S

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/GnssLocationFlags;->dumpBitfield(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, ", .latitudeDegrees = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->latitudeDegrees:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, ", .longitudeDegrees = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->longitudeDegrees:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, ", .altitudeMeters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->altitudeMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 130
    const-string v1, ", .speedMetersPerSec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget v1, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->speedMetersPerSec:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, ", .bearingDegrees = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget v1, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->bearingDegrees:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 134
    const-string v1, ", .horizontalAccuracyMeters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget v1, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->horizontalAccuracyMeters:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ", .verticalAccuracyMeters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget v1, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->verticalAccuracyMeters:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, ", .speedAccuracyMetersPerSecond = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget v1, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->speedAccuracyMetersPerSecond:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, ", .bearingAccuracyDegrees = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget v1, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->bearingAccuracyDegrees:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, ", .timestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 8

    .line 214
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-short v2, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->gnssLocationFlags:S

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt16(JS)V

    .line 215
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->latitudeDegrees:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 216
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->longitudeDegrees:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 217
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->altitudeMeters:D

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 218
    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->speedMetersPerSec:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 219
    const-wide/16 v0, 0x24

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->bearingDegrees:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 220
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->horizontalAccuracyMeters:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 221
    const-wide/16 v0, 0x2c

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->verticalAccuracyMeters:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 222
    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->speedAccuracyMetersPerSecond:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 223
    const-wide/16 v0, 0x34

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->bearingAccuracyDegrees:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 224
    const-wide/16 v0, 0x38

    add-long/2addr p2, v0

    iget-wide v0, p0, Landroid/hardware/gnss/V1_0/GnssLocation;->timestamp:J

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 225
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 190
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 191
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V1_0/GnssLocation;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 192
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 193
    return-void
.end method
