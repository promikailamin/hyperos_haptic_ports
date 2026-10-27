.class public abstract Landroid/hardware/gnss/IAGnssRilCallback$Stub;
.super Landroid/os/Binder;
.source "IAGnssRilCallback.java"

# interfaces
.implements Landroid/hardware/gnss/IAGnssRilCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IAGnssRilCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IAGnssRilCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_requestRefLocCb:I = 0x2

.field static final blacklist TRANSACTION_requestSetIdCb:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 50
    invoke-virtual {p0}, Landroid/hardware/gnss/IAGnssRilCallback$Stub;->markVintfStability()V

    .line 51
    sget-object v0, Landroid/hardware/gnss/IAGnssRilCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/IAGnssRilCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IAGnssRilCallback;
    .registers 3

    .line 59
    if-nez p0, :cond_4

    .line 60
    const/4 p0, 0x0

    return-object p0

    .line 62
    :cond_4
    sget-object v0, Landroid/hardware/gnss/IAGnssRilCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/gnss/IAGnssRilCallback;

    if-eqz v1, :cond_13

    .line 64
    check-cast v0, Landroid/hardware/gnss/IAGnssRilCallback;

    return-object v0

    .line 66
    :cond_13
    new-instance v0, Landroid/hardware/gnss/IAGnssRilCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/gnss/IAGnssRilCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 75
    sparse-switch p0, :sswitch_data_12

    .line 95
    const/4 p0, 0x0

    return-object p0

    .line 87
    :sswitch_5
    const-string p0, "getInterfaceVersion"

    return-object p0

    .line 91
    :sswitch_8
    const-string p0, "getInterfaceHash"

    return-object p0

    .line 83
    :sswitch_b
    const-string p0, "requestRefLocCb"

    return-object p0

    .line 79
    :sswitch_e
    const-string p0, "requestSetIdCb"

    return-object p0

    nop

    :sswitch_data_12
    .sparse-switch
        0x1 -> :sswitch_e
        0x2 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 70
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 242
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 102
    invoke-static {p1}, Landroid/hardware/gnss/IAGnssRilCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    sget-object v0, Landroid/hardware/gnss/IAGnssRilCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 107
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 111
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return v2

    .line 114
    :cond_16
    if-ne p1, v1, :cond_23

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p0}, Landroid/hardware/gnss/IAGnssRilCallback$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    return v2

    .line 119
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p0}, Landroid/hardware/gnss/IAGnssRilCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return v2

    .line 124
    :cond_33
    packed-switch p1, :pswitch_data_52

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 137
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/gnss/IAGnssRilCallback$Stub;->requestRefLocCb()V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    goto :goto_50

    .line 129
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-virtual {p0, p1}, Landroid/hardware/gnss/IAGnssRilCallback$Stub;->requestSetIdCb(I)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 133
    nop

    .line 146
    :goto_50
    return v2

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_42
        :pswitch_3b
    .end packed-switch
.end method
