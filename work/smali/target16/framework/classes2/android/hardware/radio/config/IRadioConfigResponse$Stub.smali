.class public abstract Landroid/hardware/radio/config/IRadioConfigResponse$Stub;
.super Landroid/os/Binder;
.source "IRadioConfigResponse.java"

# interfaces
.implements Landroid/hardware/radio/config/IRadioConfigResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/config/IRadioConfigResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getHalDeviceCapabilitiesResponse:I = 0x1

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getNumOfLiveModemsResponse:I = 0x2

.field static final blacklist TRANSACTION_getPhoneCapabilityResponse:I = 0x3

.field static final blacklist TRANSACTION_getSimSlotsStatusResponse:I = 0x4

.field static final blacklist TRANSACTION_getSimTypeInfoResponse:I = 0x9

.field static final blacklist TRANSACTION_getSimultaneousCallingSupportResponse:I = 0x8

.field static final blacklist TRANSACTION_setNumOfLiveModemsResponse:I = 0x5

.field static final blacklist TRANSACTION_setPreferredDataModemResponse:I = 0x6

.field static final blacklist TRANSACTION_setSimSlotsMappingResponse:I = 0x7

.field static final blacklist TRANSACTION_setSimTypeResponse:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 217
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 218
    invoke-virtual {p0}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->markVintfStability()V

    .line 219
    sget-object v0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/config/IRadioConfigResponse;
    .registers 3

    .line 227
    if-nez p0, :cond_4

    .line 228
    const/4 p0, 0x0

    return-object p0

    .line 230
    :cond_4
    sget-object v0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/radio/config/IRadioConfigResponse;

    if-eqz v1, :cond_13

    .line 232
    check-cast v0, Landroid/hardware/radio/config/IRadioConfigResponse;

    return-object v0

    .line 234
    :cond_13
    new-instance v0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 238
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    sget-object v0, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 243
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 244
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 247
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    return v2

    .line 250
    :cond_16
    if-ne p1, v1, :cond_23

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {p0}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    return v2

    .line 255
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p0}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    return v2

    .line 260
    :cond_33
    packed-switch p1, :pswitch_data_fa

    .line 356
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 349
    :pswitch_3b
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {p0, p1}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->setSimTypeResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 352
    goto/16 :goto_f8

    .line 339
    :pswitch_4b
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 341
    sget-object p3, Landroid/hardware/radio/config/SimTypeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/hardware/radio/config/SimTypeInfo;

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->getSimTypeInfoResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/config/SimTypeInfo;)V

    .line 344
    goto/16 :goto_f8

    .line 329
    :pswitch_63
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 331
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p3

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->getSimultaneousCallingSupportResponse(Landroid/hardware/radio/RadioResponseInfo;[I)V

    .line 334
    goto/16 :goto_f8

    .line 321
    :pswitch_77
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {p0, p1}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->setSimSlotsMappingResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 324
    goto :goto_f8

    .line 313
    :pswitch_86
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 315
    invoke-virtual {p0, p1}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->setPreferredDataModemResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 316
    goto :goto_f8

    .line 305
    :pswitch_95
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 306
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 307
    invoke-virtual {p0, p1}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->setNumOfLiveModemsResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 308
    goto :goto_f8

    .line 295
    :pswitch_a4
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 297
    sget-object p3, Landroid/hardware/radio/config/SimSlotStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/hardware/radio/config/SimSlotStatus;

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->getSimSlotsStatusResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/config/SimSlotStatus;)V

    .line 300
    goto :goto_f8

    .line 285
    :pswitch_bb
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 287
    sget-object p3, Landroid/hardware/radio/config/PhoneCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/config/PhoneCapability;

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 289
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->getPhoneCapabilityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/config/PhoneCapability;)V

    .line 290
    goto :goto_f8

    .line 275
    :pswitch_d2
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p3

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 279
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->getNumOfLiveModemsResponse(Landroid/hardware/radio/RadioResponseInfo;B)V

    .line 280
    goto :goto_f8

    .line 265
    :pswitch_e5
    sget-object p1, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/radio/RadioResponseInfo;

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/config/IRadioConfigResponse$Stub;->getHalDeviceCapabilitiesResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 270
    nop

    .line 359
    :goto_f8
    return v2

    nop

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_e5
        :pswitch_d2
        :pswitch_bb
        :pswitch_a4
        :pswitch_95
        :pswitch_86
        :pswitch_77
        :pswitch_63
        :pswitch_4b
        :pswitch_3b
    .end packed-switch
.end method
