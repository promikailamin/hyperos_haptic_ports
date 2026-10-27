.class public Landroid/companion/virtualcamera/VirtualCameraMetadata$1;
.super Ljava/lang/Object;
.source "VirtualCameraMetadata.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/companion/virtualcamera/VirtualCameraMetadata;
    .registers 2

    .line 26
    new-instance p0, Landroid/companion/virtualcamera/VirtualCameraMetadata;

    invoke-direct {p0}, Landroid/companion/virtualcamera/VirtualCameraMetadata;-><init>()V

    .line 27
    invoke-virtual {p0, p1}, Landroid/companion/virtualcamera/VirtualCameraMetadata;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 23
    invoke-virtual {p0, p1}, Landroid/companion/virtualcamera/VirtualCameraMetadata$1;->createFromParcel(Landroid/os/Parcel;)Landroid/companion/virtualcamera/VirtualCameraMetadata;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/companion/virtualcamera/VirtualCameraMetadata;
    .registers 2

    .line 32
    new-array p0, p1, [Landroid/companion/virtualcamera/VirtualCameraMetadata;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 23
    invoke-virtual {p0, p1}, Landroid/companion/virtualcamera/VirtualCameraMetadata$1;->newArray(I)[Landroid/companion/virtualcamera/VirtualCameraMetadata;

    move-result-object p0

    return-object p0
.end method
