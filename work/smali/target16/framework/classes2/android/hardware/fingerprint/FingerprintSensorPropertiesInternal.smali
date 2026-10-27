.class public Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;
.super Landroid/hardware/biometrics/SensorPropertiesInternal;
.source "FingerprintSensorPropertiesInternal.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist halControlsIllumination:Z

.field public final blacklist halHandlesDisplayTouches:Z

.field private final blacklist mSensorLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorLocationInternal;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist sensorType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 91
    new-instance v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal$1;

    invoke-direct {v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal$1;-><init>()V

    sput-object v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIILjava/util/List;IZ)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/ComponentInfoInternal;",
            ">;IZ)V"
        }
    .end annotation

    .line 76
    new-instance v0, Landroid/hardware/biometrics/SensorLocationInternal;

    const/16 v1, 0x664

    const/16 v2, 0x82

    const-string v3, ""

    const/16 v4, 0x21c

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/hardware/biometrics/SensorLocationInternal;-><init>(Ljava/lang/String;III)V

    .line 79
    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    .line 76
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v13, p6

    invoke-direct/range {v5 .. v14}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;-><init>(IIILjava/util/List;IZZZLjava/util/List;)V

    .line 81
    return-void
.end method

.method public constructor blacklist <init>(IIILjava/util/List;IZZZLjava/util/List;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/ComponentInfoInternal;",
            ">;IZZZ",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorLocationInternal;",
            ">;)V"
        }
    .end annotation

    .line 59
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p8

    invoke-direct/range {v0 .. v6}, Landroid/hardware/biometrics/SensorPropertiesInternal;-><init>(IIILjava/util/List;ZZ)V

    .line 61
    iput p5, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    .line 62
    iput-boolean p6, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->halControlsIllumination:Z

    .line 63
    iput-boolean p7, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->halHandlesDisplayTouches:Z

    .line 64
    invoke-static/range {p9 .. p9}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->mSensorLocations:Ljava/util/List;

    .line 65
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 84
    invoke-direct {p0, p1}, Landroid/hardware/biometrics/SensorPropertiesInternal;-><init>(Landroid/os/Parcel;)V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->halControlsIllumination:Z

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->halHandlesDisplayTouches:Z

    .line 88
    sget-object v0, Landroid/hardware/biometrics/SensorLocationInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->mSensorLocations:Ljava/util/List;

    .line 89
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllLocations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/SensorLocationInternal;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->mSensorLocations:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getLocation()Landroid/hardware/biometrics/SensorLocationInternal;
    .registers 2

    .line 163
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getLocation(Ljava/lang/String;)Landroid/hardware/biometrics/SensorLocationInternal;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    sget-object v0, Landroid/hardware/biometrics/SensorLocationInternal;->DEFAULT:Landroid/hardware/biometrics/SensorLocationInternal;

    :goto_b
    return-object v0
.end method

.method public blacklist getLocation(Ljava/lang/String;)Landroid/hardware/biometrics/SensorLocationInternal;
    .registers 5

    .line 175
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->mSensorLocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/SensorLocationInternal;

    .line 176
    iget-object v2, v1, Landroid/hardware/biometrics/SensorLocationInternal;->displayId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 177
    return-object v1

    .line 179
    :cond_1b
    goto :goto_6

    .line 180
    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method public blacklist isAnySidefpsType()Z
    .registers 2

    .line 146
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    packed-switch v0, :pswitch_data_a

    .line 150
    const/4 v0, 0x0

    return v0

    .line 148
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x4
        :pswitch_7
    .end packed-switch
.end method

.method public blacklist isAnyUdfpsType()Z
    .registers 2

    .line 119
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    packed-switch v0, :pswitch_data_a

    .line 124
    const/4 v0, 0x0

    return v0

    .line 122
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x2
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public blacklist isOpticalUdfps()Z
    .registers 3

    .line 139
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public blacklist isUltrasonicUdfps()Z
    .registers 3

    .line 132
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Strength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 111
    invoke-super {p0, p1, p2}, Landroid/hardware/biometrics/SensorPropertiesInternal;->writeToParcel(Landroid/os/Parcel;I)V

    .line 112
    iget p2, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-boolean p2, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->halControlsIllumination:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 114
    iget-boolean p2, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->halHandlesDisplayTouches:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 115
    iget-object p2, p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->mSensorLocations:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 116
    return-void
.end method
