.class public abstract Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;
.super Landroid/os/Binder;
.source "IBiometricServiceReceiver.java"

# interfaces
.implements Landroid/hardware/biometrics/IBiometricServiceReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IBiometricServiceReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onAcquired:I = 0x4

.field static final blacklist TRANSACTION_onAuthenticationFailed:I = 0x2

.field static final blacklist TRANSACTION_onAuthenticationSucceeded:I = 0x1

.field static final blacklist TRANSACTION_onDialogDismissed:I = 0x5

.field static final blacklist TRANSACTION_onError:I = 0x3

.field static final blacklist TRANSACTION_onSystemEvent:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    const-string v0, "android.hardware.biometrics.IBiometricServiceReceiver"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .registers 3

    .line 63
    if-nez p0, :cond_4

    .line 64
    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_4
    const-string v0, "android.hardware.biometrics.IBiometricServiceReceiver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/biometrics/IBiometricServiceReceiver;

    if-eqz v1, :cond_13

    .line 68
    check-cast v0, Landroid/hardware/biometrics/IBiometricServiceReceiver;

    return-object v0

    .line 70
    :cond_13
    new-instance v0, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 79
    packed-switch p0, :pswitch_data_1e

    .line 107
    const/4 p0, 0x0

    return-object p0

    .line 103
    :pswitch_5
    const-string/jumbo p0, "onSystemEvent"

    return-object p0

    .line 99
    :pswitch_9
    const-string/jumbo p0, "onDialogDismissed"

    return-object p0

    .line 95
    :pswitch_d
    const-string/jumbo p0, "onAcquired"

    return-object p0

    .line 91
    :pswitch_11
    const-string/jumbo p0, "onError"

    return-object p0

    .line 87
    :pswitch_15
    const-string/jumbo p0, "onAuthenticationFailed"

    return-object p0

    .line 83
    :pswitch_19
    const-string/jumbo p0, "onAuthenticationSucceeded"

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x1
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

    .line 74
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 291
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 114
    invoke-static {p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 118
    nop

    .line 119
    const-string v0, "android.hardware.biometrics.IBiometricServiceReceiver"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 120
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 123
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    return v1

    .line 126
    :cond_17
    packed-switch p1, :pswitch_data_68

    .line 181
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 174
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->onSystemEvent(I)V

    .line 177
    goto :goto_66

    .line 166
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->onDialogDismissed(I)V

    .line 169
    goto :goto_66

    .line 156
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, p1, p3}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->onAcquired(ILjava/lang/String;)V

    .line 161
    goto :goto_66

    .line 144
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->onError(III)V

    .line 151
    goto :goto_66

    .line 138
    :pswitch_57
    invoke-virtual {p0}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->onAuthenticationFailed()V

    .line 139
    goto :goto_66

    .line 131
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 133
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver$Stub;->onAuthenticationSucceeded(I)V

    .line 134
    nop

    .line 184
    :goto_66
    return v1

    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_57
        :pswitch_44
        :pswitch_35
        :pswitch_2a
        :pswitch_1f
    .end packed-switch
.end method
