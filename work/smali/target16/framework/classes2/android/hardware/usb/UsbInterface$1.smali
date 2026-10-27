.class Landroid/hardware/usb/UsbInterface$1;
.super Ljava/lang/Object;
.source "UsbInterface.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/UsbInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/usb/UsbInterface;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbInterface;
    .registers 9

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 174
    const-class v0, Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object p1

    .line 175
    new-instance v0, Landroid/hardware/usb/UsbInterface;

    invoke-direct/range {v0 .. v6}, Landroid/hardware/usb/UsbInterface;-><init>(IILjava/lang/String;III)V

    .line 176
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbInterface;->setEndpoints([Landroid/os/Parcelable;)V

    .line 177
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 166
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbInterface$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/UsbInterface;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/usb/UsbInterface;
    .registers 2

    .line 181
    new-array p1, p1, [Landroid/hardware/usb/UsbInterface;

    return-object p1
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 166
    invoke-virtual {p0, p1}, Landroid/hardware/usb/UsbInterface$1;->newArray(I)[Landroid/hardware/usb/UsbInterface;

    move-result-object p1

    return-object p1
.end method
