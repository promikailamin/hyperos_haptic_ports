.class public abstract Landroid/hardware/radio/ims/IRadioIms$Stub;
.super Landroid/os/Binder;
.source "IRadioIms.java"

# interfaces
.implements Landroid/hardware/radio/ims/IRadioIms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ims/IRadioIms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ims/IRadioIms$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_sendAnbrQuery:I = 0x7

.field static final blacklist TRANSACTION_setResponseFunctions:I = 0x6

.field static final blacklist TRANSACTION_setSrvccCallInfo:I = 0x1

.field static final blacklist TRANSACTION_startImsTraffic:I = 0x3

.field static final blacklist TRANSACTION_stopImsTraffic:I = 0x4

.field static final blacklist TRANSACTION_triggerEpsFallback:I = 0x5

.field static final blacklist TRANSACTION_updateAllowedServices:I = 0x9

.field static final blacklist TRANSACTION_updateImsCallStatus:I = 0x8

.field static final blacklist TRANSACTION_updateImsRegistrationInfo:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 202
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 203
    invoke-virtual {p0}, Landroid/hardware/radio/ims/IRadioIms$Stub;->markVintfStability()V

    .line 204
    sget-object v0, Landroid/hardware/radio/ims/IRadioIms$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/ims/IRadioIms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ims/IRadioIms;
    .registers 3

    .line 212
    if-nez p0, :cond_4

    .line 213
    const/4 p0, 0x0

    return-object p0

    .line 215
    :cond_4
    sget-object v0, Landroid/hardware/radio/ims/IRadioIms$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/radio/ims/IRadioIms;

    if-eqz v1, :cond_13

    .line 217
    check-cast v0, Landroid/hardware/radio/ims/IRadioIms;

    return-object v0

    .line 219
    :cond_13
    new-instance v0, Landroid/hardware/radio/ims/IRadioIms$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/radio/ims/IRadioIms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 223
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    sget-object v0, Landroid/hardware/radio/ims/IRadioIms$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 228
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 229
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 232
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    return v2

    .line 235
    :cond_16
    if-ne p1, v1, :cond_23

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p0}, Landroid/hardware/radio/ims/IRadioIms$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    return v2

    .line 240
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p0}, Landroid/hardware/radio/ims/IRadioIms$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    return v2

    .line 245
    :cond_33
    packed-switch p1, :pswitch_data_ea

    .line 352
    move-object v3, p0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 340
    :pswitch_3c
    new-instance p1, Landroid/os/RemoteException;

    const-string p2, "Method updateAllowedServices is unimplemented."

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 330
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 332
    sget-object p3, Landroid/hardware/radio/ims/ImsCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/hardware/radio/ims/ImsCall;

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/ims/IRadioIms$Stub;->updateImsCallStatus(I[Landroid/hardware/radio/ims/ImsCall;)V

    .line 335
    goto/16 :goto_e9

    .line 316
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 318
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 323
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, p1, p3, p4, v0}, Landroid/hardware/radio/ims/IRadioIms$Stub;->sendAnbrQuery(IIII)V

    .line 325
    goto/16 :goto_e9

    .line 306
    :pswitch_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/radio/ims/IRadioImsResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ims/IRadioImsResponse;

    move-result-object p1

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Landroid/hardware/radio/ims/IRadioImsIndication$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ims/IRadioImsIndication;

    move-result-object p3

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/ims/IRadioIms$Stub;->setResponseFunctions(Landroid/hardware/radio/ims/IRadioImsResponse;Landroid/hardware/radio/ims/IRadioImsIndication;)V

    .line 311
    goto :goto_e9

    .line 296
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 300
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/ims/IRadioIms$Stub;->triggerEpsFallback(II)V

    .line 301
    goto :goto_e9

    .line 286
    :pswitch_96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/ims/IRadioIms$Stub;->stopImsTraffic(II)V

    .line 291
    goto :goto_e9

    .line 270
    :pswitch_a5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/radio/ims/IRadioIms$Stub;->startImsTraffic(IIIII)V

    .line 281
    goto :goto_e9

    .line 260
    :pswitch_c1
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 262
    sget-object p3, Landroid/hardware/radio/ims/ImsRegistration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/ims/ImsRegistration;

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/ims/IRadioIms$Stub;->updateImsRegistrationInfo(ILandroid/hardware/radio/ims/ImsRegistration;)V

    .line 265
    goto :goto_e9

    .line 250
    :pswitch_d5
    move-object v3, p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 252
    sget-object p3, Landroid/hardware/radio/ims/SrvccCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/hardware/radio/ims/SrvccCall;

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/ims/IRadioIms$Stub;->setSrvccCallInfo(I[Landroid/hardware/radio/ims/SrvccCall;)V

    .line 255
    nop

    .line 355
    :goto_e9
    return v2

    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_d5
        :pswitch_c1
        :pswitch_a5
        :pswitch_96
        :pswitch_87
        :pswitch_70
        :pswitch_58
        :pswitch_44
        :pswitch_3c
    .end packed-switch
.end method
