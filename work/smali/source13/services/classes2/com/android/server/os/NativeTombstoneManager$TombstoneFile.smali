.class Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;
.super Ljava/lang/Object;
.source "NativeTombstoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/NativeTombstoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TombstoneFile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;
    }
.end annotation


# instance fields
.field mAppId:I

.field mCrashReason:Ljava/lang/String;

.field final mPfd:Landroid/os/ParcelFileDescriptor;

.field mPid:I

.field mProcessName:Ljava/lang/String;

.field mPurged:Z

.field final mRetriever:Landroid/app/IParcelFileDescriptorRetriever;

.field mTimestampMs:J

.field mUid:I

.field mUserId:I


# direct methods
.method constructor <init>(Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPurged:Z

    .line 331
    new-instance v0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;

    invoke-direct {v0, p0}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile$ParcelFileDescriptorRetriever;-><init>(Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;)V

    iput-object v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    .line 334
    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPfd:Landroid/os/ParcelFileDescriptor;

    .line 335
    return-void
.end method

.method static parse(Landroid/os/ParcelFileDescriptor;)Ljava/util/Optional;
    .registers 18
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;",
            ">;"
        }
    .end annotation

    .line 401
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual/range {p0 .. p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v0

    .line 402
    .local v1, "is":Ljava/io/FileInputStream;
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v0

    .line 404
    .local v2, "stream":Landroid/util/proto/ProtoInputStream;
    const/4 v0, 0x0

    .line 405
    .local v0, "pid":I
    const/4 v3, 0x0

    .line 406
    .local v3, "uid":I
    const/4 v4, 0x0

    .line 407
    .local v4, "processName":Ljava/lang/String;
    const-string v5, ""

    .line 408
    .local v5, "crashReason":Ljava/lang/String;
    const-string v6, ""

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move v4, v3

    move v3, v0

    .line 411
    .end local v0    # "pid":I
    .local v3, "pid":I
    .local v4, "uid":I
    .local v5, "processName":Ljava/lang/String;
    .local v6, "crashReason":Ljava/lang/String;
    .local v7, "selinuxLabel":Ljava/lang/String;
    :cond_1c
    :goto_1c
    :try_start_1c
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_20} :catch_12d
    .catch Landroid/util/proto/ProtoParseException; {:try_start_1c .. :try_end_20} :catch_12d

    const-string v8, ""

    const/4 v9, -0x1

    if-eq v0, v9, :cond_87

    .line 412
    :try_start_25
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0

    sparse-switch v0, :sswitch_data_13e

    .line 453
    goto :goto_1c

    .line 428
    :sswitch_2d
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 431
    goto :goto_1c

    .line 433
    :cond_34
    const-wide v10, 0x20b0000000fL

    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v10

    .line 435
    .local v10, "token":J
    :goto_3d
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    if-eq v0, v9, :cond_55

    .line 436
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0

    packed-switch v0, :pswitch_data_154

    .line 442
    goto :goto_3d

    .line 438
    :pswitch_4b
    const-wide v8, 0x10900000001L

    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 439
    .end local v6    # "crashReason":Ljava/lang/String;
    .local v0, "crashReason":Ljava/lang/String;
    move-object v6, v0

    .line 445
    .end local v0    # "crashReason":Ljava/lang/String;
    .restart local v6    # "crashReason":Ljava/lang/String;
    :cond_55
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 446
    goto :goto_1c

    .line 422
    .end local v10    # "token":J
    :sswitch_59
    if-nez v5, :cond_1c

    .line 423
    const-wide v8, 0x20900000009L

    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1c

    .line 449
    :sswitch_66
    const-wide v8, 0x10900000008L

    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 450
    goto :goto_1c

    .line 418
    :sswitch_71
    const-wide v8, 0x10d00000007L

    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    move v4, v0

    .line 419
    goto :goto_1c

    .line 414
    :sswitch_7c
    const-wide v8, 0x10d00000005L

    invoke-virtual {v2, v8, v9}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_85} :catch_12d
    .catch Landroid/util/proto/ProtoParseException; {:try_start_25 .. :try_end_85} :catch_12d

    move v3, v0

    .line 415
    goto :goto_1c

    .line 459
    :cond_87
    nop

    .line 461
    invoke-static {v4}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_b3

    .line 462
    invoke-static {}, Lcom/android/server/os/NativeTombstoneManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Tombstone\'s UID ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") not an app, ignoring"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 466
    :cond_b3
    const-wide/16 v9, 0x0

    .line 468
    .local v9, "timestampMs":J
    :try_start_b5
    invoke-virtual/range {p0 .. p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    .line 469
    .local v0, "stat":Landroid/system/StructStat;
    iget-object v11, v0, Landroid/system/StructStat;->st_atim:Landroid/system/StructTimespec;

    iget-wide v11, v11, Landroid/system/StructTimespec;->tv_sec:J

    const-wide/16 v13, 0x3e8

    mul-long/2addr v11, v13

    iget-object v13, v0, Landroid/system/StructStat;->st_atim:Landroid/system/StructTimespec;

    iget-wide v13, v13, Landroid/system/StructTimespec;->tv_nsec:J

    const-wide/32 v15, 0xf4240

    div-long/2addr v13, v15
    :try_end_cc
    .catch Landroid/system/ErrnoException; {:try_start_b5 .. :try_end_cc} :catch_cf

    add-long v9, v11, v13

    .line 472
    .end local v0    # "stat":Landroid/system/StructStat;
    goto :goto_d9

    .line 470
    :catch_cf
    move-exception v0

    .line 471
    .local v0, "ex":Landroid/system/ErrnoException;
    invoke-static {}, Lcom/android/server/os/NativeTombstoneManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Failed to get timestamp of tombstone"

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 474
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :goto_d9
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 475
    .local v0, "userId":I
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    .line 477
    .local v11, "appId":I
    const-string/jumbo v12, "u:r:untrusted_app"

    invoke-virtual {v7, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_10f

    .line 478
    invoke-static {}, Lcom/android/server/os/NativeTombstoneManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Tombstone has invalid selinux label ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "), ignoring"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v8

    return-object v8

    .line 482
    :cond_10f
    new-instance v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;

    move-object/from16 v13, p0

    invoke-direct {v12, v13}, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 484
    .local v12, "result":Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;
    iput v0, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUserId:I

    .line 485
    iput v11, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mAppId:I

    .line 486
    iput v3, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPid:I

    .line 487
    iput v4, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    .line 488
    if-nez v5, :cond_121

    goto :goto_122

    :cond_121
    move-object v8, v5

    :goto_122
    iput-object v8, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mProcessName:Ljava/lang/String;

    .line 489
    iput-wide v9, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mTimestampMs:J

    .line 490
    iput-object v6, v12, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mCrashReason:Ljava/lang/String;

    .line 492
    invoke-static {v12}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v8

    return-object v8

    .line 456
    .end local v0    # "userId":I
    .end local v9    # "timestampMs":J
    .end local v11    # "appId":I
    .end local v12    # "result":Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;
    :catch_12d
    move-exception v0

    move-object/from16 v13, p0

    .line 457
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/os/NativeTombstoneManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Failed to parse tombstone"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 458
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v8

    return-object v8

    :sswitch_data_13e
    .sparse-switch
        0x5 -> :sswitch_7c
        0x7 -> :sswitch_71
        0x8 -> :sswitch_66
        0x9 -> :sswitch_59
        0xf -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_154
    .packed-switch 0x1
        :pswitch_4b
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .registers 2

    .line 378
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 379
    return-void
.end method

.method public getPfdRetriever()Landroid/app/IParcelFileDescriptorRetriever;
    .registers 2

    .line 496
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 2

    .line 374
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public matches(Landroid/app/ApplicationExitInfo;)Z
    .registers 8
    .param p1, "exitInfo"    # Landroid/app/ApplicationExitInfo;

    .line 354
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_9

    .line 355
    return v1

    .line 358
    :cond_9
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v0

    iget v2, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPid:I

    if-eq v0, v2, :cond_12

    .line 359
    return v1

    .line 362
    :cond_12
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v0

    iget v2, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    if-eq v0, v2, :cond_1b

    .line 363
    return v1

    .line 366
    :cond_1b
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mTimestampMs:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    cmp-long v0, v2, v4

    if-lez v0, :cond_2d

    .line 367
    return v1

    .line 370
    :cond_2d
    const/4 v0, 0x1

    return v0
.end method

.method public matches(Ljava/util/Optional;Ljava/util/Optional;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 338
    .local p1, "userId":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    .local p2, "appId":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Integer;>;"
    iget-boolean v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPurged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 339
    return v1

    .line 342
    :cond_6
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUserId:I

    if-eq v0, v2, :cond_1b

    .line 343
    return v1

    .line 346
    :cond_1b
    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mAppId:I

    if-eq v0, v2, :cond_30

    .line 347
    return v1

    .line 350
    :cond_30
    const/4 v0, 0x1

    return v0
.end method

.method public purge()V
    .registers 4

    .line 382
    iget-boolean v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPurged:Z

    if-nez v0, :cond_1d

    .line 392
    :try_start_4
    iget-object v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPfd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_f
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_f} :catch_10

    .line 395
    goto :goto_1a

    .line 393
    :catch_10
    move-exception v0

    .line 394
    .local v0, "ex":Landroid/system/ErrnoException;
    invoke-static {}, Lcom/android/server/os/NativeTombstoneManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to truncate tombstone"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    .end local v0    # "ex":Landroid/system/ErrnoException;
    :goto_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPurged:Z

    .line 398
    :cond_1d
    return-void
.end method

.method public toAppExitInfo()Landroid/app/ApplicationExitInfo;
    .registers 5

    .line 500
    new-instance v0, Landroid/app/ApplicationExitInfo;

    invoke-direct {v0}, Landroid/app/ApplicationExitInfo;-><init>()V

    .line 501
    .local v0, "info":Landroid/app/ApplicationExitInfo;
    iget v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mPid:I

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setPid(I)V

    .line 502
    iget v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setRealUid(I)V

    .line 503
    iget v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setPackageUid(I)V

    .line 504
    iget v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mUid:I

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setDefiningUid(I)V

    .line 505
    iget-object v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setProcessName(Ljava/lang/String;)V

    .line 506
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 510
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    .line 513
    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setImportance(I)V

    .line 514
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setPackageName(Ljava/lang/String;)V

    .line 515
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setProcessStateSummary([B)V

    .line 518
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/ApplicationExitInfo;->setPss(J)V

    .line 519
    invoke-virtual {v0, v2, v3}, Landroid/app/ApplicationExitInfo;->setRss(J)V

    .line 521
    iget-wide v2, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mTimestampMs:J

    invoke-virtual {v0, v2, v3}, Landroid/app/ApplicationExitInfo;->setTimestamp(J)V

    .line 522
    iget-object v2, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mCrashReason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    .line 525
    iget-object v1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneFile;->mRetriever:Landroid/app/IParcelFileDescriptorRetriever;

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setNativeTombstoneRetriever(Landroid/app/IParcelFileDescriptorRetriever;)V

    .line 527
    return-object v0
.end method
