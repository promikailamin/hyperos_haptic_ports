.class public Landroid/bluetooth/BluetoothGattIncludedService;
.super Ljava/lang/Object;
.source "BluetoothGattIncludedService.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothGattIncludedService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected greylist-max-o mInstanceId:I

.field protected greylist-max-o mServiceType:I

.field protected greylist-max-o mUuid:Ljava/util/UUID;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Landroid/bluetooth/BluetoothGattIncludedService$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothGattIncludedService$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothGattIncludedService;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    invoke-virtual {v0}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mUuid:Ljava/util/UUID;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mInstanceId:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mServiceType:I

    .line 82
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothGattIncludedService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGattIncludedService;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/UUID;II)V
    .registers 4
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "instanceId"    # I
    .param p3, "serviceType"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mUuid:Ljava/util/UUID;

    .line 51
    iput p2, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mInstanceId:I

    .line 52
    iput p3, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mServiceType:I

    .line 53
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getInstanceId()I
    .registers 2

    .line 103
    iget v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mInstanceId:I

    return v0
.end method

.method public greylist-max-o getType()I
    .registers 2

    .line 110
    iget v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mServiceType:I

    return v0
.end method

.method public greylist-max-o getUuid()Ljava/util/UUID;
    .registers 2

    .line 90
    iget-object v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 62
    new-instance v0, Landroid/os/ParcelUuid;

    iget-object v1, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mUuid:Ljava/util/UUID;

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 63
    iget v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mInstanceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v0, p0, Landroid/bluetooth/BluetoothGattIncludedService;->mServiceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    return-void
.end method
