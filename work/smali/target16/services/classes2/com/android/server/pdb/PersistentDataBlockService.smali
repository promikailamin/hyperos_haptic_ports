.class public Lcom/android/server/pdb/PersistentDataBlockService;
.super Lcom/android/server/SystemService;
.source "PersistentDataBlockService.java"


# static fields
.field static final FRP_CREDENTIAL_RESERVED_SIZE:I = 0x3e8

.field static final FRP_SECRET_MAGIC:[B

.field static final FRP_SECRET_SIZE:I = 0x20

.field static final HEADER_SIZE:I = 0x8

.field static final MAX_DATA_BLOCK_SIZE:I = 0x19000

.field static final MAX_FRP_CREDENTIAL_HANDLE_SIZE:I = 0x3e4

.field static final MAX_TEST_MODE_DATA_SIZE:I = 0x270c

.field public static final TAG:Ljava/lang/String; = "PersistentDataBlockService"

.field static final TEST_MODE_RESERVED_SIZE:I = 0x2710


# instance fields
.field public mAllowedUid:I

.field public mBlockDeviceSize:J

.field public final mContext:Landroid/content/Context;

.field public final mDataBlockFile:Ljava/lang/String;

.field public mFrpActive:Z

.field public final mFrpSecretFile:Ljava/lang/String;

.field public final mFrpSecretTmpFile:Ljava/lang/String;

.field public final mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

.field public mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

.field public final mIsFileBacked:Z

.field public mIsWritable:Z

.field public final mLock:Ljava/lang/Object;

.field public final mService:Landroid/os/IBinder;


# direct methods
.method public static synthetic $r8$lambda$konnAXJEAnzKBClo_dB4T2g6MZ4(Lcom/android/server/pdb/PersistentDataBlockService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->lambda$onStart$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAllowedUid(Lcom/android/server/pdb/PersistentDataBlockService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mAllowedUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBlockDeviceSize(Lcom/android/server/pdb/PersistentDataBlockService;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pdb/PersistentDataBlockService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDataBlockFile(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrpActive(Lcom/android/server/pdb/PersistentDataBlockService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrpSecretFile(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretFile:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFrpSecretTmpFile(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretTmpFile:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInitDoneSignal(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInternalService(Lcom/android/server/pdb/PersistentDataBlockService;)Lcom/android/server/pdb/PersistentDataBlockService$InternalService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsFileBacked(Lcom/android/server/pdb/PersistentDataBlockService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsFileBacked:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsWritable(Lcom/android/server/pdb/PersistentDataBlockService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsWritable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmFrpActive(Lcom/android/server/pdb/PersistentDataBlockService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsWritable(Lcom/android/server/pdb/PersistentDataBlockService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsWritable:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcomputeAndWriteDigestLocked(Lcom/android/server/pdb/PersistentDataBlockService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdeactivateFrp(Lcom/android/server/pdb/PersistentDataBlockService;[B)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->deactivateFrp([B)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdoGetMaximumDataBlockSize(Lcom/android/server/pdb/PersistentDataBlockService;)J
    .registers 3

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->doGetMaximumDataBlockSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$mdoGetOemUnlockEnabled(Lcom/android/server/pdb/PersistentDataBlockService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdoSetOemUnlockEnabledLocked(Lcom/android/server/pdb/PersistentDataBlockService;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceChecksumValidity(Lcom/android/server/pdb/PersistentDataBlockService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceChecksumValidity()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$menforceConfigureFrpPermission(Lcom/android/server/pdb/PersistentDataBlockService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceConfigureFrpPermission()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceFactoryResetProtectionInactive(Lcom/android/server/pdb/PersistentDataBlockService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceFactoryResetProtectionInactive()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceIsAdmin(Lcom/android/server/pdb/PersistentDataBlockService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceIsAdmin()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceOemUnlockReadPermission(Lcom/android/server/pdb/PersistentDataBlockService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceOemUnlockReadPermission()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceOemUnlockWritePermission(Lcom/android/server/pdb/PersistentDataBlockService;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceOemUnlockWritePermission()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceUid(Lcom/android/server/pdb/PersistentDataBlockService;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceUid(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceUid(Lcom/android/server/pdb/PersistentDataBlockService;IZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceUid(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menforceUserRestriction(Lcom/android/server/pdb/PersistentDataBlockService;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceUserRestriction(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetBlockOutputChannel(Lcom/android/server/pdb/PersistentDataBlockService;)Ljava/nio/channels/FileChannel;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockOutputChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetTotalDataSizeLocked(Lcom/android/server/pdb/PersistentDataBlockService;Ljava/io/DataInputStream;)I
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->getTotalDataSizeLocked(Ljava/io/DataInputStream;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhasFrpSecretMagic(Lcom/android/server/pdb/PersistentDataBlockService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->hasFrpSecretMagic()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnativeWipe(Lcom/android/server/pdb/PersistentDataBlockService;Ljava/lang/String;)I
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->nativeWipe(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetOldSettingForBackworkCompatibility(Lcom/android/server/pdb/PersistentDataBlockService;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->setOldSettingForBackworkCompatibility(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateFrpSecret(Lcom/android/server/pdb/PersistentDataBlockService;[B)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->updateFrpSecret([B)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    .line 156
    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    return-void

    :array_a
    .array-data 1
        -0x26t
        -0x3et
        -0x4t
        -0x33t
        -0x47t
        0x1bt
        0x9t
        -0x78t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 215
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 196
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 197
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, -0x1

    .line 201
    iput v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mAllowedUid:I

    const-wide/16 v2, -0x1

    .line 202
    iput-wide v2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    .line 209
    iput-boolean v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 211
    iput-boolean v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsWritable:Z

    .line 835
    new-instance v0, Lcom/android/server/pdb/PersistentDataBlockService$1;

    invoke-direct {v0, p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;-><init>(Lcom/android/server/pdb/PersistentDataBlockService;)V

    iput-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mService:Landroid/os/IBinder;

    .line 1258
    new-instance v0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;-><init>(Lcom/android/server/pdb/PersistentDataBlockService;Lcom/android/server/pdb/PersistentDataBlockService-IA;)V

    iput-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    .line 216
    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 217
    const-string p1, "/data/system/frp_secret"

    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretFile:Ljava/lang/String;

    .line 218
    const-string p1, "/data/system/frp_secret_tmp"

    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretTmpFile:Ljava/lang/String;

    .line 219
    const-string/jumbo p1, "ro.gsid.image_running"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_47

    .line 220
    iput-boolean v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsFileBacked:Z

    .line 221
    const-string p1, "/data/gsi_persistent_data"

    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    return-void

    .line 223
    :cond_47
    iput-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsFileBacked:Z

    .line 224
    const-string/jumbo p1, "ro.frp.pst"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 231
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 196
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 197
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, -0x1

    .line 201
    iput v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mAllowedUid:I

    const-wide/16 v2, -0x1

    .line 202
    iput-wide v2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    .line 209
    iput-boolean v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 211
    iput-boolean v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsWritable:Z

    .line 835
    new-instance v0, Lcom/android/server/pdb/PersistentDataBlockService$1;

    invoke-direct {v0, p0}, Lcom/android/server/pdb/PersistentDataBlockService$1;-><init>(Lcom/android/server/pdb/PersistentDataBlockService;)V

    iput-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mService:Landroid/os/IBinder;

    .line 1258
    new-instance v0, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;-><init>(Lcom/android/server/pdb/PersistentDataBlockService;Lcom/android/server/pdb/PersistentDataBlockService-IA;)V

    iput-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    .line 232
    iput-object p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 233
    iput-boolean p2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsFileBacked:Z

    .line 234
    iput-object p3, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    .line 235
    iput-wide p4, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    .line 236
    iput-object p6, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretFile:Ljava/lang/String;

    .line 237
    iput-object p7, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretTmpFile:Ljava/lang/String;

    return-void
.end method

.method private native nativeGetBlockDeviceSize(Ljava/lang/String;)J
.end method

.method private native nativeWipe(Ljava/lang/String;)I
.end method


# virtual methods
.method public activateFrp()V
    .registers 3

    .line 690
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 691
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 692
    invoke-virtual {p0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->setOldSettingForBackworkCompatibility(Z)V

    .line 693
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public automaticallyDeactivateFrpIfPossible()Z
    .registers 6

    .line 590
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 591
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretFile:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->deactivateFrpWithFileSecret(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    .line 592
    monitor-exit v0

    return v2

    :catchall_e
    move-exception p0

    goto :goto_52

    .line 595
    :cond_10
    sget-object v1, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v3, "Failed to deactivate with primary secret file, trying backup."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v3, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretTmpFile:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/pdb/PersistentDataBlockService;->deactivateFrpWithFileSecret(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 598
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->moveFrpTempFileToPrimary()V

    .line 599
    monitor-exit v0

    return v2

    .line 602
    :cond_24
    const-string v3, "Failed to deactivate with backup secret file, trying default secret."

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x20

    .line 603
    new-array v3, v3, [B

    invoke-virtual {p0, v3}, Lcom/android/server/pdb/PersistentDataBlockService;->deactivateFrp([B)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 604
    monitor-exit v0

    return v2

    .line 616
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->isUpgradingFromPreVRelease()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4b

    .line 617
    const-string v3, "Upgrading from Android 14 or lower, defaulting FRP secret"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->writeFrpMagicAndDefaultSecret()V

    .line 619
    iput-boolean v4, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 620
    invoke-virtual {p0, v4}, Lcom/android/server/pdb/PersistentDataBlockService;->setOldSettingForBackworkCompatibility(Z)V

    .line 621
    monitor-exit v0

    return v2

    .line 624
    :cond_4b
    const-string p0, "Did not find valid FRP secret, FRP remains active."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    monitor-exit v0

    return v4

    .line 626
    :goto_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_e

    throw p0
.end method

.method public final computeAndWriteDigestLocked()Z
    .registers 4

    const/4 v0, 0x0

    .line 467
    invoke-virtual {p0, v0}, Lcom/android/server/pdb/PersistentDataBlockService;->computeDigestLocked([B)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 469
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockOutputChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_c} :catch_23

    const/16 v2, 0x20

    .line 470
    :try_start_e
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 471
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 472
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 473
    invoke-virtual {p0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v0, 0x1

    .line 474
    invoke-virtual {p0, v0}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_25

    .line 475
    :try_start_1f
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_23

    return v0

    :catch_23
    move-exception p0

    goto :goto_31

    :catchall_25
    move-exception v0

    if-eqz p0, :cond_30

    .line 469
    :try_start_28
    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception p0

    :try_start_2d
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_30
    :goto_30
    throw v0
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_31} :catch_23

    .line 476
    :goto_31
    sget-object v0, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v2, "failed to write block checksum"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_38
    return v1
.end method

.method public final computeDigestLocked([B)[B
    .registers 7

    const/4 v0, 0x0

    .line 488
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_12} :catch_60

    .line 496
    :try_start_12
    const-string p0, "SHA-256"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_18
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_12 .. :try_end_18} :catch_54

    const/16 v2, 0x20

    if-eqz p1, :cond_27

    .line 505
    :try_start_1c
    array-length v3, p1

    if-ne v3, v2, :cond_27

    .line 506
    invoke-virtual {v1, p1}, Ljava/io/DataInputStream;->read([B)I

    goto :goto_2a

    :catchall_23
    move-exception p0

    goto :goto_50

    :catch_25
    move-exception p0

    goto :goto_45

    .line 508
    :cond_27
    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    :goto_2a
    const/16 p1, 0x400

    .line 512
    new-array p1, p1, [B

    const/4 v3, 0x0

    .line 513
    invoke-virtual {p0, p1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 514
    :goto_32
    invoke-virtual {v1, p1}, Ljava/io/DataInputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3d

    .line 515
    invoke-virtual {p0, p1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_3c} :catch_25
    .catchall {:try_start_1c .. :try_end_3c} :catchall_23

    goto :goto_32

    .line 521
    :cond_3d
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 524
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    .line 518
    :goto_45
    :try_start_45
    sget-object p1, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v2, "failed to read partition"

    invoke-static {p1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_23

    .line 521
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v0

    :goto_50
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 522
    throw p0

    :catch_54
    move-exception p0

    .line 499
    sget-object p1, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v2, "SHA-256 not supported?"

    invoke-static {p1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 500
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v0

    :catch_60
    move-exception p0

    .line 490
    sget-object p1, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "partition not available?"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public final deactivateFrp([B)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_69

    .line 712
    array-length v1, p1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_9

    goto :goto_69

    .line 717
    :cond_9
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 718
    :try_start_c
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->hasFrpSecretMagic()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 719
    sget-object v3, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v4, "No FRP secret magic, system must have been upgraded."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->writeFrpMagicAndDefaultSecret()V

    goto :goto_1f

    :catchall_1d
    move-exception p0

    goto :goto_67

    .line 722
    :cond_1f
    :goto_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_1d

    .line 724
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecret()[B

    move-result-object v1

    if-eqz v1, :cond_5f

    .line 725
    array-length v3, v1

    if-eq v3, v2, :cond_2a

    goto :goto_5f

    .line 731
    :cond_2a
    invoke-static {p1, v1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 732
    iput-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 733
    sget-object p1, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v0, "FRP secret matched, FRP deactivated."

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-boolean p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    invoke-virtual {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->setOldSettingForBackworkCompatibility(Z)V

    const/4 p0, 0x1

    return p0

    .line 737
    :cond_40
    sget-object p0, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FRP deactivation failed with secret "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    invoke-static {}, Ljava/util/HexFormat;->of()Ljava/util/HexFormat;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HexFormat;->formatHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 737
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 726
    :cond_5f
    :goto_5f
    sget-object p0, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string p1, "Failed to read FRP secret from persistent data partition"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 722
    :goto_67
    :try_start_67
    monitor-exit v1
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_1d

    throw p0

    .line 713
    :cond_69
    :goto_69
    sget-object p0, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string p1, "Attempted to deactivate FRP with a null or incorrectly-sized secret"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final deactivateFrpWithFileSecret(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 631
    :try_start_1
    new-array v1, v0, [Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->deactivateFrp([B)Z

    move-result p0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_f} :catch_10

    return p0

    :catch_10
    move-exception p0

    .line 633
    sget-object v1, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read FRP secret file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 633
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final doGetMaximumDataBlockSize()J
    .registers 7

    .line 816
    sget-object v0, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x20

    int-to-long v0, v0

    .line 817
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v2

    const-wide/16 v4, 0x2738

    sub-long/2addr v2, v4

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3e9

    sub-long/2addr v2, v0

    const-wide/32 v0, 0x19000

    cmp-long p0, v2, v0

    if-gtz p0, :cond_19

    return-wide v2

    :cond_19
    return-wide v0
.end method

.method public final doGetOemUnlockEnabled()Z
    .registers 8

    const/4 v0, 0x0

    .line 796
    :try_start_1
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_12} :catch_43

    .line 803
    :try_start_12
    iget-object v2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_32
    .catchall {:try_start_12 .. :try_end_15} :catchall_30

    .line 804
    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/io/DataInputStream;->skip(J)J

    .line 805
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result p0

    if-eqz p0, :cond_27

    const/4 p0, 0x1

    goto :goto_28

    :cond_27
    move p0, v0

    :goto_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_2d

    .line 811
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return p0

    :catchall_2d
    move-exception p0

    .line 806
    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    :try_start_2f
    throw p0
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_30} :catch_32
    .catchall {:try_start_2f .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    goto :goto_3f

    :catch_32
    move-exception p0

    .line 808
    :try_start_33
    sget-object v2, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unable to access persistent partition"

    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b
    .catchall {:try_start_33 .. :try_end_3b} :catchall_30

    .line 811
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v0

    :goto_3f
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 812
    throw p0

    .line 798
    :catch_43
    sget-object p0, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "partition not available"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final doSetOemUnlockEnabledLocked(Z)V
    .registers 7

    .line 780
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockOutputChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_2f

    .line 781
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/4 p0, 0x1

    .line 783
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 784
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 785
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 786
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 787
    invoke-virtual {v0, p0}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_23

    .line 788
    :try_start_1f
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_2f

    return-void

    :catchall_23
    move-exception p0

    if-eqz v0, :cond_2e

    .line 780
    :try_start_26
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception p1

    :try_start_2b
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2e
    :goto_2e
    throw p0
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2f} :catch_2f

    :catch_2f
    move-exception p0

    .line 789
    sget-object p1, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "unable to access persistent partition"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final enforceChecksumValidity()Z
    .registers 4

    const/16 v0, 0x20

    .line 443
    new-array v0, v0, [B

    .line 445
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 446
    :try_start_7
    invoke-virtual {p0, v0}, Lcom/android/server/pdb/PersistentDataBlockService;->computeDigestLocked([B)[B

    move-result-object v2

    if-eqz v2, :cond_19

    .line 447
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_19

    .line 452
    :cond_14
    monitor-exit v1

    const/4 p0, 0x1

    return p0

    :catchall_17
    move-exception p0

    goto :goto_26

    .line 448
    :cond_19
    :goto_19
    sget-object v0, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v2, "Formatting FRP partition..."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 449
    invoke-virtual {p0, v0}, Lcom/android/server/pdb/PersistentDataBlockService;->formatPartitionLocked(Z)V

    .line 450
    monitor-exit v1

    return v0

    .line 452
    :goto_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_17

    throw p0
.end method

.method public final enforceConfigureFrpPermission()V
    .registers 2

    .line 346
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.CONFIGURE_FACTORY_RESET_PROTECTION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_c

    return-void

    .line 349
    :cond_c
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Can\'t configure Factory Reset Protection. Requires CONFIGURE_FACTORY_RESET_PROTECTION"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceFactoryResetProtectionInactive()V
    .registers 2

    .line 1239
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->isFrpActive()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 1240
    :cond_7
    sget-object p0, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v0, "Attempt to update PDB was blocked because FRP is active."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "FRP is active"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceIsAdmin()V
    .registers 2

    .line 366
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 367
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result p0

    if-eqz p0, :cond_11

    return-void

    .line 369
    :cond_11
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Only the Admin user is allowed to change OEM unlock state"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceOemUnlockReadPermission()V
    .registers 3

    .line 330
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_OEM_UNLOCK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1e

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.OEM_UNLOCK_STATE"

    .line 332
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eq p0, v1, :cond_16

    goto :goto_1e

    .line 334
    :cond_16
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Can\'t access OEM unlock state. Requires READ_OEM_UNLOCK_STATE or OEM_UNLOCK_STATE permission."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    :goto_1e
    return-void
.end method

.method public final enforceOemUnlockWritePermission()V
    .registers 3

    .line 340
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.OEM_UNLOCK_STATE"

    const-string v1, "Can\'t modify OEM unlock state"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceUid(I)V
    .registers 3

    const/4 v0, 0x0

    .line 355
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceUid(IZ)V

    return-void
.end method

.method public final enforceUid(IZ)V
    .registers 4

    .line 359
    iget p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mAllowedUid:I

    if-eq p1, p0, :cond_29

    if-eqz p1, :cond_29

    const/16 p0, 0x7d0

    if-ne p1, p0, :cond_d

    if-eqz p2, :cond_d

    goto :goto_29

    .line 361
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Uid "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not allowed to access PDB"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    :goto_29
    return-void
.end method

.method public final enforceUserRestriction(Ljava/lang/String;)V
    .registers 4

    .line 375
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_d

    return-void

    .line 376
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OEM unlock is disallowed by user restriction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public formatPartitionLocked(Z)V
    .registers 10

    .line 530
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockOutputChannelIgnoringFrp()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_97

    const/16 v1, 0x28

    .line 535
    :try_start_6
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v2, 0x20

    .line 536
    new-array v3, v2, [B

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const v3, 0x19901873

    .line 537
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 538
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 539
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 540
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v1, 0x1

    .line 541
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 544
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v4

    long-to-int v4, v4

    add-int/lit16 v4, v4, -0x2738

    .line 545
    sget-object v5, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    array-length v6, v5

    sub-int/2addr v4, v6

    add-int/lit16 v4, v4, -0x409

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 547
    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 548
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 551
    sget-object v4, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v6, "Writing FRP secret magic"

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 554
    const-string v5, "Writing default FRP secret"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 556
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 558
    iput-boolean v3, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 562
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/16 v2, 0x3e8

    .line 565
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 566
    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 567
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 570
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 571
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 572
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 573
    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 574
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_81
    .catchall {:try_start_6 .. :try_end_81} :catchall_8b

    .line 575
    :try_start_81
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_97

    .line 580
    invoke-virtual {p0, p1}, Lcom/android/server/pdb/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    .line 581
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    return-void

    :catchall_8b
    move-exception p0

    if-eqz v0, :cond_96

    .line 530
    :try_start_8e
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_92

    goto :goto_96

    :catchall_92
    move-exception p1

    :try_start_93
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_96
    :goto_96
    throw p0
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_93 .. :try_end_97} :catch_97

    :catch_97
    move-exception p0

    .line 576
    sget-object p1, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v0, "failed to format block"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final getAllowedUid()I
    .registers 5

    .line 241
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 242
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    move-result v0

    if-gez v0, :cond_f

    const/4 v0, 0x0

    .line 247
    :cond_f
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10402d3

    .line 248
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 252
    :try_start_22
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v2, 0x100000

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result p0
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_2e} :catch_2f

    return p0

    :catch_2f
    move-exception p0

    .line 256
    sget-object v0, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not able to find package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_47
    const/4 p0, -0x1

    return p0
.end method

.method public getBlockDeviceSize()J
    .registers 6

    .line 397
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 398
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1f

    .line 399
    iget-boolean v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mIsFileBacked:Z

    if-eqz v1, :cond_17

    const-wide/32 v1, 0x19000

    .line 400
    iput-wide v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    goto :goto_1f

    :catchall_15
    move-exception p0

    goto :goto_23

    .line 402
    :cond_17
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/pdb/PersistentDataBlockService;->nativeGetBlockDeviceSize(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    .line 405
    :cond_1f
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_15

    .line 407
    iget-wide v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mBlockDeviceSize:J

    return-wide v0

    .line 405
    :goto_23
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_15

    throw p0
.end method

.method public final getBlockOutputChannel()Ljava/nio/channels/FileChannel;
    .registers 1

    .line 458
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceFactoryResetProtectionInactive()V

    .line 459
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockOutputChannelIgnoringFrp()Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method

.method public final getBlockOutputChannelIgnoringFrp()Ljava/nio/channels/FileChannel;
    .registers 3

    .line 463
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    const-string/jumbo v1, "rw"

    invoke-direct {v0, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method

.method public getFrpCredentialDataOffset()J
    .registers 5

    .line 419
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getOemUnlockDataOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final getFrpSecret()[B
    .registers 4

    .line 708
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretDataOffset()J

    move-result-wide v0

    const/16 v2, 0x20

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pdb/PersistentDataBlockService;->readDataBlock(JI)[B

    move-result-object p0

    return-object p0
.end method

.method public getFrpSecretDataOffset()J
    .registers 5

    .line 429
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getTestHarnessModeDataOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getFrpSecretMagicOffset()J
    .registers 5

    .line 424
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretDataOffset()J

    move-result-wide v0

    sget-object p0, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    array-length p0, p0

    int-to-long v2, p0

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getInterfaceForTesting()Landroid/service/persistentdata/IPersistentDataBlockService;
    .registers 1

    .line 827
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mService:Landroid/os/IBinder;

    invoke-static {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/persistentdata/IPersistentDataBlockService;

    move-result-object p0

    return-object p0
.end method

.method public getInternalInterfaceForTesting()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;
    .registers 1

    .line 832
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    return-object p0
.end method

.method public getMaximumFrpDataSize()I
    .registers 7

    .line 412
    sget-object v0, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x20

    int-to-long v0, v0

    .line 413
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getTestHarnessModeDataOffset()J

    move-result-wide v2

    const-wide/16 v4, 0x28

    sub-long/2addr v2, v4

    sub-long/2addr v2, v0

    long-to-int p0, v2

    return p0
.end method

.method public getOemUnlockDataOffset()J
    .registers 5

    .line 439
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTestHarnessModeDataOffset()J
    .registers 5

    .line 434
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpCredentialDataOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final getTotalDataSizeLocked(Ljava/io/DataInputStream;)I
    .registers 3

    const/16 p0, 0x20

    .line 383
    invoke-virtual {p1, p0}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 386
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    const v0, 0x19901873

    if-ne p0, v0, :cond_13

    .line 388
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public final hasFrpSecretMagic()Z
    .registers 5

    .line 698
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretMagicOffset()J

    move-result-wide v0

    sget-object v2, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    array-length v3, v2

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/pdb/PersistentDataBlockService;->readDataBlock(JI)[B

    move-result-object p0

    if-nez p0, :cond_16

    .line 701
    sget-object p0, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v0, "Failed to read FRP magic region."

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 704
    :cond_16
    invoke-static {p0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public isFrpActive()Z
    .registers 2

    .line 649
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 653
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 654
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isUpgradingFromPreVRelease()Z
    .registers 2

    .line 1247
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    .line 1248
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    if-nez p0, :cond_13

    .line 1250
    sget-object p0, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v0, "Unable to retrieve PackageManagerInternal"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_13
    const/16 v0, 0x23

    .line 1255
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManagerInternal;->isUpgradingFromLowerThan(I)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$onStart$0()V
    .registers 3

    .line 266
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->enforceChecksumValidity()Z

    .line 267
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->automaticallyDeactivateFrpIfPossible()Z

    .line 268
    iget-boolean v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    invoke-virtual {p0, v0}, Lcom/android/server/pdb/PersistentDataBlockService;->setOldSettingForBackworkCompatibility(Z)V

    .line 269
    const-string/jumbo v0, "persistent_data_block"

    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->signalInitDone()V

    return-void
.end method

.method public final moveFrpTempFileToPrimary()V
    .registers 5

    .line 641
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretTmpFile:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretFile:Ljava/lang/String;

    new-array v2, v1, [Ljava/lang/String;

    invoke-static {p0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/file/CopyOption;

    sget-object v3, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v3, v2, v1

    invoke-static {v0, p0, v2}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception p0

    .line 643
    sget-object v0, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v1, "Error moving FRP backup file to primary (ignored)"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_14

    .line 296
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->waitForInitDoneSignal()V

    .line 298
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getAllowedUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mAllowedUid:I

    .line 299
    const-class v0, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 301
    :cond_14
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 265
    new-instance v0, Lcom/android/server/pdb/PersistentDataBlockService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/pdb/PersistentDataBlockService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pdb/PersistentDataBlockService;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".onStart"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public readDataBlock(JI)[B
    .registers 8

    .line 766
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_2e

    .line 768
    :try_start_11
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_24

    .line 769
    :try_start_14
    invoke-virtual {v0, p1, p2}, Ljava/io/DataInputStream;->skip(J)J

    .line 770
    new-array p1, p3, [B

    .line 771
    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 772
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_21

    .line 774
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_2e

    return-object p1

    :catchall_21
    move-exception p1

    .line 773
    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw p1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 766
    :try_start_25
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception p1

    :try_start_2a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2d
    throw p0
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2e} :catch_2e

    :catch_2e
    move-exception p0

    .line 775
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "persistent partition not readable"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setAllowedUid(I)V
    .registers 2

    .line 317
    iput p1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mAllowedUid:I

    return-void
.end method

.method public final setOldSettingForBackworkCompatibility(Z)V
    .registers 5

    .line 283
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 285
    :try_start_4
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v2, "secure_frp_mode"

    invoke-static {p0, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 288
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 289
    throw p0
.end method

.method public signalInitDone()V
    .registers 1

    .line 276
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final updateFrpSecret([B)Z
    .registers 8

    const/4 v0, 0x0

    .line 666
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpSecretTmpFile:Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/String;

    .line 667
    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    sget-object v3, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    aput-object v3, v2, v0

    sget-object v3, Ljava/nio/file/StandardOpenOption;->CREATE:Ljava/nio/file/StandardOpenOption;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    sget-object v3, Ljava/nio/file/StandardOpenOption;->TRUNCATE_EXISTING:Ljava/nio/file/StandardOpenOption;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    sget-object v3, Ljava/nio/file/StandardOpenOption;->SYNC:Ljava/nio/file/StandardOpenOption;

    const/4 v5, 0x3

    aput-object v3, v2, v5

    .line 666
    invoke-static {v1, p1, v2}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;[B[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_22} :catch_37

    .line 674
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInternalService:Lcom/android/server/pdb/PersistentDataBlockService$InternalService;

    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretDataOffset()J

    move-result-wide v2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {v1, v2, v3, p1}, Lcom/android/server/pdb/PersistentDataBlockService$InternalService;->-$$Nest$mwriteDataBuffer(Lcom/android/server/pdb/PersistentDataBlockService$InternalService;JLjava/nio/ByteBuffer;)Z

    move-result p1

    if-nez p1, :cond_33

    return v0

    .line 681
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->moveFrpTempFileToPrimary()V

    return v4

    :catch_37
    move-exception p0

    .line 669
    sget-object p1, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v1, "Failed to write FRP secret file"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public final waitForInitDoneSignal()V
    .registers 5

    .line 306
    const-string v0, "Service "

    :try_start_2
    iget-object p0, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mInitDoneSignal:Ljava/util/concurrent/CountDownLatch;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v2, v3, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    if-eqz p0, :cond_f

    return-void

    .line 307
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " init timeout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception p0

    .line 310
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 311
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " init interrupted"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final writeFrpMagicAndDefaultSecret()V
    .registers 7

    .line 744
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getBlockOutputChannelIgnoringFrp()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_42

    .line 745
    :try_start_4
    iget-object v1, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_47

    .line 746
    :try_start_7
    sget-object v2, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v3, "Writing default FRP secret"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretDataOffset()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/16 v3, 0x20

    .line 748
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v3, 0x1

    .line 749
    invoke-virtual {v0, v3}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 751
    const-string v4, "Writing FRP secret magic"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->getFrpSecretMagicOffset()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 753
    sget-object v2, Lcom/android/server/pdb/PersistentDataBlockService;->FRP_SECRET_MAGIC:[B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 754
    invoke-virtual {v0, v3}, Ljava/nio/channels/FileChannel;->force(Z)V

    const/4 v2, 0x0

    .line 756
    iput-boolean v2, p0, Lcom/android/server/pdb/PersistentDataBlockService;->mFrpActive:Z

    .line 757
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_44

    .line 758
    :try_start_3e
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_5a

    :catch_42
    move-exception v0

    goto :goto_53

    :catchall_44
    move-exception v2

    .line 757
    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    :try_start_46
    throw v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    :catchall_47
    move-exception v1

    if-eqz v0, :cond_52

    .line 744
    :try_start_4a
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4e

    goto :goto_52

    :catchall_4e
    move-exception v0

    :try_start_4f
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_52
    :goto_52
    throw v1
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_53} :catch_42

    .line 759
    :goto_53
    sget-object v1, Lcom/android/server/pdb/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v2, "Failed to write FRP magic and default secret"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 761
    :goto_5a
    invoke-virtual {p0}, Lcom/android/server/pdb/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    return-void
.end method
