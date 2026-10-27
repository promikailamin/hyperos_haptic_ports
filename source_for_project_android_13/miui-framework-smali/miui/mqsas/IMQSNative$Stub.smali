.class public abstract Lmiui/mqsas/IMQSNative$Stub;
.super Landroid/os/Binder;
.source "IMQSNative.java"

# interfaces
.implements Lmiui/mqsas/IMQSNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/mqsas/IMQSNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/IMQSNative$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_FactoryResetWipeRescuePartition:I = 0x16

.field static final blacklist TRANSACTION_addPSITriggerCommand:I = 0xd

.field static final blacklist TRANSACTION_attachSockFilter:I = 0x2

.field static final blacklist TRANSACTION_captureLog:I = 0x1

.field static final blacklist TRANSACTION_captureLogByRunCommand:I = 0x15

.field static final blacklist TRANSACTION_connectPSIMonitor:I = 0xf

.field static final blacklist TRANSACTION_createFileInPersist:I = 0x6

.field static final blacklist TRANSACTION_defragDataPartition:I = 0xa

.field static final blacklist TRANSACTION_flashDebugPolicy:I = 0xe

.field static final blacklist TRANSACTION_getFilesFromPersist:I = 0x9

.field static final blacklist TRANSACTION_getFreeFragStats:I = 0x5

.field static final blacklist TRANSACTION_getPSISockFd:I = 0xc

.field static final blacklist TRANSACTION_getStationInfo:I = 0x12

.field static final blacklist TRANSACTION_readFile:I = 0x8

.field static final blacklist TRANSACTION_registerCnssStatisticListener:I = 0x13

.field static final blacklist TRANSACTION_registerTcpStatusListener:I = 0x10

.field static final blacklist TRANSACTION_runCommand:I = 0x4

.field static final blacklist TRANSACTION_setCoreFilter:I = 0x3

.field static final blacklist TRANSACTION_stopDefrag:I = 0xb

.field static final blacklist TRANSACTION_unregisterCnssStatisticListener:I = 0x14

.field static final blacklist TRANSACTION_unregisterTcpStatusListener:I = 0x11

.field static final blacklist TRANSACTION_writeToPersistFile:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 96
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 97
    const-string v0, "miui.mqsas.IMQSNative"

    invoke-virtual {p0, p0, v0}, Lmiui/mqsas/IMQSNative$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/mqsas/IMQSNative;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 105
    if-nez p0, :cond_4

    .line 106
    const/4 v0, 0x0

    return-object v0

    .line 108
    :cond_4
    const-string v0, "miui.mqsas.IMQSNative"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 109
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/mqsas/IMQSNative;

    if-eqz v1, :cond_14

    .line 110
    move-object v1, v0

    check-cast v1, Lmiui/mqsas/IMQSNative;

    return-object v1

    .line 112
    :cond_14
    new-instance v1, Lmiui/mqsas/IMQSNative$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/mqsas/IMQSNative$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 116
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 31
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p3

    const-string v14, "miui.mqsas.IMQSNative"

    .line 121
    .local v14, "descriptor":Ljava/lang/String;
    const/4 v15, 0x1

    if-lt v12, v15, :cond_16

    const v0, 0xffffff

    if-gt v12, v0, :cond_16

    .line 122
    move-object/from16 v10, p2

    invoke-virtual {v10, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_18

    .line 121
    :cond_16
    move-object/from16 v10, p2

    .line 124
    :goto_18
    packed-switch v12, :pswitch_data_21e

    .line 132
    packed-switch v12, :pswitch_data_224

    .line 385
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 128
    :pswitch_23
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    return v15

    .line 379
    :pswitch_27
    invoke-virtual/range {p0 .. p0}, Lmiui/mqsas/IMQSNative$Stub;->FactoryResetWipeRescuePartition()V

    .line 380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    goto/16 :goto_21d

    .line 365
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 367
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 369
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 372
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 373
    invoke-virtual {v11, v0, v1, v2, v3}, Lmiui/mqsas/IMQSNative$Stub;->captureLogByRunCommand(Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V

    .line 374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    goto/16 :goto_21d

    .line 356
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/mqsas/ICnssStatisticListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/mqsas/ICnssStatisticListener;

    move-result-object v0

    .line 357
    .local v0, "_arg0":Lmiui/mqsas/ICnssStatisticListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 358
    invoke-virtual {v11, v0}, Lmiui/mqsas/IMQSNative$Stub;->unregisterCnssStatisticListener(Lmiui/mqsas/ICnssStatisticListener;)V

    .line 359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    goto/16 :goto_21d

    .line 347
    .end local v0    # "_arg0":Lmiui/mqsas/ICnssStatisticListener;
    :pswitch_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/mqsas/ICnssStatisticListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/mqsas/ICnssStatisticListener;

    move-result-object v0

    .line 348
    .restart local v0    # "_arg0":Lmiui/mqsas/ICnssStatisticListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {v11, v0}, Lmiui/mqsas/IMQSNative$Stub;->registerCnssStatisticListener(Lmiui/mqsas/ICnssStatisticListener;)V

    .line 350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    goto/16 :goto_21d

    .line 335
    .end local v0    # "_arg0":Lmiui/mqsas/ICnssStatisticListener;
    :pswitch_70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {v11, v0, v1}, Lmiui/mqsas/IMQSNative$Stub;->getStationInfo(Ljava/lang/String;Ljava/lang/String;)Lmiui/mqsas/StationInfo;

    move-result-object v2

    .line 340
    .local v2, "_result":Lmiui/mqsas/StationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {v13, v2, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 342
    goto/16 :goto_21d

    .line 324
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Lmiui/mqsas/StationInfo;
    :pswitch_87
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 326
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmiui/mqsas/ITcpStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/mqsas/ITcpStatusListener;

    move-result-object v1

    .line 327
    .local v1, "_arg1":Lmiui/mqsas/ITcpStatusListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 328
    invoke-virtual {v11, v0, v1}, Lmiui/mqsas/IMQSNative$Stub;->unregisterTcpStatusListener(ILmiui/mqsas/ITcpStatusListener;)V

    .line 329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    goto/16 :goto_21d

    .line 313
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lmiui/mqsas/ITcpStatusListener;
    :pswitch_9e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 315
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmiui/mqsas/ITcpStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/mqsas/ITcpStatusListener;

    move-result-object v1

    .line 316
    .restart local v1    # "_arg1":Lmiui/mqsas/ITcpStatusListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {v11, v0, v1}, Lmiui/mqsas/IMQSNative$Stub;->registerTcpStatusListener(ILmiui/mqsas/ITcpStatusListener;)V

    .line 318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    goto/16 :goto_21d

    .line 303
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lmiui/mqsas/ITcpStatusListener;
    :pswitch_b5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {v11, v0}, Lmiui/mqsas/IMQSNative$Stub;->connectPSIMonitor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 306
    .local v1, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {v13, v1, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 308
    goto/16 :goto_21d

    .line 294
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_c8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 295
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {v11, v0}, Lmiui/mqsas/IMQSNative$Stub;->flashDebugPolicy(I)V

    .line 297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    goto/16 :goto_21d

    .line 281
    .end local v0    # "_arg0":I
    :pswitch_d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 283
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-virtual {v11, v0, v1, v2}, Lmiui/mqsas/IMQSNative$Stub;->addPSITriggerCommand(ILjava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    goto/16 :goto_21d

    .line 273
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_ee
    invoke-virtual/range {p0 .. p0}, Lmiui/mqsas/IMQSNative$Stub;->getPSISockFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 274
    .local v0, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {v13, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 276
    goto/16 :goto_21d

    .line 267
    .end local v0    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_fa
    invoke-virtual/range {p0 .. p0}, Lmiui/mqsas/IMQSNative$Stub;->stopDefrag()V

    .line 268
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    goto/16 :goto_21d

    .line 261
    :pswitch_102
    invoke-virtual/range {p0 .. p0}, Lmiui/mqsas/IMQSNative$Stub;->defragDataPartition()V

    .line 262
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    goto/16 :goto_21d

    .line 254
    :pswitch_10a
    invoke-virtual/range {p0 .. p0}, Lmiui/mqsas/IMQSNative$Stub;->getFilesFromPersist()Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    goto/16 :goto_21d

    .line 245
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {v11, v0}, Lmiui/mqsas/IMQSNative$Stub;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    goto/16 :goto_21d

    .line 234
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 236
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {v11, v0, v1}, Lmiui/mqsas/IMQSNative$Stub;->writeToPersistFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    goto/16 :goto_21d

    .line 224
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_13c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    invoke-virtual {v11, v0}, Lmiui/mqsas/IMQSNative$Stub;->createFileInPersist(Ljava/lang/String;)I

    move-result v1

    .line 227
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    goto/16 :goto_21d

    .line 216
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_14f
    invoke-virtual/range {p0 .. p0}, Lmiui/mqsas/IMQSNative$Stub;->getFreeFragStats()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    goto/16 :goto_21d

    .line 203
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_15b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 208
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {v11, v0, v1, v2}, Lmiui/mqsas/IMQSNative$Stub;->runCommand(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 210
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    goto/16 :goto_21d

    .line 192
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 194
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 195
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {v11, v0, v1}, Lmiui/mqsas/IMQSNative$Stub;->setCoreFilter(IZ)V

    .line 197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    goto/16 :goto_21d

    .line 164
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 166
    .local v16, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 168
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 170
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 172
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 174
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 176
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 178
    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v23

    .line 180
    .local v23, "_arg7":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 182
    .local v24, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 183
    .local v25, "_arg9":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move-object/from16 v8, v23

    move/from16 v9, v24

    move-object/from16 v10, v25

    invoke-virtual/range {v0 .. v10}, Lmiui/mqsas/IMQSNative$Stub;->attachSockFilter(Ljava/lang/String;Ljava/lang/String;IIIII[BILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 185
    .local v0, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {v13, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 187
    goto :goto_21d

    .line 137
    .end local v0    # "_result":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":[B
    .end local v24    # "_arg8":I
    .end local v25    # "_arg9":Ljava/lang/String;
    :pswitch_1d5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 139
    .restart local v16    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 141
    .restart local v17    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v18

    .line 143
    .local v18, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v19

    .line 145
    .local v19, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 147
    .local v20, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 149
    .restart local v21    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    .line 151
    .local v22, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 153
    .local v23, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v24

    .line 155
    .local v24, "_arg8":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v25

    .line 156
    .local v25, "_arg9":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move/from16 v10, v25

    invoke-virtual/range {v0 .. v10}, Lmiui/mqsas/IMQSNative$Stub;->captureLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZIZLjava/lang/String;Ljava/util/List;Z)V

    .line 158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    nop

    .line 388
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "_arg4":Z
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":Z
    .end local v23    # "_arg7":Ljava/lang/String;
    .end local v24    # "_arg8":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "_arg9":Z
    :goto_21d
    return v15

    :pswitch_data_21e
    .packed-switch 0x5f4e5446
        :pswitch_23
    .end packed-switch

    :pswitch_data_224
    .packed-switch 0x1
        :pswitch_1d5
        :pswitch_189
        :pswitch_176
        :pswitch_15b
        :pswitch_14f
        :pswitch_13c
        :pswitch_129
        :pswitch_116
        :pswitch_10a
        :pswitch_102
        :pswitch_fa
        :pswitch_ee
        :pswitch_d7
        :pswitch_c8
        :pswitch_b5
        :pswitch_9e
        :pswitch_87
        :pswitch_70
        :pswitch_5d
        :pswitch_4a
        :pswitch_2f
        :pswitch_27
    .end packed-switch
.end method
