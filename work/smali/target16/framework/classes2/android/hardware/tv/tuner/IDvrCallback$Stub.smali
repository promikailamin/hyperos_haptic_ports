.class public abstract Landroid/hardware/tv/tuner/IDvrCallback$Stub;
.super Landroid/os/Binder;
.source "IDvrCallback.java"

# interfaces
.implements Landroid/hardware/tv/tuner/IDvrCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tv/tuner/IDvrCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/tv/tuner/IDvrCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_onPlaybackStatus:I = 0x1

.field static final blacklist TRANSACTION_onRecordStatus:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDvrCallback$Stub;->markVintfStability()V

    .line 51
    sget-object v0, Landroid/hardware/tv/tuner/IDvrCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/tv/tuner/IDvrCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/tv/tuner/IDvrCallback;
    .registers 3

    .line 59
    if-nez p0, :cond_4

    .line 60
    const/4 p0, 0x0

    return-object p0

    .line 62
    :cond_4
    sget-object v0, Landroid/hardware/tv/tuner/IDvrCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/tv/tuner/IDvrCallback;

    if-eqz v1, :cond_13

    .line 64
    check-cast v0, Landroid/hardware/tv/tuner/IDvrCallback;

    return-object v0

    .line 66
    :cond_13
    new-instance v0, Landroid/hardware/tv/tuner/IDvrCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/tv/tuner/IDvrCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 70
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    sget-object v0, Landroid/hardware/tv/tuner/IDvrCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 75
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 76
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 79
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return v2

    .line 82
    :cond_16
    if-ne p1, v1, :cond_23

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDvrCallback$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    return v2

    .line 87
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p0}, Landroid/hardware/tv/tuner/IDvrCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    return v2

    .line 92
    :cond_33
    packed-switch p1, :pswitch_data_52

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 105
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/IDvrCallback$Stub;->onRecordStatus(B)V

    .line 108
    goto :goto_51

    .line 97
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 99
    invoke-virtual {p0, p1}, Landroid/hardware/tv/tuner/IDvrCallback$Stub;->onPlaybackStatus(I)V

    .line 100
    nop

    .line 115
    :goto_51
    return v2

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_46
        :pswitch_3b
    .end packed-switch
.end method
