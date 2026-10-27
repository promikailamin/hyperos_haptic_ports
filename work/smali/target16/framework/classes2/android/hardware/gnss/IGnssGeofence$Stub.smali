.class public abstract Landroid/hardware/gnss/IGnssGeofence$Stub;
.super Landroid/os/Binder;
.source "IGnssGeofence.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssGeofence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssGeofence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gnss/IGnssGeofence$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addGeofence:I = 0x2

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_pauseGeofence:I = 0x3

.field static final blacklist TRANSACTION_removeGeofence:I = 0x5

.field static final blacklist TRANSACTION_resumeGeofence:I = 0x4

.field static final blacklist TRANSACTION_setCallback:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssGeofence$Stub;->markVintfStability()V

    .line 60
    sget-object v0, Landroid/hardware/gnss/IGnssGeofence$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/gnss/IGnssGeofence$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssGeofence;
    .registers 3

    .line 68
    if-nez p0, :cond_4

    .line 69
    const/4 p0, 0x0

    return-object p0

    .line 71
    :cond_4
    sget-object v0, Landroid/hardware/gnss/IGnssGeofence$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/gnss/IGnssGeofence;

    if-eqz v1, :cond_13

    .line 73
    check-cast v0, Landroid/hardware/gnss/IGnssGeofence;

    return-object v0

    .line 75
    :cond_13
    new-instance v0, Landroid/hardware/gnss/IGnssGeofence$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/gnss/IGnssGeofence$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 84
    sparse-switch p0, :sswitch_data_1a

    .line 116
    const/4 p0, 0x0

    return-object p0

    .line 108
    :sswitch_5
    const-string p0, "getInterfaceVersion"

    return-object p0

    .line 112
    :sswitch_8
    const-string p0, "getInterfaceHash"

    return-object p0

    .line 104
    :sswitch_b
    const-string p0, "removeGeofence"

    return-object p0

    .line 100
    :sswitch_e
    const-string p0, "resumeGeofence"

    return-object p0

    .line 96
    :sswitch_11
    const-string p0, "pauseGeofence"

    return-object p0

    .line 92
    :sswitch_14
    const-string p0, "addGeofence"

    return-object p0

    .line 88
    :sswitch_17
    const-string p0, "setCallback"

    return-object p0

    :sswitch_data_1a
    .sparse-switch
        0x1 -> :sswitch_17
        0x2 -> :sswitch_14
        0x3 -> :sswitch_11
        0x4 -> :sswitch_e
        0x5 -> :sswitch_b
        0xfffffe -> :sswitch_8
        0xffffff -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 79
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 375
    const v0, 0xfffffe

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 123
    invoke-static {p1}, Landroid/hardware/gnss/IGnssGeofence$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    move-object/from16 v12, p3

    sget-object v2, Landroid/hardware/gnss/IGnssGeofence$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 128
    const v3, 0xffffff

    const/4 v13, 0x1

    if-lt p1, v13, :cond_12

    if-gt p1, v3, :cond_12

    .line 129
    move-object/from16 v4, p2

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_14

    .line 128
    :cond_12
    move-object/from16 v4, p2

    .line 131
    :goto_14
    const v5, 0x5f4e5446

    if-ne p1, v5, :cond_1d

    .line 132
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    return v13

    .line 135
    :cond_1d
    if-ne p1, v3, :cond_2a

    .line 136
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssGeofence$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    return v13

    .line 140
    :cond_2a
    const v2, 0xfffffe

    if-ne p1, v2, :cond_3a

    .line 141
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p0}, Landroid/hardware/gnss/IGnssGeofence$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    return v13

    .line 145
    :cond_3a
    packed-switch p1, :pswitch_data_ae

    .line 210
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 202
    :pswitch_42
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 203
    invoke-virtual {v4}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IGnssGeofence$Stub;->removeGeofence(I)V

    .line 205
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    goto :goto_ad

    .line 191
    :pswitch_50
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 193
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 194
    invoke-virtual {v4}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    invoke-virtual {p0, v1, v2}, Landroid/hardware/gnss/IGnssGeofence$Stub;->resumeGeofence(II)V

    .line 196
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    goto :goto_ad

    .line 182
    :pswitch_62
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 183
    invoke-virtual {v4}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IGnssGeofence$Stub;->pauseGeofence(I)V

    .line 185
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    goto :goto_ad

    .line 159
    :pswitch_70
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 161
    invoke-virtual {v4}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Landroid/hardware/gnss/IGnssGeofence$Stub;->addGeofence(IDDDIIII)V

    .line 176
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    goto :goto_ad

    .line 150
    :pswitch_9b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/gnss/IGnssGeofenceCallback;

    move-result-object v1

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {p0, v1}, Landroid/hardware/gnss/IGnssGeofence$Stub;->setCallback(Landroid/hardware/gnss/IGnssGeofenceCallback;)V

    .line 153
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    nop

    .line 213
    :goto_ad
    return v13

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_9b
        :pswitch_70
        :pswitch_62
        :pswitch_50
        :pswitch_42
    .end packed-switch
.end method
