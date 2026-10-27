.class public abstract Landroid/app/IBackupAgent$Stub;
.super Landroid/os/Binder;
.source "IBackupAgent.java"

# interfaces
.implements Landroid/app/IBackupAgent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IBackupAgent$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IBackupAgent"

.field static final blacklist TRANSACTION_clearBackupRestoreEventLogger:I = 0xc

.field static final greylist-max-o TRANSACTION_doBackup:I = 0x1

.field static final greylist-max-o TRANSACTION_doFullBackup:I = 0x4

.field static final greylist-max-o TRANSACTION_doMeasureFullBackup:I = 0x5

.field static final greylist-max-o TRANSACTION_doQuotaExceeded:I = 0x6

.field static final greylist-max-o TRANSACTION_doRestore:I = 0x2

.field static final greylist-max-o TRANSACTION_doRestoreFile:I = 0x7

.field static final greylist-max-o TRANSACTION_doRestoreFinished:I = 0x8

.field static final blacklist TRANSACTION_doRestoreWithExcludedKeys:I = 0x3

.field static final greylist-max-o TRANSACTION_fail:I = 0x9

.field static final blacklist TRANSACTION_getLoggerResults:I = 0xa

.field static final blacklist TRANSACTION_getOperationType:I = 0xb


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 224
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 225
    const-string v0, "android.app.IBackupAgent"

    invoke-virtual {p0, p0, v0}, Landroid/app/IBackupAgent$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;
    .registers 3

    .line 233
    if-nez p0, :cond_4

    .line 234
    const/4 p0, 0x0

    return-object p0

    .line 236
    :cond_4
    const-string v0, "android.app.IBackupAgent"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 237
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/IBackupAgent;

    if-eqz v1, :cond_13

    .line 238
    check-cast v0, Landroid/app/IBackupAgent;

    return-object v0

    .line 240
    :cond_13
    new-instance v0, Landroid/app/IBackupAgent$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/IBackupAgent$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 249
    packed-switch p0, :pswitch_data_2a

    .line 301
    const/4 p0, 0x0

    return-object p0

    .line 297
    :pswitch_5
    const-string p0, "clearBackupRestoreEventLogger"

    return-object p0

    .line 293
    :pswitch_8
    const-string p0, "getOperationType"

    return-object p0

    .line 289
    :pswitch_b
    const-string p0, "getLoggerResults"

    return-object p0

    .line 285
    :pswitch_e
    const-string p0, "fail"

    return-object p0

    .line 281
    :pswitch_11
    const-string p0, "doRestoreFinished"

    return-object p0

    .line 277
    :pswitch_14
    const-string p0, "doRestoreFile"

    return-object p0

    .line 273
    :pswitch_17
    const-string p0, "doQuotaExceeded"

    return-object p0

    .line 269
    :pswitch_1a
    const-string p0, "doMeasureFullBackup"

    return-object p0

    .line 265
    :pswitch_1d
    const-string p0, "doFullBackup"

    return-object p0

    .line 261
    :pswitch_20
    const-string p0, "doRestoreWithExcludedKeys"

    return-object p0

    .line 257
    :pswitch_23
    const-string p0, "doRestore"

    return-object p0

    .line 253
    :pswitch_26
    const-string p0, "doBackup"

    return-object p0

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 244
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 858
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 308
    invoke-static {p1}, Landroid/app/IBackupAgent$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 312
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 313
    const-string v3, "android.app.IBackupAgent"

    const/4 v4, 0x1

    if-lt v1, v4, :cond_13

    const v5, 0xffffff

    if-gt v1, v5, :cond_13

    .line 314
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    :cond_13
    const v5, 0x5f4e5446

    if-ne v1, v5, :cond_1e

    .line 317
    move-object/from16 v5, p3

    invoke-virtual {v5, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 318
    return v4

    .line 320
    :cond_1e
    move-object/from16 v5, p3

    packed-switch v1, :pswitch_data_1be

    .line 487
    move-object v0, v2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 482
    :pswitch_29
    invoke-virtual {v0}, Landroid/app/IBackupAgent$Stub;->clearBackupRestoreEventLogger()V

    .line 483
    move/from16 v17, v4

    goto/16 :goto_1bc

    .line 475
    :pswitch_30
    sget-object v1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/AndroidFuture;

    .line 476
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 477
    invoke-virtual {v0, v1}, Landroid/app/IBackupAgent$Stub;->getOperationType(Lcom/android/internal/infra/AndroidFuture;)V

    .line 478
    move/from16 v17, v4

    goto/16 :goto_1bc

    .line 467
    :pswitch_42
    sget-object v1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/infra/AndroidFuture;

    .line 468
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 469
    invoke-virtual {v0, v1}, Landroid/app/IBackupAgent$Stub;->getLoggerResults(Lcom/android/internal/infra/AndroidFuture;)V

    .line 470
    move/from16 v17, v4

    goto/16 :goto_1bc

    .line 459
    :pswitch_54
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 460
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 461
    invoke-virtual {v0, v1}, Landroid/app/IBackupAgent$Stub;->fail(Ljava/lang/String;)V

    .line 462
    move/from16 v17, v4

    goto/16 :goto_1bc

    .line 449
    :pswitch_62
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 451
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v3

    .line 452
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 453
    invoke-virtual {v0, v1, v3}, Landroid/app/IBackupAgent$Stub;->doRestoreFinished(ILandroid/app/backup/IBackupManager;)V

    .line 454
    move/from16 v17, v4

    goto/16 :goto_1bc

    .line 419
    :pswitch_78
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 423
    move v5, v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 425
    move v7, v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 427
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 429
    move v10, v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 431
    move v12, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v14

    .line 437
    move/from16 v16, v12

    move-object v12, v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 439
    move-object/from16 v0, p2

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 441
    move/from16 v17, v16

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 442
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v16}, Landroid/app/IBackupAgent$Stub;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;JILjava/lang/String;)V

    .line 444
    goto/16 :goto_1bc

    .line 407
    :pswitch_c5
    move-object v0, v2

    move/from16 v17, v4

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 409
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 411
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/backup/IBackupCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupCallback;

    move-result-object v5

    .line 412
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 413
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IBackupAgent$Stub;->doQuotaExceeded(JJLandroid/app/backup/IBackupCallback;)V

    .line 414
    goto/16 :goto_1bc

    .line 393
    :pswitch_e2
    move-object v0, v2

    move/from16 v17, v4

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 397
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v4

    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 401
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IBackupAgent$Stub;->doMeasureFullBackup(JILandroid/app/backup/IBackupManager;I)V

    .line 402
    goto/16 :goto_1bc

    .line 377
    :pswitch_103
    move-object v0, v2

    move/from16 v17, v4

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 379
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 381
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 383
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v5

    .line 385
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 386
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/IBackupAgent$Stub;->doFullBackup(Landroid/os/ParcelFileDescriptor;JILandroid/app/backup/IBackupManager;I)V

    .line 388
    goto/16 :goto_1bc

    .line 359
    :pswitch_12c
    move-object v0, v2

    move/from16 v17, v4

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 361
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 363
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 367
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v6

    .line 369
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 370
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/IBackupAgent$Stub;->doRestoreWithExcludedKeys(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;Ljava/util/List;)V

    .line 372
    goto :goto_1bc

    .line 343
    :pswitch_15c
    move-object v0, v2

    move/from16 v17, v4

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 345
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 347
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 349
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v6

    .line 352
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/IBackupAgent$Stub;->doRestore(Landroid/os/ParcelFileDescriptor;JLandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    .line 354
    goto :goto_1bc

    .line 325
    :pswitch_188
    move-object v0, v2

    move/from16 v17, v4

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 327
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 329
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 331
    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 333
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/backup/IBackupCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupCallback;

    move-result-object v6

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 336
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/IBackupAgent$Stub;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;JLandroid/app/backup/IBackupCallback;I)V

    .line 338
    nop

    .line 490
    :goto_1bc
    return v17

    nop

    :pswitch_data_1be
    .packed-switch 0x1
        :pswitch_188
        :pswitch_15c
        :pswitch_12c
        :pswitch_103
        :pswitch_e2
        :pswitch_c5
        :pswitch_78
        :pswitch_62
        :pswitch_54
        :pswitch_42
        :pswitch_30
        :pswitch_29
    .end packed-switch
.end method
