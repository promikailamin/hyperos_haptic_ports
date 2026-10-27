.class public Landroid/hardware/biometrics/face/SensorProps;
.super Ljava/lang/Object;
.source "SensorProps.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/biometrics/face/SensorProps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist commonProps:Landroid/hardware/biometrics/common/CommonProps;

.field public blacklist enrollPreviewHeight:I

.field public blacklist enrollPreviewScale:F

.field public blacklist enrollPreviewWidth:I

.field public blacklist enrollTranslationX:F

.field public blacklist enrollTranslationY:F

.field public blacklist halControlsPreview:Z

.field public blacklist previewDisplayId:I

.field public blacklist sensorType:B

.field public blacklist supportsDetectInteraction:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Landroid/hardware/biometrics/face/SensorProps$1;

    invoke-direct {v0}, Landroid/hardware/biometrics/face/SensorProps$1;-><init>()V

    sput-object v0, Landroid/hardware/biometrics/face/SensorProps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/biometrics/face/SensorProps;->sensorType:B

    .line 15
    iput-boolean v0, p0, Landroid/hardware/biometrics/face/SensorProps;->halControlsPreview:Z

    .line 16
    iput v0, p0, Landroid/hardware/biometrics/face/SensorProps;->previewDisplayId:I

    .line 17
    iput v0, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollPreviewWidth:I

    .line 18
    iput v0, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollPreviewHeight:I

    .line 19
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollTranslationX:F

    .line 20
    iput v1, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollTranslationY:F

    .line 21
    iput v1, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollPreviewScale:F

    .line 22
    iput-boolean v0, p0, Landroid/hardware/biometrics/face/SensorProps;->supportsDetectInteraction:Z

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 96
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 97
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 98
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 100
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 91
    nop

    .line 92
    iget-object v0, p0, Landroid/hardware/biometrics/face/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    invoke-direct {p0, v0}, Landroid/hardware/biometrics/face/SensorProps;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 93
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 24
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 61
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_133

    .line 62
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 84
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_25
    :try_start_25
    sget-object v2, Landroid/hardware/biometrics/common/CommonProps;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/common/CommonProps;

    iput-object v2, p0, Landroid/hardware/biometrics/face/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_44

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3e

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 84
    :cond_3e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_44
    :try_start_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/biometrics/face/SensorProps;->sensorType:B

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5f

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_59

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 84
    :cond_59
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_5f
    :try_start_5f
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/biometrics/face/SensorProps;->halControlsPreview:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 84
    :cond_74
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/face/SensorProps;->previewDisplayId:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_95

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8f

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 84
    :cond_8f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 71
    :cond_95
    :try_start_95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollPreviewWidth:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9f
    .catchall {:try_start_95 .. :try_end_9f} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b0

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_aa

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 84
    :cond_aa
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_b0
    :try_start_b0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollPreviewHeight:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ba
    .catchall {:try_start_b0 .. :try_end_ba} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_cb

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c5

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 84
    :cond_c5
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 75
    :cond_cb
    :try_start_cb
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollTranslationX:F

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d5
    .catchall {:try_start_cb .. :try_end_d5} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e6

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e0

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    return-void

    .line 84
    :cond_e0
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_e6
    :try_start_e6
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollTranslationY:F

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f0
    .catchall {:try_start_e6 .. :try_end_f0} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_101

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_fb

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    return-void

    .line 84
    :cond_fb
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_101
    :try_start_101
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollPreviewScale:F

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_10b
    .catchall {:try_start_101 .. :try_end_10b} :catchall_131

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_11c

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_116

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 80
    return-void

    .line 84
    :cond_116
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_11c
    :try_start_11c
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/biometrics/face/SensorProps;->supportsDetectInteraction:Z
    :try_end_122
    .catchall {:try_start_11c .. :try_end_122} :catchall_131

    .line 83
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_12b

    .line 86
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    nop

    .line 88
    return-void

    .line 84
    :cond_12b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :catchall_131
    move-exception v2

    goto :goto_13b

    .line 61
    :cond_133
    :try_start_133
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_13b
    .catchall {:try_start_133 .. :try_end_13b} :catchall_131

    .line 83
    :goto_13b
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_144

    .line 84
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_144
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 40
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object v1, p0, Landroid/hardware/biometrics/face/SensorProps;->commonProps:Landroid/hardware/biometrics/common/CommonProps;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 42
    iget-byte p2, p0, Landroid/hardware/biometrics/face/SensorProps;->sensorType:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 43
    iget-boolean p2, p0, Landroid/hardware/biometrics/face/SensorProps;->halControlsPreview:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 44
    iget p2, p0, Landroid/hardware/biometrics/face/SensorProps;->previewDisplayId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget p2, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollPreviewWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    iget p2, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollPreviewHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget p2, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollTranslationX:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 48
    iget p2, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollTranslationY:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 49
    iget p2, p0, Landroid/hardware/biometrics/face/SensorProps;->enrollPreviewScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 50
    iget-boolean p2, p0, Landroid/hardware/biometrics/face/SensorProps;->supportsDetectInteraction:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 53
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    return-void
.end method
