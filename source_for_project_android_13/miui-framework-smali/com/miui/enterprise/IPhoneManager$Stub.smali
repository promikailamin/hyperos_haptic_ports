.class public abstract Lcom/miui/enterprise/IPhoneManager$Stub;
.super Landroid/os/Binder;
.source "IPhoneManager.java"

# interfaces
.implements Lcom/miui/enterprise/IPhoneManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/enterprise/IPhoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/enterprise/IPhoneManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_controlCellular:I = 0x3

.field static final blacklist TRANSACTION_controlPhoneCall:I = 0x2

.field static final blacklist TRANSACTION_controlSMS:I = 0x1

.field static final blacklist TRANSACTION_disableCallForward:I = 0x18

.field static final blacklist TRANSACTION_disableCallLog:I = 0x19

.field static final blacklist TRANSACTION_endCall:I = 0x17

.field static final blacklist TRANSACTION_getAreaCode:I = 0x1a

.field static final blacklist TRANSACTION_getCallBlackList:I = 0x13

.field static final blacklist TRANSACTION_getCallContactRestriction:I = 0x16

.field static final blacklist TRANSACTION_getCallWhiteList:I = 0x14

.field static final blacklist TRANSACTION_getCellularStatus:I = 0x6

.field static final blacklist TRANSACTION_getIMEI:I = 0x7

.field static final blacklist TRANSACTION_getMeid:I = 0x1b

.field static final blacklist TRANSACTION_getPhoneCallStatus:I = 0x5

.field static final blacklist TRANSACTION_getSMSBlackList:I = 0xd

.field static final blacklist TRANSACTION_getSMSContactRestriction:I = 0x10

.field static final blacklist TRANSACTION_getSMSStatus:I = 0x4

.field static final blacklist TRANSACTION_getSMSWhiteList:I = 0xe

.field static final blacklist TRANSACTION_isAutoRecordPhoneCall:I = 0xa

.field static final blacklist TRANSACTION_setCallBlackList:I = 0x11

.field static final blacklist TRANSACTION_setCallContactRestriction:I = 0x15

.field static final blacklist TRANSACTION_setCallWhiteList:I = 0x12

.field static final blacklist TRANSACTION_setIccCardActivate:I = 0x1c

.field static final blacklist TRANSACTION_setPhoneCallAutoRecord:I = 0x8

.field static final blacklist TRANSACTION_setPhoneCallAutoRecordDir:I = 0x9

.field static final blacklist TRANSACTION_setSMSBlackList:I = 0xb

.field static final blacklist TRANSACTION_setSMSContactRestriction:I = 0xf

.field static final blacklist TRANSACTION_setSMSWhiteList:I = 0xc


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 118
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 119
    const-string v0, "com.miui.enterprise.IPhoneManager"

    invoke-virtual {p0, p0, v0}, Lcom/miui/enterprise/IPhoneManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/miui/enterprise/IPhoneManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 127
    if-nez p0, :cond_4

    .line 128
    const/4 v0, 0x0

    return-object v0

    .line 130
    :cond_4
    const-string v0, "com.miui.enterprise.IPhoneManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 131
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/enterprise/IPhoneManager;

    if-eqz v1, :cond_14

    .line 132
    move-object v1, v0

    check-cast v1, Lcom/miui/enterprise/IPhoneManager;

    return-object v1

    .line 134
    :cond_14
    new-instance v1, Lcom/miui/enterprise/IPhoneManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/enterprise/IPhoneManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 138
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    const-string v0, "com.miui.enterprise.IPhoneManager"

    .line 143
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 144
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    :cond_d
    packed-switch p1, :pswitch_data_214

    .line 154
    packed-switch p1, :pswitch_data_21a

    .line 442
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 150
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    return v1

    .line 432
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 434
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 435
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IPhoneManager$Stub;->setIccCardActivate(IZ)V

    .line 437
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    goto/16 :goto_212

    .line 422
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 423
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 424
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IPhoneManager$Stub;->getMeid(I)Ljava/lang/String;

    move-result-object v3

    .line 425
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 426
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 427
    goto/16 :goto_212

    .line 412
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 413
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IPhoneManager$Stub;->getAreaCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 415
    .restart local v3    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 416
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 417
    goto/16 :goto_212

    .line 403
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 404
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 405
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IPhoneManager$Stub;->disableCallLog(Z)V

    .line 406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    goto/16 :goto_212

    .line 394
    .end local v2    # "_arg0":Z
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 395
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IPhoneManager$Stub;->disableCallForward(Z)V

    .line 397
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    goto/16 :goto_212

    .line 387
    .end local v2    # "_arg0":Z
    :pswitch_73
    invoke-virtual {p0}, Lcom/miui/enterprise/IPhoneManager$Stub;->endCall()V

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    goto/16 :goto_212

    .line 378
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 379
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IPhoneManager$Stub;->getCallContactRestriction(I)I

    move-result v3

    .line 381
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 383
    goto/16 :goto_212

    .line 367
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 369
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 370
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IPhoneManager$Stub;->setCallContactRestriction(II)V

    .line 372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    goto/16 :goto_212

    .line 357
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_a1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 358
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IPhoneManager$Stub;->getCallWhiteList(I)Ljava/util/List;

    move-result-object v3

    .line 360
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 362
    goto/16 :goto_212

    .line 347
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 348
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IPhoneManager$Stub;->getCallBlackList(I)Ljava/util/List;

    move-result-object v3

    .line 350
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 352
    goto/16 :goto_212

    .line 336
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_c7
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 338
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 339
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 340
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IPhoneManager$Stub;->setCallWhiteList(Ljava/util/List;I)V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    goto/16 :goto_212

    .line 325
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":I
    :pswitch_da
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 327
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 328
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 329
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IPhoneManager$Stub;->setCallBlackList(Ljava/util/List;I)V

    .line 330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    goto/16 :goto_212

    .line 315
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":I
    :pswitch_ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 316
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IPhoneManager$Stub;->getSMSContactRestriction(I)I

    move-result v3

    .line 318
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    goto/16 :goto_212

    .line 304
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 306
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 307
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IPhoneManager$Stub;->setSMSContactRestriction(II)V

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    goto/16 :goto_212

    .line 294
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 295
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IPhoneManager$Stub;->getSMSWhiteList(I)Ljava/util/List;

    move-result-object v3

    .line 297
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 299
    goto/16 :goto_212

    .line 284
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 285
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IPhoneManager$Stub;->getSMSBlackList(I)Ljava/util/List;

    move-result-object v3

    .line 287
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 289
    goto/16 :goto_212

    .line 273
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_139
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 275
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 276
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IPhoneManager$Stub;->setSMSWhiteList(Ljava/util/List;I)V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    goto/16 :goto_212

    .line 262
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":I
    :pswitch_14c
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 264
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 265
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IPhoneManager$Stub;->setSMSBlackList(Ljava/util/List;I)V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    goto/16 :goto_212

    .line 252
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":I
    :pswitch_15f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 253
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IPhoneManager$Stub;->isAutoRecordPhoneCall(I)Z

    move-result v3

    .line 255
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 257
    goto/16 :goto_212

    .line 243
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IPhoneManager$Stub;->setPhoneCallAutoRecordDir(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    goto/16 :goto_212

    .line 232
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_181
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 234
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 235
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IPhoneManager$Stub;->setPhoneCallAutoRecord(ZI)V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    goto/16 :goto_212

    .line 222
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    :pswitch_194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 223
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IPhoneManager$Stub;->getIMEI(I)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    goto :goto_212

    .line 212
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 213
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IPhoneManager$Stub;->getCellularStatus(I)I

    move-result v3

    .line 215
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    goto :goto_212

    .line 202
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 203
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IPhoneManager$Stub;->getPhoneCallStatus(I)I

    move-result v3

    .line 205
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    goto :goto_212

    .line 192
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 193
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v2}, Lcom/miui/enterprise/IPhoneManager$Stub;->getSMSStatus(I)I

    move-result v3

    .line 195
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    goto :goto_212

    .line 181
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 183
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 184
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 185
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IPhoneManager$Stub;->controlCellular(II)V

    .line 186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    goto :goto_212

    .line 170
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 172
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 173
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IPhoneManager$Stub;->controlPhoneCall(II)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    goto :goto_212

    .line 159
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 162
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {p0, v2, v3}, Lcom/miui/enterprise/IPhoneManager$Stub;->controlSMS(II)V

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    nop

    .line 445
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :goto_212
    return v1

    nop

    :pswitch_data_214
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_21a
    .packed-switch 0x1
        :pswitch_200
        :pswitch_1ee
        :pswitch_1dc
        :pswitch_1ca
        :pswitch_1b8
        :pswitch_1a6
        :pswitch_194
        :pswitch_181
        :pswitch_172
        :pswitch_15f
        :pswitch_14c
        :pswitch_139
        :pswitch_126
        :pswitch_113
        :pswitch_100
        :pswitch_ed
        :pswitch_da
        :pswitch_c7
        :pswitch_b4
        :pswitch_a1
        :pswitch_8e
        :pswitch_7b
        :pswitch_73
        :pswitch_64
        :pswitch_55
        :pswitch_42
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
