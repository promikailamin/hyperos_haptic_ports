.class public abstract Landroid/hardware/power/IPower$Stub;
.super Landroid/os/Binder;
.source "IPower.java"

# interfaces
.implements Landroid/hardware/power/IPower;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/power/IPower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/power/IPower$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_createHintSession:I = 0x5

.field static final TRANSACTION_getHintSessionPreferredRate:I = 0x6

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_isBoostSupported:I = 0x4

.field static final TRANSACTION_isModeSupported:I = 0x2

.field static final TRANSACTION_setBoost:I = 0x3

.field static final TRANSACTION_setMode:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    invoke-virtual {p0}, Landroid/hardware/power/IPower$Stub;->markVintfStability()V

    .line 60
    sget-object v0, Landroid/hardware/power/IPower$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/power/IPower$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/power/IPower;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 68
    if-nez p0, :cond_4

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_4
    sget-object v0, Landroid/hardware/power/IPower$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 72
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/power/IPower;

    if-eqz v1, :cond_14

    .line 73
    move-object v1, v0

    check-cast v1, Landroid/hardware/power/IPower;

    return-object v1

    .line 75
    :cond_14
    new-instance v1, Landroid/hardware/power/IPower$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/power/IPower$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 79
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

    .line 83
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    sget-object v9, Landroid/hardware/power/IPower$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 84
    .local v9, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v7, v10, :cond_16

    const v0, 0xffffff

    if-gt v7, v0, :cond_16

    .line 85
    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_18

    .line 84
    :cond_16
    move-object/from16 v11, p2

    .line 87
    :goto_18
    sparse-switch v7, :sswitch_data_b0

    .line 107
    packed-switch v7, :pswitch_data_be

    .line 174
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 91
    :sswitch_23
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    return v10

    .line 96
    :sswitch_27
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/power/IPower$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return v10

    .line 102
    :sswitch_32
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/power/IPower$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    return v10

    .line 167
    :pswitch_3d
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/power/IPower$Stub;->getHintSessionPreferredRate()J

    move-result-wide v0

    .line 168
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 170
    goto :goto_ae

    .line 152
    .end local v0    # "_result":J
    :pswitch_48
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 154
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 156
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v14

    .line 158
    .local v14, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 159
    .local v15, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-object v3, v14

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/power/IPower$Stub;->createHintSession(II[IJ)Landroid/hardware/power/IPowerHintSession;

    move-result-object v0

    .line 161
    .local v0, "_result":Landroid/hardware/power/IPowerHintSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 163
    goto :goto_ae

    .line 142
    .end local v0    # "_result":Landroid/hardware/power/IPowerHintSession;
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":[I
    .end local v15    # "_arg3":J
    :pswitch_6c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 143
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-virtual {v6, v0}, Landroid/hardware/power/IPower$Stub;->isBoostSupported(I)Z

    move-result v1

    .line 145
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 147
    goto :goto_ae

    .line 132
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_7e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 135
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-virtual {v6, v0, v1}, Landroid/hardware/power/IPower$Stub;->setBoost(II)V

    .line 137
    goto :goto_ae

    .line 122
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_8d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 123
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {v6, v0}, Landroid/hardware/power/IPower$Stub;->isModeSupported(I)Z

    move-result v1

    .line 125
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 127
    goto :goto_ae

    .line 112
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_9f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 114
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 115
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-virtual {v6, v0, v1}, Landroid/hardware/power/IPower$Stub;->setMode(IZ)V

    .line 117
    nop

    .line 177
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :goto_ae
    return v10

    nop

    :sswitch_data_b0
    .sparse-switch
        0xfffffe -> :sswitch_32
        0xffffff -> :sswitch_27
        0x5f4e5446 -> :sswitch_23
    .end sparse-switch

    :pswitch_data_be
    .packed-switch 0x1
        :pswitch_9f
        :pswitch_8d
        :pswitch_7e
        :pswitch_6c
        :pswitch_48
        :pswitch_3d
    .end packed-switch
.end method
