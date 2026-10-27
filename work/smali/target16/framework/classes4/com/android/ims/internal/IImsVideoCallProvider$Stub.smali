.class public abstract Lcom/android/ims/internal/IImsVideoCallProvider$Stub;
.super Landroid/os/Binder;
.source "IImsVideoCallProvider.java"

# interfaces
.implements Lcom/android/ims/internal/IImsVideoCallProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsVideoCallProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsVideoCallProvider"

.field static final greylist-max-o TRANSACTION_requestCallDataUsage:I = 0xa

.field static final greylist-max-o TRANSACTION_requestCameraCapabilities:I = 0x9

.field static final greylist-max-o TRANSACTION_sendSessionModifyRequest:I = 0x7

.field static final greylist-max-o TRANSACTION_sendSessionModifyResponse:I = 0x8

.field static final greylist-max-o TRANSACTION_setCallback:I = 0x1

.field static final greylist-max-o TRANSACTION_setCamera:I = 0x2

.field static final greylist-max-o TRANSACTION_setDeviceOrientation:I = 0x5

.field static final greylist-max-o TRANSACTION_setDisplaySurface:I = 0x4

.field static final greylist-max-o TRANSACTION_setPauseImage:I = 0xb

.field static final greylist-max-o TRANSACTION_setPreviewSurface:I = 0x3

.field static final greylist-max-o TRANSACTION_setZoom:I = 0x6


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 77
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 78
    const-string v0, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsVideoCallProvider;
    .registers 3

    .line 86
    if-nez p0, :cond_4

    .line 87
    const/4 p0, 0x0

    return-object p0

    .line 89
    :cond_4
    const-string v0, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/ims/internal/IImsVideoCallProvider;

    if-eqz v1, :cond_13

    .line 91
    check-cast v0, Lcom/android/ims/internal/IImsVideoCallProvider;

    return-object v0

    .line 93
    :cond_13
    new-instance v0, Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 102
    packed-switch p0, :pswitch_data_26

    .line 150
    const/4 p0, 0x0

    return-object p0

    .line 146
    :pswitch_5
    const-string p0, "setPauseImage"

    return-object p0

    .line 142
    :pswitch_8
    const-string p0, "requestCallDataUsage"

    return-object p0

    .line 138
    :pswitch_b
    const-string p0, "requestCameraCapabilities"

    return-object p0

    .line 134
    :pswitch_e
    const-string p0, "sendSessionModifyResponse"

    return-object p0

    .line 130
    :pswitch_11
    const-string p0, "sendSessionModifyRequest"

    return-object p0

    .line 126
    :pswitch_14
    const-string p0, "setZoom"

    return-object p0

    .line 122
    :pswitch_17
    const-string p0, "setDeviceOrientation"

    return-object p0

    .line 118
    :pswitch_1a
    const-string p0, "setDisplaySurface"

    return-object p0

    .line 114
    :pswitch_1d
    const-string p0, "setPreviewSurface"

    return-object p0

    .line 110
    :pswitch_20
    const-string p0, "setCamera"

    return-object p0

    .line 106
    :pswitch_23
    const-string p0, "setCallback"

    return-object p0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
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

    .line 97
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 428
    const/16 v0, 0xa

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 157
    invoke-static {p1}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 161
    nop

    .line 162
    const-string v0, "com.android.ims.internal.IImsVideoCallProvider"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 163
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 166
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    return v1

    .line 169
    :cond_17
    packed-switch p1, :pswitch_data_b2

    .line 259
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 252
    :pswitch_1f
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setPauseImage(Landroid/net/Uri;)V

    .line 255
    goto/16 :goto_b1

    .line 246
    :pswitch_2f
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->requestCallDataUsage()V

    .line 247
    goto/16 :goto_b1

    .line 241
    :pswitch_34
    invoke-virtual {p0}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->requestCameraCapabilities()V

    .line 242
    goto/16 :goto_b1

    .line 234
    :pswitch_39
    sget-object p1, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/VideoProfile;

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 237
    goto :goto_b1

    .line 224
    :pswitch_48
    sget-object p1, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/VideoProfile;

    .line 226
    sget-object p3, Landroid/telecom/VideoProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telecom/VideoProfile;

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    invoke-virtual {p0, p1, p3}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    .line 229
    goto :goto_b1

    .line 216
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setZoom(F)V

    .line 219
    goto :goto_b1

    .line 208
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setDeviceOrientation(I)V

    .line 211
    goto :goto_b1

    .line 200
    :pswitch_75
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setDisplaySurface(Landroid/view/Surface;)V

    .line 203
    goto :goto_b1

    .line 192
    :pswitch_84
    sget-object p1, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setPreviewSurface(Landroid/view/Surface;)V

    .line 195
    goto :goto_b1

    .line 182
    :pswitch_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, p1, p3}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setCamera(Ljava/lang/String;I)V

    .line 187
    goto :goto_b1

    .line 174
    :pswitch_a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/ims/internal/IImsVideoCallCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsVideoCallCallback;

    move-result-object p1

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/IImsVideoCallProvider$Stub;->setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V

    .line 177
    nop

    .line 262
    :goto_b1
    return v1

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_a2
        :pswitch_93
        :pswitch_84
        :pswitch_75
        :pswitch_6a
        :pswitch_5f
        :pswitch_48
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_1f
    .end packed-switch
.end method
