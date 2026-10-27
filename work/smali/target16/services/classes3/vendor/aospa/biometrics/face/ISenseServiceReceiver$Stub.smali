.class public abstract Lvendor/aospa/biometrics/face/ISenseServiceReceiver$Stub;
.super Landroid/os/Binder;
.source "ISenseServiceReceiver.java"

# interfaces
.implements Lvendor/aospa/biometrics/face/ISenseServiceReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "vendor.aospa.biometrics.face.ISenseServiceReceiver"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/aospa/biometrics/face/ISenseServiceReceiver;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_4
    const-string v0, "vendor.aospa.biometrics.face.ISenseServiceReceiver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 61
    instance-of v1, v0, Lvendor/aospa/biometrics/face/ISenseServiceReceiver;

    if-eqz v1, :cond_13

    .line 62
    check-cast v0, Lvendor/aospa/biometrics/face/ISenseServiceReceiver;

    return-object v0

    .line 64
    :cond_13
    new-instance v0, Lvendor/aospa/biometrics/face/ISenseServiceReceiver$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/aospa/biometrics/face/ISenseServiceReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    .line 73
    const-string v0, "vendor.aospa.biometrics.face.ISenseServiceReceiver"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 74
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 77
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_16
    packed-switch p1, :pswitch_data_90

    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 151
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-interface {p0, p3, p4}, Lvendor/aospa/biometrics/face/ISenseServiceReceiver;->onLockoutChanged(J)V

    goto :goto_8e

    .line 141
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 145
    invoke-interface {p0, p1, p3}, Lvendor/aospa/biometrics/face/ISenseServiceReceiver;->onEnumerate([II)V

    goto :goto_8e

    .line 131
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 135
    invoke-interface {p0, p1, p3}, Lvendor/aospa/biometrics/face/ISenseServiceReceiver;->onRemoved([II)V

    goto :goto_8e

    .line 121
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 125
    invoke-interface {p0, p1, p3}, Lvendor/aospa/biometrics/face/ISenseServiceReceiver;->onError(II)V

    goto :goto_8e

    .line 109
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-interface {p0, p1, p3, p4}, Lvendor/aospa/biometrics/face/ISenseServiceReceiver;->onAcquired(III)V

    goto :goto_8e

    .line 97
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 103
    invoke-interface {p0, p1, p3, p4}, Lvendor/aospa/biometrics/face/ISenseServiceReceiver;->onAuthenticated(II[B)V

    goto :goto_8e

    .line 85
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 91
    invoke-interface {p0, p1, p3, p4}, Lvendor/aospa/biometrics/face/ISenseServiceReceiver;->onEnrollResult(III)V

    :goto_8e
    return v1

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_7c
        :pswitch_69
        :pswitch_56
        :pswitch_47
        :pswitch_38
        :pswitch_29
        :pswitch_1e
    .end packed-switch
.end method
