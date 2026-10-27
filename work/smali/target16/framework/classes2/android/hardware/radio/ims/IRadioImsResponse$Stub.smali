.class public abstract Landroid/hardware/radio/ims/IRadioImsResponse$Stub;
.super Landroid/os/Binder;
.source "IRadioImsResponse.java"

# interfaces
.implements Landroid/hardware/radio/ims/IRadioImsResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ims/IRadioImsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ims/IRadioImsResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_sendAnbrQueryResponse:I = 0x6

.field static final blacklist TRANSACTION_setSrvccCallInfoResponse:I = 0x1

.field static final blacklist TRANSACTION_startImsTrafficResponse:I = 0x3

.field static final blacklist TRANSACTION_stopImsTrafficResponse:I = 0x4

.field static final blacklist TRANSACTION_triggerEpsFallbackResponse:I = 0x5

.field static final blacklist TRANSACTION_updateAllowedServicesResponse:I = 0x8

.field static final blacklist TRANSACTION_updateImsCallStatusResponse:I = 0x7

.field static final blacklist TRANSACTION_updateImsRegistrationInfoResponse:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 195
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 196
    invoke-virtual {p0}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->markVintfStability()V

    .line 197
    sget-object v0, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ims/IRadioImsResponse;
    .registers 3

    .line 205
    if-nez p0, :cond_4

    .line 206
    const/4 p0, 0x0

    return-object p0

    .line 208
    :cond_4
    sget-object v0, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/radio/ims/IRadioImsResponse;

    if-eqz v1, :cond_13

    .line 210
    check-cast v0, Landroid/hardware/radio/ims/IRadioImsResponse;

    return-object v0

    .line 212
    :cond_13
    new-instance v0, Landroid/hardware/radio/ims/IRadioImsResponse$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 216
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    sget-object v0, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 221
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 222
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 225
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    return v2

    .line 228
    :cond_16
    if-ne p1, v1, :cond_23

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p0}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    return v2

    .line 233
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p0}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    return v2

    .line 238
    :cond_33
    packed-switch p1, :pswitch_data_b6

    .line 311
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 301
    :pswitch_3b
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method updateAllowedServicesResponse is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 293
    :pswitch_43
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {p0, p1}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->updateImsCallStatusResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 296
    goto :goto_b4

    .line 285
    :pswitch_52
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-virtual {p0, p1}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->sendAnbrQueryResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 288
    goto :goto_b4

    .line 277
    :pswitch_61
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {p0, p1}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->triggerEpsFallbackResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 280
    goto :goto_b4

    .line 269
    :pswitch_70
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {p0, p1}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->stopImsTrafficResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 272
    goto :goto_b4

    .line 259
    :pswitch_7f
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 261
    sget-object p3, Landroid/hardware/radio/ims/ConnectionFailureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/ims/ConnectionFailureInfo;

    .line 262
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->startImsTrafficResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/ims/ConnectionFailureInfo;)V

    .line 264
    goto :goto_b4

    .line 251
    :pswitch_96
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, p1}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->updateImsRegistrationInfoResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 254
    goto :goto_b4

    .line 243
    :pswitch_a5
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, p1}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->setSrvccCallInfoResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 246
    nop

    .line 314
    :goto_b4
    return v2

    nop

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_a5
        :pswitch_96
        :pswitch_7f
        :pswitch_70
        :pswitch_61
        :pswitch_52
        :pswitch_43
        :pswitch_3b
    .end packed-switch
.end method
