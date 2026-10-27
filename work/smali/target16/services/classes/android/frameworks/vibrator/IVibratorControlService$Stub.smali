.class public abstract Landroid/frameworks/vibrator/IVibratorControlService$Stub;
.super Landroid/os/Binder;
.source "IVibratorControlService.java"

# interfaces
.implements Landroid/frameworks/vibrator/IVibratorControlService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 60
    sget-object v0, Landroid/frameworks/vibrator/IVibratorControlService;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_29

    const/4 v0, 0x2

    if-eq p0, v0, :cond_25

    const/4 v0, 0x3

    if-eq p0, v0, :cond_21

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1a

    packed-switch p0, :pswitch_data_2e

    const/4 p0, 0x0

    return-object p0

    .line 108
    :pswitch_14
    const-string p0, "getInterfaceVersion"

    return-object p0

    .line 112
    :pswitch_17
    const-string p0, "getInterfaceHash"

    return-object p0

    .line 104
    :cond_1a
    const-string/jumbo p0, "onRequestVibrationParamsComplete"

    return-object p0

    .line 100
    :cond_1e
    const-string p0, "clearVibrationParams"

    return-object p0

    .line 96
    :cond_21
    const-string/jumbo p0, "setVibrationParams"

    return-object p0

    .line 92
    :cond_25
    const-string/jumbo p0, "unregisterVibratorController"

    return-object p0

    .line 88
    :cond_29
    const-string/jumbo p0, "registerVibratorController"

    return-object p0

    nop

    :pswitch_data_2e
    .packed-switch 0xfffffe
        :pswitch_17
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 0
    return-object p0
.end method

.method public getMaxTransactionId()I
    .registers 1

    .line 0
    const p0, 0xfffffe

    return p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 123
    invoke-static {p1}, Landroid/frameworks/vibrator/IVibratorControlService$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9

    .line 127
    sget-object v0, Landroid/frameworks/vibrator/IVibratorControlService;->DESCRIPTOR:Ljava/lang/String;

    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 129
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 132
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_16
    if-ne p1, v1, :cond_23

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-interface {p0}, Landroid/frameworks/vibrator/IVibratorControlService;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-interface {p0}, Landroid/frameworks/vibrator/IVibratorControlService;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_33
    if-eq p1, v2, :cond_92

    const/4 v0, 0x2

    if-eq p1, v0, :cond_83

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_59

    const/4 v0, 0x5

    if-eq p1, v0, :cond_46

    .line 195
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 186
    :cond_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 188
    sget-object p3, Landroid/frameworks/vibrator/VibrationParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/frameworks/vibrator/VibrationParam;

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-interface {p0, p1, p3}, Landroid/frameworks/vibrator/IVibratorControlService;->onRequestVibrationParamsComplete(Landroid/os/IBinder;[Landroid/frameworks/vibrator/VibrationParam;)V

    goto :goto_a0

    .line 176
    :cond_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/frameworks/vibrator/IVibratorController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/frameworks/vibrator/IVibratorController;

    move-result-object p3

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-interface {p0, p1, p3}, Landroid/frameworks/vibrator/IVibratorControlService;->clearVibrationParams(ILandroid/frameworks/vibrator/IVibratorController;)V

    goto :goto_a0

    .line 166
    :cond_6c
    sget-object p1, Landroid/frameworks/vibrator/VibrationParam;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/frameworks/vibrator/VibrationParam;

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/frameworks/vibrator/IVibratorController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/frameworks/vibrator/IVibratorController;

    move-result-object p3

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-interface {p0, p1, p3}, Landroid/frameworks/vibrator/IVibratorControlService;->setVibrationParams([Landroid/frameworks/vibrator/VibrationParam;Landroid/frameworks/vibrator/IVibratorController;)V

    goto :goto_a0

    .line 158
    :cond_83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/frameworks/vibrator/IVibratorController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/frameworks/vibrator/IVibratorController;

    move-result-object p1

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-interface {p0, p1}, Landroid/frameworks/vibrator/IVibratorControlService;->unregisterVibratorController(Landroid/frameworks/vibrator/IVibratorController;)V

    goto :goto_a0

    .line 150
    :cond_92
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/frameworks/vibrator/IVibratorController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/frameworks/vibrator/IVibratorController;

    move-result-object p1

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-interface {p0, p1}, Landroid/frameworks/vibrator/IVibratorControlService;->registerVibratorController(Landroid/frameworks/vibrator/IVibratorController;)V

    :goto_a0
    return v2
.end method
