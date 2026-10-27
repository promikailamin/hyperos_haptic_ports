.class public abstract Landroid/hardware/ICameraServiceProxy$Stub;
.super Landroid/os/Binder;
.source "ICameraServiceProxy.java"

# interfaces
.implements Landroid/hardware/ICameraServiceProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ICameraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ICameraServiceProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.hardware.ICameraServiceProxy"

.field static final blacklist TRANSACTION_getAutoframingOverride:I = 0x5

.field static final blacklist TRANSACTION_getRotateAndCropOverride:I = 0x4

.field static final blacklist TRANSACTION_isCameraDisabled:I = 0x6

.field static final greylist-max-o TRANSACTION_notifyCameraState:I = 0x2

.field static final blacklist TRANSACTION_notifyFeatureCombinationStats:I = 0x3

.field static final blacklist TRANSACTION_notifyWatchdog:I = 0x7

.field static final greylist-max-o TRANSACTION_pingForUserUpdate:I = 0x1


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    const-string v0, "android.hardware.ICameraServiceProxy"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/ICameraServiceProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceProxy;
    .registers 3

    .line 81
    if-nez p0, :cond_4

    .line 82
    const/4 p0, 0x0

    return-object p0

    .line 84
    :cond_4
    const-string v0, "android.hardware.ICameraServiceProxy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/ICameraServiceProxy;

    if-eqz v1, :cond_13

    .line 86
    check-cast v0, Landroid/hardware/ICameraServiceProxy;

    return-object v0

    .line 88
    :cond_13
    new-instance v0, Landroid/hardware/ICameraServiceProxy$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/ICameraServiceProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 97
    packed-switch p0, :pswitch_data_1e

    .line 129
    const/4 p0, 0x0

    return-object p0

    .line 125
    :pswitch_5
    const-string/jumbo p0, "notifyWatchdog"

    return-object p0

    .line 121
    :pswitch_9
    const-string p0, "isCameraDisabled"

    return-object p0

    .line 117
    :pswitch_c
    const-string p0, "getAutoframingOverride"

    return-object p0

    .line 113
    :pswitch_f
    const-string p0, "getRotateAndCropOverride"

    return-object p0

    .line 109
    :pswitch_12
    const-string/jumbo p0, "notifyFeatureCombinationStats"

    return-object p0

    .line 105
    :pswitch_16
    const-string/jumbo p0, "notifyCameraState"

    return-object p0

    .line 101
    :pswitch_1a
    const-string/jumbo p0, "pingForUserUpdate"

    return-object p0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_16
        :pswitch_12
        :pswitch_f
        :pswitch_c
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

    .line 371
    const/4 v0, 0x6

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 136
    invoke-static {p1}, Landroid/hardware/ICameraServiceProxy$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 140
    nop

    .line 141
    const-string v0, "android.hardware.ICameraServiceProxy"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 142
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 145
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    return v1

    .line 148
    :cond_17
    packed-switch p1, :pswitch_data_90

    .line 217
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 208
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, p1, p3}, Landroid/hardware/ICameraServiceProxy$Stub;->notifyWatchdog(IZ)V

    .line 213
    goto :goto_8e

    .line 198
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {p0, p1}, Landroid/hardware/ICameraServiceProxy$Stub;->isCameraDisabled(I)Z

    move-result p1

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 203
    goto :goto_8e

    .line 188
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, p1}, Landroid/hardware/ICameraServiceProxy$Stub;->getAutoframingOverride(Ljava/lang/String;)I

    move-result p1

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    goto :goto_8e

    .line 174
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, p1, p4, v0}, Landroid/hardware/ICameraServiceProxy$Stub;->getRotateAndCropOverride(Ljava/lang/String;II)I

    move-result p1

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    goto :goto_8e

    .line 166
    :pswitch_6c
    sget-object p1, Landroid/hardware/CameraFeatureCombinationStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/CameraFeatureCombinationStats;

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, p1}, Landroid/hardware/ICameraServiceProxy$Stub;->notifyFeatureCombinationStats(Landroid/hardware/CameraFeatureCombinationStats;)V

    .line 169
    goto :goto_8e

    .line 158
    :pswitch_7b
    sget-object p1, Landroid/hardware/CameraSessionStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/CameraSessionStats;

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, p1}, Landroid/hardware/ICameraServiceProxy$Stub;->notifyCameraState(Landroid/hardware/CameraSessionStats;)V

    .line 161
    goto :goto_8e

    .line 152
    :pswitch_8a
    invoke-virtual {p0}, Landroid/hardware/ICameraServiceProxy$Stub;->pingForUserUpdate()V

    .line 153
    nop

    .line 220
    :goto_8e
    return v1

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_8a
        :pswitch_7b
        :pswitch_6c
        :pswitch_52
        :pswitch_40
        :pswitch_2e
        :pswitch_1f
    .end packed-switch
.end method
