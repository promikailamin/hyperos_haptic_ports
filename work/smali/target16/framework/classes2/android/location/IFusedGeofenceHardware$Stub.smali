.class public abstract Landroid/location/IFusedGeofenceHardware$Stub;
.super Landroid/os/Binder;
.source "IFusedGeofenceHardware.java"

# interfaces
.implements Landroid/location/IFusedGeofenceHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IFusedGeofenceHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IFusedGeofenceHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.location.IFusedGeofenceHardware"

.field static final greylist-max-o TRANSACTION_addGeofences:I = 0x2

.field static final greylist-max-o TRANSACTION_isSupported:I = 0x1

.field static final greylist-max-o TRANSACTION_modifyGeofenceOptions:I = 0x6

.field static final greylist-max-o TRANSACTION_pauseMonitoringGeofence:I = 0x4

.field static final greylist-max-o TRANSACTION_removeGeofences:I = 0x3

.field static final greylist-max-o TRANSACTION_resumeMonitoringGeofence:I = 0x5


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 99
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 100
    const-string v0, "android.location.IFusedGeofenceHardware"

    invoke-virtual {p0, p0, v0}, Landroid/location/IFusedGeofenceHardware$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/location/IFusedGeofenceHardware;
    .registers 3

    .line 108
    if-nez p0, :cond_4

    .line 109
    const/4 p0, 0x0

    return-object p0

    .line 111
    :cond_4
    const-string v0, "android.location.IFusedGeofenceHardware"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/location/IFusedGeofenceHardware;

    if-eqz v1, :cond_13

    .line 113
    check-cast v0, Landroid/location/IFusedGeofenceHardware;

    return-object v0

    .line 115
    :cond_13
    new-instance v0, Landroid/location/IFusedGeofenceHardware$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/location/IFusedGeofenceHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 124
    packed-switch p0, :pswitch_data_18

    .line 152
    const/4 p0, 0x0

    return-object p0

    .line 148
    :pswitch_5
    const-string p0, "modifyGeofenceOptions"

    return-object p0

    .line 144
    :pswitch_8
    const-string p0, "resumeMonitoringGeofence"

    return-object p0

    .line 140
    :pswitch_b
    const-string p0, "pauseMonitoringGeofence"

    return-object p0

    .line 136
    :pswitch_e
    const-string p0, "removeGeofences"

    return-object p0

    .line 132
    :pswitch_11
    const-string p0, "addGeofences"

    return-object p0

    .line 128
    :pswitch_14
    const-string p0, "isSupported"

    return-object p0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_14
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

    .line 119
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 413
    const/4 v0, 0x5

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 159
    invoke-static {p1}, Landroid/location/IFusedGeofenceHardware$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    nop

    .line 164
    const-string v0, "android.location.IFusedGeofenceHardware"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 165
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 168
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    return v1

    .line 171
    :cond_17
    packed-switch p1, :pswitch_data_94

    .line 239
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 221
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 233
    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/location/IFusedGeofenceHardware$Stub;->modifyGeofenceOptions(IIIIII)V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    goto :goto_93

    .line 210
    :pswitch_43
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, p1, p4}, Landroid/location/IFusedGeofenceHardware$Stub;->resumeMonitoringGeofence(II)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    goto :goto_93

    .line 201
    :pswitch_56
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {p0, p1}, Landroid/location/IFusedGeofenceHardware$Stub;->pauseMonitoringGeofence(I)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    goto :goto_93

    .line 192
    :pswitch_65
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, p1}, Landroid/location/IFusedGeofenceHardware$Stub;->removeGeofences([I)V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    goto :goto_93

    .line 183
    :pswitch_74
    move-object v3, p0

    sget-object p1, Landroid/hardware/location/GeofenceHardwareRequestParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/location/GeofenceHardwareRequestParcelable;

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, p1}, Landroid/location/IFusedGeofenceHardware$Stub;->addGeofences([Landroid/hardware/location/GeofenceHardwareRequestParcelable;)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    goto :goto_93

    .line 175
    :pswitch_87
    move-object v3, p0

    invoke-virtual {p0}, Landroid/location/IFusedGeofenceHardware$Stub;->isSupported()Z

    move-result p1

    .line 176
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 178
    nop

    .line 242
    :goto_93
    return v1

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_87
        :pswitch_74
        :pswitch_65
        :pswitch_56
        :pswitch_43
        :pswitch_20
    .end packed-switch
.end method
