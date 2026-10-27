.class public Lcom/android/server/PersistentDataBlockService;
.super Lcom/android/server/SystemService;
.source "PersistentDataBlockService.java"


# static fields
.field public static final DIGEST_SIZE_BYTES:I = 0x20

.field private static final FLASH_LOCK_LOCKED:Ljava/lang/String; = "1"

.field private static final FLASH_LOCK_PROP:Ljava/lang/String; = "ro.boot.flash.locked"

.field private static final FLASH_LOCK_UNLOCKED:Ljava/lang/String; = "0"

.field private static final FRP_CREDENTIAL_RESERVED_SIZE:I = 0x3e8

.field private static final GSI_RUNNING_PROP:Ljava/lang/String; = "ro.gsid.image_running"

.field private static final GSI_SANDBOX:Ljava/lang/String; = "/data/gsi_persistent_data"

.field private static final HEADER_SIZE:I = 0x8

.field private static final MAX_DATA_BLOCK_SIZE:I = 0x19000

.field private static final MAX_FRP_CREDENTIAL_HANDLE_SIZE:I = 0x3e4

.field private static final MAX_MITS_MODE_DATA_SIZE:I = 0x10

.field private static final MAX_TEST_MODE_DATA_SIZE:I = 0x270c

.field private static final MITS_MODE_RESERVED_SIZE:I = 0x14

.field private static final OEM_UNLOCK_PROP:Ljava/lang/String; = "sys.oem_unlock_allowed"

.field private static final PARTITION_TYPE_MARKER:I = 0x19901873

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final TAG:Ljava/lang/String;

.field private static final TEST_MODE_RESERVED_SIZE:I = 0x2710


# instance fields
.field private mAllowedUid:I

.field private mBlockDeviceSize:J

.field private final mContext:Landroid/content/Context;

.field private final mDataBlockFile:Ljava/lang/String;

.field private final mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

.field private mInternalService:Lcom/android/server/PersistentDataBlockManagerInternal;

.field private final mIsRunningDSU:Z

.field private mIsWritable:Z

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAllowedUid(Lcom/android/server/PersistentDataBlockService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/PersistentDataBlockService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataBlockFile(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInternalService(Lcom/android/server/PersistentDataBlockService;)Lcom/android/server/PersistentDataBlockManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService;->mInternalService:Lcom/android/server/PersistentDataBlockManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWritable(Lcom/android/server/PersistentDataBlockService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/PersistentDataBlockService;->mIsWritable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsWritable(Lcom/android/server/PersistentDataBlockService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/PersistentDataBlockService;->mIsWritable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcomputeAndWriteDigestLocked(Lcom/android/server/PersistentDataBlockService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdoGetMaximumDataBlockSize(Lcom/android/server/PersistentDataBlockService;)J
    .registers 3

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->doGetMaximumDataBlockSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mdoGetOemUnlockEnabled(Lcom/android/server/PersistentDataBlockService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdoSetOemUnlockEnabledLocked(Lcom/android/server/PersistentDataBlockService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menforceChecksumValidity(Lcom/android/server/PersistentDataBlockService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$menforceIsAdmin(Lcom/android/server/PersistentDataBlockService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceIsAdmin()V

    return-void
.end method

.method static bridge synthetic -$$Nest$menforceOemUnlockReadPermission(Lcom/android/server/PersistentDataBlockService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockReadPermission()V

    return-void
.end method

.method static bridge synthetic -$$Nest$menforceOemUnlockWritePermission(Lcom/android/server/PersistentDataBlockService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockWritePermission()V

    return-void
.end method

.method static bridge synthetic -$$Nest$menforceUid(Lcom/android/server/PersistentDataBlockService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->enforceUid(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menforceUserRestriction(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->enforceUserRestriction(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetBlockOutputChannel(Lcom/android/server/PersistentDataBlockService;)Ljava/nio/channels/FileChannel;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockOutputChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetFrpCredentialDataOffset(Lcom/android/server/PersistentDataBlockService;)J
    .registers 3

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getFrpCredentialDataOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mgetMITSModeDataOffset(Lcom/android/server/PersistentDataBlockService;)J
    .registers 3

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getMITSModeDataOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mgetTestHarnessModeDataOffset(Lcom/android/server/PersistentDataBlockService;)J
    .registers 3

    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getTestHarnessModeDataOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mgetTotalDataSizeLocked(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->getTotalDataSizeLocked(Ljava/io/DataInputStream;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnativeWipe(Lcom/android/server/PersistentDataBlockService;Ljava/lang/String;)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->nativeWipe(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 104
    const-class v0, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 150
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 141
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    .line 146
    iput-boolean v1, p0, Lcom/android/server/PersistentDataBlockService;->mIsWritable:Z

    .line 483
    new-instance v0, Lcom/android/server/PersistentDataBlockService$1;

    invoke-direct {v0, p0}, Lcom/android/server/PersistentDataBlockService$1;-><init>(Lcom/android/server/PersistentDataBlockService;)V

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mService:Landroid/os/IBinder;

    .line 704
    new-instance v0, Lcom/android/server/PersistentDataBlockService$2;

    invoke-direct {v0, p0}, Lcom/android/server/PersistentDataBlockService$2;-><init>(Lcom/android/server/PersistentDataBlockService;)V

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mInternalService:Lcom/android/server/PersistentDataBlockManagerInternal;

    .line 151
    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 152
    const-string/jumbo v0, "ro.gsid.image_running"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/PersistentDataBlockService;->mIsRunningDSU:Z

    .line 153
    if-eqz v0, :cond_38

    .line 154
    const-string v0, "/data/gsi_persistent_data"

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    goto :goto_41

    .line 156
    :cond_38
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    .line 158
    :goto_41
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    .line 159
    return-void
.end method

.method private computeAndWriteDigestLocked()Z
    .registers 7

    .line 317
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PersistentDataBlockService;->computeDigestLocked([B)[B

    move-result-object v0

    .line 318
    .local v0, "digest":[B
    const/4 v1, 0x0

    if-eqz v0, :cond_35

    .line 321
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockOutputChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c} :catch_2b

    .line 325
    .local v2, "channel":Ljava/nio/channels/FileChannel;
    nop

    .line 328
    const/16 v3, 0x20

    :try_start_f
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 329
    .local v3, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 330
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 331
    invoke-virtual {v2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 332
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_20} :catch_22

    .line 336
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    nop

    .line 337
    return v4

    .line 333
    :catch_22
    move-exception v3

    .line 334
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v5, "failed to write block checksum"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    return v1

    .line 322
    .end local v2    # "channel":Ljava/nio/channels/FileChannel;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2b
    move-exception v2

    .line 323
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "partition not available?"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    return v1

    .line 339
    .end local v2    # "e":Ljava/io/IOException;
    :cond_35
    return v1
.end method

.method private computeDigestLocked([B)[B
    .registers 10
    .param p1, "storedDigest"    # [B

    .line 346
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_12} :catch_64

    .line 350
    .local v1, "inputStream":Ljava/io/DataInputStream;
    nop

    .line 354
    :try_start_13
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_19
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_13 .. :try_end_19} :catch_58

    .line 360
    .local v2, "md":Ljava/security/MessageDigest;
    nop

    .line 363
    const/16 v3, 0x20

    if-eqz p1, :cond_25

    :try_start_1e
    array-length v4, p1

    if-ne v4, v3, :cond_25

    .line 364
    invoke-virtual {v1, p1}, Ljava/io/DataInputStream;->read([B)I

    goto :goto_28

    .line 366
    :cond_25
    invoke-virtual {v1, v3}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 370
    :goto_28
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 371
    .local v4, "data":[B
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 372
    :goto_30
    invoke-virtual {v1, v4}, Ljava/io/DataInputStream;->read([B)I

    move-result v3

    move v6, v3

    .local v6, "read":I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_3c

    .line 373
    invoke-virtual {v2, v4, v5, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_3b} :catch_47
    .catchall {:try_start_1e .. :try_end_3b} :catchall_45

    goto :goto_30

    .line 379
    .end local v4    # "data":[B
    .end local v6    # "read":I
    :cond_3c
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 380
    nop

    .line 382
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0

    .line 379
    :catchall_45
    move-exception v0

    goto :goto_54

    .line 375
    :catch_47
    move-exception v3

    .line 376
    .local v3, "e":Ljava/io/IOException;
    :try_start_48
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v5, "failed to read partition"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_45

    .line 377
    nop

    .line 379
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 377
    return-object v0

    .line 379
    .end local v3    # "e":Ljava/io/IOException;
    :goto_54
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 380
    throw v0

    .line 355
    .end local v2    # "md":Ljava/security/MessageDigest;
    :catch_58
    move-exception v2

    .line 357
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v4, "SHA-256 not supported?"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 359
    return-object v0

    .line 347
    .end local v1    # "inputStream":Ljava/io/DataInputStream;
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_64
    move-exception v1

    .line 348
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "partition not available?"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    return-object v0
.end method

.method private doGetMaximumDataBlockSize()J
    .registers 6

    .line 475
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x20

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 477
    .local v0, "actualSize":J
    const-wide/32 v2, 0x19000

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1b

    move-wide v2, v0

    :cond_1b
    return-wide v2
.end method

.method private doGetOemUnlockEnabled()Z
    .registers 8

    .line 455
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_12} :catch_45

    .line 459
    .local v1, "inputStream":Ljava/io/DataInputStream;
    nop

    .line 462
    :try_start_13
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_33
    .catchall {:try_start_13 .. :try_end_16} :catchall_31

    .line 463
    :try_start_16
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/io/DataInputStream;->skip(J)J

    .line 464
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    goto :goto_29

    :cond_28
    move v3, v0

    :goto_29
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_2e

    .line 470
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 464
    return v3

    .line 465
    :catchall_2e
    move-exception v3

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    .end local v1    # "inputStream":Ljava/io/DataInputStream;
    .end local p0    # "this":Lcom/android/server/PersistentDataBlockService;
    :try_start_30
    throw v3
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_31} :catch_33
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    .line 470
    .restart local v1    # "inputStream":Ljava/io/DataInputStream;
    .restart local p0    # "this":Lcom/android/server/PersistentDataBlockService;
    :catchall_31
    move-exception v0

    goto :goto_41

    .line 466
    :catch_33
    move-exception v2

    .line 467
    .local v2, "e":Ljava/io/IOException;
    :try_start_34
    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unable to access persistent partition"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_31

    .line 468
    nop

    .line 470
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 468
    return v0

    .line 470
    .end local v2    # "e":Ljava/io/IOException;
    :goto_41
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 471
    throw v0

    .line 456
    .end local v1    # "inputStream":Ljava/io/DataInputStream;
    :catch_45
    move-exception v1

    .line 457
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "partition not available"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return v0
.end method

.method private doSetOemUnlockEnabledLocked(Z)V
    .registers 10
    .param p1, "enabled"    # Z

    .line 435
    const-string v0, "1"

    const-string v1, "0"

    const-string/jumbo v2, "sys.oem_unlock_allowed"

    :try_start_7
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockOutputChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 437
    .local v3, "channel":Ljava/nio/channels/FileChannel;
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 439
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 440
    .local v5, "data":Ljava/nio/ByteBuffer;
    if-eqz p1, :cond_1e

    move v6, v4

    goto :goto_1f

    :cond_1e
    const/4 v6, 0x0

    :goto_1f
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 441
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 442
    invoke-virtual {v3, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 443
    invoke-virtual {v3, v4}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_2b} :catch_36
    .catchall {:try_start_7 .. :try_end_2b} :catchall_34

    .line 448
    .end local v3    # "channel":Ljava/nio/channels/FileChannel;
    .end local v5    # "data":Ljava/nio/ByteBuffer;
    if-eqz p1, :cond_2e

    goto :goto_2f

    :cond_2e
    move-object v0, v1

    :goto_2f
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    nop

    .line 450
    return-void

    .line 448
    :catchall_34
    move-exception v3

    goto :goto_47

    .line 444
    :catch_36
    move-exception v3

    .line 445
    .local v3, "e":Ljava/io/IOException;
    :try_start_37
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "unable to access persistent partition"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_34

    .line 448
    if-eqz p1, :cond_42

    goto :goto_43

    :cond_42
    move-object v0, v1

    :goto_43
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    return-void

    .line 448
    .end local v3    # "e":Ljava/io/IOException;
    :goto_47
    if-eqz p1, :cond_4a

    goto :goto_4b

    :cond_4a
    move-object v0, v1

    :goto_4b
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    throw v3
.end method

.method private enforceChecksumValidity()Z
    .registers 6

    .line 298
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 300
    .local v0, "storedDigest":[B
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 301
    :try_start_7
    invoke-direct {p0, v0}, Lcom/android/server/PersistentDataBlockService;->computeDigestLocked([B)[B

    move-result-object v2

    .line 302
    .local v2, "digest":[B
    if-eqz v2, :cond_17

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_17

    .line 307
    .end local v2    # "digest":[B
    :cond_14
    monitor-exit v1

    .line 309
    const/4 v1, 0x1

    return v1

    .line 303
    .restart local v2    # "digest":[B
    :cond_17
    :goto_17
    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v4, "Formatting FRP partition..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/PersistentDataBlockService;->formatPartitionLocked(Z)V

    .line 305
    monitor-exit v1

    return v3

    .line 307
    .end local v2    # "digest":[B
    :catchall_24
    move-exception v2

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw v2
.end method

.method private enforceIsAdmin()V
    .registers 5

    .line 240
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 241
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result v1

    .line 242
    .local v1, "isAdmin":Z
    if-eqz v1, :cond_11

    .line 246
    return-void

    .line 243
    :cond_11
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Only the Admin user is allowed to change OEM unlock state"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private enforceOemUnlockReadPermission()V
    .registers 4

    .line 218
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_OEM_UNLOCK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 220
    const-string v2, "android.permission.OEM_UNLOCK_STATE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_16

    goto :goto_1e

    .line 222
    :cond_16
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can\'t access OEM unlock state. Requires READ_OEM_UNLOCK_STATE or OEM_UNLOCK_STATE permission."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1e
    :goto_1e
    return-void
.end method

.method private enforceOemUnlockWritePermission()V
    .registers 4

    .line 228
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OEM_UNLOCK_STATE"

    const-string v2, "Can\'t modify OEM unlock state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method private enforceUid(I)V
    .registers 5
    .param p1, "callingUid"    # I

    .line 234
    iget v0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    if-ne p1, v0, :cond_5

    .line 237
    return-void

    .line 235
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not allowed to access PST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceUserRestriction(Ljava/lang/String;)V
    .registers 5
    .param p1, "userRestriction"    # Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 253
    return-void

    .line 250
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OEM unlock is disallowed by user restriction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private formatIfOemUnlockEnabled()V
    .registers 4

    .line 207
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    move-result v0

    .line 208
    .local v0, "enabled":Z
    if-eqz v0, :cond_12

    .line 209
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 210
    const/4 v2, 0x1

    :try_start_a
    invoke-direct {p0, v2}, Lcom/android/server/PersistentDataBlockService;->formatPartitionLocked(Z)V

    .line 211
    monitor-exit v1

    goto :goto_12

    :catchall_f
    move-exception v2

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw v2

    .line 214
    :cond_12
    :goto_12
    const-string/jumbo v1, "sys.oem_unlock_allowed"

    if-eqz v0, :cond_1a

    const-string v2, "1"

    goto :goto_1c

    :cond_1a
    const-string v2, "0"

    :goto_1c
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method private formatPartitionLocked(Z)V
    .registers 14
    .param p1, "setOemUnlockEnabled"    # Z

    .line 388
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockOutputChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 392
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    const/16 v1, 0x28

    .line 393
    .local v1, "header_size":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 394
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const/16 v3, 0x20

    new-array v3, v3, [B

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 395
    const v3, 0x19901873

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 396
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 397
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 398
    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 399
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 402
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v5

    long-to-int v5, v5

    sub-int/2addr v5, v1

    .line 403
    .local v5, "payload_size":I
    add-int/lit16 v6, v5, -0x2710

    const/16 v7, 0x3e8

    sub-int/2addr v6, v7

    sub-int/2addr v6, v4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object v2, v6

    .line 405
    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 406
    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 410
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v8

    const-wide/16 v10, 0x2710

    add-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 413
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object v2, v6

    .line 414
    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 415
    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 418
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    move-object v2, v6

    .line 419
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 420
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 421
    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 422
    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_62} :catch_6a

    .line 426
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v1    # "header_size":I
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v5    # "payload_size":I
    nop

    .line 428
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    .line 429
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    .line 430
    return-void

    .line 423
    :catch_6a
    move-exception v0

    .line 424
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v2, "failed to format block"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 425
    return-void
.end method

.method private getAllowedUid(I)I
    .registers 8
    .param p1, "userHandle"    # I

    .line 162
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 163
    const v1, 0x10402a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "allowedPackage":Ljava/lang/String;
    const/4 v1, -0x1

    .line 165
    .local v1, "allowedUid":I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 167
    :try_start_14
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x100000

    invoke-virtual {v2, v0, v3, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v2
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_20} :catch_22

    move v1, v2

    .line 172
    goto :goto_3c

    .line 169
    :catch_22
    move-exception v2

    .line 171
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "not able to find package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3c
    :goto_3c
    return v1
.end method

.method private getBlockDeviceSize()J
    .registers 6

    .line 270
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1d

    .line 272
    iget-boolean v1, p0, Lcom/android/server/PersistentDataBlockService;->mIsRunningDSU:Z

    if-eqz v1, :cond_15

    .line 273
    const-wide/32 v1, 0x19000

    iput-wide v1, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    goto :goto_1d

    .line 275
    :cond_15
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/PersistentDataBlockService;->nativeGetBlockDeviceSize(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    .line 278
    :cond_1d
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_21

    .line 280
    iget-wide v0, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    return-wide v0

    .line 278
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method private getBlockOutputChannel()Ljava/nio/channels/FileChannel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0
.end method

.method private getFrpCredentialDataOffset()J
    .registers 5

    .line 284
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getMITSModeDataOffset()J
    .registers 5

    .line 293
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getTestHarnessModeDataOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x14

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getTestHarnessModeDataOffset()J
    .registers 5

    .line 288
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getFrpCredentialDataOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private getTotalDataSizeLocked(Ljava/io/DataInputStream;)I
    .registers 4
    .param p1, "inputStream"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 257
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 260
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 261
    .local v0, "blockId":I
    const v1, 0x19901873

    if-ne v0, v1, :cond_13

    .line 262
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .local v1, "totalDataSize":I
    goto :goto_14

    .line 264
    .end local v1    # "totalDataSize":I
    :cond_13
    const/4 v1, 0x0

    .line 266
    .restart local v1    # "totalDataSize":I
    :goto_14
    return v1
.end method

.method private native nativeGetBlockDeviceSize(Ljava/lang/String;)J
.end method

.method private native nativeWipe(Ljava/lang/String;)I
.end method


# virtual methods
.method synthetic lambda$onStart$0$com-android-server-PersistentDataBlockService()V
    .registers 3

    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PersistentDataBlockService;->getAllowedUid(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    .line 182
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z

    .line 183
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->formatIfOemUnlockEnabled()V

    .line 184
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mService:Landroid/os/IBinder;

    const-string/jumbo v1, "persistent_data_block"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/PersistentDataBlockService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 185
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 186
    return-void
.end method

.method public onBootPhase(I)V
    .registers 7
    .param p1, "phase"    # I

    .line 192
    const-string v0, "Service "

    const/16 v1, 0x1f4

    if-ne p1, v1, :cond_61

    .line 194
    :try_start_6
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0xa

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_10} :catch_3a

    if-eqz v1, :cond_1b

    .line 200
    nop

    .line 201
    const-class v0, Lcom/android/server/PersistentDataBlockManagerInternal;

    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mInternalService:Lcom/android/server/PersistentDataBlockManagerInternal;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_61

    .line 195
    :cond_1b
    :try_start_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " init timeout"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/PersistentDataBlockService;
    .end local p1    # "phase":I
    throw v1
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_3a} :catch_3a

    .line 197
    .restart local p0    # "this":Lcom/android/server/PersistentDataBlockService;
    .restart local p1    # "phase":I
    :catch_3a
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 199
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " init interrupted"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 203
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_61
    :goto_61
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    .line 204
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 180
    new-instance v0, Lcom/android/server/PersistentDataBlockService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/PersistentDataBlockService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/PersistentDataBlockService;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onStart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 187
    return-void
.end method
