.class public abstract Lcom/android/ims/internal/IImsUt$Stub;
.super Landroid/os/Binder;
.source "IImsUt.java"

# interfaces
.implements Lcom/android/ims/internal/IImsUt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsUt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsUt$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsUt"

.field static final greylist-max-o TRANSACTION_close:I = 0x1

.field static final blacklist TRANSACTION_queryCFForServiceClass:I = 0x15

.field static final greylist-max-o TRANSACTION_queryCLIP:I = 0x6

.field static final greylist-max-o TRANSACTION_queryCLIR:I = 0x5

.field static final greylist-max-o TRANSACTION_queryCOLP:I = 0x8

.field static final greylist-max-o TRANSACTION_queryCOLR:I = 0x7

.field static final greylist-max-o TRANSACTION_queryCallBarring:I = 0x2

.field static final greylist-max-o TRANSACTION_queryCallBarringForServiceClass:I = 0x12

.field static final greylist-max-o TRANSACTION_queryCallForward:I = 0x3

.field static final greylist-max-o TRANSACTION_queryCallWaiting:I = 0x4

.field static final greylist-max-o TRANSACTION_setListener:I = 0x11

.field static final greylist-max-o TRANSACTION_transact:I = 0x9

.field static final greylist-max-o TRANSACTION_updateCLIP:I = 0xe

.field static final greylist-max-o TRANSACTION_updateCLIR:I = 0xd

.field static final greylist-max-o TRANSACTION_updateCOLP:I = 0x10

.field static final greylist-max-o TRANSACTION_updateCOLR:I = 0xf

.field static final greylist-max-o TRANSACTION_updateCallBarring:I = 0xa

.field static final greylist-max-o TRANSACTION_updateCallBarringForServiceClass:I = 0x13

.field static final blacklist TRANSACTION_updateCallBarringWithPassword:I = 0x14

.field static final greylist-max-o TRANSACTION_updateCallForward:I = 0xb

.field static final greylist-max-o TRANSACTION_updateCallWaiting:I = 0xc


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 133
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 134
    const-string v0, "com.android.ims.internal.IImsUt"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsUt$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUt;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 142
    if-nez p0, :cond_4

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 145
    :cond_4
    const-string v0, "com.android.ims.internal.IImsUt"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 146
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/IImsUt;

    if-eqz v1, :cond_14

    .line 147
    move-object v1, v0

    check-cast v1, Lcom/android/ims/internal/IImsUt;

    return-object v1

    .line 149
    :cond_14
    new-instance v1, Lcom/android/ims/internal/IImsUt$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsUt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 158
    packed-switch p0, :pswitch_data_58

    .line 246
    const/4 v0, 0x0

    return-object v0

    .line 242
    :pswitch_5
    const-string/jumbo v0, "queryCFForServiceClass"

    return-object v0

    .line 238
    :pswitch_9
    const-string/jumbo v0, "updateCallBarringWithPassword"

    return-object v0

    .line 234
    :pswitch_d
    const-string/jumbo v0, "updateCallBarringForServiceClass"

    return-object v0

    .line 230
    :pswitch_11
    const-string/jumbo v0, "queryCallBarringForServiceClass"

    return-object v0

    .line 226
    :pswitch_15
    const-string/jumbo v0, "setListener"

    return-object v0

    .line 222
    :pswitch_19
    const-string/jumbo v0, "updateCOLP"

    return-object v0

    .line 218
    :pswitch_1d
    const-string/jumbo v0, "updateCOLR"

    return-object v0

    .line 214
    :pswitch_21
    const-string/jumbo v0, "updateCLIP"

    return-object v0

    .line 210
    :pswitch_25
    const-string/jumbo v0, "updateCLIR"

    return-object v0

    .line 206
    :pswitch_29
    const-string/jumbo v0, "updateCallWaiting"

    return-object v0

    .line 202
    :pswitch_2d
    const-string/jumbo v0, "updateCallForward"

    return-object v0

    .line 198
    :pswitch_31
    const-string/jumbo v0, "updateCallBarring"

    return-object v0

    .line 194
    :pswitch_35
    const-string/jumbo v0, "transact"

    return-object v0

    .line 190
    :pswitch_39
    const-string/jumbo v0, "queryCOLP"

    return-object v0

    .line 186
    :pswitch_3d
    const-string/jumbo v0, "queryCOLR"

    return-object v0

    .line 182
    :pswitch_41
    const-string/jumbo v0, "queryCLIP"

    return-object v0

    .line 178
    :pswitch_45
    const-string/jumbo v0, "queryCLIR"

    return-object v0

    .line 174
    :pswitch_49
    const-string/jumbo v0, "queryCallWaiting"

    return-object v0

    .line 170
    :pswitch_4d
    const-string/jumbo v0, "queryCallForward"

    return-object v0

    .line 166
    :pswitch_51
    const-string/jumbo v0, "queryCallBarring"

    return-object v0

    .line 162
    :pswitch_55
    const-string v0, "close"

    return-object v0

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_35
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
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

    .line 153
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 955
    const/16 v0, 0x14

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 253
    invoke-static {p1}, Lcom/android/ims/internal/IImsUt$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.android.ims.internal.IImsUt"

    .line 258
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    .line 259
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    :cond_15
    packed-switch v7, :pswitch_data_1da

    .line 269
    packed-switch v7, :pswitch_data_1e0

    .line 499
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 265
    :pswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    return v11

    .line 486
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 488
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 490
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 491
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/ims/internal/IImsUt$Stub;->queryCFForServiceClass(ILjava/lang/String;I)I

    move-result v3

    .line 493
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 495
    goto/16 :goto_1d8

    .line 468
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 470
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 472
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v14

    .line 474
    .local v14, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 476
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 477
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallBarringWithPassword(II[Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 479
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    goto/16 :goto_1d8

    .line 452
    .end local v0    # "_result":I
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":[Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_6a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 454
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 456
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 459
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallBarringForServiceClass(II[Ljava/lang/String;I)I

    move-result v4

    .line 461
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 463
    goto/16 :goto_1d8

    .line 440
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 442
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 443
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {v6, v0, v1}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallBarringForServiceClass(II)I

    move-result v2

    .line 445
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    goto/16 :goto_1d8

    .line 431
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/internal/IImsUtListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsUtListener;

    move-result-object v0

    .line 432
    .local v0, "_arg0":Lcom/android/ims/internal/IImsUtListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 433
    invoke-virtual {v6, v0}, Lcom/android/ims/internal/IImsUt$Stub;->setListener(Lcom/android/ims/internal/IImsUtListener;)V

    .line 434
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    goto/16 :goto_1d8

    .line 421
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsUtListener;
    :pswitch_b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 422
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 423
    invoke-virtual {v6, v0}, Lcom/android/ims/internal/IImsUt$Stub;->updateCOLP(Z)I

    move-result v1

    .line 424
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    goto/16 :goto_1d8

    .line 411
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :pswitch_c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 412
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 413
    invoke-virtual {v6, v0}, Lcom/android/ims/internal/IImsUt$Stub;->updateCOLR(I)I

    move-result v1

    .line 414
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    goto/16 :goto_1d8

    .line 401
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_d9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 402
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 403
    invoke-virtual {v6, v0}, Lcom/android/ims/internal/IImsUt$Stub;->updateCLIP(Z)I

    move-result v1

    .line 404
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    goto/16 :goto_1d8

    .line 391
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :pswitch_ec
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 392
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    invoke-virtual {v6, v0}, Lcom/android/ims/internal/IImsUt$Stub;->updateCLIR(I)I

    move-result v1

    .line 394
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    goto/16 :goto_1d8

    .line 379
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_ff
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 381
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 382
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    invoke-virtual {v6, v0, v1}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallWaiting(ZI)I

    move-result v2

    .line 384
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    goto/16 :goto_1d8

    .line 361
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 363
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 365
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 367
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 369
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 370
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallForward(IILjava/lang/String;II)I

    move-result v0

    .line 372
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    goto/16 :goto_1d8

    .line 347
    .end local v0    # "_result":I
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 349
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 351
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/ims/internal/IImsUt$Stub;->updateCallBarring(II[Ljava/lang/String;)I

    move-result v3

    .line 354
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    goto/16 :goto_1d8

    .line 337
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_15c
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 338
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {v6, v0}, Lcom/android/ims/internal/IImsUt$Stub;->transact(Landroid/os/Bundle;)I

    move-result v1

    .line 340
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    goto :goto_1d8

    .line 329
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_result":I
    :pswitch_172
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCOLP()I

    move-result v0

    .line 330
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    goto :goto_1d8

    .line 322
    .end local v0    # "_result":I
    :pswitch_17d
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCOLR()I

    move-result v0

    .line 323
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    goto :goto_1d8

    .line 315
    .end local v0    # "_result":I
    :pswitch_188
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCLIP()I

    move-result v0

    .line 316
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    goto :goto_1d8

    .line 308
    .end local v0    # "_result":I
    :pswitch_193
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCLIR()I

    move-result v0

    .line 309
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    goto :goto_1d8

    .line 301
    .end local v0    # "_result":I
    :pswitch_19e
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallWaiting()I

    move-result v0

    .line 302
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    goto :goto_1d8

    .line 290
    .end local v0    # "_result":I
    :pswitch_1a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 292
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {v6, v0, v1}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallForward(ILjava/lang/String;)I

    move-result v2

    .line 295
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    goto :goto_1d8

    .line 280
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_1bf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 281
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 282
    invoke-virtual {v6, v0}, Lcom/android/ims/internal/IImsUt$Stub;->queryCallBarring(I)I

    move-result v1

    .line 283
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    goto :goto_1d8

    .line 273
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1d1
    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsUt$Stub;->close()V

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    nop

    .line 502
    :goto_1d8
    return v11

    nop

    :pswitch_data_1da
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_1e0
    .packed-switch 0x1
        :pswitch_1d1
        :pswitch_1bf
        :pswitch_1a9
        :pswitch_19e
        :pswitch_193
        :pswitch_188
        :pswitch_17d
        :pswitch_172
        :pswitch_15c
        :pswitch_141
        :pswitch_116
        :pswitch_ff
        :pswitch_ec
        :pswitch_d9
        :pswitch_c6
        :pswitch_b3
        :pswitch_a0
        :pswitch_89
        :pswitch_6a
        :pswitch_3f
        :pswitch_24
    .end packed-switch
.end method
