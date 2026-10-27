.class public abstract Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;
.super Landroid/os/Binder;
.source "IPowerKeeperPolicy.java"

# interfaces
.implements Lcom/miui/whetstone/IPowerKeeperPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/IPowerKeeperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/IPowerKeeperPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_checkNetworkState:I = 0x16

.field static final blacklist TRANSACTION_enableATrace:I = 0x15

.field static final blacklist TRANSACTION_getAlarmPolicies:I = 0x4

.field static final blacklist TRANSACTION_getAppBroadcastControlStat:I = 0xe

.field static final blacklist TRANSACTION_getBroadcastPolicies:I = 0x2

.field static final blacklist TRANSACTION_isBacklightEnable:I = 0x12

.field static final blacklist TRANSACTION_isLeScanAllowed:I = 0xa

.field static final blacklist TRANSACTION_isProcessesRunning:I = 0x1b

.field static final blacklist TRANSACTION_notifyEvent:I = 0x18

.field static final blacklist TRANSACTION_notifySyncEvent:I = 0x19

.field static final blacklist TRANSACTION_offerPowerKeeperIBinder:I = 0x6

.field static final blacklist TRANSACTION_setAlarmPolicy:I = 0x3

.field static final blacklist TRANSACTION_setAppBGIdleFeatureEnable:I = 0x13

.field static final blacklist TRANSACTION_setAppBGIdleLevel:I = 0x14

.field static final blacklist TRANSACTION_setAppBroadcastControlStat:I = 0xd

.field static final blacklist TRANSACTION_setAppPushAlarmLeader:I = 0x8

.field static final blacklist TRANSACTION_setAppPushAlarmProperty:I = 0x7

.field static final blacklist TRANSACTION_setBacklightParam:I = 0x11

.field static final blacklist TRANSACTION_setBroadcastPolicy:I = 0x1

.field static final blacklist TRANSACTION_setLeScanFeature:I = 0x9

.field static final blacklist TRANSACTION_setLeScanParam:I = 0xf

.field static final blacklist TRANSACTION_setParam:I = 0x10

.field static final blacklist TRANSACTION_setUidAutoStartState:I = 0x1a

.field static final blacklist TRANSACTION_startLeScan:I = 0xb

.field static final blacklist TRANSACTION_startRecord:I = 0x17

.field static final blacklist TRANSACTION_stopLeScan:I = 0xc

.field static final blacklist TRANSACTION_updateWakelockBlockedUid:I = 0x5


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 107
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 108
    const-string v0, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p0, p0, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IPowerKeeperPolicy;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 116
    if-nez p0, :cond_4

    .line 117
    const/4 v0, 0x0

    return-object v0

    .line 119
    :cond_4
    const-string v0, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 120
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/whetstone/IPowerKeeperPolicy;

    if-eqz v1, :cond_14

    .line 121
    move-object v1, v0

    check-cast v1, Lcom/miui/whetstone/IPowerKeeperPolicy;

    return-object v1

    .line 123
    :cond_14
    new-instance v1, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 127
    return-object p0
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

    .line 131
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.miui.whetstone.IPowerKeeperPolicy"

    .line 132
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    .line 133
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    :cond_15
    packed-switch v7, :pswitch_data_23c

    .line 143
    packed-switch v7, :pswitch_data_242

    .line 429
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 139
    :pswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    return v11

    .line 419
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 420
    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    .line 421
    .local v1, "_arg0":Ljava/util/List;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-virtual {v6, v1}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->isProcessesRunning(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    .line 423
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 425
    goto/16 :goto_23a

    .line 407
    .end local v0    # "cl":Ljava/lang/ClassLoader;
    .end local v1    # "_arg0":Ljava/util/List;
    .end local v2    # "_result":Ljava/util/Map;
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 409
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 410
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {v6, v0, v1}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setUidAutoStartState(IZ)Z

    move-result v2

    .line 412
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 414
    goto/16 :goto_23a

    .line 391
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 393
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 395
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 397
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 399
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v16

    .line 400
    .local v16, "_arg4":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 401
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->notifySyncEvent(IILjava/lang/String;Ljava/lang/String;[I)V

    .line 402
    goto/16 :goto_23a

    .line 381
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":[I
    :pswitch_7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 383
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 384
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 385
    invoke-virtual {v6, v0, v1}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->notifyEvent(ILandroid/os/Bundle;)V

    .line 386
    goto/16 :goto_23a

    .line 369
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :pswitch_8e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 371
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 373
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 374
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {v6, v0, v1, v2}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->startRecord(ZII)V

    .line 376
    goto/16 :goto_23a

    .line 357
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 361
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/whetstone/INetStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/INetStateCallback;

    move-result-object v2

    .line 362
    .local v2, "_arg2":Lcom/miui/whetstone/INetStateCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {v6, v0, v1, v2}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->checkNetworkState(Ljava/lang/String;ILcom/miui/whetstone/INetStateCallback;)V

    .line 364
    goto/16 :goto_23a

    .line 346
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/miui/whetstone/INetStateCallback;
    :pswitch_ba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 348
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {v6, v0, v1}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->enableATrace(ZLjava/lang/String;)V

    .line 351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    goto/16 :goto_23a

    .line 335
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_cd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 337
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 338
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {v6, v0, v1}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAppBGIdleLevel(II)V

    .line 340
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    goto/16 :goto_23a

    .line 326
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_e0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 327
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {v6, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAppBGIdleFeatureEnable(Z)V

    .line 329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    goto/16 :goto_23a

    .line 317
    .end local v0    # "_arg0":Z
    :pswitch_ef
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 318
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 319
    invoke-virtual {v6, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->isBacklightEnable(Z)V

    .line 320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    goto/16 :goto_23a

    .line 308
    .end local v0    # "_arg0":Z
    :pswitch_fe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {v6, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setBacklightParam([Ljava/lang/String;)V

    .line 311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    goto/16 :goto_23a

    .line 295
    .end local v0    # "_arg0":[Ljava/lang/String;
    :pswitch_10d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 297
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 300
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {v6, v0, v1, v2}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setParam(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 302
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    goto/16 :goto_23a

    .line 286
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_128
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 287
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {v6, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setLeScanParam(Landroid/os/Bundle;)V

    .line 289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    goto/16 :goto_23a

    .line 276
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_13b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 277
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {v6, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->getAppBroadcastControlStat(I)Z

    move-result v1

    .line 279
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 281
    goto/16 :goto_23a

    .line 265
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_14e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 267
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 268
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {v6, v0, v1}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAppBroadcastControlStat(IZ)V

    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    goto/16 :goto_23a

    .line 257
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_161
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 258
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {v6, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->stopLeScan(Landroid/os/Bundle;)V

    .line 260
    goto/16 :goto_23a

    .line 249
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_171
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 250
    .restart local v0    # "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-virtual {v6, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->startLeScan(Landroid/os/Bundle;)V

    .line 252
    goto/16 :goto_23a

    .line 239
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 240
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {v6, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->isLeScanAllowed(I)Z

    move-result v1

    .line 242
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 244
    goto/16 :goto_23a

    .line 230
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 231
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {v6, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setLeScanFeature(Z)V

    .line 233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    goto/16 :goto_23a

    .line 219
    .end local v0    # "_arg0":Z
    :pswitch_1a3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 221
    .local v0, "_arg0":I
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 222
    .local v1, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {v6, v0, v1}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAppPushAlarmLeader(ILandroid/content/Intent;)V

    .line 224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    goto/16 :goto_23a

    .line 206
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/Intent;
    :pswitch_1ba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 208
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 210
    .restart local v1    # "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 211
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {v6, v0, v1, v2}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAppPushAlarmProperty(ILandroid/content/Intent;Z)V

    .line 213
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    goto :goto_23a

    .line 197
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Z
    :pswitch_1d4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 198
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 199
    invoke-virtual {v6, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->offerPowerKeeperIBinder(Landroid/os/IBinder;)V

    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    goto :goto_23a

    .line 184
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_1e2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 186
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 189
    .restart local v2    # "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {v6, v0, v1, v2}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->updateWakelockBlockedUid(ILjava/lang/String;Z)V

    .line 191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    goto :goto_23a

    .line 176
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    :pswitch_1f8
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->getAlarmPolicies()[Lcom/miui/whetstone/AlarmPolicy;

    move-result-object v0

    .line 177
    .local v0, "_result":[Lcom/miui/whetstone/AlarmPolicy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 179
    goto :goto_23a

    .line 166
    .end local v0    # "_result":[Lcom/miui/whetstone/AlarmPolicy;
    :pswitch_203
    sget-object v0, Lcom/miui/whetstone/AlarmPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/whetstone/AlarmPolicy;

    .line 168
    .local v0, "_arg0":[Lcom/miui/whetstone/AlarmPolicy;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 169
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {v6, v0, v1}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAlarmPolicy([Lcom/miui/whetstone/AlarmPolicy;Z)V

    .line 171
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    goto :goto_23a

    .line 158
    .end local v0    # "_arg0":[Lcom/miui/whetstone/AlarmPolicy;
    .end local v1    # "_arg1":Z
    :pswitch_219
    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->getBroadcastPolicies()[Lcom/miui/whetstone/BroadcastPolicy;

    move-result-object v0

    .line 159
    .local v0, "_result":[Lcom/miui/whetstone/BroadcastPolicy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 161
    goto :goto_23a

    .line 148
    .end local v0    # "_result":[Lcom/miui/whetstone/BroadcastPolicy;
    :pswitch_224
    sget-object v0, Lcom/miui/whetstone/BroadcastPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/whetstone/BroadcastPolicy;

    .line 150
    .local v0, "_arg0":[Lcom/miui/whetstone/BroadcastPolicy;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 151
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-virtual {v6, v0, v1}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setBroadcastPolicy([Lcom/miui/whetstone/BroadcastPolicy;Z)V

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    nop

    .line 432
    .end local v0    # "_arg0":[Lcom/miui/whetstone/BroadcastPolicy;
    .end local v1    # "_arg1":Z
    :goto_23a
    return v11

    nop

    :pswitch_data_23c
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_242
    .packed-switch 0x1
        :pswitch_224
        :pswitch_219
        :pswitch_203
        :pswitch_1f8
        :pswitch_1e2
        :pswitch_1d4
        :pswitch_1ba
        :pswitch_1a3
        :pswitch_194
        :pswitch_181
        :pswitch_171
        :pswitch_161
        :pswitch_14e
        :pswitch_13b
        :pswitch_128
        :pswitch_10d
        :pswitch_fe
        :pswitch_ef
        :pswitch_e0
        :pswitch_cd
        :pswitch_ba
        :pswitch_a2
        :pswitch_8e
        :pswitch_7a
        :pswitch_56
        :pswitch_3f
        :pswitch_24
    .end packed-switch
.end method
