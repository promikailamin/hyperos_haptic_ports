.class public abstract Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;
.super Landroid/os/Binder;
.source "IBiometricSysuiReceiver.java"

# interfaces
.implements Landroid/hardware/biometrics/IBiometricSysuiReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IBiometricSysuiReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onDeviceCredentialPressed:I = 0x3

.field static final blacklist TRANSACTION_onDialogAnimatedIn:I = 0x5

.field static final blacklist TRANSACTION_onDialogDismissed:I = 0x1

.field static final blacklist TRANSACTION_onPauseAuthentication:I = 0x7

.field static final blacklist TRANSACTION_onResumeAuthentication:I = 0x8

.field static final blacklist TRANSACTION_onStartFingerprintNow:I = 0x6

.field static final blacklist TRANSACTION_onSystemEvent:I = 0x4

.field static final blacklist TRANSACTION_onTryAgainPressed:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 63
    const-string v0, "android.hardware.biometrics.IBiometricSysuiReceiver"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    .registers 3

    .line 71
    if-nez p0, :cond_4

    .line 72
    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_4
    const-string v0, "android.hardware.biometrics.IBiometricSysuiReceiver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    if-eqz v1, :cond_13

    .line 76
    check-cast v0, Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    return-object v0

    .line 78
    :cond_13
    new-instance v0, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 87
    packed-switch p0, :pswitch_data_26

    .line 123
    const/4 p0, 0x0

    return-object p0

    .line 119
    :pswitch_5
    const-string/jumbo p0, "onResumeAuthentication"

    return-object p0

    .line 115
    :pswitch_9
    const-string/jumbo p0, "onPauseAuthentication"

    return-object p0

    .line 111
    :pswitch_d
    const-string/jumbo p0, "onStartFingerprintNow"

    return-object p0

    .line 107
    :pswitch_11
    const-string/jumbo p0, "onDialogAnimatedIn"

    return-object p0

    .line 103
    :pswitch_15
    const-string/jumbo p0, "onSystemEvent"

    return-object p0

    .line 99
    :pswitch_19
    const-string/jumbo p0, "onDeviceCredentialPressed"

    return-object p0

    .line 95
    :pswitch_1d
    const-string/jumbo p0, "onTryAgainPressed"

    return-object p0

    .line 91
    :pswitch_21
    const-string/jumbo p0, "onDialogDismissed"

    return-object p0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 82
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 329
    const/4 v0, 0x7

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 130
    invoke-static {p1}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 134
    nop

    .line 135
    const-string v0, "android.hardware.biometrics.IBiometricSysuiReceiver"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 136
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 139
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return v1

    .line 142
    :cond_17
    packed-switch p1, :pswitch_data_5a

    .line 197
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 192
    :pswitch_1f
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->onResumeAuthentication()V

    .line 193
    goto :goto_58

    .line 187
    :pswitch_23
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->onPauseAuthentication()V

    .line 188
    goto :goto_58

    .line 182
    :pswitch_27
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->onStartFingerprintNow()V

    .line 183
    goto :goto_58

    .line 175
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->onDialogAnimatedIn(Z)V

    .line 178
    goto :goto_58

    .line 167
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 169
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->onSystemEvent(I)V

    .line 170
    goto :goto_58

    .line 161
    :pswitch_41
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->onDeviceCredentialPressed()V

    .line 162
    goto :goto_58

    .line 156
    :pswitch_45
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->onTryAgainPressed()V

    .line 157
    goto :goto_58

    .line 147
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p3

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-virtual {p0, p1, p3}, Landroid/hardware/biometrics/IBiometricSysuiReceiver$Stub;->onDialogDismissed(I[B)V

    .line 152
    nop

    .line 200
    :goto_58
    return v1

    nop

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_36
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method
