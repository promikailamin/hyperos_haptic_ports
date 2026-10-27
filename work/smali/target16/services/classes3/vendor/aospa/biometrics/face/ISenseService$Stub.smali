.class public abstract Lvendor/aospa/biometrics/face/ISenseService$Stub;
.super Landroid/os/Binder;
.source "ISenseService.java"

# interfaces
.implements Lvendor/aospa/biometrics/face/ISenseService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    const-string v0, "vendor.aospa.biometrics.face.ISenseService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/aospa/biometrics/face/ISenseService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 84
    :cond_4
    const-string v0, "vendor.aospa.biometrics.face.ISenseService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 85
    instance-of v1, v0, Lvendor/aospa/biometrics/face/ISenseService;

    if-eqz v1, :cond_13

    .line 86
    check-cast v0, Lvendor/aospa/biometrics/face/ISenseService;

    return-object v0

    .line 88
    :cond_13
    new-instance v0, Lvendor/aospa/biometrics/face/ISenseService$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/aospa/biometrics/face/ISenseService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 97
    const-string v0, "vendor.aospa.biometrics.face.ISenseService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 98
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 101
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_16
    packed-switch p1, :pswitch_data_d4

    .line 221
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 208
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-interface {p0, p1, p3, p4, v0}, Lvendor/aospa/biometrics/face/ISenseService;->setFeature(IZ[BI)V

    goto/16 :goto_d2

    .line 196
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-interface {p0, p1, p4}, Lvendor/aospa/biometrics/face/ISenseService;->getFeature(II)Z

    move-result p0

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_d2

    .line 188
    :pswitch_4d
    invoke-interface {p0}, Lvendor/aospa/biometrics/face/ISenseService;->getFeatureCount()I

    move-result p0

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_d2

    .line 181
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lvendor/aospa/biometrics/face/ISenseServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/aospa/biometrics/face/ISenseServiceReceiver;

    move-result-object p1

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-interface {p0, p1}, Lvendor/aospa/biometrics/face/ISenseService;->setCallback(Lvendor/aospa/biometrics/face/ISenseServiceReceiver;)V

    goto :goto_d2

    .line 173
    :pswitch_68
    invoke-interface {p0}, Lvendor/aospa/biometrics/face/ISenseService;->revokeChallenge()I

    move-result p0

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d2

    .line 166
    :pswitch_73
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-interface {p0, p1}, Lvendor/aospa/biometrics/face/ISenseService;->resetLockout([B)V

    goto :goto_d2

    .line 158
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-interface {p0, p1}, Lvendor/aospa/biometrics/face/ISenseService;->remove(I)V

    goto :goto_d2

    .line 150
    :pswitch_89
    invoke-interface {p0}, Lvendor/aospa/biometrics/face/ISenseService;->getAuthenticatorId()I

    move-result p0

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d2

    .line 141
    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-interface {p0, p1}, Lvendor/aospa/biometrics/face/ISenseService;->generateChallenge(I)J

    move-result-wide p0

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_d2

    .line 133
    :pswitch_a6
    invoke-interface {p0}, Lvendor/aospa/biometrics/face/ISenseService;->enumerate()I

    move-result p0

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d2

    .line 122
    :pswitch_b1
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p4

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 128
    invoke-interface {p0, p1, p3, p4}, Lvendor/aospa/biometrics/face/ISenseService;->enroll([BI[I)V

    goto :goto_d2

    .line 116
    :pswitch_c4
    invoke-interface {p0}, Lvendor/aospa/biometrics/face/ISenseService;->cancel()V

    goto :goto_d2

    .line 109
    :pswitch_c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-interface {p0, p3, p4}, Lvendor/aospa/biometrics/face/ISenseService;->authenticate(J)V

    :goto_d2
    return v1

    nop

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_c8
        :pswitch_c4
        :pswitch_b1
        :pswitch_a6
        :pswitch_94
        :pswitch_89
        :pswitch_7e
        :pswitch_73
        :pswitch_68
        :pswitch_59
        :pswitch_4d
        :pswitch_36
        :pswitch_1e
    .end packed-switch
.end method
