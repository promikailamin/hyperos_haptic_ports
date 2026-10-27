.class public abstract Lmiui/greeze/IGreezeManager$Stub;
.super Landroid/os/Binder;
.source "IGreezeManager.java"

# interfaces
.implements Lmiui/greeze/IGreezeManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/greeze/IGreezeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/greeze/IGreezeManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_closeSocketForAurogon:I = 0x13

.field static final blacklist TRANSACTION_freezePids:I = 0x5

.field static final blacklist TRANSACTION_freezeUids:I = 0x6

.field static final blacklist TRANSACTION_getFrozenPids:I = 0xa

.field static final blacklist TRANSACTION_getFrozenUids:I = 0xe

.field static final blacklist TRANSACTION_getLastThawedTime:I = 0x10

.field static final blacklist TRANSACTION_isNeedCachedAlarmForAurogon:I = 0x14

.field static final blacklist TRANSACTION_isUidActive:I = 0xb

.field static final blacklist TRANSACTION_isUidFrozen:I = 0x11

.field static final blacklist TRANSACTION_registerCallback:I = 0xf

.field static final blacklist TRANSACTION_registerMonitor:I = 0xc

.field static final blacklist TRANSACTION_reportBinderState:I = 0x4

.field static final blacklist TRANSACTION_reportBinderTrans:I = 0x3

.field static final blacklist TRANSACTION_reportLoopOnce:I = 0xd

.field static final blacklist TRANSACTION_reportNet:I = 0x2

.field static final blacklist TRANSACTION_reportSignal:I = 0x1

.field static final blacklist TRANSACTION_thawAll:I = 0x9

.field static final blacklist TRANSACTION_thawPids:I = 0x7

.field static final blacklist TRANSACTION_thawUids:I = 0x8

.field static final blacklist TRANSACTION_updateAurogonUidRule:I = 0x12


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 116
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 117
    const-string v0, "miui.greeze.IGreezeManager"

    invoke-virtual {p0, p0, v0}, Lmiui/greeze/IGreezeManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/greeze/IGreezeManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 125
    if-nez p0, :cond_4

    .line 126
    const/4 v0, 0x0

    return-object v0

    .line 128
    :cond_4
    const-string v0, "miui.greeze.IGreezeManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 129
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/greeze/IGreezeManager;

    if-eqz v1, :cond_14

    .line 130
    move-object v1, v0

    check-cast v1, Lmiui/greeze/IGreezeManager;

    return-object v1

    .line 132
    :cond_14
    new-instance v1, Lmiui/greeze/IGreezeManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/greeze/IGreezeManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 136
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 30
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p3

    const-string v13, "miui.greeze.IGreezeManager"

    .line 141
    .local v13, "descriptor":Ljava/lang/String;
    const/4 v14, 0x1

    if-lt v11, v14, :cond_16

    const v0, 0xffffff

    if-gt v11, v0, :cond_16

    .line 142
    move-object/from16 v15, p2

    invoke-virtual {v15, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_18

    .line 141
    :cond_16
    move-object/from16 v15, p2

    .line 144
    :goto_18
    packed-switch v11, :pswitch_data_21e

    .line 152
    packed-switch v11, :pswitch_data_224

    .line 403
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 148
    :pswitch_23
    invoke-virtual {v12, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    return v14

    .line 394
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 395
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-virtual {v10, v0}, Lmiui/greeze/IGreezeManager$Stub;->isNeedCachedAlarmForAurogon(I)Z

    move-result v1

    .line 397
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 399
    goto/16 :goto_21d

    .line 385
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 386
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {v10, v0}, Lmiui/greeze/IGreezeManager$Stub;->closeSocketForAurogon([I)V

    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    goto/16 :goto_21d

    .line 374
    .end local v0    # "_arg0":[I
    :pswitch_49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 376
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 377
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-virtual {v10, v0, v1}, Lmiui/greeze/IGreezeManager$Stub;->updateAurogonUidRule(IZ)V

    .line 379
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    goto/16 :goto_21d

    .line 364
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 365
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-virtual {v10, v0}, Lmiui/greeze/IGreezeManager$Stub;->isUidFrozen(I)Z

    move-result v1

    .line 367
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 369
    goto/16 :goto_21d

    .line 352
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 354
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 355
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    invoke-virtual {v10, v0, v1}, Lmiui/greeze/IGreezeManager$Stub;->getLastThawedTime(II)J

    move-result-wide v2

    .line 357
    .local v2, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {v12, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 359
    goto/16 :goto_21d

    .line 340
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":J
    :pswitch_86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/greeze/IGreezeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/greeze/IGreezeCallback;

    move-result-object v0

    .line 342
    .local v0, "_arg0":Lmiui/greeze/IGreezeCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 343
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 344
    invoke-virtual {v10, v0, v1}, Lmiui/greeze/IGreezeManager$Stub;->registerCallback(Lmiui/greeze/IGreezeCallback;I)Z

    move-result v2

    .line 345
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 347
    goto/16 :goto_21d

    .line 330
    .end local v0    # "_arg0":Lmiui/greeze/IGreezeCallback;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_a1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 331
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {v10, v0}, Lmiui/greeze/IGreezeManager$Stub;->getFrozenUids(I)[I

    move-result-object v1

    .line 333
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 335
    goto/16 :goto_21d

    .line 324
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_b4
    invoke-virtual/range {p0 .. p0}, Lmiui/greeze/IGreezeManager$Stub;->reportLoopOnce()V

    .line 325
    goto/16 :goto_21d

    .line 313
    :pswitch_b9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/greeze/IMonitorToken$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/greeze/IMonitorToken;

    move-result-object v0

    .line 315
    .local v0, "_arg0":Lmiui/greeze/IMonitorToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 316
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {v10, v0, v1}, Lmiui/greeze/IGreezeManager$Stub;->registerMonitor(Lmiui/greeze/IMonitorToken;I)Z

    move-result v2

    .line 318
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 320
    goto/16 :goto_21d

    .line 303
    .end local v0    # "_arg0":Lmiui/greeze/IMonitorToken;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_d4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 304
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {v10, v0}, Lmiui/greeze/IGreezeManager$Stub;->isUidActive(I)Z

    move-result v1

    .line 306
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 308
    goto/16 :goto_21d

    .line 293
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_e7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 294
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {v10, v0}, Lmiui/greeze/IGreezeManager$Stub;->getFrozenPids(I)[I

    move-result-object v1

    .line 296
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 298
    goto/16 :goto_21d

    .line 279
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_fa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 281
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 283
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {v10, v0, v1, v2}, Lmiui/greeze/IGreezeManager$Stub;->thawAll(IILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 286
    .local v3, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 288
    goto/16 :goto_21d

    .line 265
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;
    :pswitch_115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 267
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 269
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 270
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {v10, v0, v1, v2}, Lmiui/greeze/IGreezeManager$Stub;->thawUids([IILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 272
    .restart local v3    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 274
    goto/16 :goto_21d

    .line 251
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;
    :pswitch_130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 253
    .restart local v0    # "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 255
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 256
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {v10, v0, v1, v2}, Lmiui/greeze/IGreezeManager$Stub;->thawPids([IILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 258
    .restart local v3    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 260
    goto/16 :goto_21d

    .line 233
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;
    :pswitch_14b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v7

    .line 235
    .local v7, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 237
    .local v8, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 239
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 241
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 242
    .local v18, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    move-object/from16 v0, p0

    move-object v1, v7

    move-wide v2, v8

    move/from16 v4, v16

    move-object/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lmiui/greeze/IGreezeManager$Stub;->freezeUids([IJILjava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 244
    .local v0, "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 246
    goto/16 :goto_21d

    .line 217
    .end local v0    # "_result":Ljava/util/List;
    .end local v7    # "_arg0":[I
    .end local v8    # "_arg1":J
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":Z
    :pswitch_178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 219
    .local v6, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 221
    .local v7, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 223
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 224
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    move v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lmiui/greeze/IGreezeManager$Stub;->freezePids([IJILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 226
    .restart local v0    # "_result":Ljava/util/List;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 228
    goto/16 :goto_21d

    .line 201
    .end local v0    # "_result":Ljava/util/List;
    .end local v6    # "_arg0":[I
    .end local v7    # "_arg1":J
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":Ljava/lang/String;
    :pswitch_19e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 203
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 205
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 207
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 209
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 210
    .local v17, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move/from16 v4, v16

    move-wide/from16 v5, v17

    invoke-virtual/range {v0 .. v6}, Lmiui/greeze/IGreezeManager$Stub;->reportBinderState(IIIIJ)V

    .line 212
    goto :goto_21d

    .line 179
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":J
    :pswitch_1c2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 181
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 183
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 185
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 187
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 189
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 191
    .local v21, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 193
    .local v22, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 194
    .local v24, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move-wide/from16 v7, v22

    move/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Lmiui/greeze/IGreezeManager$Stub;->reportBinderTrans(IIIIIZJI)V

    .line 196
    goto :goto_21d

    .line 169
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":Z
    .end local v22    # "_arg6":J
    .end local v24    # "_arg7":I
    :pswitch_1fb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 171
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 172
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 173
    invoke-virtual {v10, v0, v1, v2}, Lmiui/greeze/IGreezeManager$Stub;->reportNet(IJ)V

    .line 174
    goto :goto_21d

    .line 157
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    :pswitch_20a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 159
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 161
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 162
    .local v2, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 163
    invoke-virtual {v10, v0, v1, v2, v3}, Lmiui/greeze/IGreezeManager$Stub;->reportSignal(IIJ)V

    .line 164
    nop

    .line 406
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":J
    :goto_21d
    return v14

    :pswitch_data_21e
    .packed-switch 0x5f4e5446
        :pswitch_23
    .end packed-switch

    :pswitch_data_224
    .packed-switch 0x1
        :pswitch_20a
        :pswitch_1fb
        :pswitch_1c2
        :pswitch_19e
        :pswitch_178
        :pswitch_14b
        :pswitch_130
        :pswitch_115
        :pswitch_fa
        :pswitch_e7
        :pswitch_d4
        :pswitch_b9
        :pswitch_b4
        :pswitch_a1
        :pswitch_86
        :pswitch_6f
        :pswitch_5c
        :pswitch_49
        :pswitch_3a
        :pswitch_27
    .end packed-switch
.end method
