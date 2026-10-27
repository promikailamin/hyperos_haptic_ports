.class public final Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;
.super Ljava/lang/Object;
.source "MeasurementCorrections.java"


# instance fields
.field public blacklist altitudeMeters:D

.field public blacklist horizontalPositionUncertaintyMeters:D

.field public blacklist latitudeDegrees:D

.field public blacklist longitudeDegrees:D

.field public blacklist satCorrections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist toaGpsNanosecondsOfWeek:J

.field public blacklist verticalPositionUncertaintyMeters:D


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->latitudeDegrees:D

    .line 12
    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->longitudeDegrees:D

    .line 17
    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->altitudeMeters:D

    .line 24
    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->horizontalPositionUncertaintyMeters:D

    .line 31
    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->verticalPositionUncertaintyMeters:D

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->toaGpsNanosecondsOfWeek:J

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

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
            "Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 121
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 122
    mul-int/lit8 v3, v2, 0x40

    int-to-long v5, v3

    .line 123
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 122
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 126
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 127
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 128
    new-instance v3, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;

    invoke-direct {v3}, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;-><init>()V

    .line 129
    mul-int/lit8 v5, v1, 0x40

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 130
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 134
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
            "Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;",
            ">;)V"
        }
    .end annotation

    .line 168
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 170
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 171
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 172
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 173
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x40

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 174
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 175
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;

    mul-int/lit8 v5, v4, 0x40

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 174
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 177
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 180
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 181
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 43
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 44
    return v0

    .line 46
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 47
    return v1

    .line 49
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;

    if-eq v2, v3, :cond_11

    .line 50
    return v1

    .line 52
    :cond_11
    check-cast p1, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;

    .line 53
    iget-wide v2, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->latitudeDegrees:D

    iget-wide v4, p1, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->latitudeDegrees:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1c

    .line 54
    return v1

    .line 56
    :cond_1c
    iget-wide v2, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->longitudeDegrees:D

    iget-wide v4, p1, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->longitudeDegrees:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_25

    .line 57
    return v1

    .line 59
    :cond_25
    iget-wide v2, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->altitudeMeters:D

    iget-wide v4, p1, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->altitudeMeters:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2e

    .line 60
    return v1

    .line 62
    :cond_2e
    iget-wide v2, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->horizontalPositionUncertaintyMeters:D

    iget-wide v4, p1, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->horizontalPositionUncertaintyMeters:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_37

    .line 63
    return v1

    .line 65
    :cond_37
    iget-wide v2, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->verticalPositionUncertaintyMeters:D

    iget-wide v4, p1, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->verticalPositionUncertaintyMeters:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_40

    .line 66
    return v1

    .line 68
    :cond_40
    iget-wide v2, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->toaGpsNanosecondsOfWeek:J

    iget-wide v4, p1, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->toaGpsNanosecondsOfWeek:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_49

    .line 69
    return v1

    .line 71
    :cond_49
    iget-object v2, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_54

    .line 72
    return v1

    .line 74
    :cond_54
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 9

    .line 79
    iget-wide v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->latitudeDegrees:D

    .line 80
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-wide v2, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->longitudeDegrees:D

    .line 81
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-wide v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->altitudeMeters:D

    .line 82
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-wide v4, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->horizontalPositionUncertaintyMeters:D

    .line 83
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->verticalPositionUncertaintyMeters:D

    .line 84
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v6, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->toaGpsNanosecondsOfWeek:J

    .line 85
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    .line 86
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 79
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 21

    .line 139
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v4

    iput-wide v4, v0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->latitudeDegrees:D

    .line 140
    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v6

    iput-wide v6, v0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->longitudeDegrees:D

    .line 141
    const-wide/16 v6, 0x10

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v6

    iput-wide v6, v0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->altitudeMeters:D

    .line 142
    const-wide/16 v6, 0x18

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v6

    iput-wide v6, v0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->horizontalPositionUncertaintyMeters:D

    .line 143
    const-wide/16 v6, 0x20

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v6

    iput-wide v6, v0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->verticalPositionUncertaintyMeters:D

    .line 144
    const-wide/16 v6, 0x28

    add-long v6, p3, v6

    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v6

    iput-wide v6, v0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->toaGpsNanosecondsOfWeek:J

    .line 146
    const-wide/16 v6, 0x30

    add-long v6, p3, v6

    add-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    .line 147
    mul-int/lit8 v5, v4, 0x38

    int-to-long v9, v5

    .line 148
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, v6, v2

    .line 147
    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v15}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 151
    iget-object v2, v0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 152
    const/4 v2, 0x0

    :goto_5f
    if-ge v2, v4, :cond_76

    .line 153
    new-instance v3, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;

    invoke-direct {v3}, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;-><init>()V

    .line 154
    mul-int/lit8 v5, v2, 0x38

    int-to-long v5, v5

    move-object/from16 v8, p1

    invoke-virtual {v3, v8, v1, v5, v6}, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 155
    iget-object v5, v0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 158
    :cond_76
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 112
    const-wide/16 v0, 0x40

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 113
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 114
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, ".latitudeDegrees = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->latitudeDegrees:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, ", .longitudeDegrees = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->longitudeDegrees:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, ", .altitudeMeters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->altitudeMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 99
    const-string v1, ", .horizontalPositionUncertaintyMeters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->horizontalPositionUncertaintyMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, ", .verticalPositionUncertaintyMeters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->verticalPositionUncertaintyMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, ", .toaGpsNanosecondsOfWeek = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-wide v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->toaGpsNanosecondsOfWeek:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, ", .satCorrections = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget-object v1, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 12

    .line 185
    const-wide/16 v0, 0x0

    add-long v2, p2, v0

    iget-wide v4, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->latitudeDegrees:D

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 186
    const-wide/16 v2, 0x8

    add-long v4, p2, v2

    iget-wide v6, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->longitudeDegrees:D

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 187
    const-wide/16 v4, 0x10

    add-long/2addr v4, p2

    iget-wide v6, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->altitudeMeters:D

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 188
    const-wide/16 v4, 0x18

    add-long/2addr v4, p2

    iget-wide v6, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->horizontalPositionUncertaintyMeters:D

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 189
    const-wide/16 v4, 0x20

    add-long/2addr v4, p2

    iget-wide v6, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->verticalPositionUncertaintyMeters:D

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 190
    const-wide/16 v4, 0x28

    add-long/2addr v4, p2

    iget-wide v6, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->toaGpsNanosecondsOfWeek:J

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 192
    iget-object v4, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 193
    const-wide/16 v5, 0x30

    add-long/2addr p2, v5

    add-long/2addr v2, p2

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 194
    const-wide/16 v2, 0xc

    add-long/2addr v2, p2

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 195
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v4, 0x38

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 196
    nop

    :goto_4e
    if-ge v5, v4, :cond_61

    .line 197
    iget-object v3, p0, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->satCorrections:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;

    mul-int/lit8 v6, v5, 0x38

    int-to-long v6, v6

    invoke-virtual {v3, v2, v6, v7}, Landroid/hardware/gnss/measurement_corrections/V1_0/SingleSatCorrection;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 196
    add-int/lit8 v5, v5, 0x1

    goto :goto_4e

    .line 199
    :cond_61
    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 201
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 161
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 162
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/measurement_corrections/V1_0/MeasurementCorrections;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 163
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 164
    return-void
.end method
