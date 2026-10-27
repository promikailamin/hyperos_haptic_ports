.class public abstract Landroid/location/IGpsGeofenceHardware$Stub;
.super Landroid/os/Binder;
.source "IGpsGeofenceHardware.java"

# interfaces
.implements Landroid/location/IGpsGeofenceHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IGpsGeofenceHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGpsGeofenceHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.location.IGpsGeofenceHardware"

.field static final greylist-max-o TRANSACTION_addCircularHardwareGeofence:I = 0x2

.field static final greylist-max-o TRANSACTION_isHardwareGeofenceSupported:I = 0x1

.field static final greylist-max-o TRANSACTION_pauseHardwareGeofence:I = 0x4

.field static final greylist-max-o TRANSACTION_removeHardwareGeofence:I = 0x3

.field static final greylist-max-o TRANSACTION_resumeHardwareGeofence:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "android.location.IGpsGeofenceHardware"

    invoke-virtual {p0, p0, v0}, Landroid/location/IGpsGeofenceHardware$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/location/IGpsGeofenceHardware;
    .registers 3

    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 p0, 0x0

    return-object p0

    .line 63
    :cond_4
    const-string v0, "android.location.IGpsGeofenceHardware"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/location/IGpsGeofenceHardware;

    if-eqz v1, :cond_13

    .line 65
    check-cast v0, Landroid/location/IGpsGeofenceHardware;

    return-object v0

    .line 67
    :cond_13
    new-instance v0, Landroid/location/IGpsGeofenceHardware$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/location/IGpsGeofenceHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 76
    packed-switch p0, :pswitch_data_14

    .line 100
    const/4 p0, 0x0

    return-object p0

    .line 96
    :pswitch_5
    const-string p0, "resumeHardwareGeofence"

    return-object p0

    .line 92
    :pswitch_8
    const-string p0, "pauseHardwareGeofence"

    return-object p0

    .line 88
    :pswitch_b
    const-string p0, "removeHardwareGeofence"

    return-object p0

    .line 84
    :pswitch_e
    const-string p0, "addCircularHardwareGeofence"

    return-object p0

    .line 80
    :pswitch_11
    const-string p0, "isHardwareGeofenceSupported"

    return-object p0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 71
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 314
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 107
    invoke-static {p1}, Landroid/location/IGpsGeofenceHardware$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 111
    move-object/from16 v12, p3

    .line 112
    const-string v2, "android.location.IGpsGeofenceHardware"

    const/4 v13, 0x1

    if-lt p1, v13, :cond_12

    const v3, 0xffffff

    if-gt p1, v3, :cond_12

    .line 113
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_14

    .line 112
    :cond_12
    move-object/from16 v3, p2

    .line 115
    :goto_14
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_1d

    .line 116
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    return v13

    .line 119
    :cond_1d
    packed-switch p1, :pswitch_data_9a

    .line 186
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 175
    :pswitch_25
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 177
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 178
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 179
    invoke-virtual {p0, v1, v2}, Landroid/location/IGpsGeofenceHardware$Stub;->resumeHardwareGeofence(II)Z

    move-result v0

    .line 180
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 182
    goto :goto_99

    .line 165
    :pswitch_3b
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 166
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, v1}, Landroid/location/IGpsGeofenceHardware$Stub;->pauseHardwareGeofence(I)Z

    move-result v0

    .line 168
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 170
    goto :goto_99

    .line 155
    :pswitch_4d
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 156
    invoke-virtual {v3}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-virtual {p0, v1}, Landroid/location/IGpsGeofenceHardware$Stub;->removeHardwareGeofence(I)Z

    move-result v0

    .line 158
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 160
    goto :goto_99

    .line 131
    :pswitch_5f
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v6

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 147
    move-object v0, p0

    invoke-virtual/range {v0 .. v11}, Landroid/location/IGpsGeofenceHardware$Stub;->addCircularHardwareGeofence(IDDDIIII)Z

    move-result v0

    .line 148
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 150
    goto :goto_99

    .line 123
    :pswitch_8e
    invoke-virtual {p0}, Landroid/location/IGpsGeofenceHardware$Stub;->isHardwareGeofenceSupported()Z

    move-result v0

    .line 124
    invoke-virtual {v12}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 126
    nop

    .line 189
    :goto_99
    return v13

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_8e
        :pswitch_5f
        :pswitch_4d
        :pswitch_3b
        :pswitch_25
    .end packed-switch
.end method
