.class public abstract Landroid/hardware/usb/IUsbCallback$Stub;
.super Landroid/os/Binder;
.source "IUsbCallback.java"

# interfaces
.implements Landroid/hardware/usb/IUsbCallback;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 67
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 68
    sget-object v0, Landroid/hardware/usb/IUsbCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 0
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13

    .line 91
    sget-object v4, Landroid/hardware/usb/IUsbCallback;->DESCRIPTOR:Ljava/lang/String;

    const v5, 0xffffff

    const/4 v6, 0x1

    if-lt p1, v6, :cond_d

    if-gt p1, v5, :cond_d

    .line 93
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v7, 0x5f4e5446

    if-ne p1, v7, :cond_16

    .line 96
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :cond_16
    if-ne p1, v5, :cond_23

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-interface {p0}, Landroid/hardware/usb/IUsbCallback;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    :cond_23
    const v4, 0xfffffe

    if-ne p1, v4, :cond_33

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-interface {p0}, Landroid/hardware/usb/IUsbCallback;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :cond_33
    packed-switch p1, :pswitch_data_f0

    .line 215
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 204
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/hardware/usb/IUsbCallback;->notifyResetUsbPortStatus(Ljava/lang/String;IJ)V

    goto/16 :goto_ee

    .line 190
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    .line 198
    invoke-interface/range {v0 .. v5}, Landroid/hardware/usb/IUsbCallback;->notifyLimitPowerTransferStatus(Ljava/lang/String;ZIJ)V

    goto/16 :goto_ee

    .line 178
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-interface {p0, v1, v2, v3, v4}, Landroid/hardware/usb/IUsbCallback;->notifyQueryPortStatus(Ljava/lang/String;IJ)V

    goto/16 :goto_ee

    .line 164
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    .line 172
    invoke-interface/range {v0 .. v5}, Landroid/hardware/usb/IUsbCallback;->notifyContaminantEnabledStatus(Ljava/lang/String;ZIJ)V

    goto :goto_ee

    .line 152
    :pswitch_94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-interface {p0, v1, v2, v3, v4}, Landroid/hardware/usb/IUsbCallback;->notifyEnableUsbDataWhileDockedStatus(Ljava/lang/String;IJ)V

    goto :goto_ee

    .line 138
    :pswitch_a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    .line 146
    invoke-interface/range {v0 .. v5}, Landroid/hardware/usb/IUsbCallback;->notifyEnableUsbDataStatus(Ljava/lang/String;ZIJ)V

    goto :goto_ee

    .line 124
    :pswitch_bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 126
    sget-object v0, Landroid/hardware/usb/PortRole;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/usb/PortRole;

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    .line 132
    invoke-interface/range {v0 .. v5}, Landroid/hardware/usb/IUsbCallback;->notifyRoleSwitchStatus(Ljava/lang/String;Landroid/hardware/usb/PortRole;IJ)V

    goto :goto_ee

    .line 114
    :pswitch_dc
    sget-object v1, Landroid/hardware/usb/PortStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/usb/PortStatus;

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-interface {p0, v1, v2}, Landroid/hardware/usb/IUsbCallback;->notifyPortStatusChange([Landroid/hardware/usb/PortStatus;I)V

    :goto_ee
    return v6

    nop

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_dc
        :pswitch_bf
        :pswitch_a7
        :pswitch_94
        :pswitch_7c
        :pswitch_68
        :pswitch_4f
        :pswitch_3b
    .end packed-switch
.end method
