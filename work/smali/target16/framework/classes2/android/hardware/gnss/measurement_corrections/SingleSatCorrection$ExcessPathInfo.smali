.class public Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;
.super Ljava/lang/Object;
.source "SingleSatCorrection.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExcessPathInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EXCESS_PATH_INFO_HAS_ATTENUATION:I = 0x8

.field public static final blacklist EXCESS_PATH_INFO_HAS_EXCESS_PATH_LENGTH:I = 0x1

.field public static final blacklist EXCESS_PATH_INFO_HAS_EXCESS_PATH_LENGTH_UNC:I = 0x2

.field public static final blacklist EXCESS_PATH_INFO_HAS_REFLECTING_PLANE:I = 0x4


# instance fields
.field public blacklist attenuationDb:F

.field public blacklist excessPathInfoFlags:I

.field public blacklist excessPathLengthMeters:F

.field public blacklist excessPathLengthUncertaintyMeters:F

.field public blacklist reflectingPlane:Landroid/hardware/gnss/measurement_corrections/ReflectingPlane;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 118
    new-instance v0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo$1;

    invoke-direct {v0}, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->excessPathInfoFlags:I

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->excessPathLengthMeters:F

    .line 113
    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->excessPathLengthUncertaintyMeters:F

    .line 115
    iput v0, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->attenuationDb:F

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 178
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 179
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 180
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 182
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 173
    nop

    .line 174
    iget-object v0, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->reflectingPlane:Landroid/hardware/gnss/measurement_corrections/ReflectingPlane;

    invoke-direct {p0, v0}, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 175
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 149
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_ac

    .line 150
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 161
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 164
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 150
    return-void

    .line 162
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->excessPathInfoFlags:I

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 161
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 164
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 152
    return-void

    .line 162
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 153
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->excessPathLengthMeters:F

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 161
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 164
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 154
    return-void

    .line 162
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->excessPathLengthUncertaintyMeters:F

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 161
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 164
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 156
    return-void

    .line 162
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 157
    :cond_76
    :try_start_76
    sget-object v2, Landroid/hardware/gnss/measurement_corrections/ReflectingPlane;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/measurement_corrections/ReflectingPlane;

    iput-object v2, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->reflectingPlane:Landroid/hardware/gnss/measurement_corrections/ReflectingPlane;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_76 .. :try_end_84} :catchall_aa

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_95

    .line 161
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8f

    .line 164
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 158
    return-void

    .line 162
    :cond_8f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 159
    :cond_95
    :try_start_95
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->attenuationDb:F
    :try_end_9b
    .catchall {:try_start_95 .. :try_end_9b} :catchall_aa

    .line 161
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a4

    .line 164
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 165
    nop

    .line 166
    return-void

    .line 162
    :cond_a4
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 161
    :catchall_aa
    move-exception v2

    goto :goto_b4

    .line 149
    :cond_ac
    :try_start_ac
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_b4
    .catchall {:try_start_ac .. :try_end_b4} :catchall_aa

    .line 161
    :goto_b4
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_bd

    .line 162
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_bd
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 165
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 133
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->excessPathInfoFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->excessPathLengthMeters:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 136
    iget v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->excessPathLengthUncertaintyMeters:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 137
    iget-object v1, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->reflectingPlane:Landroid/hardware/gnss/measurement_corrections/ReflectingPlane;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 138
    iget p2, p0, Landroid/hardware/gnss/measurement_corrections/SingleSatCorrection$ExcessPathInfo;->attenuationDb:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 140
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 141
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 143
    return-void
.end method
