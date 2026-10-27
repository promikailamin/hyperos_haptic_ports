.class public abstract Landroid/hardware/vibrator/IVibratorManager$Stub;
.super Landroid/os/Binder;
.source "IVibratorManager.java"

# interfaces
.implements Landroid/hardware/vibrator/IVibratorManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/vibrator/IVibratorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/vibrator/IVibratorManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_cancelSynced:I = 0x6

.field static final blacklist TRANSACTION_clearSessions:I = 0x8

.field static final blacklist TRANSACTION_getCapabilities:I = 0x1

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getVibrator:I = 0x3

.field static final blacklist TRANSACTION_getVibratorIds:I = 0x2

.field static final blacklist TRANSACTION_prepareSynced:I = 0x4

.field static final blacklist TRANSACTION_startSession:I = 0x7

.field static final blacklist TRANSACTION_triggerSynced:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibratorManager$Stub;->markVintfStability()V

    .line 72
    sget-object v0, Landroid/hardware/vibrator/IVibratorManager$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/vibrator/IVibratorManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibratorManager;
    .registers 3

    .line 80
    if-nez p0, :cond_4

    .line 81
    const/4 p0, 0x0

    return-object p0

    .line 83
    :cond_4
    sget-object v0, Landroid/hardware/vibrator/IVibratorManager$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/vibrator/IVibratorManager;

    if-eqz v1, :cond_13

    .line 85
    check-cast v0, Landroid/hardware/vibrator/IVibratorManager;

    return-object v0

    .line 87
    :cond_13
    new-instance v0, Landroid/hardware/vibrator/IVibratorManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/vibrator/IVibratorManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 91
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    sget-object v0, Landroid/hardware/vibrator/IVibratorManager$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 96
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 97
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 100
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    return v2

    .line 103
    :cond_16
    if-ne p1, v1, :cond_23

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibratorManager$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    return v2

    .line 108
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibratorManager$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    return v2

    .line 113
    :cond_33
    packed-switch p1, :pswitch_data_b6

    .line 185
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 179
    :pswitch_3b
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibratorManager$Stub;->clearSessions()V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    goto/16 :goto_b4

    .line 166
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 168
    sget-object p4, Landroid/hardware/vibrator/VibrationSessionConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/vibrator/VibrationSessionConfig;

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/vibrator/IVibratorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibratorCallback;

    move-result-object v0

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/vibrator/IVibratorManager$Stub;->startSession([ILandroid/hardware/vibrator/VibrationSessionConfig;Landroid/hardware/vibrator/IVibratorCallback;)Landroid/hardware/vibrator/IVibrationSession;

    move-result-object p1

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 175
    goto :goto_b4

    .line 159
    :pswitch_65
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibratorManager$Stub;->cancelSynced()V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    goto :goto_b4

    .line 151
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/vibrator/IVibratorCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/vibrator/IVibratorCallback;

    move-result-object p1

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 153
    invoke-virtual {p0, p1}, Landroid/hardware/vibrator/IVibratorManager$Stub;->triggerSynced(Landroid/hardware/vibrator/IVibratorCallback;)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    goto :goto_b4

    .line 142
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {p0, p1}, Landroid/hardware/vibrator/IVibratorManager$Stub;->prepareSynced([I)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    goto :goto_b4

    .line 132
    :pswitch_8c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 134
    invoke-virtual {p0, p1}, Landroid/hardware/vibrator/IVibratorManager$Stub;->getVibrator(I)Landroid/hardware/vibrator/IVibrator;

    move-result-object p1

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 137
    goto :goto_b4

    .line 124
    :pswitch_9e
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibratorManager$Stub;->getVibratorIds()[I

    move-result-object p1

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 127
    goto :goto_b4

    .line 117
    :pswitch_a9
    invoke-virtual {p0}, Landroid/hardware/vibrator/IVibratorManager$Stub;->getCapabilities()I

    move-result p1

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    nop

    .line 188
    :goto_b4
    return v2

    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_a9
        :pswitch_9e
        :pswitch_8c
        :pswitch_7e
        :pswitch_6c
        :pswitch_65
        :pswitch_43
        :pswitch_3b
    .end packed-switch
.end method
