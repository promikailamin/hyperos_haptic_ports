.class Landroid/hardware/usb/PortRole$1;
.super Ljava/lang/Object;
.source "PortRole.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/PortRole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/usb/PortRole;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/PortRole;
    .registers 4
    .param p1, "_aidl_source"    # Landroid/os/Parcel;

    .line 86
    new-instance v0, Landroid/hardware/usb/PortRole;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/hardware/usb/PortRole;-><init>(Landroid/os/Parcel;Landroid/hardware/usb/PortRole-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 83
    invoke-virtual {p0, p1}, Landroid/hardware/usb/PortRole$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/usb/PortRole;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/usb/PortRole;
    .registers 3
    .param p1, "_aidl_size"    # I

    .line 90
    new-array v0, p1, [Landroid/hardware/usb/PortRole;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 83
    invoke-virtual {p0, p1}, Landroid/hardware/usb/PortRole$1;->newArray(I)[Landroid/hardware/usb/PortRole;

    move-result-object p1

    return-object p1
.end method
