.class public abstract Landroid/hardware/radio/sim/IRadioSimIndication$Stub;
.super Landroid/os/Binder;
.source "IRadioSimIndication.java"

# interfaces
.implements Landroid/hardware/radio/sim/IRadioSimIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/sim/IRadioSimIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/sim/IRadioSimIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_carrierInfoForImsiEncryption:I = 0x1

.field static final blacklist TRANSACTION_cdmaSubscriptionSourceChanged:I = 0x2

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_simPhonebookChanged:I = 0x3

.field static final blacklist TRANSACTION_simPhonebookRecordsReceived:I = 0x4

.field static final blacklist TRANSACTION_simRefresh:I = 0x5

.field static final blacklist TRANSACTION_simStatusChanged:I = 0x6

.field static final blacklist TRANSACTION_stkEventNotify:I = 0x7

.field static final blacklist TRANSACTION_stkProactiveCommand:I = 0x8

.field static final blacklist TRANSACTION_stkSessionEnd:I = 0x9

.field static final blacklist TRANSACTION_subscriptionStatusChanged:I = 0xa

.field static final blacklist TRANSACTION_uiccApplicationsEnablementChanged:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 160
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 161
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->markVintfStability()V

    .line 162
    sget-object v0, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/sim/IRadioSimIndication;
    .registers 3

    .line 170
    if-nez p0, :cond_4

    .line 171
    const/4 p0, 0x0

    return-object p0

    .line 173
    :cond_4
    sget-object v0, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/hardware/radio/sim/IRadioSimIndication;

    if-eqz v1, :cond_13

    .line 175
    check-cast v0, Landroid/hardware/radio/sim/IRadioSimIndication;

    return-object v0

    .line 177
    :cond_13
    new-instance v0, Landroid/hardware/radio/sim/IRadioSimIndication$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 181
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    sget-object v0, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 186
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_d

    if-gt p1, v1, :cond_d

    .line 187
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    :cond_d
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_16

    .line 190
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    return v2

    .line 193
    :cond_16
    if-ne p1, v1, :cond_23

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->getInterfaceVersion()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    return v2

    .line 198
    :cond_23
    const v0, 0xfffffe

    if-ne p1, v0, :cond_33

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    return v2

    .line 203
    :cond_33
    packed-switch p1, :pswitch_data_e0

    .line 311
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 302
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->uiccApplicationsEnablementChanged(IZ)V

    .line 307
    goto/16 :goto_df

    .line 292
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->subscriptionStatusChanged(IZ)V

    .line 297
    goto/16 :goto_df

    .line 284
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, p1}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->stkSessionEnd(I)V

    .line 287
    goto/16 :goto_df

    .line 274
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 277
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->stkProactiveCommand(ILjava/lang/String;)V

    .line 279
    goto :goto_df

    .line 264
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->stkEventNotify(ILjava/lang/String;)V

    .line 269
    goto :goto_df

    .line 256
    :pswitch_85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {p0, p1}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->simStatusChanged(I)V

    .line 259
    goto :goto_df

    .line 246
    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 248
    sget-object p3, Landroid/hardware/radio/sim/SimRefreshResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/radio/sim/SimRefreshResult;

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->simRefresh(ILandroid/hardware/radio/sim/SimRefreshResult;)V

    .line 251
    goto :goto_df

    .line 234
    :pswitch_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p3

    .line 238
    sget-object p4, Landroid/hardware/radio/sim/PhonebookRecordInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroid/hardware/radio/sim/PhonebookRecordInfo;

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, p1, p3, p4}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->simPhonebookRecordsReceived(IB[Landroid/hardware/radio/sim/PhonebookRecordInfo;)V

    .line 241
    goto :goto_df

    .line 226
    :pswitch_ba
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    invoke-virtual {p0, p1}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->simPhonebookChanged(I)V

    .line 229
    goto :goto_df

    .line 216
    :pswitch_c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {p0, p1, p3}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->cdmaSubscriptionSourceChanged(II)V

    .line 221
    goto :goto_df

    .line 208
    :pswitch_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-virtual {p0, p1}, Landroid/hardware/radio/sim/IRadioSimIndication$Stub;->carrierInfoForImsiEncryption(I)V

    .line 211
    nop

    .line 314
    :goto_df
    return v2

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_d4
        :pswitch_c5
        :pswitch_ba
        :pswitch_a3
        :pswitch_90
        :pswitch_85
        :pswitch_76
        :pswitch_67
        :pswitch_5b
        :pswitch_4b
        :pswitch_3b
    .end packed-switch
.end method
