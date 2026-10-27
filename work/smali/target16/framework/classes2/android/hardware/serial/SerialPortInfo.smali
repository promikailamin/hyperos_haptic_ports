.class public Landroid/hardware/serial/SerialPortInfo;
.super Ljava/lang/Object;
.source "SerialPortInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/serial/SerialPortInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mProductId:I

.field private final blacklist mVendorId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 75
    new-instance v0, Landroid/hardware/serial/SerialPortInfo$1;

    invoke-direct {v0}, Landroid/hardware/serial/SerialPortInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/serial/SerialPortInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/hardware/serial/SerialPortInfo;->mName:Ljava/lang/String;

    .line 36
    iput p2, p0, Landroid/hardware/serial/SerialPortInfo;->mVendorId:I

    .line 37
    iput p3, p0, Landroid/hardware/serial/SerialPortInfo;->mProductId:I

    .line 38
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Landroid/hardware/serial/SerialPortInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getProductId()I
    .registers 2

    .line 60
    iget v0, p0, Landroid/hardware/serial/SerialPortInfo;->mProductId:I

    return v0
.end method

.method public blacklist getVendorId()I
    .registers 2

    .line 52
    iget v0, p0, Landroid/hardware/serial/SerialPortInfo;->mVendorId:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 70
    iget-object p2, p0, Landroid/hardware/serial/SerialPortInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 71
    iget p2, p0, Landroid/hardware/serial/SerialPortInfo;->mVendorId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget p2, p0, Landroid/hardware/serial/SerialPortInfo;->mProductId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    return-void
.end method
