.class public abstract Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub;
.super Landroid/os/Binder;
.source "IHdmiVendorCommandListener.java"

# interfaces
.implements Landroid/hardware/hdmi/IHdmiVendorCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/IHdmiVendorCommandListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.hdmi.IHdmiVendorCommandListener"

.field static final greylist-max-o TRANSACTION_onControlStateChanged:I = 0x2

.field static final greylist-max-o TRANSACTION_onReceived:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string v0, "android.hardware.hdmi.IHdmiVendorCommandListener"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiVendorCommandListener;
    .registers 3

    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_4
    const-string v0, "android.hardware.hdmi.IHdmiVendorCommandListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    if-eqz v1, :cond_13

    .line 52
    check-cast v0, Landroid/hardware/hdmi/IHdmiVendorCommandListener;

    return-object v0

    .line 54
    :cond_13
    new-instance v0, Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 63
    packed-switch p0, :pswitch_data_c

    .line 75
    const/4 p0, 0x0

    return-object p0

    .line 71
    :pswitch_5
    const-string p0, "onControlStateChanged"

    return-object p0

    .line 67
    :pswitch_8
    const-string p0, "onReceived"

    return-object p0

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 58
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 82
    invoke-static {p1}, Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    nop

    .line 87
    const-string v0, "android.hardware.hdmi.IHdmiVendorCommandListener"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 88
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 91
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return v1

    .line 94
    :cond_17
    packed-switch p1, :pswitch_data_46

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 113
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 117
    invoke-virtual {p0, p1, p3}, Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub;->onControlStateChanged(ZI)V

    .line 118
    goto :goto_45

    .line 99
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/hardware/hdmi/IHdmiVendorCommandListener$Stub;->onReceived(II[BZ)V

    .line 108
    nop

    .line 125
    :goto_45
    return v1

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
