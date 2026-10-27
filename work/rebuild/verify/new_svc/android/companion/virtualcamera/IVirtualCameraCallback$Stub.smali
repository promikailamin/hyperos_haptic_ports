.class public abstract Landroid/companion/virtualcamera/IVirtualCameraCallback$Stub;
.super Landroid/os/Binder;
.source "IVirtualCameraCallback.java"

# interfaces
.implements Landroid/companion/virtualcamera/IVirtualCameraCallback;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 93
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 94
    const-string v0, "android.companion.virtualcamera.IVirtualCameraCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/companion/virtualcamera/IVirtualCameraCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 105
    :cond_4
    const-string v0, "android.companion.virtualcamera.IVirtualCameraCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 106
    instance-of v1, v0, Landroid/companion/virtualcamera/IVirtualCameraCallback;

    if-eqz v1, :cond_13

    .line 107
    check-cast v0, Landroid/companion/virtualcamera/IVirtualCameraCallback;

    return-object v0

    .line 109
    :cond_13
    new-instance v0, Landroid/companion/virtualcamera/IVirtualCameraCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/companion/virtualcamera/IVirtualCameraCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_21

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_19

    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    const/4 v0, 0x5

    if-eq p0, v0, :cond_11

    const/4 p0, 0x0

    return-object p0

    .line 138
    :cond_11
    const-string/jumbo p0, "onStreamClosed"

    return-object p0

    .line 134
    :cond_15
    const-string/jumbo p0, "onProcessCaptureRequest"

    return-object p0

    .line 130
    :cond_19
    const-string/jumbo p0, "onStreamConfigured"

    return-object p0

    .line 126
    :cond_1d
    const-string/jumbo p0, "onConfigureSession"

    return-object p0

    .line 122
    :cond_21
    const-string/jumbo p0, "onOpenCamera"

    return-object p0
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
    const/4 p0, 0x4

    return p0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 149
    invoke-static {p1}, Landroid/companion/virtualcamera/IVirtualCameraCallback$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13

    .line 154
    const-string v0, "android.companion.virtualcamera.IVirtualCameraCallback"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 155
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_16

    .line 158
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_16
    if-eq p1, v1, :cond_84

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6c

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4b

    const/4 v0, 0x4

    if-eq p1, v0, :cond_34

    const/4 v0, 0x5

    if-eq p1, v0, :cond_29

    .line 216
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 209
    :cond_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-interface {p0, p1}, Landroid/companion/virtualcamera/IVirtualCameraCallback;->onStreamClosed(I)V

    goto :goto_88

    .line 197
    :cond_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 201
    sget-object p4, Landroid/companion/virtualcamera/VirtualCameraMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/companion/virtualcamera/VirtualCameraMetadata;

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-interface {p0, p1, p3, p4}, Landroid/companion/virtualcamera/IVirtualCameraCallback;->onProcessCaptureRequest(IILandroid/companion/virtualcamera/VirtualCameraMetadata;)V

    goto :goto_88

    .line 181
    :cond_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 183
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/view/Surface;

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v2, p0

    .line 191
    invoke-interface/range {v2 .. v7}, Landroid/companion/virtualcamera/IVirtualCameraCallback;->onStreamConfigured(ILandroid/view/Surface;III)V

    goto :goto_88

    :cond_6c
    move-object v2, p0

    .line 171
    sget-object p0, Landroid/companion/virtualcamera/VirtualCameraMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/companion/virtualcamera/VirtualCameraMetadata;

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/companion/virtualcamera/ICaptureResultConsumer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtualcamera/ICaptureResultConsumer;

    move-result-object p1

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-interface {v2, p0, p1}, Landroid/companion/virtualcamera/IVirtualCameraCallback;->onConfigureSession(Landroid/companion/virtualcamera/VirtualCameraMetadata;Landroid/companion/virtualcamera/ICaptureResultConsumer;)V

    goto :goto_88

    :cond_84
    move-object v2, p0

    .line 165
    invoke-interface {v2}, Landroid/companion/virtualcamera/IVirtualCameraCallback;->onOpenCamera()V

    :goto_88
    return v1
.end method
