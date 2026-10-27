.class public abstract Lmiui/app/backup/IBackupManager$Stub;
.super Landroid/os/Binder;
.source "IBackupManager.java"

# interfaces
.implements Lmiui/app/backup/IBackupManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/backup/IBackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/IBackupManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acquire:I = 0x4

.field static final blacklist TRANSACTION_addCompletedSize:I = 0xe

.field static final blacklist TRANSACTION_backupPackage:I = 0x1

.field static final blacklist TRANSACTION_delCacheBackup:I = 0x17

.field static final blacklist TRANSACTION_errorOccur:I = 0x7

.field static final blacklist TRANSACTION_getAppUserId:I = 0x15

.field static final blacklist TRANSACTION_getBackupTimeoutScale:I = 0x14

.field static final blacklist TRANSACTION_getCurrentRunningPackage:I = 0x8

.field static final blacklist TRANSACTION_getCurrentWorkingFeature:I = 0x9

.field static final blacklist TRANSACTION_getState:I = 0xa

.field static final blacklist TRANSACTION_isCanceling:I = 0x18

.field static final blacklist TRANSACTION_isNeedBeKilled:I = 0xf

.field static final blacklist TRANSACTION_isRunningFromMiui:I = 0x11

.field static final blacklist TRANSACTION_isServiceIdle:I = 0x12

.field static final blacklist TRANSACTION_onApkInstalled:I = 0xd

.field static final blacklist TRANSACTION_readMiuiBackupHeader:I = 0xc

.field static final blacklist TRANSACTION_release:I = 0x5

.field static final blacklist TRANSACTION_restoreFile:I = 0x3

.field static final blacklist TRANSACTION_setCustomProgress:I = 0x13

.field static final blacklist TRANSACTION_setFutureTask:I = 0x6

.field static final blacklist TRANSACTION_setIsNeedBeKilled:I = 0x10

.field static final blacklist TRANSACTION_shouldSkipData:I = 0x16

.field static final blacklist TRANSACTION_startConfirmationUi:I = 0x2

.field static final blacklist TRANSACTION_writeMiuiBackupHeader:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 104
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 105
    const-string v0, "miui.app.backup.IBackupManager"

    invoke-virtual {p0, p0, v0}, Lmiui/app/backup/IBackupManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IBackupManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 113
    if-nez p0, :cond_4

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 116
    :cond_4
    const-string v0, "miui.app.backup.IBackupManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 117
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/app/backup/IBackupManager;

    if-eqz v1, :cond_14

    .line 118
    move-object v1, v0

    check-cast v1, Lmiui/app/backup/IBackupManager;

    return-object v1

    .line 120
    :cond_14
    new-instance v1, Lmiui/app/backup/IBackupManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/app/backup/IBackupManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 124
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 34
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v11, "miui.app.backup.IBackupManager"

    .line 129
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v13, v10, :cond_15

    const v0, 0xffffff

    if-gt v13, v0, :cond_15

    .line 130
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    :cond_15
    packed-switch v13, :pswitch_data_25a

    .line 140
    packed-switch v13, :pswitch_data_260

    .line 377
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 136
    :pswitch_20
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    return v10

    .line 370
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/IBackupManager$Stub;->isCanceling()Z

    move-result v0

    .line 371
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 373
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_258

    .line 364
    .end local v0    # "_result":Z
    :pswitch_34
    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/IBackupManager$Stub;->delCacheBackup()V

    .line 365
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_258

    .line 357
    :pswitch_40
    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/IBackupManager$Stub;->shouldSkipData()Z

    move-result v0

    .line 358
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 360
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_258

    .line 350
    .end local v0    # "_result":Z
    :pswitch_50
    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/IBackupManager$Stub;->getAppUserId()I

    move-result v0

    .line 351
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_258

    .line 343
    .end local v0    # "_result":I
    :pswitch_60
    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/IBackupManager$Stub;->getBackupTimeoutScale()I

    move-result v0

    .line 344
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_258

    .line 331
    .end local v0    # "_result":I
    :pswitch_70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 333
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 335
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 336
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {v12, v0, v1, v2}, Lmiui/app/backup/IBackupManager$Stub;->setCustomProgress(III)V

    .line 338
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_258

    .line 323
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_8b
    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/IBackupManager$Stub;->isServiceIdle()Z

    move-result v0

    .line 324
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 326
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_258

    .line 314
    .end local v0    # "_result":Z
    :pswitch_9b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 315
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {v12, v0}, Lmiui/app/backup/IBackupManager$Stub;->isRunningFromMiui(I)Z

    move-result v1

    .line 317
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 319
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_258

    .line 303
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_b2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 306
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 307
    invoke-virtual {v12, v0, v1}, Lmiui/app/backup/IBackupManager$Stub;->setIsNeedBeKilled(Ljava/lang/String;Z)V

    .line 308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_258

    .line 293
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_c9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 294
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {v12, v0}, Lmiui/app/backup/IBackupManager$Stub;->isNeedBeKilled(Ljava/lang/String;)Z

    move-result v1

    .line 296
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 298
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_258

    .line 284
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_e0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 285
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {v12, v0, v1}, Lmiui/app/backup/IBackupManager$Stub;->addCompletedSize(J)V

    .line 287
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_258

    .line 277
    .end local v0    # "_arg0":J
    :pswitch_f3
    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/IBackupManager$Stub;->onApkInstalled()V

    .line 278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_258

    .line 269
    :pswitch_ff
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 270
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {v12, v0}, Lmiui/app/backup/IBackupManager$Stub;->readMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;)V

    .line 272
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_258

    .line 260
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :pswitch_116
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 261
    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {v12, v0}, Lmiui/app/backup/IBackupManager$Stub;->writeMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;)V

    .line 263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_258

    .line 252
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :pswitch_12d
    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/IBackupManager$Stub;->getState()I

    move-result v0

    .line 253
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_258

    .line 245
    .end local v0    # "_result":I
    :pswitch_13d
    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/IBackupManager$Stub;->getCurrentWorkingFeature()I

    move-result v0

    .line 246
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_258

    .line 238
    .end local v0    # "_result":I
    :pswitch_14d
    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/IBackupManager$Stub;->getCurrentRunningPackage()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_258

    .line 230
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_15d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 231
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {v12, v0}, Lmiui/app/backup/IBackupManager$Stub;->errorOccur(I)V

    .line 233
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_258

    .line 221
    .end local v0    # "_arg0":I
    :pswitch_170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 222
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {v12, v0}, Lmiui/app/backup/IBackupManager$Stub;->setFutureTask(Ljava/util/List;)V

    .line 224
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_258

    .line 212
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_183
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/backup/IBackupServiceStateObserver$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IBackupServiceStateObserver;

    move-result-object v0

    .line 213
    .local v0, "_arg0":Lmiui/app/backup/IBackupServiceStateObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {v12, v0}, Lmiui/app/backup/IBackupManager$Stub;->release(Lmiui/app/backup/IBackupServiceStateObserver;)V

    .line 215
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_258

    .line 200
    .end local v0    # "_arg0":Lmiui/app/backup/IBackupServiceStateObserver;
    :pswitch_19a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/backup/IBackupServiceStateObserver$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IBackupServiceStateObserver;

    move-result-object v0

    .line 202
    .restart local v0    # "_arg0":Lmiui/app/backup/IBackupServiceStateObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 203
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {v12, v0, v1}, Lmiui/app/backup/IBackupManager$Stub;->acquire(Lmiui/app/backup/IBackupServiceStateObserver;Landroid/os/IBinder;)Z

    move-result v2

    .line 205
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 207
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_258

    .line 185
    .end local v0    # "_arg0":Lmiui/app/backup/IBackupServiceStateObserver;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_result":Z
    :pswitch_1b9
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 187
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 191
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v3

    .line 192
    .local v3, "_arg3":Lmiui/app/backup/IPackageBackupRestoreObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-virtual {v12, v0, v1, v2, v3}, Lmiui/app/backup/IBackupManager$Stub;->restoreFile(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ZLmiui/app/backup/IPackageBackupRestoreObserver;)V

    .line 194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto/16 :goto_258

    .line 174
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Lmiui/app/backup/IPackageBackupRestoreObserver;
    :pswitch_1e0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 176
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 177
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {v12, v0, v1}, Lmiui/app/backup/IBackupManager$Stub;->startConfirmationUi(ILjava/lang/String;)V

    .line 179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    move/from16 v27, v10

    move-object/from16 v28, v11

    goto :goto_258

    .line 145
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1f6
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/ParcelFileDescriptor;

    .line 147
    .local v16, "_arg0":Landroid/os/ParcelFileDescriptor;
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/ParcelFileDescriptor;

    .line 149
    .local v17, "_arg1":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 151
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 153
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 155
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 157
    .local v21, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    .line 159
    .local v22, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v23

    .line 161
    .local v23, "_arg7":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v24

    .line 163
    .local v24, "_arg8":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v25

    .line 165
    .local v25, "_arg9":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v26

    .line 166
    .local v26, "_arg10":Lmiui/app/backup/IPackageBackupRestoreObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 167
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v27, v10

    move/from16 v10, v25

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v28, "descriptor":Ljava/lang/String;
    move-object/from16 v11, v26

    invoke-virtual/range {v0 .. v11}, Lmiui/app/backup/IBackupManager$Stub;->backupPackage(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZZLmiui/app/backup/IPackageBackupRestoreObserver;)V

    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    nop

    .line 380
    .end local v16    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v17    # "_arg1":Landroid/os/ParcelFileDescriptor;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":Ljava/lang/String;
    .end local v22    # "_arg6":Z
    .end local v23    # "_arg7":Z
    .end local v24    # "_arg8":Z
    .end local v25    # "_arg9":Z
    .end local v26    # "_arg10":Lmiui/app/backup/IPackageBackupRestoreObserver;
    :goto_258
    return v27

    nop

    :pswitch_data_25a
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_260
    .packed-switch 0x1
        :pswitch_1f6
        :pswitch_1e0
        :pswitch_1b9
        :pswitch_19a
        :pswitch_183
        :pswitch_170
        :pswitch_15d
        :pswitch_14d
        :pswitch_13d
        :pswitch_12d
        :pswitch_116
        :pswitch_ff
        :pswitch_f3
        :pswitch_e0
        :pswitch_c9
        :pswitch_b2
        :pswitch_9b
        :pswitch_8b
        :pswitch_70
        :pswitch_60
        :pswitch_50
        :pswitch_40
        :pswitch_34
        :pswitch_24
    .end packed-switch
.end method
