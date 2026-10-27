.class public Lcom/android/server/blob/BlobMetadata;
.super Ljava/lang/Object;
.source "BlobMetadata.java"


# instance fields
.field public mBlobFile:Ljava/io/File;

.field public final mBlobHandle:Landroid/app/blob/BlobHandle;

.field public final mBlobId:J

.field public final mCommitters:Landroid/util/ArraySet;

.field public final mContext:Landroid/content/Context;

.field public final mLeasees:Landroid/util/ArraySet;

.field public final mMetadataLock:Ljava/lang/Object;

.field public final mRevocableFds:Landroid/util/ArrayMap;


# direct methods
.method public static synthetic $r8$lambda$Dl4va3hecqfmhJMbYVxC6bxhMZ8(ILcom/android/server/blob/BlobMetadata$Leasee;)Z
    .registers 2

    .line 236
    iget p1, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$Fzd5GGCZd4rdOTsyoLLIZTpMOao(ILjava/lang/String;Lcom/android/server/blob/BlobMetadata$Committer;)Z
    .registers 4

    .line 147
    iget v0, p2, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    if-ne v0, p0, :cond_e

    iget-object p0, p2, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$HBYdPGV-U05oUr5Yaah7qeOPMOg(ILjava/lang/String;Lcom/android/server/blob/BlobMetadata$Leasee;)Z
    .registers 4

    .line 210
    iget v0, p2, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    if-ne v0, p0, :cond_e

    iget-object p0, p2, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$U8Rl2B_xWWp3u6IX-5BLiERxwL8(Landroid/util/SparseArray;Lcom/android/server/blob/BlobMetadata$Leasee;)Z
    .registers 4

    .line 217
    iget v0, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 218
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    const/4 v0, 0x1

    if-nez p0, :cond_10

    return v0

    .line 222
    :cond_10
    iget-object v1, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static synthetic $r8$lambda$Ua2X8a5UEXzmlQlYwqPuaY-LNlA(Lcom/android/server/blob/BlobMetadata$Leasee;)Z
    .registers 1

    .line 229
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$Yaq82tDXZZRr6nju_vRc7kZ7hag(Landroid/util/SparseArray;Lcom/android/server/blob/BlobMetadata$Committer;)Z
    .registers 4

    .line 160
    iget v0, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 161
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    const/4 v0, 0x1

    if-nez p0, :cond_10

    return v0

    .line 165
    :cond_10
    iget-object v1, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static synthetic $r8$lambda$iC90ocsrRUOqdsp9UA-1BFmuKz4(ILcom/android/server/blob/BlobMetadata$Committer;)Z
    .registers 2

    .line 235
    iget p1, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$k9HBHYGitsS-loR2nthFqTG0XFk(ILjava/util/Map$Entry;)Z
    .registers 4

    .line 238
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/blob/BlobMetadata$Accessor;

    .line 239
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    .line 240
    iget v0, v0, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    if-eq p0, v0, :cond_16

    return v1

    .line 243
    :cond_16
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p0

    :goto_1a
    if-ge v1, p0, :cond_28

    .line 244
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RevocableFileDescriptor;

    invoke-virtual {v0}, Landroid/os/RevocableFileDescriptor;->revoke()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 246
    :cond_28
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$qr8MFVrAy5kbTEx1uC2enQ4TjQI(Lcom/android/server/blob/BlobMetadata;Lcom/android/server/blob/BlobMetadata$Accessor;Landroid/os/RevocableFileDescriptor;Ljava/io/IOException;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/blob/BlobMetadata;->lambda$createRevocableFd$8(Lcom/android/server/blob/BlobMetadata$Accessor;Landroid/os/RevocableFileDescriptor;Ljava/io/IOException;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;)V
    .registers 6

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 94
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 97
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 107
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 115
    iput-object p1, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    .line 116
    iput-wide p2, p0, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    .line 117
    iput-object p4, p0, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    return-void
.end method

.method public static createFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;)Lcom/android/server/blob/BlobMetadata;
    .registers 12

    .line 729
    const-string v0, "id"

    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x6

    if-ge p1, v2, :cond_f

    .line 731
    const-string/jumbo v2, "us"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 735
    :cond_f
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 736
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 737
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v5, 0x0

    move-object v6, v5

    .line 738
    :cond_1f
    :goto_1f
    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v7

    if-eqz v7, :cond_61

    .line 739
    const-string v7, "bh"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 740
    invoke-static {p0}, Landroid/app/blob/BlobHandle;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/blob/BlobHandle;

    move-result-object v6

    goto :goto_1f

    .line 741
    :cond_36
    const-string v7, "c"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 742
    invoke-static {p0, p1}, Lcom/android/server/blob/BlobMetadata$Committer;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/blob/BlobMetadata$Committer;

    move-result-object v7

    if-eqz v7, :cond_1f

    .line 744
    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 746
    :cond_4c
    const-string/jumbo v7, "l"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 747
    invoke-static {p0, p1}, Lcom/android/server/blob/BlobMetadata$Leasee;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/blob/BlobMetadata$Leasee;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_61
    if-nez v6, :cond_6b

    .line 752
    const-string p0, "BlobStore"

    const-string p1, "blobHandle should be available"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 756
    :cond_6b
    new-instance p0, Lcom/android/server/blob/BlobMetadata;

    invoke-direct {p0, p2, v0, v1, v6}, Lcom/android/server/blob/BlobMetadata;-><init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;)V

    .line 757
    invoke-virtual {p0, v2}, Lcom/android/server/blob/BlobMetadata;->setCommitters(Landroid/util/ArraySet;)V

    .line 758
    invoke-virtual {p0, v3}, Lcom/android/server/blob/BlobMetadata;->setLeasees(Landroid/util/ArraySet;)V

    return-object p0
.end method

.method public static getAccessor(Landroid/util/ArraySet;Ljava/lang/String;II)Lcom/android/server/blob/BlobMetadata$Accessor;
    .registers 9

    .line 408
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_36

    .line 409
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/blob/BlobMetadata$Accessor;

    const/4 v3, -0x1

    if-eqz p1, :cond_19

    if-eq p2, v3, :cond_19

    .line 411
    invoke-virtual {v2, p1, p2}, Lcom/android/server/blob/BlobMetadata$Accessor;->equals(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_19

    return-object v2

    :cond_19
    if-eqz p1, :cond_2c

    .line 413
    iget-object v4, v2, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    iget v4, v2, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 414
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne p3, v4, :cond_2c

    return-object v2

    :cond_2c
    if-eq p2, v3, :cond_33

    .line 416
    iget v3, v2, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    if-ne v3, p2, :cond_33

    return-object v2

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_36
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isAnAccessor(Landroid/util/ArraySet;Ljava/lang/String;II)Z
    .registers 4

    .line 402
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/blob/BlobMetadata;->getAccessor(Landroid/util/ArraySet;Ljava/lang/String;II)Lcom/android/server/blob/BlobMetadata$Accessor;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addCommittersAndLeasees(Lcom/android/server/blob/BlobMetadata;)V
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 172
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    iget-object p1, p1, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    return-void
.end method

.method public addOrReplaceCommitter(Lcom/android/server/blob/BlobMetadata$Committer;)V
    .registers 4

    .line 129
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 133
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 134
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public addOrReplaceLeasee(Ljava/lang/String;IILjava/lang/CharSequence;J)V
    .registers 17

    .line 190
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_3
    new-instance v2, Lcom/android/server/blob/BlobMetadata$Leasee;

    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move-wide v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/server/blob/BlobMetadata$Leasee;-><init>(Landroid/content/Context;Ljava/lang/String;IILjava/lang/CharSequence;J)V

    .line 195
    iget-object p1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 196
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 197
    monitor-exit v1

    return-void

    :catchall_1b
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1b

    throw p0
.end method

.method public final checkCallerCanAccessBlobsAcrossUsers(I)Z
    .registers 6

    .line 329
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 331
    :try_start_4
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_BLOBS_ACROSS_USERS"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3, p1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_16

    if-nez p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    .line 334
    :goto_12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 335
    throw p0
.end method

.method public final createRevocableFd(Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .registers 7

    .line 538
    new-instance v0, Landroid/os/RevocableFileDescriptor;

    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    .line 539
    invoke-static {}, Lcom/android/server/blob/BlobStoreUtils;->getRevocableFdHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Landroid/os/RevocableFileDescriptor;-><init>(Landroid/content/Context;Ljava/io/FileDescriptor;Landroid/os/Handler;)V

    .line 541
    iget-object p1, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    monitor-enter p1

    .line 542
    :try_start_e
    new-instance v1, Lcom/android/server/blob/BlobMetadata$Accessor;

    invoke-direct {v1, p2, p3}, Lcom/android/server/blob/BlobMetadata$Accessor;-><init>(Ljava/lang/String;I)V

    .line 543
    iget-object p2, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 544
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    if-nez p2, :cond_2a

    .line 546
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 547
    iget-object p3, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {p3, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_3b

    .line 549
    :cond_2a
    :goto_2a
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 550
    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_e .. :try_end_2e} :catchall_28

    .line 551
    new-instance p1, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0, v1, v0}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/blob/BlobMetadata;Lcom/android/server/blob/BlobMetadata$Accessor;Landroid/os/RevocableFileDescriptor;)V

    invoke-virtual {v0, p1}, Landroid/os/RevocableFileDescriptor;->addOnCloseListener(Landroid/os/ParcelFileDescriptor$OnCloseListener;)V

    .line 563
    invoke-virtual {v0}, Landroid/os/RevocableFileDescriptor;->getRevocableFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 550
    :goto_3b
    :try_start_3b
    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_28

    throw p0
.end method

.method public destroy()V
    .registers 1

    .line 567
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->revokeAndClearAllFds()V

    .line 568
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getBlobFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V
    .registers 9

    .line 651
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 652
    :try_start_3
    const-string v1, "blobHandle:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 654
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpFull()Z

    move-result p2

    invoke-virtual {v1, p1, p2}, Landroid/app/blob/BlobHandle;->dump(Landroid/util/IndentingPrintWriter;Z)V

    .line 655
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 656
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "size: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v2

    const/16 v4, 0x8

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 658
    const-string p2, "Committers:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 660
    iget-object p2, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_52

    .line 661
    const-string p2, "<empty>"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_87

    :catchall_4f
    move-exception p0

    goto/16 :goto_12c

    .line 663
    :cond_52
    iget-object p2, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    move v2, v1

    :goto_59
    if-ge v2, p2, :cond_87

    .line 664
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 665
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "committer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/blob/BlobMetadata$Accessor;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 666
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 667
    invoke-virtual {v3, p1}, Lcom/android/server/blob/BlobMetadata$Committer;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 668
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 671
    :cond_87
    :goto_87
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 673
    const-string p2, "Leasees:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 675
    iget-object p2, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_a0

    .line 676
    const-string p2, "<empty>"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d8

    .line 678
    :cond_a0
    iget-object p2, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    move v2, v1

    :goto_a7
    if-ge v2, p2, :cond_d8

    .line 679
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 680
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "leasee "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/blob/BlobMetadata$Accessor;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 681
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 682
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/blob/BlobMetadata$Leasee;->dump(Landroid/content/Context;Landroid/util/IndentingPrintWriter;)V

    .line 683
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a7

    .line 686
    :cond_d8
    :goto_d8
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 688
    const-string p2, "Open fds:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 689
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 690
    iget-object p2, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_f1

    .line 691
    const-string p0, "<empty>"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_127

    .line 693
    :cond_f1
    iget-object p2, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    :goto_f7
    if-ge v1, p2, :cond_127

    .line 694
    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/blob/BlobMetadata$Accessor;

    .line 695
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 696
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 697
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": #"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f7

    .line 700
    :cond_127
    :goto_127
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 701
    monitor-exit v0

    return-void

    :goto_12c
    monitor-exit v0
    :try_end_12d
    .catchall {:try_start_3 .. :try_end_12d} :catchall_4f

    throw p0
.end method

.method public dumpAsStatsEvent(I)Landroid/util/StatsEvent;
    .registers 18

    move-object/from16 v0, p0

    .line 614
    iget-object v1, v0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 615
    :try_start_5
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 617
    iget-object v3, v0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_12
    const-wide v6, 0x10300000002L

    const-wide v8, 0x10500000001L

    const-wide v10, 0x20b00000001L

    if-ge v5, v3, :cond_5d

    .line 618
    iget-object v12, v0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v12, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 619
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 621
    iget v13, v12, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-virtual {v2, v8, v9, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 622
    iget-wide v8, v12, Lcom/android/server/blob/BlobMetadata$Committer;->commitTimeMs:J

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 624
    iget-object v6, v12, Lcom/android/server/blob/BlobMetadata$Committer;->blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 625
    invoke-virtual {v6}, Lcom/android/server/blob/BlobAccessMode;->getAccessType()I

    move-result v6

    const-wide v7, 0x10500000003L

    .line 624
    invoke-virtual {v2, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 626
    iget-object v6, v12, Lcom/android/server/blob/BlobMetadata$Committer;->blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 627
    invoke-virtual {v6}, Lcom/android/server/blob/BlobAccessMode;->getAllowedPackagesCount()I

    move-result v6

    const-wide v7, 0x10500000004L

    .line 626
    invoke-virtual {v2, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 628
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :catchall_5b
    move-exception v0

    goto :goto_a8

    .line 630
    :cond_5d
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v2

    .line 632
    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v3}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 634
    iget-object v5, v0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    :goto_6c
    if-ge v4, v5, :cond_8f

    .line 635
    iget-object v12, v0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v12, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 636
    invoke-virtual {v3, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 637
    iget v15, v12, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-virtual {v3, v8, v9, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 638
    iget-wide v8, v12, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    invoke-virtual {v3, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 640
    invoke-virtual {v3, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v4, 0x1

    const-wide v8, 0x10500000001L

    goto :goto_6c

    .line 642
    :cond_8f
    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v10

    .line 645
    iget-wide v3, v0, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    invoke-virtual {v0}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v5

    iget-object v0, v0, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    .line 646
    invoke-virtual {v0}, Landroid/app/blob/BlobHandle;->getExpiryTimeMillis()J

    move-result-wide v7

    move-object v9, v2

    move/from16 v2, p1

    .line 645
    invoke-static/range {v2 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJ[B[B)Landroid/util/StatsEvent;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 647
    :goto_a8
    monitor-exit v1
    :try_end_a9
    .catchall {:try_start_5 .. :try_end_a9} :catchall_5b

    throw v0
.end method

.method public forEachLeasee(Ljava/util/function/Consumer;)V
    .registers 3

    .line 503
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 504
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 505
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public getBlobFile()Ljava/io/File;
    .registers 3

    .line 509
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobFile:Ljava/io/File;

    if-nez v0, :cond_c

    .line 510
    iget-wide v0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    invoke-static {v0, v1}, Lcom/android/server/blob/BlobStoreConfig;->getBlobFile(J)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobFile:Ljava/io/File;

    .line 512
    :cond_c
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobFile:Ljava/io/File;

    return-object p0
.end method

.method public getBlobHandle()Landroid/app/blob/BlobHandle;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    return-object p0
.end method

.method public getBlobId()J
    .registers 3

    .line 121
    iget-wide v0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    return-wide v0
.end method

.method public getExistingCommitter(Ljava/lang/String;I)Lcom/android/server/blob/BlobMetadata$Committer;
    .registers 8

    .line 177
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    monitor-enter v0

    .line 178
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_27

    .line 179
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 180
    iget v4, v3, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    if-ne v4, p2, :cond_24

    iget-object v4, v3, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 181
    monitor-exit v0

    return-object v3

    :catchall_22
    move-exception p0

    goto :goto_2a

    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 184
    :cond_27
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_22

    throw p0
.end method

.method public getLeaseInfo(Ljava/lang/String;I)Landroid/app/blob/LeaseInfo;
    .registers 14

    .line 482
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 483
    :try_start_3
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v0, :cond_51

    .line 484
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 485
    invoke-virtual {v4}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result v5

    if-nez v5, :cond_1d

    :cond_1b
    move-object v6, p1

    goto :goto_4d

    .line 488
    :cond_1d
    iget v5, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    if-ne v5, p2, :cond_1b

    iget-object v5, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 489
    iget-object p2, v4, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    if-nez p2, :cond_2f

    :goto_2d
    move v9, v2

    goto :goto_3e

    .line 491
    :cond_2f
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    iget-object v0, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    iget v2, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 493
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 491
    invoke-static {p0, p2, v0, v2}, Lcom/android/server/blob/BlobStoreUtils;->getDescriptionResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    goto :goto_2d

    .line 494
    :goto_3e
    new-instance v5, Landroid/app/blob/LeaseInfo;

    iget-wide v7, v4, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    iget-object v10, v4, Lcom/android/server/blob/BlobMetadata$Leasee;->description:Ljava/lang/CharSequence;

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Landroid/app/blob/LeaseInfo;-><init>(Ljava/lang/String;JILjava/lang/CharSequence;)V

    monitor-exit v1

    return-object v5

    :catchall_4a
    move-exception v0

    move-object p0, v0

    goto :goto_54

    :goto_4d
    add-int/lit8 v3, v3, 0x1

    move-object p1, v6

    goto :goto_b

    .line 498
    :cond_51
    monitor-exit v1

    const/4 p0, 0x0

    return-object p0

    :goto_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_4a

    throw p0
.end method

.method public getSize()J
    .registers 3

    .line 264
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getBlobFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasACommitterInUser(I)Z
    .registers 7

    .line 355
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 356
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_25

    .line 357
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 358
    iget v4, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne p1, v4, :cond_22

    const/4 p0, 0x1

    .line 359
    monitor-exit v0

    return p0

    :catchall_20
    move-exception p0

    goto :goto_27

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 362
    :cond_25
    monitor-exit v0

    return v2

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_20

    throw p0
.end method

.method public hasACommitterOrLeaseeInUser(I)Z
    .registers 3

    .line 351
    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobMetadata;->hasACommitterInUser(I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobMetadata;->hasALeaseeInUser(I)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public final hasALeaseeInUser(I)Z
    .registers 7

    .line 367
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_25

    .line 369
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 370
    iget v4, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne p1, v4, :cond_22

    const/4 p0, 0x1

    .line 371
    monitor-exit v0

    return p0

    :catchall_20
    move-exception p0

    goto :goto_27

    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 374
    :cond_25
    monitor-exit v0

    return v2

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_20

    throw p0
.end method

.method public hasLeaseWaitTimeElapsedForAll()Z
    .registers 6

    .line 604
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_20

    .line 605
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 606
    invoke-virtual {v3}, Lcom/android/server/blob/BlobMetadata$Committer;->getCommitTimeMs()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/blob/BlobStoreConfig;->hasLeaseWaitTimeElapsed(J)Z

    move-result v3

    if-nez v3, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_20
    const/4 p0, 0x1

    return p0
.end method

.method public final hasOtherLeasees(Ljava/lang/String;II)Z
    .registers 12

    .line 459
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 460
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_4b

    .line 461
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 462
    invoke-virtual {v4}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result v5

    if-nez v5, :cond_1c

    goto :goto_48

    :cond_1c
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz p1, :cond_2c

    if-eq p2, v5, :cond_2c

    .line 467
    invoke-virtual {v4, p1, p2}, Lcom/android/server/blob/BlobMetadata$Accessor;->equals(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_2c

    .line 468
    monitor-exit v0

    return v6

    :catchall_2a
    move-exception p0

    goto :goto_4d

    :cond_2c
    if-eqz p1, :cond_40

    .line 469
    iget-object v7, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    iget v7, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 470
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-eq p3, v7, :cond_40

    .line 471
    :cond_3e
    monitor-exit v0

    return v6

    :cond_40
    if-eq p2, v5, :cond_48

    .line 472
    iget v4, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    if-eq v4, p2, :cond_48

    .line 473
    monitor-exit v0

    return v6

    :cond_48
    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 476
    :cond_4b
    monitor-exit v0

    return v2

    :goto_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_2a

    throw p0
.end method

.method public hasValidLeases()Z
    .registers 6

    .line 253
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_23

    .line 255
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobMetadata$Leasee;

    invoke-virtual {v4}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 p0, 0x1

    .line 256
    monitor-exit v0

    return p0

    :catchall_1e
    move-exception p0

    goto :goto_25

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 259
    :cond_23
    monitor-exit v0

    return v2

    .line 260
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_1e

    throw p0
.end method

.method public isACommitter(Ljava/lang/String;I)Z
    .registers 5

    .line 379
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {p0, p1, p2, v1}, Lcom/android/server/blob/BlobMetadata;->isAnAccessor(Landroid/util/ArraySet;Ljava/lang/String;II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 381
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public isALeasee(Ljava/lang/String;I)Z
    .registers 5

    .line 385
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 386
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 387
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 386
    invoke-static {p0, p1, p2, v1}, Lcom/android/server/blob/BlobMetadata;->getAccessor(Landroid/util/ArraySet;Ljava/lang/String;II)Lcom/android/server/blob/BlobMetadata$Accessor;

    move-result-object p0

    check-cast p0, Lcom/android/server/blob/BlobMetadata$Leasee;

    if-eqz p0, :cond_1b

    .line 388
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :catchall_19
    move-exception p0

    goto :goto_1e

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    monitor-exit v0

    return p0

    .line 389
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_19

    throw p0
.end method

.method public final isALeaseeInUser(Ljava/lang/String;II)Z
    .registers 5

    .line 393
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 394
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/blob/BlobMetadata;->getAccessor(Landroid/util/ArraySet;Ljava/lang/String;II)Lcom/android/server/blob/BlobMetadata$Accessor;

    move-result-object p0

    check-cast p0, Lcom/android/server/blob/BlobMetadata$Leasee;

    if-eqz p0, :cond_17

    .line 395
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :catchall_15
    move-exception p0

    goto :goto_1a

    :cond_17
    const/4 p0, 0x0

    :goto_18
    monitor-exit v0

    return p0

    .line 396
    :goto_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_15

    throw p0
.end method

.method public isAccessAllowedForCaller(Ljava/lang/String;I)Z
    .registers 12

    .line 269
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/blob/BlobHandle;->isExpired()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    .line 272
    :cond_c
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_f
    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    move v3, v1

    :goto_16
    const/4 v4, 0x1

    if-ge v3, v2, :cond_35

    .line 275
    iget-object v5, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 276
    invoke-virtual {v5}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-virtual {v5, p1, p2}, Lcom/android/server/blob/BlobMetadata$Accessor;->equals(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 277
    monitor-exit v0

    return v4

    :catchall_2f
    move-exception p0

    goto/16 :goto_a8

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 281
    :cond_35
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 282
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    move v5, v1

    :goto_40
    if-ge v5, v3, :cond_6c

    .line 283
    iget-object v6, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 284
    iget v7, v6, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-eq v2, v7, :cond_53

    goto :goto_69

    .line 289
    :cond_53
    invoke-virtual {v6, p1, p2}, Lcom/android/server/blob/BlobMetadata$Accessor;->equals(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 290
    monitor-exit v0

    return v4

    .line 295
    :cond_5b
    iget-object v7, v6, Lcom/android/server/blob/BlobMetadata$Committer;->blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    iget-object v8, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    iget v6, v6, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-virtual {v7, v8, p1, p2, v6}, Lcom/android/server/blob/BlobAccessMode;->isAccessAllowedForCaller(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_69

    .line 297
    monitor-exit v0

    return v4

    :cond_69
    :goto_69
    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    .line 302
    :cond_6c
    invoke-virtual {p0, p2}, Lcom/android/server/blob/BlobMetadata;->checkCallerCanAccessBlobsAcrossUsers(I)Z

    move-result v3

    if-nez v3, :cond_74

    .line 304
    monitor-exit v0

    return v1

    .line 306
    :cond_74
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    move v5, v1

    :goto_7b
    if-ge v5, v3, :cond_a6

    .line 307
    iget-object v6, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 308
    iget v7, v6, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-ne v2, v7, :cond_8e

    goto :goto_a3

    .line 312
    :cond_8e
    invoke-virtual {p0, p1, v7}, Lcom/android/server/blob/BlobMetadata;->isPackageInstalledOnUser(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_95

    goto :goto_a3

    .line 318
    :cond_95
    iget-object v7, v6, Lcom/android/server/blob/BlobMetadata$Committer;->blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    iget-object v8, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    iget v6, v6, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-virtual {v7, v8, p1, p2, v6}, Lcom/android/server/blob/BlobAccessMode;->isAccessAllowedForCaller(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_a3

    .line 320
    monitor-exit v0

    return v4

    :cond_a3
    :goto_a3
    add-int/lit8 v5, v5, 0x1

    goto :goto_7b

    .line 324
    :cond_a6
    monitor-exit v0

    return v1

    :goto_a8
    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_f .. :try_end_a9} :catchall_2f

    throw p0
.end method

.method public final isPackageInstalledOnUser(Ljava/lang/String;I)Z
    .registers 6

    .line 339
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 341
    :try_start_5
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v2, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_e} :catch_18
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    .line 346
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_13
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 347
    throw p0

    .line 346
    :catch_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method public final synthetic lambda$createRevocableFd$8(Lcom/android/server/blob/BlobMetadata$Accessor;Landroid/os/RevocableFileDescriptor;Ljava/io/IOException;)V
    .registers 5

    .line 552
    iget-object p3, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    monitor-enter p3

    .line 553
    :try_start_3
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 554
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz v0, :cond_1e

    .line 556
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 557
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 558
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_20

    .line 561
    :cond_1e
    :goto_1e
    monitor-exit p3

    return-void

    :goto_20
    monitor-exit p3
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1c

    throw p0
.end method

.method public openForRead(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .registers 6

    .line 519
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getBlobFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->O_RDONLY:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_f
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_f} :catch_26

    .line 524
    :try_start_f
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->shouldUseRevocableFdForReads()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 525
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/blob/BlobMetadata;->createRevocableFd(Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    :catch_1a
    move-exception p0

    goto :goto_22

    .line 527
    :cond_1c
    new-instance p0, Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_21} :catch_1a

    return-object p0

    .line 530
    :goto_22
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 531
    throw p0

    :catch_26
    move-exception p0

    .line 521
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public removeCommitter(Lcom/android/server/blob/BlobMetadata$Committer;)V
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 154
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public removeCommitter(Ljava/lang/String;I)V
    .registers 5

    .line 145
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    new-instance v1, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2, p1}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda4;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 148
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public removeCommittersFromUnknownPkgs(Landroid/util/SparseArray;)V
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    new-instance v1, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda1;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 167
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public removeDataForUser(I)V
    .registers 5

    .line 234
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 236
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 237
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance v1, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 249
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public removeExpiredLeases()V
    .registers 3

    .line 228
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    new-instance v1, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 230
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public removeLeasee(Ljava/lang/String;I)V
    .registers 5

    .line 208
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    new-instance v1, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2, p1}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda3;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 211
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public removeLeaseesFromUnknownPkgs(Landroid/util/SparseArray;)V
    .registers 4

    .line 215
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    new-instance v1, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 224
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final revokeAndClearAllFds()V
    .registers 9

    .line 572
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 573
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_30

    .line 574
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 575
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    if-nez v4, :cond_18

    goto :goto_2d

    .line 579
    :cond_18
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    move v6, v2

    :goto_1d
    if-ge v6, v5, :cond_2d

    .line 580
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/RevocableFileDescriptor;

    invoke-virtual {v7}, Landroid/os/RevocableFileDescriptor;->revoke()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :catchall_2b
    move-exception p0

    goto :goto_37

    :cond_2d
    :goto_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 583
    :cond_30
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 584
    monitor-exit v0

    return-void

    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_2b

    throw p0
.end method

.method public setCommitters(Landroid/util/ArraySet;)V
    .registers 4

    .line 138
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 140
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 141
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public setLeasees(Landroid/util/ArraySet;)V
    .registers 4

    .line 201
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 203
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 204
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public shouldAttributeToLeasee(IZ)Z
    .registers 7

    .line 448
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    .line 449
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/blob/BlobMetadata;->isALeaseeInUser(Ljava/lang/String;II)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_d

    return v3

    :cond_d
    if-eqz p2, :cond_17

    .line 452
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/blob/BlobMetadata;->hasOtherLeasees(Ljava/lang/String;II)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_17

    :cond_16
    return v3

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method public shouldAttributeToLeasee(Ljava/lang/String;IZ)Z
    .registers 7

    const/4 v0, -0x1

    .line 438
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/blob/BlobMetadata;->isALeaseeInUser(Ljava/lang/String;II)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_9

    return v2

    :cond_9
    if-eqz p3, :cond_13

    .line 441
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/blob/BlobMetadata;->hasOtherLeasees(Ljava/lang/String;II)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_13

    :cond_12
    return v2

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public shouldAttributeToUser(I)Z
    .registers 7

    .line 424
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 425
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_24

    .line 426
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 428
    iget v4, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-eq p1, v4, :cond_21

    .line 429
    monitor-exit v0

    return v2

    :catchall_1f
    move-exception p0

    goto :goto_27

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 432
    :cond_24
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_1f

    throw p0
.end method

.method public shouldBeDeleted(Z)Z
    .registers 4

    .line 589
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/blob/BlobHandle;->isExpired()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    :cond_c
    if-eqz p1, :cond_14

    .line 594
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->hasLeaseWaitTimeElapsedForAll()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 595
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->hasValidLeases()Z

    move-result p0

    if-nez p0, :cond_1b

    return v1

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 8

    .line 705
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 706
    :try_start_3
    const-string v1, "id"

    iget-wide v2, p0, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 708
    const-string v1, "bh"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 709
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    invoke-virtual {v1, p1}, Landroid/app/blob/BlobHandle;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 710
    const-string v1, "bh"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 712
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_22
    if-ge v4, v1, :cond_3e

    .line 713
    const-string v5, "c"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 714
    iget-object v5, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/blob/BlobMetadata$Committer;

    invoke-virtual {v5, p1}, Lcom/android/server/blob/BlobMetadata$Committer;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 715
    const-string v5, "c"

    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :catchall_3c
    move-exception p0

    goto :goto_62

    .line 718
    :cond_3e
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    :goto_44
    if-ge v3, v1, :cond_60

    .line 719
    const-string/jumbo v4, "l"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 720
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobMetadata$Leasee;

    invoke-virtual {v4, p1}, Lcom/android/server/blob/BlobMetadata$Leasee;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 721
    const-string/jumbo v4, "l"

    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 723
    :cond_60
    monitor-exit v0

    return-void

    :goto_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_3c

    throw p0
.end method
