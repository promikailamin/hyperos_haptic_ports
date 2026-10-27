.class public abstract Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;
.super Landroid/os/Binder;
.source "IFingerprint.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/IFingerprint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/IFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createSession:I = 0x2

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getSensorProps:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 82
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;->markVintfStability()V

    .line 83
    sget-object v0, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/fingerprint/IFingerprint;
    .registers 3

    .line 91
    if-nez p0, :cond_4

    .line 92
    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_4
    sget-object v0, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/biometrics/fingerprint/IFingerprint;

    if-eqz v1, :cond_13

    .line 96
    check-cast v0, Landroid/hardware/biometrics/fingerprint/IFingerprint;

    return-object v0

    .line 98
    :cond_13
    new-instance v0, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 107
    sparse-switch p0, :sswitch_data_12

    .line 127
    const/4 p0, 0x0

    return-object p0

    .line 119
    :sswitch_5
    const-string p0, "getInterfaceVersion"

    return-object p0

    .line 123
    :sswitch_8
    const-string p0, "getInterfaceHash"

    return-object p0

    .line 115
    :sswitch_b
    const-string p0, "createSession"

    return-object p0

    .line 111
    :sswitch_e
    const-string p0, "getSensorProps"

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

    .line 102
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 315
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 134
    invoke-static {p1}, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 138
    sget-object v0, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 139
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 140
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 143
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    return v2

    .line 146
    :cond_16
    if-ne p1, v1, :cond_23

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    return v2

    .line 151
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    return v2

    .line 156
    :cond_33
    packed-switch p1, :pswitch_data_66

    .line 181
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 168
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/fingerprint/ISessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    move-result-object v0

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;->createSession(IILandroid/hardware/biometrics/fingerprint/ISessionCallback;)Landroid/hardware/biometrics/fingerprint/ISession;

    move-result-object p1

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 177
    goto :goto_64

    .line 160
    :pswitch_59
    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/IFingerprint$Stub;->getSensorProps()[Landroid/hardware/biometrics/fingerprint/SensorProps;

    move-result-object p1

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 163
    nop

    .line 184
    :goto_64
    return v2

    nop

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_59
        :pswitch_3b
    .end packed-switch
.end method
