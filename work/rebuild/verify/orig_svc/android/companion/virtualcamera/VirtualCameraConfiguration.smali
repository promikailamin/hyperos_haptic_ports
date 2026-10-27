.class public Landroid/companion/virtualcamera/VirtualCameraConfiguration;
.super Ljava/lang/Object;
.source "VirtualCameraConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/companion/virtualcamera/VirtualCameraConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cameraCharacteristics:Landroid/companion/virtualcamera/VirtualCameraMetadata;

.field public lensFacing:I

.field public perFrameCameraMetadataEnabled:Z

.field public sensorOrientation:I

.field public supportedStreamConfigs:[Landroid/companion/virtualcamera/SupportedStreamConfiguration;

.field public virtualCameraCallback:Landroid/companion/virtualcamera/IVirtualCameraCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    new-instance v0, Landroid/companion/virtualcamera/VirtualCameraConfiguration$1;

    invoke-direct {v0}, Landroid/companion/virtualcamera/VirtualCameraConfiguration$1;-><init>()V

    sput-object v0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->sensorOrientation:I

    .line 21
    iput-boolean v0, p0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->perFrameCameraMetadataEnabled:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    .line 78
    iget-object v0, p0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->supportedStreamConfigs:[Landroid/companion/virtualcamera/SupportedStreamConfiguration;

    invoke-virtual {p0, v0}, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->describeContents(Ljava/lang/Object;)I

    move-result v0

    .line 79
    iget-object v1, p0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->cameraCharacteristics:Landroid/companion/virtualcamera/VirtualCameraMetadata;

    invoke-virtual {p0, v1}, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final describeContents(Ljava/lang/Object;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 84
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_19

    .line 86
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_c
    if-ge v0, v1, :cond_18

    aget-object v3, p1, v0

    .line 87
    invoke-virtual {p0, v3}, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_18
    return v2

    .line 91
    :cond_19
    instance-of p0, p1, Landroid/os/Parcelable;

    if-eqz p0, :cond_24

    .line 92
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    return p0

    :cond_24
    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    .line 55
    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_b7

    .line 56
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_b5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    :goto_1a
    add-int/2addr v0, v1

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 70
    :cond_1f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_25
    :try_start_25
    sget-object v2, Landroid/companion/virtualcamera/SupportedStreamConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/companion/virtualcamera/SupportedStreamConfiguration;

    iput-object v2, p0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->supportedStreamConfigs:[Landroid/companion/virtualcamera/SupportedStreamConfiguration;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_b5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    goto :goto_1a

    .line 70
    :cond_3a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 59
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/companion/virtualcamera/IVirtualCameraCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtualcamera/IVirtualCameraCallback;

    move-result-object v2

    iput-object v2, p0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->virtualCameraCallback:Landroid/companion/virtualcamera/IVirtualCameraCallback;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4e
    .catchall {:try_start_40 .. :try_end_4e} :catchall_b5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    goto :goto_1a

    .line 70
    :cond_55
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->sensorOrientation:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_b5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_72

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6c

    goto :goto_1a

    .line 70
    :cond_6c
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63
    :cond_72
    :try_start_72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->lensFacing:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7c
    .catchall {:try_start_72 .. :try_end_7c} :catchall_b5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_89

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_83

    goto :goto_1a

    .line 70
    :cond_83
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_89
    :try_start_89
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->perFrameCameraMetadataEnabled:Z

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_93
    .catchall {:try_start_89 .. :try_end_93} :catchall_b5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_a0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_9a

    goto :goto_1a

    .line 70
    :cond_9a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_a0
    :try_start_a0
    sget-object v2, Landroid/companion/virtualcamera/VirtualCameraMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/virtualcamera/VirtualCameraMetadata;

    iput-object v2, p0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->cameraCharacteristics:Landroid/companion/virtualcamera/VirtualCameraMetadata;
    :try_end_aa
    .catchall {:try_start_a0 .. :try_end_aa} :catchall_b5

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_af

    goto/16 :goto_1a

    .line 70
    :cond_af
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_b5
    move-exception p0

    goto :goto_bf

    .line 55
    :cond_b7
    :try_start_b7
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_bf
    .catchall {:try_start_b7 .. :try_end_bf} :catchall_b5

    :goto_bf
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_c8

    .line 70
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c8
    add-int/2addr v0, v1

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object v1, p0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->supportedStreamConfigs:[Landroid/companion/virtualcamera/SupportedStreamConfiguration;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 40
    iget-object v1, p0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->virtualCameraCallback:Landroid/companion/virtualcamera/IVirtualCameraCallback;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 41
    iget v1, p0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->sensorOrientation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v1, p0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->lensFacing:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-boolean v1, p0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->perFrameCameraMetadataEnabled:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 44
    iget-object p0, p0, Landroid/companion/virtualcamera/VirtualCameraConfiguration;->cameraCharacteristics:Landroid/companion/virtualcamera/VirtualCameraMetadata;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    .line 47
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
