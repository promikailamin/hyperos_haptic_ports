.class Lcom/android/server/blob/BlobStoreSession;
.super Landroid/app/blob/IBlobStoreSession$Stub;
.source "BlobStoreSession.java"


# instance fields
.field public final mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

.field public mBlobCommitCallback:Landroid/app/blob/IBlobCommitCallback;

.field public final mBlobHandle:Landroid/app/blob/BlobHandle;

.field public final mContext:Landroid/content/Context;

.field public final mCreationTimeMs:J

.field public mDataDigest:[B

.field public final mListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

.field public final mOwnerPackageName:Ljava/lang/String;

.field public final mOwnerUid:I

.field public final mRevocableFds:Ljava/util/ArrayList;

.field public mSessionFile:Ljava/io/File;

.field public final mSessionId:J

.field public final mSessionLock:Ljava/lang/Object;

.field public mState:I


# direct methods
.method public static synthetic $r8$lambda$vgJTVPNERH2uGjZcWRFuZ1Pfb8U(Lcom/android/server/blob/BlobStoreSession;Landroid/os/RevocableFileDescriptor;Ljava/io/IOException;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/blob/BlobStoreSession;->lambda$trackRevocableFdLocked$0(Landroid/os/RevocableFileDescriptor;Ljava/io/IOException;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;ILjava/lang/String;JLcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;)V
    .registers 11

    .line 130
    invoke-direct {p0}, Landroid/app/blob/IBlobStoreSession$Stub;-><init>()V

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 122
    new-instance v0, Lcom/android/server/blob/BlobAccessMode;

    invoke-direct {v0}, Lcom/android/server/blob/BlobAccessMode;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 131
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreSession;->mContext:Landroid/content/Context;

    .line 132
    iput-object p4, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    .line 133
    iput-wide p2, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 134
    iput p5, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    .line 135
    iput-object p6, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    .line 136
    iput-wide p7, p0, Lcom/android/server/blob/BlobStoreSession;->mCreationTimeMs:J

    .line 137
    iput-object p9, p0, Lcom/android/server/blob/BlobStoreSession;->mListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;ILjava/lang/String;Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;)V
    .registers 18

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    .line 142
    invoke-direct/range {v0 .. v9}, Lcom/android/server/blob/BlobStoreSession;-><init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;ILjava/lang/String;JLcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;)V

    return-void
.end method

.method public static createFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;)Lcom/android/server/blob/BlobStoreSession;
    .registers 16

    .line 605
    const-string v0, "id"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v3

    .line 606
    const-string/jumbo v0, "p"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 607
    const-string/jumbo v0, "u"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1f

    .line 609
    const-string p1, "crt"

    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v0

    :goto_1d
    move-wide v8, v0

    goto :goto_24

    .line 610
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_1d

    .line 612
    :goto_24
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p1

    const/4 v0, 0x0

    move-object v5, v0

    move-object v11, v5

    .line 615
    :cond_2b
    :goto_2b
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 616
    const-string v1, "bh"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 617
    invoke-static {p0}, Landroid/app/blob/BlobHandle;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/blob/BlobHandle;

    move-result-object v5

    goto :goto_2b

    .line 618
    :cond_42
    const-string v1, "am"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 619
    invoke-static {p0}, Lcom/android/server/blob/BlobAccessMode;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/blob/BlobAccessMode;

    move-result-object v11

    goto :goto_2b

    .line 623
    :cond_53
    const-string p0, "BlobStore"

    if-nez v5, :cond_5d

    .line 624
    const-string p1, "blobHandle should be available"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_5d
    if-nez v11, :cond_65

    .line 628
    const-string p1, "blobAccessMode should be available"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 632
    :cond_65
    new-instance v1, Lcom/android/server/blob/BlobStoreSession;

    move-object v2, p2

    move-object v10, p3

    invoke-direct/range {v1 .. v10}, Lcom/android/server/blob/BlobStoreSession;-><init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;ILjava/lang/String;JLcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;)V

    .line 634
    iget-object p0, v1, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {p0, v11}, Lcom/android/server/blob/BlobAccessMode;->allow(Lcom/android/server/blob/BlobAccessMode;)V

    return-object v1
.end method

.method public static stateToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_39

    const/4 v0, 0x1

    if-eq p0, v0, :cond_36

    const/4 v0, 0x2

    if-eq p0, v0, :cond_33

    const/4 v0, 0x3

    if-eq p0, v0, :cond_30

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2d

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2a

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BlobStore"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string p0, "<unknown>"

    return-object p0

    .line 538
    :cond_2a
    const-string p0, "<verified_invalid>"

    return-object p0

    .line 536
    :cond_2d
    const-string p0, "<verified_valid>"

    return-object p0

    .line 534
    :cond_30
    const-string p0, "<committed>"

    return-object p0

    .line 532
    :cond_33
    const-string p0, "<abandoned>"

    return-object p0

    .line 528
    :cond_36
    const-string p0, "<opened>"

    return-object p0

    .line 530
    :cond_39
    const-string p0, "<closed>"

    return-object p0
.end method


# virtual methods
.method public abandon()V
    .registers 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 423
    invoke-virtual {p0, v0, v1}, Lcom/android/server/blob/BlobStoreSession;->closeSession(IZ)V

    return-void
.end method

.method public allowPackageAccess(Ljava/lang/String;[B)V
    .registers 7

    .line 331
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 332
    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 333
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xdf

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_15

    move v0, v3

    goto :goto_16

    :cond_15
    move v0, v2

    :goto_16
    const-string/jumbo v1, "packageName is longer than 223 chars"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 335
    const-string v0, "certificate must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 336
    array-length v0, p2

    const/16 v1, 0x20

    if-gt v0, v1, :cond_27

    move v2, v3

    :cond_27
    const-string v0, "certificate is longer than 32 chars"

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 338
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_2f
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    if-ne v1, v3, :cond_6a

    .line 343
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {v1}, Lcom/android/server/blob/BlobAccessMode;->getAllowedPackagesCount()I

    move-result v1

    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getMaxPermittedPackages()I

    move-result v2

    if-ge v1, v2, :cond_48

    .line 348
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/blob/BlobAccessMode;->allowPackageAccess(Ljava/lang/String;[B)V

    .line 349
    monitor-exit v0

    return-void

    :catchall_46
    move-exception p0

    goto :goto_87

    .line 344
    :cond_48
    new-instance p1, Landroid/os/ParcelableException;

    new-instance p2, Landroid/os/LimitExceededException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many packages permitted to access the blob: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 346
    invoke-virtual {p0}, Lcom/android/server/blob/BlobAccessMode;->getAllowedPackagesCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/os/LimitExceededException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 340
    :cond_6a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not allowed to change access type in state: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 341
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 349
    :goto_87
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_2f .. :try_end_88} :catchall_46

    throw p0
.end method

.method public allowPublicAccess()V
    .registers 5

    .line 366
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 367
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_6
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 372
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {p0}, Lcom/android/server/blob/BlobAccessMode;->allowPublicAccess()V

    .line 373
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    goto :goto_31

    .line 369
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to change access type in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 370
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 373
    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_12

    throw p0
.end method

.method public allowSameSignatureAccess()V
    .registers 5

    .line 354
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 355
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_6
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    .line 360
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {p0}, Lcom/android/server/blob/BlobAccessMode;->allowSameSignatureAccess()V

    .line 361
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    goto :goto_31

    .line 357
    :cond_14
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to change access type in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 358
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 361
    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_12

    throw p0
.end method

.method public final assertCallerIsOwner()V
    .registers 3

    .line 556
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 557
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    if-ne v0, v1, :cond_9

    return-void

    .line 558
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not the session owner"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x0

    .line 418
    invoke-virtual {p0, v0, v0}, Lcom/android/server/blob/BlobStoreSession;->closeSession(IZ)V

    return-void
.end method

.method public final closeSession(IZ)V
    .registers 6

    .line 436
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 437
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 438
    :try_start_6
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2e

    if-nez p1, :cond_11

    .line 442
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_3c

    .line 444
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not allowed to delete or abandon a session with state: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 445
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 449
    :cond_2e
    iput p1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 450
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->revokeAllFds()V

    if-eqz p2, :cond_3a

    .line 453
    iget-object p1, p0, Lcom/android/server/blob/BlobStoreSession;->mListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    invoke-virtual {p1, p0}, Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;->onStateChanged(Lcom/android/server/blob/BlobStoreSession;)V

    .line 455
    :cond_3a
    monitor-exit v0

    return-void

    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_6 .. :try_end_3d} :catchall_f

    throw p0
.end method

.method public commit(Landroid/app/blob/IBlobCommitCallback;)V
    .registers 4

    .line 428
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_3
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobCommitCallback:Landroid/app/blob/IBlobCommitCallback;

    const/4 p1, 0x3

    const/4 v1, 0x1

    .line 431
    invoke-virtual {p0, p1, v1}, Lcom/android/server/blob/BlobStoreSession;->closeSession(IZ)V

    .line 432
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public computeDigest()V
    .registers 6

    const-wide/32 v0, 0x80000

    .line 460
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "computeBlobDigest-i"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-l"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 460
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    iget-object v3, v3, Landroid/app/blob/BlobHandle;->algorithm:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/FileUtils;->digest(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/blob/BlobStoreSession;->mDataDigest:[B
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_37} :catch_3d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_37} :catch_3d
    .catchall {:try_start_3 .. :try_end_37} :catchall_3b

    .line 466
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_3b
    move-exception p0

    goto :goto_49

    :catch_3d
    move-exception p0

    .line 464
    :try_start_3e
    const-string v2, "BlobStore"

    const-string v3, "Error computing the digest"

    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_3b

    .line 466
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_49
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 467
    throw p0
.end method

.method public destroy()V
    .registers 1

    .line 491
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->revokeAllFds()V

    .line 492
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V
    .registers 9

    .line 563
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 564
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    invoke-static {v2}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ownerUid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ownerPkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creation time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/blob/BlobStoreSession;->mCreationTimeMs:J

    invoke-static {v2, v3}, Lcom/android/server/blob/BlobStoreUtils;->formatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/blob/BlobStoreSession;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSize()J

    move-result-wide v3

    const/16 v5, 0x8

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 570
    const-string v1, "blobHandle:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 572
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpFull()Z

    move-result p2

    invoke-virtual {v1, p1, p2}, Landroid/app/blob/BlobHandle;->dump(Landroid/util/IndentingPrintWriter;Z)V

    .line 573
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 575
    const-string p2, "accessMode:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 577
    iget-object p2, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {p2, p1}, Lcom/android/server/blob/BlobAccessMode;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 578
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 580
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Open fds: #"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 581
    monitor-exit v0

    return-void

    :catchall_c7
    move-exception p0

    monitor-exit v0
    :try_end_c9
    .catchall {:try_start_3 .. :try_end_c9} :catchall_c7

    throw p0
.end method

.method public getBlobAccessMode()Lcom/android/server/blob/BlobAccessMode;
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 196
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getBlobHandle()Landroid/app/blob/BlobHandle;
    .registers 1

    .line 147
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    return-object p0
.end method

.method public getOwnerPackageName()Ljava/lang/String;
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getOwnerUid()I
    .registers 1

    .line 155
    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    return p0
.end method

.method public getSessionFile()Ljava/io/File;
    .registers 3

    .line 518
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionFile:Ljava/io/File;

    if-nez v0, :cond_c

    .line 519
    iget-wide v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    invoke-static {v0, v1}, Lcom/android/server/blob/BlobStoreConfig;->prepareBlobFile(J)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionFile:Ljava/io/File;

    .line 521
    :cond_c
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionFile:Ljava/io/File;

    return-object p0
.end method

.method public getSessionId()J
    .registers 3

    .line 151
    iget-wide v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    return-wide v0
.end method

.method public getSize()J
    .registers 3

    .line 325
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getState()I
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_3
    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 179
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public hasAccess(ILjava/lang/String;)Z
    .registers 4

    .line 163
    iget v0, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    if-ne v0, p1, :cond_e

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isExpired()Z
    .registers 5

    .line 206
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 208
    iget-wide v0, p0, Lcom/android/server/blob/BlobStoreSession;->mCreationTimeMs:J

    .line 207
    :cond_10
    invoke-static {v0, v1}, Lcom/android/server/blob/BlobStoreConfig;->hasSessionExpired(J)Z

    move-result p0

    return p0
.end method

.method public isFinalized()Z
    .registers 3

    .line 200
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_3
    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v1, 0x3

    if-eq p0, v1, :cond_e

    const/4 v1, 0x2

    if-ne p0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p0, 0x1

    :goto_f
    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 202
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public isPackageAccessAllowed(Ljava/lang/String;[B)Z
    .registers 6

    .line 379
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 380
    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 381
    const-string v0, "certificate"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkByteArrayNotEmpty([BLjava/lang/String;)[B

    .line 383
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 384
    :try_start_11
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    .line 388
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/blob/BlobAccessMode;->isPackageAccessAllowed(Ljava/lang/String;[B)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1e
    move-exception p0

    goto :goto_3d

    .line 385
    :cond_20
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not allowed to get access type in state: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 386
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 389
    :goto_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_11 .. :try_end_3e} :catchall_1e

    throw p0
.end method

.method public isPublicAccessAllowed()Z
    .registers 5

    .line 406
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 407
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    :try_start_6
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 412
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {p0}, Lcom/android/server/blob/BlobAccessMode;->isPublicAccessAllowed()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    goto :goto_32

    .line 409
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to get access type in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 410
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 413
    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_13

    throw p0
.end method

.method public isSameSignatureAccessAllowed()Z
    .registers 5

    .line 394
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 395
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 396
    :try_start_6
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 400
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {p0}, Lcom/android/server/blob/BlobAccessMode;->isSameSignatureAccessAllowed()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    goto :goto_32

    .line 397
    :cond_15
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to get access type in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 398
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_13

    throw p0
.end method

.method public final synthetic lambda$trackRevocableFdLocked$0(Landroid/os/RevocableFileDescriptor;Ljava/io/IOException;)V
    .registers 3

    .line 510
    iget-object p2, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    monitor-enter p2

    .line 511
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 512
    monitor-exit p2

    return-void

    :catchall_a
    move-exception p0

    monitor-exit p2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public open()V
    .registers 5

    .line 167
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->isFinalized()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    .line 172
    iput v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 173
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    goto :goto_2d

    .line 169
    :cond_10
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to open session with state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 170
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_e

    throw p0
.end method

.method public openRead()Landroid/os/ParcelFileDescriptor;
    .registers 6

    .line 274
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 275
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_6
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_70

    .line 280
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->shouldUseRevocableFdForReads()Z

    move-result v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_1c

    if-nez v1, :cond_24

    .line 282
    :try_start_11
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->openReadInternal()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_1e
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1c

    :try_start_1a
    monitor-exit v0

    return-object v1

    :catchall_1c
    move-exception p0

    goto :goto_8d

    :catch_1e
    move-exception p0

    .line 284
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 287
    :cond_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_1c

    .line 291
    :try_start_25
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->openReadInternal()Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_29} :catch_66

    .line 292
    :try_start_29
    new-instance v1, Landroid/os/RevocableFileDescriptor;

    iget-object v3, p0, Lcom/android/server/blob/BlobStoreSession;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v0}, Landroid/os/RevocableFileDescriptor;-><init>(Landroid/content/Context;Ljava/io/FileDescriptor;)V

    .line 293
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_33} :catch_64

    .line 294
    :try_start_33
    iget v4, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    if-ne v4, v2, :cond_42

    .line 299
    invoke-virtual {p0, v1}, Lcom/android/server/blob/BlobStoreSession;->trackRevocableFdLocked(Landroid/os/RevocableFileDescriptor;)V

    .line 300
    invoke-virtual {v1}, Landroid/os/RevocableFileDescriptor;->getRevocableFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    monitor-exit v3

    return-object p0

    :catchall_40
    move-exception p0

    goto :goto_62

    .line 295
    :cond_42
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 296
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allowed to read in state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 297
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    :goto_62
    monitor-exit v3
    :try_end_63
    .catchall {:try_start_33 .. :try_end_63} :catchall_40

    :try_start_63
    throw p0
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_64} :catch_64

    :catch_64
    move-exception p0

    goto :goto_68

    :catch_66
    move-exception p0

    const/4 v0, 0x0

    .line 303
    :goto_68
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 304
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 277
    :cond_70
    :try_start_70
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to read in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 278
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    :goto_8d
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_70 .. :try_end_8e} :catchall_1c

    throw p0
.end method

.method public final openReadInternal()Ljava/io/FileDescriptor;
    .registers 3

    .line 311
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 315
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p0

    return-object p0

    .line 313
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t get the file for this session"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1a
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_1a} :catch_1a

    :catch_1a
    move-exception p0

    .line 318
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public openWrite(JJ)Landroid/os/ParcelFileDescriptor;
    .registers 8

    .line 215
    const-string/jumbo v0, "offsetBytes must not be negative"

    invoke-static {p1, p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    .line 217
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 218
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_c
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_63

    .line 223
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_61

    .line 227
    :try_start_12
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/blob/BlobStoreSession;->openWriteInternal(JJ)Ljava/io/FileDescriptor;

    move-result-object p1
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_16} :catch_57

    .line 228
    :try_start_16
    new-instance p2, Landroid/os/RevocableFileDescriptor;

    iget-object p3, p0, Lcom/android/server/blob/BlobStoreSession;->mContext:Landroid/content/Context;

    .line 229
    invoke-static {}, Lcom/android/server/blob/BlobStoreUtils;->getRevocableFdHandler()Landroid/os/Handler;

    move-result-object p4

    invoke-direct {p2, p3, p1, p4}, Landroid/os/RevocableFileDescriptor;-><init>(Landroid/content/Context;Ljava/io/FileDescriptor;Landroid/os/Handler;)V

    .line 230
    iget-object p3, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter p3
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_24} :catch_55

    .line 231
    :try_start_24
    iget p4, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    if-ne p4, v2, :cond_33

    .line 236
    invoke-virtual {p0, p2}, Lcom/android/server/blob/BlobStoreSession;->trackRevocableFdLocked(Landroid/os/RevocableFileDescriptor;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/RevocableFileDescriptor;->getRevocableFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    monitor-exit p3

    return-object p0

    :catchall_31
    move-exception p0

    goto :goto_53

    .line 232
    :cond_33
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 233
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not allowed to write in state: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 234
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 238
    :goto_53
    monitor-exit p3
    :try_end_54
    .catchall {:try_start_24 .. :try_end_54} :catchall_31

    :try_start_54
    throw p0
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_55} :catch_55

    :catch_55
    move-exception p0

    goto :goto_59

    :catch_57
    move-exception p0

    const/4 p1, 0x0

    .line 240
    :goto_59
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 241
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catchall_61
    move-exception p0

    goto :goto_80

    .line 220
    :cond_63
    :try_start_63
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not allowed to write in state: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 221
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 223
    :goto_80
    monitor-exit v0
    :try_end_81
    .catchall {:try_start_63 .. :try_end_81} :catchall_61

    throw p0
.end method

.method public final openWriteInternal(JJ)Ljava/io/FileDescriptor;
    .registers 10

    .line 250
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 254
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->O_CREAT:I

    sget v2, Landroid/system/OsConstants;->O_RDWR:I

    or-int/2addr v1, v2

    const/16 v2, 0x180

    invoke-static {v0, v1, v2}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_45

    .line 256
    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v0, p1, p2, v3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_26

    goto :goto_45

    .line 258
    :cond_26
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to seek "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, "; curOffset="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    :goto_45
    cmp-long p1, p3, v1

    if-lez p1, :cond_56

    .line 263
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mContext:Landroid/content/Context;

    const-class p1, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0, p3, p4}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/io/FileDescriptor;J)V

    :cond_56
    return-object v0

    .line 252
    :cond_57
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Couldn\'t get the file for this session"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5f
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_5f} :catch_5f

    :catch_5f
    move-exception p0

    .line 267
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public final revokeAllFds()V
    .registers 4

    .line 496
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    monitor-enter v0

    .line 497
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_1d

    .line 498
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RevocableFileDescriptor;

    invoke-virtual {v2}, Landroid/os/RevocableFileDescriptor;->revoke()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :catchall_1b
    move-exception p0

    goto :goto_24

    .line 500
    :cond_1d
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 501
    monitor-exit v0

    return-void

    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_1b

    throw p0
.end method

.method public sendCommitCallbackResult(I)V
    .registers 5

    .line 183
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobCommitCallback:Landroid/app/blob/IBlobCommitCallback;

    invoke-interface {v1, p1}, Landroid/app/blob/IBlobCommitCallback;->onResult(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    goto :goto_13

    :catchall_9
    move-exception p0

    goto :goto_18

    :catch_b
    move-exception p1

    .line 187
    :try_start_c
    const-string v1, "BlobStore"

    const-string v2, "Error sending the callback result"

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    const/4 p1, 0x0

    .line 189
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobCommitCallback:Landroid/app/blob/IBlobCommitCallback;

    .line 190
    monitor-exit v0

    return-void

    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_9

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlobStoreSession {id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",handle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final trackRevocableFdLocked(Landroid/os/RevocableFileDescriptor;)V
    .registers 4

    .line 506
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    monitor-enter v0

    .line 507
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12

    .line 509
    new-instance v0, Lcom/android/server/blob/BlobStoreSession$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/blob/BlobStoreSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/blob/BlobStoreSession;Landroid/os/RevocableFileDescriptor;)V

    invoke-virtual {p1, v0}, Landroid/os/RevocableFileDescriptor;->addOnCloseListener(Landroid/os/ParcelFileDescriptor$OnCloseListener;)V

    return-void

    :catchall_12
    move-exception p0

    .line 508
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public verifyBlobData()V
    .registers 10

    .line 471
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 472
    :try_start_3
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mDataDigest:[B

    if-eqz v0, :cond_18

    iget-object v2, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    iget-object v2, v2, Landroid/app/blob/BlobHandle;->digest:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x4

    .line 473
    iput v0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    goto :goto_66

    :catchall_15
    move-exception v0

    move-object p0, v0

    goto :goto_6d

    .line 476
    :cond_18
    const-string v0, "BlobStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Digest of the data ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreSession;->mDataDigest:[B

    if-nez v3, :cond_2c

    const-string/jumbo v3, "null"

    goto :goto_30

    :cond_2c
    invoke-static {v3}, Landroid/app/blob/BlobHandle;->safeDigest([B)Ljava/lang/String;

    move-result-object v3

    :goto_30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") didn\'t match the given BlobHandle.digest ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    iget-object v3, v3, Landroid/app/blob/BlobHandle;->digest:[B

    .line 479
    invoke-static {v3}, Landroid/app/blob/BlobHandle;->safeDigest([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 476
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    .line 480
    iput v0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 482
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v3

    iget-wide v4, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 483
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSize()J

    move-result-wide v6

    const/4 v8, 0x3

    const/16 v2, 0x12a

    .line 482
    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    const/4 v0, 0x1

    .line 484
    invoke-virtual {p0, v0}, Lcom/android/server/blob/BlobStoreSession;->sendCommitCallbackResult(I)V

    .line 486
    :goto_66
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    invoke-virtual {v0, p0}, Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;->onStateChanged(Lcom/android/server/blob/BlobStoreSession;)V

    .line 487
    monitor-exit v1

    return-void

    :goto_6d
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_15

    throw p0
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6

    .line 585
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 586
    :try_start_3
    const-string v1, "id"

    iget-wide v2, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 587
    const-string/jumbo v1, "p"

    iget-object v2, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 588
    const-string/jumbo v1, "u"

    iget v2, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    invoke-static {p1, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 589
    const-string v1, "crt"

    iget-wide v2, p0, Lcom/android/server/blob/BlobStoreSession;->mCreationTimeMs:J

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 591
    const-string v1, "bh"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 592
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    invoke-virtual {v1, p1}, Landroid/app/blob/BlobHandle;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 593
    const-string v1, "bh"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 595
    const-string v1, "am"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 596
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobAccessMode;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 597
    const-string p0, "am"

    invoke-interface {p1, v2, p0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 598
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw p0
.end method
