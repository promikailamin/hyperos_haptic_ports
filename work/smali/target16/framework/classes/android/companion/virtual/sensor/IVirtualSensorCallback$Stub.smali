.class public abstract Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub;
.super Landroid/os/Binder;
.source "IVirtualSensorCallback.java"

# interfaces
.implements Landroid/companion/virtual/sensor/IVirtualSensorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/sensor/IVirtualSensorCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onConfigurationChanged:I = 0x1

.field static final blacklist TRANSACTION_onDirectChannelConfigured:I = 0x4

.field static final blacklist TRANSACTION_onDirectChannelCreated:I = 0x2

.field static final blacklist TRANSACTION_onDirectChannelDestroyed:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    const-string v0, "android.companion.virtual.sensor.IVirtualSensorCallback"

    invoke-virtual {p0, p0, v0}, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/sensor/IVirtualSensorCallback;
    .registers 3

    .line 81
    if-nez p0, :cond_4

    .line 82
    const/4 p0, 0x0

    return-object p0

    .line 84
    :cond_4
    const-string v0, "android.companion.virtual.sensor.IVirtualSensorCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    if-eqz v1, :cond_13

    .line 86
    check-cast v0, Landroid/companion/virtual/sensor/IVirtualSensorCallback;

    return-object v0

    .line 88
    :cond_13
    new-instance v0, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 97
    packed-switch p0, :pswitch_data_16

    .line 117
    const/4 p0, 0x0

    return-object p0

    .line 113
    :pswitch_5
    const-string/jumbo p0, "onDirectChannelConfigured"

    return-object p0

    .line 109
    :pswitch_9
    const-string/jumbo p0, "onDirectChannelDestroyed"

    return-object p0

    .line 105
    :pswitch_d
    const-string/jumbo p0, "onDirectChannelCreated"

    return-object p0

    .line 101
    :pswitch_11
    const-string/jumbo p0, "onConfigurationChanged"

    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 92
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 298
    const/4 v0, 0x3

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 124
    invoke-static {p1}, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 128
    nop

    .line 129
    const-string v0, "android.companion.virtual.sensor.IVirtualSensorCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 130
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 133
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    return v1

    .line 136
    :cond_17
    packed-switch p1, :pswitch_data_74

    .line 186
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 173
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 175
    sget-object p3, Landroid/companion/virtual/sensor/VirtualSensor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/companion/virtual/sensor/VirtualSensor;

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub;->onDirectChannelConfigured(ILandroid/companion/virtual/sensor/VirtualSensor;II)V

    .line 182
    goto :goto_73

    .line 165
    :pswitch_3a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    invoke-virtual {p0, p1}, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub;->onDirectChannelDestroyed(I)V

    .line 168
    goto :goto_73

    .line 155
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 157
    sget-object p3, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/SharedMemory;

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 159
    invoke-virtual {p0, p1, p3}, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub;->onDirectChannelCreated(ILandroid/os/SharedMemory;)V

    .line 160
    goto :goto_73

    .line 141
    :pswitch_58
    sget-object p1, Landroid/companion/virtual/sensor/VirtualSensor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/companion/virtual/sensor/VirtualSensor;

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 149
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/companion/virtual/sensor/IVirtualSensorCallback$Stub;->onConfigurationChanged(Landroid/companion/virtual/sensor/VirtualSensor;ZII)V

    .line 150
    nop

    .line 189
    :goto_73
    return v1

    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_58
        :pswitch_45
        :pswitch_3a
        :pswitch_1f
    .end packed-switch
.end method
