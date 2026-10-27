.class public abstract Landroid/hardware/usb/IUsbCallback$Stub;
.super Landroid/os/Binder;
.source "IUsbCallback.java"

# interfaces
.implements Landroid/hardware/usb/IUsbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/IUsbCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/IUsbCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_notifyContaminantEnabledStatus:I = 0x5

.field static final TRANSACTION_notifyEnableUsbDataStatus:I = 0x3

.field static final TRANSACTION_notifyEnableUsbDataWhileDockedStatus:I = 0x4

.field static final TRANSACTION_notifyLimitPowerTransferStatus:I = 0x7

.field static final TRANSACTION_notifyPortStatusChange:I = 0x1

.field static final TRANSACTION_notifyQueryPortStatus:I = 0x6

.field static final TRANSACTION_notifyResetUsbPortStatus:I = 0x8

.field static final TRANSACTION_notifyRoleSwitchStatus:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbCallback$Stub;->markVintfStability()V

    .line 62
    sget-object v0, Landroid/hardware/usb/IUsbCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/usb/IUsbCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 70
    if-nez p0, :cond_4

    .line 71
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_4
    sget-object v0, Landroid/hardware/usb/IUsbCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 74
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/usb/IUsbCallback;

    if-eqz v1, :cond_14

    .line 75
    move-object v1, v0

    check-cast v1, Landroid/hardware/usb/IUsbCallback;

    return-object v1

    .line 77
    :cond_14
    new-instance v1, Landroid/hardware/usb/IUsbCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/usb/IUsbCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 81
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    sget-object v10, Landroid/hardware/usb/IUsbCallback$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 86
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    .line 87
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    :cond_15
    sparse-switch v7, :sswitch_data_104

    .line 109
    packed-switch v7, :pswitch_data_112

    .line 215
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 93
    :sswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    return v11

    .line 98
    :sswitch_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/IUsbCallback$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return v11

    .line 104
    :sswitch_2f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/IUsbCallback$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    return v11

    .line 204
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 208
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 209
    .local v2, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/hardware/usb/IUsbCallback$Stub;->notifyResetUsbPortStatus(Ljava/lang/String;IJ)V

    .line 211
    goto/16 :goto_103

    .line 190
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":J
    :pswitch_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 192
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    .line 194
    .local v13, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 196
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 197
    .local v15, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/IUsbCallback$Stub;->notifyLimitPowerTransferStatus(Ljava/lang/String;ZIJ)V

    .line 199
    goto/16 :goto_103

    .line 178
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Z
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":J
    :pswitch_6c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 180
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 182
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 183
    .restart local v2    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/hardware/usb/IUsbCallback$Stub;->notifyQueryPortStatus(Ljava/lang/String;IJ)V

    .line 185
    goto/16 :goto_103

    .line 164
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":J
    :pswitch_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 166
    .restart local v12    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    .line 168
    .restart local v13    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 170
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 171
    .restart local v15    # "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/IUsbCallback$Stub;->notifyContaminantEnabledStatus(Ljava/lang/String;ZIJ)V

    .line 173
    goto/16 :goto_103

    .line 152
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Z
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":J
    :pswitch_9e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 156
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 157
    .restart local v2    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/hardware/usb/IUsbCallback$Stub;->notifyEnableUsbDataWhileDockedStatus(Ljava/lang/String;IJ)V

    .line 159
    goto :goto_103

    .line 138
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":J
    :pswitch_b1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 140
    .restart local v12    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    .line 142
    .restart local v13    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 144
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 145
    .restart local v15    # "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move v3, v14

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/IUsbCallback$Stub;->notifyEnableUsbDataStatus(Ljava/lang/String;ZIJ)V

    .line 147
    goto :goto_103

    .line 124
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Z
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":J
    :pswitch_ce
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 126
    .restart local v12    # "_arg0":Ljava/lang/String;
    sget-object v0, Landroid/hardware/usb/PortRole;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/hardware/usb/PortRole;

    .line 128
    .local v13, "_arg1":Landroid/hardware/usb/PortRole;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 130
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 131
    .restart local v15    # "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move v3, v14

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/usb/IUsbCallback$Stub;->notifyRoleSwitchStatus(Ljava/lang/String;Landroid/hardware/usb/PortRole;IJ)V

    .line 133
    goto :goto_103

    .line 114
    .end local v12    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Landroid/hardware/usb/PortRole;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":J
    :pswitch_f0
    sget-object v0, Landroid/hardware/usb/PortStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/usb/PortStatus;

    .line 116
    .local v0, "_arg0":[Landroid/hardware/usb/PortStatus;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 117
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-virtual {v6, v0, v1}, Landroid/hardware/usb/IUsbCallback$Stub;->notifyPortStatusChange([Landroid/hardware/usb/PortStatus;I)V

    .line 119
    nop

    .line 218
    .end local v0    # "_arg0":[Landroid/hardware/usb/PortStatus;
    .end local v1    # "_arg1":I
    :goto_103
    return v11

    :sswitch_data_104
    .sparse-switch
        0xfffffe -> :sswitch_2f
        0xffffff -> :sswitch_24
        0x5f4e5446 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_112
    .packed-switch 0x1
        :pswitch_f0
        :pswitch_ce
        :pswitch_b1
        :pswitch_9e
        :pswitch_80
        :pswitch_6c
        :pswitch_4e
        :pswitch_3a
    .end packed-switch
.end method
