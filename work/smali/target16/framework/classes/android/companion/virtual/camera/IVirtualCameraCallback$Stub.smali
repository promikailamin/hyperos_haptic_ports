.class public abstract Landroid/companion/virtual/camera/IVirtualCameraCallback$Stub;
.super Landroid/os/Binder;
.source "IVirtualCameraCallback.java"

# interfaces
.implements Landroid/companion/virtual/camera/IVirtualCameraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/camera/IVirtualCameraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/virtual/camera/IVirtualCameraCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_onConfigureSession:I = 0x2

.field static final blacklist TRANSACTION_onOpenCamera:I = 0x1

.field static final blacklist TRANSACTION_onProcessCaptureRequest:I = 0x4

.field static final blacklist TRANSACTION_onStreamClosed:I = 0x5

.field static final blacklist TRANSACTION_onStreamConfigured:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 104
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 105
    const-string v0, "android.companion.virtual.camera.IVirtualCameraCallback"

    invoke-virtual {p0, p0, v0}, Landroid/companion/virtual/camera/IVirtualCameraCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/camera/IVirtualCameraCallback;
    .registers 3

    .line 113
    if-nez p0, :cond_4

    .line 114
    const/4 p0, 0x0

    return-object p0

    .line 116
    :cond_4
    const-string v0, "android.companion.virtual.camera.IVirtualCameraCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/companion/virtual/camera/IVirtualCameraCallback;

    if-eqz v1, :cond_13

    .line 118
    check-cast v0, Landroid/companion/virtual/camera/IVirtualCameraCallback;

    return-object v0

    .line 120
    :cond_13
    new-instance v0, Landroid/companion/virtual/camera/IVirtualCameraCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/companion/virtual/camera/IVirtualCameraCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 129
    packed-switch p0, :pswitch_data_1a

    .line 153
    const/4 p0, 0x0

    return-object p0

    .line 149
    :pswitch_5
    const-string/jumbo p0, "onStreamClosed"

    return-object p0

    .line 145
    :pswitch_9
    const-string/jumbo p0, "onProcessCaptureRequest"

    return-object p0

    .line 141
    :pswitch_d
    const-string/jumbo p0, "onStreamConfigured"

    return-object p0

    .line 137
    :pswitch_11
    const-string/jumbo p0, "onConfigureSession"

    return-object p0

    .line 133
    :pswitch_15
    const-string/jumbo p0, "onOpenCamera"

    return-object p0

    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 124
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 379
    const/4 v0, 0x4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 160
    invoke-static {p1}, Landroid/companion/virtual/camera/IVirtualCameraCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    nop

    .line 165
    const-string v0, "android.companion.virtual.camera.IVirtualCameraCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 166
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 169
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    return v1

    .line 172
    :cond_17
    packed-switch p1, :pswitch_data_82

    .line 227
    move-object v2, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 220
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, p1}, Landroid/companion/virtual/camera/IVirtualCameraCallback$Stub;->onStreamClosed(I)V

    .line 223
    goto :goto_80

    .line 208
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 212
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/companion/virtual/camera/IVirtualCameraCallback$Stub;->onProcessCaptureRequest(IJLandroid/hardware/camera2/CaptureRequest;)V

    .line 215
    goto :goto_80

    .line 192
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 194
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/view/Surface;

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/companion/virtual/camera/IVirtualCameraCallback$Stub;->onStreamConfigured(ILandroid/view/Surface;III)V

    .line 203
    goto :goto_80

    .line 182
    :pswitch_63
    move-object v2, p0

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CaptureRequest;

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/companion/virtual/camera/ICaptureResultConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/camera/ICaptureResultConsumer;

    move-result-object p3

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, p1, p3}, Landroid/companion/virtual/camera/IVirtualCameraCallback$Stub;->onConfigureSession(Landroid/hardware/camera2/CaptureRequest;Landroid/companion/virtual/camera/ICaptureResultConsumer;)V

    .line 187
    goto :goto_80

    .line 176
    :pswitch_7b
    move-object v2, p0

    invoke-virtual {p0}, Landroid/companion/virtual/camera/IVirtualCameraCallback$Stub;->onOpenCamera()V

    .line 177
    nop

    .line 230
    :goto_80
    return v1

    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_63
        :pswitch_42
        :pswitch_2b
        :pswitch_20
    .end packed-switch
.end method
