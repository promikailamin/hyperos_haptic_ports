.class public final Lcom/android/server/power/hint/HintManagerService;
.super Lcom/android/server/SystemService;
.source "HintManagerService.java"


# static fields
.field static final CLEAN_UP_UID_DELAY_MILLIS:I = 0x3e8

.field static final MAX_GRAPHICS_PIPELINE_THREADS_COUNT:I = 0x5

.field public static final PROC_STAT_CPU_TIME_TOTAL_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final mActiveSessions:Landroid/util/ArrayMap;

.field public final mActivityManager:Landroid/app/IActivityManager;

.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public mChannelMap:Landroid/util/ArrayMap;

.field public final mChannelMapLock:Ljava/lang/Object;

.field public final mCheckHeadroomAffinity:Z

.field public final mCheckHeadroomProcStatMinMillis:I

.field public final mCheckHeadroomTid:Z

.field public final mCleanUpHandler:Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;

.field public mConfigCreationSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mContext:Landroid/content/Context;

.field public final mCpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

.field public final mCpuHeadroomLock:Ljava/lang/Object;

.field public final mCpuHeadroomMaxTidCnt:I

.field private mEnforceCpuHeadroomUserModeCpuTimeCheck:Z

.field public mFMQUsesIntegratedEventFlag:Ljava/lang/Boolean;

.field public final mGpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

.field public final mGpuHeadroomLock:Ljava/lang/Object;

.field final mHintSessionPreferredRate:J

.field final mJiffyMillis:F

.field public mLastCpuUserModeJiffies:J

.field public mLastCpuUserModeTimeCheckedMillis:J

.field public final mLock:Ljava/lang/Object;

.field public final mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

.field public final mNonIsolatedTids:Ljava/util/Map;

.field public final mNonIsolatedTidsLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPowerHal:Landroid/hardware/power/IPower;

.field public mPowerHalVersion:I

.field private mProcStatFilePathOverride:Ljava/lang/String;

.field final mService:Landroid/os/IHintManager$Stub;

.field public mSessionManager:Landroid/adpf/ISessionManager;

.field public mSessionSnapshotMap:Landroid/util/ArrayMap;

.field public final mSessionSnapshotMapLock:Ljava/lang/Object;

.field public mSupportInfo:Landroid/hardware/power/SupportInfo;

.field public mSysuiUid:I

.field final mUidObserver:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

.field public final mUidToLastUserModeJiffies:Ljava/util/Map;

.field public mUsesFmq:Z

.field public final mVendorApiLevel:I


# direct methods
.method public static synthetic $r8$lambda$ekPydgvI2SqQJb7XQ9M2EthMnAQ(Lcom/android/server/power/hint/HintManagerService;ILjava/util/List;)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/hint/HintManagerService;->onPullAtom(ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmActiveSessions(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmChannelMap(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmChannelMapLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMapLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCheckHeadroomAffinity(Lcom/android/server/power/hint/HintManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomAffinity:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCheckHeadroomProcStatMinMillis(Lcom/android/server/power/hint/HintManagerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomProcStatMinMillis:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCheckHeadroomTid(Lcom/android/server/power/hint/HintManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomTid:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCleanUpHandler(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mCleanUpHandler:Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConfigCreationSupport(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mConfigCreationSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/power/hint/HintManagerService;)Landroid/content/Context;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuHeadroomCache(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$HeadroomCache;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuHeadroomLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCpuHeadroomMaxTidCnt(Lcom/android/server/power/hint/HintManagerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomMaxTidCnt:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnforceCpuHeadroomUserModeCpuTimeCheck(Lcom/android/server/power/hint/HintManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/hint/HintManagerService;->mEnforceCpuHeadroomUserModeCpuTimeCheck:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFMQUsesIntegratedEventFlag(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Boolean;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mFMQUsesIntegratedEventFlag:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGpuHeadroomCache(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$HeadroomCache;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mGpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGpuHeadroomLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mGpuHeadroomLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastCpuUserModeJiffies(Lcom/android/server/power/hint/HintManagerService;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService;->mLastCpuUserModeJiffies:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLastCpuUserModeTimeCheckedMillis(Lcom/android/server/power/hint/HintManagerService;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService;->mLastCpuUserModeTimeCheckedMillis:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNativeWrapper(Lcom/android/server/power/hint/HintManagerService;)Lcom/android/server/power/hint/HintManagerService$NativeWrapper;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNonIsolatedTids(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNonIsolatedTidsLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTidsLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/power/hint/HintManagerService;)Landroid/content/pm/PackageManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerHal(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/IPower;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHal:Landroid/hardware/power/IPower;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerHalVersion(Lcom/android/server/power/hint/HintManagerService;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProcStatFilePathOverride(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mProcStatFilePathOverride:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionManager(Lcom/android/server/power/hint/HintManagerService;)Landroid/adpf/ISessionManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionManager:Landroid/adpf/ISessionManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionSnapshotMap(Lcom/android/server/power/hint/HintManagerService;)Landroid/util/ArrayMap;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionSnapshotMapLock(Lcom/android/server/power/hint/HintManagerService;)Ljava/lang/Object;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMapLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSupportInfo(Lcom/android/server/power/hint/HintManagerService;)Landroid/hardware/power/SupportInfo;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUidToLastUserModeJiffies(Lcom/android/server/power/hint/HintManagerService;)Ljava/util/Map;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mUidToLastUserModeJiffies:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsesFmq(Lcom/android/server/power/hint/HintManagerService;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/power/hint/HintManagerService;->mUsesFmq:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmFMQUsesIntegratedEventFlag(Lcom/android/server/power/hint/HintManagerService;Ljava/lang/Boolean;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mFMQUsesIntegratedEventFlag:Ljava/lang/Boolean;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastCpuUserModeJiffies(Lcom/android/server/power/hint/HintManagerService;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/power/hint/HintManagerService;->mLastCpuUserModeJiffies:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLastCpuUserModeTimeCheckedMillis(Lcom/android/server/power/hint/HintManagerService;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/power/hint/HintManagerService;->mLastCpuUserModeTimeCheckedMillis:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSessionManager(Lcom/android/server/power/hint/HintManagerService;Landroid/adpf/ISessionManager;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionManager:Landroid/adpf/ISessionManager;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUsesFmq(Lcom/android/server/power/hint/HintManagerService;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService;->mUsesFmq:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckTidValid(Lcom/android/server/power/hint/HintManagerService;II[ILandroid/util/IntArray;)Ljava/lang/Integer;
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/power/hint/HintManagerService;->checkTidValid(II[ILandroid/util/IntArray;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mformatTidCheckErrMsg(Lcom/android/server/power/hint/HintManagerService;I[ILjava/lang/Integer;)Ljava/lang/String;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/hint/HintManagerService;->formatTidCheckErrMsg(I[ILjava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misHintSessionSupported(Lcom/android/server/power/hint/HintManagerService;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService;->isHintSessionSupported()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetPROC_STAT_CPU_TIME_TOTAL_PATTERN()Ljava/util/regex/Pattern;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/server/power/hint/HintManagerService;->PROC_STAT_CPU_TIME_TOTAL_PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 133
    const-string v0, "cpu\\s+(?<user>[0-9]+)\\s(?<nice>[0-9]+).+"

    .line 134
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/hint/HintManagerService;->PROC_STAT_CPU_TIME_TOTAL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 306
    new-instance v0, Lcom/android/server/power/hint/HintManagerService$Injector;

    invoke-direct {v0}, Lcom/android/server/power/hint/HintManagerService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/hint/HintManagerService;-><init>(Landroid/content/Context;Lcom/android/server/power/hint/HintManagerService$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/hint/HintManagerService$Injector;)V
    .registers 9

    .line 311
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 170
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    .line 173
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMapLock:Ljava/lang/Object;

    .line 182
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMapLock:Ljava/lang/Object;

    .line 187
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTidsLock:Ljava/lang/Object;

    .line 199
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mConfigCreationSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    .line 220
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/android/server/power/hint/HintManagerService;->mFMQUsesIntegratedEventFlag:Ljava/lang/Boolean;

    .line 222
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    .line 229
    iput-wide v2, p0, Lcom/android/server/power/hint/HintManagerService;->mLastCpuUserModeTimeCheckedMillis:J

    .line 231
    iput-wide v2, p0, Lcom/android/server/power/hint/HintManagerService;->mLastCpuUserModeJiffies:J

    .line 235
    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mProcStatFilePathOverride:Ljava/lang/String;

    const/4 v2, 0x0

    .line 237
    iput-boolean v2, p0, Lcom/android/server/power/hint/HintManagerService;->mEnforceCpuHeadroomUserModeCpuTimeCheck:Z

    const/4 v3, -0x1

    .line 242
    iput v3, p0, Lcom/android/server/power/hint/HintManagerService;->mSysuiUid:I

    .line 297
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mGpuHeadroomLock:Ljava/lang/Object;

    .line 302
    new-instance v3, Lcom/android/server/power/hint/HintManagerService$BinderService;

    invoke-direct {v3, p0}, Lcom/android/server/power/hint/HintManagerService$BinderService;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mService:Landroid/os/IHintManager$Stub;

    .line 312
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mContext:Landroid/content/Context;

    .line 313
    new-instance v3, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;

    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService;->createCleanUpThread()Lcom/android/server/ServiceThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;-><init>(Lcom/android/server/power/hint/HintManagerService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mCleanUpHandler:Lcom/android/server/power/hint/HintManagerService$CleanUpHandler;

    .line 314
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mNonIsolatedTids:Ljava/util/Map;

    .line 315
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 316
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    .line 317
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    .line 318
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    .line 319
    invoke-virtual {p2}, Lcom/android/server/power/hint/HintManagerService$Injector;->createNativeWrapper()Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mNativeWrapper:Lcom/android/server/power/hint/HintManagerService$NativeWrapper;

    .line 320
    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halInit()V

    .line 321
    invoke-virtual {p1}, Lcom/android/server/power/hint/HintManagerService$NativeWrapper;->halGetHintSessionPreferredRate()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    .line 322
    new-instance p1, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    invoke-direct {p1, p0}, Lcom/android/server/power/hint/HintManagerService$MyUidObserver;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mUidObserver:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    .line 323
    invoke-virtual {p2}, Lcom/android/server/power/hint/HintManagerService$Injector;->getIActivityManager()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/app/IActivityManager;

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mActivityManager:Landroid/app/IActivityManager;

    .line 324
    const-class p1, Landroid/app/ActivityManagerInternal;

    .line 325
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    .line 324
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Landroid/app/ActivityManagerInternal;

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 326
    invoke-virtual {p2}, Lcom/android/server/power/hint/HintManagerService$Injector;->createIPower()Landroid/hardware/power/IPower;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHal:Landroid/hardware/power/IPower;

    .line 327
    iput v2, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    .line 328
    const-string/jumbo p2, "ro.vendor.api_level"

    const-string v3, ""

    invoke-static {p2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/server/power/hint/HintManagerService;->mVendorApiLevel:I

    .line 329
    iput-boolean v2, p0, Lcom/android/server/power/hint/HintManagerService;->mUsesFmq:Z

    if-eqz p1, :cond_e0

    .line 332
    :try_start_d0
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService;->getSupportInfo()Landroid/hardware/power/SupportInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;
    :try_end_d6
    .catch Landroid/os/RemoteException; {:try_start_d0 .. :try_end_d6} :catch_d7

    goto :goto_e0

    :catch_d7
    move-exception p0

    .line 334
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not contact PowerHAL!"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 337
    :cond_e0
    :goto_e0
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object p1, p1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean p2, p1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    const/4 v3, 0x2

    if-eqz p2, :cond_138

    .line 338
    new-instance p2, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    iget p1, p1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMinIntervalMillis:I

    int-to-long v4, p1

    invoke-direct {p2, v3, v4, v5}, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;-><init>(IJ)V

    iput-object p2, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    .line 339
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mUidToLastUserModeJiffies:Ljava/util/Map;

    .line 340
    sget p1, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {p1}, Landroid/system/Os;->sysconf(I)J

    move-result-wide p1

    const/high16 v2, 0x447a0000    # 1000.0f

    long-to-float p1, p1

    div-float/2addr v2, p1

    .line 341
    iput v2, p0, Lcom/android/server/power/hint/HintManagerService;->mJiffyMillis:F

    .line 342
    const-string/jumbo p1, "persist.hms.check_headroom_tid"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomTid:Z

    .line 343
    const-string/jumbo p1, "persist.hms.check_headroom_affinity"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomAffinity:Z

    .line 345
    const-string/jumbo p1, "persist.hms.check_headroom_proc_stat_min_millis"

    const/16 p2, 0x32

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomProcStatMinMillis:I

    .line 348
    const-string/jumbo p1, "persist.hms.cpu_headroom_tid_max_cnt"

    const/4 p2, 0x5

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object p2, p2, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget p2, p2, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->cpuMaxTidCount:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomMaxTidCnt:I

    goto :goto_147

    .line 352
    :cond_138
    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    .line 353
    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mUidToLastUserModeJiffies:Ljava/util/Map;

    const/4 p1, 0x0

    .line 354
    iput p1, p0, Lcom/android/server/power/hint/HintManagerService;->mJiffyMillis:F

    .line 355
    iput-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomTid:Z

    .line 356
    iput-boolean v1, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomAffinity:Z

    .line 357
    iput v2, p0, Lcom/android/server/power/hint/HintManagerService;->mCheckHeadroomProcStatMinMillis:I

    .line 358
    iput v2, p0, Lcom/android/server/power/hint/HintManagerService;->mCpuHeadroomMaxTidCnt:I

    .line 360
    :goto_147
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mSupportInfo:Landroid/hardware/power/SupportInfo;

    iget-object p1, p1, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    iget-boolean p2, p1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    if-eqz p2, :cond_15a

    .line 361
    new-instance p2, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    iget p1, p1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->gpuMinIntervalMillis:I

    int-to-long v0, p1

    invoke-direct {p2, v3, v0, v1}, Lcom/android/server/power/hint/HintManagerService$HeadroomCache;-><init>(IJ)V

    iput-object p2, p0, Lcom/android/server/power/hint/HintManagerService;->mGpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    return-void

    .line 363
    :cond_15a
    iput-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mGpuHeadroomCache:Lcom/android/server/power/hint/HintManagerService$HeadroomCache;

    return-void
.end method

.method private registerStatsCallbacks()V
    .registers 6

    .line 617
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/StatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    if-nez v0, :cond_d

    return-void

    .line 621
    :cond_d
    sget-object v1, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/power/hint/HintManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/power/hint/HintManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    const/16 v3, 0x27bd

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    .line 626
    new-instance v2, Lcom/android/server/power/hint/HintManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/power/hint/HintManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    const/16 p0, 0x27ea

    invoke-virtual {v0, p0, v4, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method

.method private systemReady()V
    .registers 6

    .line 602
    const-string v0, "HintManagerService"

    const-string v1, "Initializing HintManager service..."

    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    :try_start_7
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mUidObserver:Lcom/android/server/power/hint/HintManagerService$MyUidObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-interface {v0, v1, v4, v2, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_11

    .line 611
    :catch_11
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 612
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x100000

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/hint/HintManagerService;->mSysuiUid:I

    return-void
.end method


# virtual methods
.method public final checkTidValid(II[ILandroid/util/IntArray;)Ljava/lang/Integer;
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move v2, v1

    .line 1277
    :goto_4
    array-length v4, p3

    if-ge v2, v4, :cond_6d

    .line 1278
    aget v4, p3, v2

    .line 1279
    const-string v5, "Uid:"

    const-string v6, "Tgid:"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    .line 1283
    new-array v6, v6, [J

    .line 1284
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/proc/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "/status"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5, v6}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 1285
    aget-wide v7, v6, v1

    long-to-int v5, v7

    const/4 v7, 0x1

    .line 1286
    aget-wide v6, v6, v7

    long-to-int v6, v6

    if-eqz p4, :cond_3c

    if-ne v6, p2, :cond_3c

    .line 1290
    invoke-virtual {p4, v4}, Landroid/util/IntArray;->add(I)V

    goto :goto_65

    :cond_3c
    if-ne v5, p1, :cond_3f

    goto :goto_65

    :cond_3f
    if-nez v3, :cond_5b

    .line 1300
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v5, 0x3e8

    if-ne v3, v5, :cond_4e

    .line 1301
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1303
    :cond_4e
    iget-object v3, p0, Lcom/android/server/power/hint/HintManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3, p1}, Landroid/app/ActivityManagerInternal;->getIsolatedProcesses(I)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_5b

    .line 1305
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1308
    :cond_5b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_68

    :goto_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1311
    :cond_68
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_6d
    return-object v0
.end method

.method public final createCleanUpThread()Lcom/android/server/ServiceThread;
    .registers 4

    .line 424
    new-instance p0, Lcom/android/server/ServiceThread;

    const/16 v0, 0x13

    const/4 v1, 0x1

    const-string v2, "HintManagerService"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 426
    invoke-virtual {p0}, Lcom/android/server/ServiceThread;->start()V

    return-object p0
.end method

.method public final formatTidCheckErrMsg(I[ILjava/lang/Integer;)Ljava/lang/String;
    .registers 5

    .line 1317
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tid"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " from list "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " doesn\'t belong to the calling application "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBinderServiceInstance()Landroid/os/IHintManager$Stub;
    .registers 1

    .line 1257
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mService:Landroid/os/IHintManager$Stub;

    return-object p0
.end method

.method public final getFmqUsage()I
    .registers 2

    .line 706
    iget-boolean v0, p0, Lcom/android/server/power/hint/HintManagerService;->mUsesFmq:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 708
    :cond_6
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    const/4 v0, 0x5

    if-ge p0, v0, :cond_d

    const/4 p0, 0x3

    return p0

    :cond_d
    const/4 p0, 0x2

    return p0
.end method

.method public getOrCreateMappedChannelItem(IILandroid/os/IBinder;)Lcom/android/server/power/hint/HintManagerService$ChannelItem;
    .registers 8

    .line 969
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 970
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 971
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    :catchall_1e
    move-exception p0

    goto :goto_51

    .line 973
    :cond_20
    :goto_20
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    .line 974
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 975
    new-instance v2, Lcom/android/server/power/hint/HintManagerService$ChannelItem;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/power/hint/HintManagerService$ChannelItem;-><init>(Lcom/android/server/power/hint/HintManagerService;IILandroid/os/IBinder;)V

    .line 976
    invoke-virtual {v2}, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->openChannel()V

    .line 977
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    :cond_45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;

    monitor-exit v0

    return-object p0

    .line 980
    :goto_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_1e

    throw p0
.end method

.method public getSupportInfo()Landroid/hardware/power/SupportInfo;
    .registers 7

    .line 369
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHal:Landroid/hardware/power/IPower;

    invoke-interface {v0}, Landroid/hardware/power/IPower;->getInterfaceVersion()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_12

    .line 371
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHal:Landroid/hardware/power/IPower;

    invoke-interface {p0}, Landroid/hardware/power/IPower;->getSupportInfo()Landroid/hardware/power/SupportInfo;

    move-result-object p0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_59

    return-object p0

    .line 377
    :cond_12
    new-instance v0, Landroid/hardware/power/SupportInfo;

    invoke-direct {v0}, Landroid/hardware/power/SupportInfo;-><init>()V

    .line 378
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService;->isHintSessionSupported()Z

    move-result v1

    iput-boolean v1, v0, Landroid/hardware/power/SupportInfo;->usesSessions:Z

    const-wide/16 v1, 0x0

    .line 380
    iput-wide v1, v0, Landroid/hardware/power/SupportInfo;->boosts:J

    .line 381
    iput-wide v1, v0, Landroid/hardware/power/SupportInfo;->modes:J

    .line 382
    iput-wide v1, v0, Landroid/hardware/power/SupportInfo;->sessionHints:J

    .line 383
    iput-wide v1, v0, Landroid/hardware/power/SupportInfo;->sessionModes:J

    .line 384
    iput-wide v1, v0, Landroid/hardware/power/SupportInfo;->sessionTags:J

    .line 386
    new-instance v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    invoke-direct {v1}, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;-><init>()V

    iput-object v1, v0, Landroid/hardware/power/SupportInfo;->headroom:Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;

    const/4 v2, 0x0

    .line 387
    iput-boolean v2, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isCpuSupported:Z

    .line 388
    iput-boolean v2, v1, Landroid/hardware/power/SupportInfo$HeadroomSupportInfo;->isGpuSupported:Z

    .line 390
    new-instance v1, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;

    invoke-direct {v1}, Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;-><init>()V

    iput-object v1, v0, Landroid/hardware/power/SupportInfo;->compositionData:Landroid/hardware/power/SupportInfo$CompositionDataSupportInfo;

    .line 391
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService;->isHintSessionSupported()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 392
    iget p0, p0, Lcom/android/server/power/hint/HintManagerService;->mPowerHalVersion:I

    const/4 v1, 0x4

    const-wide/16 v2, 0x1f

    if-ne p0, v1, :cond_4b

    .line 396
    iput-wide v2, v0, Landroid/hardware/power/SupportInfo;->sessionHints:J

    :cond_4b
    const/4 v1, 0x5

    if-ne p0, v1, :cond_58

    const-wide/16 v4, 0xff

    .line 405
    iput-wide v4, v0, Landroid/hardware/power/SupportInfo;->sessionHints:J

    const-wide/16 v4, 0x1

    .line 408
    iput-wide v4, v0, Landroid/hardware/power/SupportInfo;->sessionModes:J

    .line 411
    iput-wide v2, v0, Landroid/hardware/power/SupportInfo;->sessionTags:J

    :cond_58
    return-object v0

    :catch_59
    move-exception p0

    .line 374
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not contact PowerHAL!"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public hasChannel(II)Ljava/lang/Boolean;
    .registers 4

    .line 1262
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1263
    :try_start_3
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/TreeMap;

    if-eqz p0, :cond_28

    .line 1265
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/hint/HintManagerService$ChannelItem;

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    .line 1266
    :goto_20
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_26
    move-exception p0

    goto :goto_2c

    .line 1268
    :cond_28
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    monitor-exit v0

    return-object p0

    .line 1269
    :goto_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_26

    throw p0
.end method

.method public final isHintSessionSupported()Z
    .registers 5

    .line 583
    iget-wide v0, p0, Lcom/android/server/power/hint/HintManagerService;->mHintSessionPreferredRate:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_7

    .line 594
    invoke-direct {p0}, Lcom/android/server/power/hint/HintManagerService;->systemReady()V

    :cond_7
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_e

    .line 597
    invoke-direct {p0}, Lcom/android/server/power/hint/HintManagerService;->registerStatsCallbacks()V

    :cond_e
    return-void
.end method

.method public final onPullAtom(ILjava/util/List;)I
    .registers 15

    const/4 v0, 0x0

    const/16 v1, 0x27bd

    if-ne p1, v1, :cond_1c

    .line 642
    const-string v2, "debug.sf.enable_adpf_cpu_hint"

    .line 643
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 644
    const-string v3, "debug.hwui.use_hint_manager"

    .line 645
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 651
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService;->getFmqUsage()I

    move-result v4

    .line 647
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IZZI)Landroid/util/StatsEvent;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    const/16 v1, 0x27ea

    if-ne p1, v1, :cond_84

    .line 654
    iget-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMapLock:Ljava/lang/Object;

    monitor-enter p1

    move v1, v0

    .line 655
    :goto_24
    :try_start_24
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_7d

    .line 656
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 657
    iget-object v2, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    .line 658
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    move v11, v0

    .line 659
    :goto_41
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v11, v3, :cond_7a

    .line 660
    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 661
    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    .line 666
    invoke-virtual {v3}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->getMaxConcurrentSession()I

    move-result v6

    .line 667
    invoke-virtual {v3}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->getMaxThreadCount()I

    move-result v7

    .line 668
    invoke-virtual {v3}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->getPowerEfficientSessionCount()I

    move-result v8

    .line 669
    invoke-virtual {v3}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->targetDurationNsList()[J

    move-result-object v9

    .line 670
    invoke-virtual {v3}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->getGraphicsPipelineSessionCount()I

    move-result v10

    const/16 v3, 0x27ea

    .line 662
    invoke-static/range {v3 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIII[JI)Landroid/util/StatsEvent;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_41

    :catchall_77
    move-exception v0

    move-object p0, v0

    goto :goto_82

    :cond_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 674
    :cond_7d
    monitor-exit p1
    :try_end_7e
    .catchall {:try_start_24 .. :try_end_7e} :catchall_77

    .line 675
    invoke-virtual {p0}, Lcom/android/server/power/hint/HintManagerService;->restoreSessionSnapshot()V

    goto :goto_84

    .line 674
    :goto_82
    :try_start_82
    monitor-exit p1
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_77

    throw p0

    :cond_84
    :goto_84
    return v0
.end method

.method public onStart()V
    .registers 3

    .line 588
    const-string/jumbo v0, "performance_hint"

    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mService:Landroid/os/IHintManager$Stub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public removeChannelItem(Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 6

    .line 988
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 989
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TreeMap;

    if-eqz v1, :cond_29

    .line 991
    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/hint/HintManagerService$ChannelItem;

    if-eqz v2, :cond_1e

    .line 993
    invoke-virtual {v2}, Lcom/android/server/power/hint/HintManagerService$ChannelItem;->closeChannel()V

    .line 994
    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_2b

    .line 996
    :cond_1e
    :goto_1e
    invoke-virtual {v1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 997
    iget-object p0, p0, Lcom/android/server/power/hint/HintManagerService;->mChannelMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    :cond_29
    monitor-exit v0

    return-void

    :goto_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_1c

    throw p0
.end method

.method public final restoreSessionSnapshot()V
    .registers 16

    .line 717
    iget-object v0, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 718
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 719
    iget-object v1, p0, Lcom/android/server/power/hint/HintManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_8e

    const/4 v2, 0x0

    move v3, v2

    .line 720
    :goto_d
    :try_start_d
    iget-object v4, p0, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_8b

    .line 721
    iget-object v4, p0, Lcom/android/server/power/hint/HintManagerService;->mActiveSessions:Landroid/util/ArrayMap;

    .line 722
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    move v5, v2

    .line 723
    :goto_1e
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_88

    .line 724
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    move v7, v2

    .line 725
    :goto_2b
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_85

    .line 726
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/hint/HintManagerService$AppHintSession;

    .line 727
    invoke-virtual {v8}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->getTag()I

    move-result v9

    .line 728
    invoke-virtual {v8}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->getUid()I

    move-result v10

    .line 730
    invoke-virtual {v8}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->getTargetDurationNs()J

    move-result-wide v11

    .line 731
    invoke-virtual {v8}, Lcom/android/server/power/hint/HintManagerService$AppHintSession;->getThreadIds()[I

    move-result-object v8

    array-length v8, v8

    .line 732
    iget-object v13, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    .line 733
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArrayMap;

    if-nez v13, :cond_67

    .line 735
    new-instance v13, Landroid/util/ArrayMap;

    invoke-direct {v13}, Landroid/util/ArrayMap;-><init>()V

    .line 736
    iget-object v14, p0, Lcom/android/server/power/hint/HintManagerService;->mSessionSnapshotMap:Landroid/util/ArrayMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v14, v10, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_67

    :catchall_65
    move-exception p0

    goto :goto_90

    .line 738
    :cond_67
    :goto_67
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    if-nez v10, :cond_7f

    .line 740
    new-instance v10, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;

    invoke-direct {v10, p0}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;-><init>(Lcom/android/server/power/hint/HintManagerService;)V

    .line 741
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v13, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    :cond_7f
    invoke-virtual {v10, v8, v11, v12}, Lcom/android/server/power/hint/HintManagerService$AppHintSessionSnapshot;->updateUponSessionCreation(IJ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    :cond_85
    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_88
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 748
    :cond_8b
    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_d .. :try_end_8c} :catchall_65

    .line 749
    :try_start_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_8e

    return-void

    :catchall_8e
    move-exception p0

    goto :goto_92

    .line 748
    :goto_90
    :try_start_90
    monitor-exit v1
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_65

    :try_start_91
    throw p0

    .line 749
    :goto_92
    monitor-exit v0
    :try_end_93
    .catchall {:try_start_91 .. :try_end_93} :catchall_8e

    throw p0
.end method

.method public setProcStatPathOverride(Ljava/lang/String;)V
    .registers 2

    .line 419
    iput-object p1, p0, Lcom/android/server/power/hint/HintManagerService;->mProcStatFilePathOverride:Ljava/lang/String;

    const/4 p1, 0x1

    .line 420
    iput-boolean p1, p0, Lcom/android/server/power/hint/HintManagerService;->mEnforceCpuHeadroomUserModeCpuTimeCheck:Z

    return-void
.end method
