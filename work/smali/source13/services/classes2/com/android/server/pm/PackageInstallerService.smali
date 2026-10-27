.class public Lcom/android/server/pm/PackageInstallerService;
.super Landroid/content/pm/IPackageInstaller$Stub;
.source "PackageInstallerService.java"

# interfaces
.implements Lcom/android/server/pm/PackageSessionProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageInstallerService$InternalCallback;,
        Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;,
        Lcom/android/server/pm/PackageInstallerService$Callbacks;,
        Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;,
        Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;,
        Lcom/android/server/pm/PackageInstallerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final ADB_DEV_MODE:I = 0x24

.field private static final DEBUG:Z

.field private static final LOGD:Z

.field private static final MAX_ACTIVE_SESSIONS_NO_PERMISSION:J = 0x32L

.field private static final MAX_ACTIVE_SESSIONS_WITH_PERMISSION:J = 0x400L

.field private static final MAX_AGE_MILLIS:J = 0xf731400L

.field private static final MAX_HISTORICAL_SESSIONS:J = 0x100000L

.field private static final MAX_SESSION_AGE_ON_LOW_STORAGE_MILLIS:J = 0x1b77400L

.field private static final MAX_TIME_SINCE_UPDATE_MILLIS:J = 0x6c258c00L

.field private static final TAG:Ljava/lang/String; = "PackageInstaller"

.field private static final TAG_SESSIONS:Ljava/lang/String; = "sessions"

.field private static final sStageFilter:Ljava/io/FilenameFilter;


# instance fields
.field private final mAllocatedSessions:Landroid/util/SparseBooleanArray;

.field private final mApexManager:Lcom/android/server/pm/ApexManager;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private volatile mBypassNextAllowedApexUpdateCheck:Z

.field private volatile mBypassNextStagedInstallerCheck:Z

.field private final mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private final mHistoricalSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

.field private final mInstallHandler:Landroid/os/Handler;

.field private final mInstallThread:Landroid/os/HandlerThread;

.field private final mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

.field private final mLegacySessions:Landroid/util/SparseBooleanArray;

.field private volatile mOkToSendBroadcasts:Z

.field private final mPm:Lcom/android/server/pm/PackageManagerService;

.field private final mRandom:Ljava/util/Random;

.field private final mSessionVerifier:Lcom/android/server/pm/PackageSessionVerifier;

.field private final mSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionsDir:Ljava/io/File;

.field private final mSessionsFile:Landroid/util/AtomicFile;

.field private final mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

.field private final mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

.field private final mSpeedInstallLock:Ljava/lang/Object;

.field private final mSpeedInstallRedirectFile:Landroid/util/AtomicFile;

.field private mSpeedInstallRedirectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStagingManager:Lcom/android/server/pm/StagingManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageInstallerService$Callbacks;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInstallHandler(Lcom/android/server/pm/PackageInstallerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOkToSendBroadcasts(Lcom/android/server/pm/PackageInstallerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPm(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessions(Lcom/android/server/pm/PackageInstallerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingsWriteRequest(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/utils/RequestThrottle;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStagingManager(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/StagingManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbuildAppIconFile(Lcom/android/server/pm/PackageInstallerService;I)Ljava/io/File;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->buildAppIconFile(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monBroadcastReady(Lcom/android/server/pm/PackageInstallerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->onBroadcastReady()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveActiveSession(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->removeActiveSession(Lcom/android/server/pm/PackageInstallerSession;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendSessionUpdatedBroadcast(Lcom/android/server/pm/PackageInstallerService;Landroid/content/pm/PackageInstaller$SessionInfo;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerService;->sendSessionUpdatedBroadcast(Landroid/content/pm/PackageInstaller$SessionInfo;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldFilterSession(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/Computer;II)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService;->shouldFilterSession(Lcom/android/server/pm/Computer;II)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 137
    const-string v0, "PackageInstaller"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/pm/PackageInstallerService;->LOGD:Z

    .line 139
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/pm/PackageInstallerService;->DEBUG:Z

    .line 225
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$1;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerService$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerService;->sStageFilter:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Ljava/util/function/Supplier;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/server/pm/PackageManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/pm/parsing/PackageParser2;",
            ">;)V"
        }
    .end annotation

    .line 269
    .local p3, "apexParserSupplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/server/pm/parsing/PackageParser2;>;"
    invoke-direct {p0}, Landroid/content/pm/IPackageInstaller$Stub;-><init>()V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    .line 181
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    .line 182
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextAllowedApexUpdateCheck:Z

    .line 195
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;-><init>(Lcom/android/server/pm/PackageInstallerService;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 202
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mRandom:Ljava/util/Random;

    .line 205
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    .line 208
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    .line 215
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

    .line 219
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    .line 223
    new-instance v0, Lcom/android/server/pm/SilentUpdatePolicy;

    invoke-direct {v0}, Lcom/android/server/pm/SilentUpdatePolicy;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    .line 253
    new-instance v0, Lcom/android/server/pm/utils/RequestThrottle;

    .line 254
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageInstallerService;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/utils/RequestThrottle;-><init>(Landroid/os/Handler;Ljava/util/function/Supplier;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    .line 263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSpeedInstallRedirectMap:Ljava/util/HashMap;

    .line 265
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSpeedInstallLock:Ljava/lang/Object;

    .line 270
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 271
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 273
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PackageInstaller"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    .line 274
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 276
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallHandler:Landroid/os/Handler;

    .line 278
    new-instance v1, Lcom/android/server/pm/PackageInstallerService$Callbacks;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;-><init>(Lcom/android/server/pm/PackageInstallerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    .line 280
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    .line 281
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "install_sessions.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "package-session"

    invoke-direct {v1, v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    .line 283
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "install_sessions"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    .line 284
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 287
    invoke-static {}, Landroid/content/pm/PackageInstaller;->isSupportedSpeedInstall()Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 288
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    .line 289
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "speed_install_redirect.json"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSpeedInstallRedirectFile:Landroid/util/AtomicFile;

    goto :goto_c8

    .line 291
    :cond_c5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSpeedInstallRedirectFile:Landroid/util/AtomicFile;

    .line 295
    :goto_c8
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    .line 296
    new-instance v1, Lcom/android/server/pm/StagingManager;

    invoke-direct {v1, p1}, Lcom/android/server/pm/StagingManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    .line 297
    new-instance v1, Lcom/android/server/pm/PackageSessionVerifier;

    .line 298
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/PackageSessionVerifier;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/ApexManager;Ljava/util/function/Supplier;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionVerifier:Lcom/android/server/pm/PackageSessionVerifier;

    .line 300
    const-class v0, Lcom/android/server/SystemServiceManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    new-instance v1, Lcom/android/server/pm/PackageInstallerService$Lifecycle;

    invoke-direct {v1, p1, p0}, Lcom/android/server/pm/PackageInstallerService$Lifecycle;-><init>(Landroid/content/Context;Lcom/android/server/pm/PackageInstallerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 302
    return-void
.end method

.method private addHistoricalSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 7
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 568
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 569
    .local v0, "writer":Ljava/io/CharArrayWriter;
    new-instance v1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "    "

    invoke-direct {v1, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 570
    .local v1, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    invoke-virtual {p1, v1}, Lcom/android/server/pm/PackageInstallerSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 571
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v2

    .line 575
    .local v2, "installerUid":I
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

    .line 576
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 575
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 577
    return-void
.end method

.method private allocateSessionIdLocked()I
    .registers 6

    .line 1015
    const/4 v0, 0x0

    .line 1018
    .local v0, "n":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mRandom:Ljava/util/Random;

    const v2, 0x7ffffffe

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 1019
    .local v1, "sessionId":I
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 1020
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1021
    return v1

    .line 1023
    :cond_1b
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "n":I
    .local v2, "n":I
    const/16 v3, 0x20

    if-ge v0, v3, :cond_23

    move v0, v2

    goto :goto_1

    .line 1025
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to allocate session ID"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private buildAppIconFile(I)Ljava/io/File;
    .registers 6
    .param p1, "sessionId"    # I

    .line 610
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_icon."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private buildExternalStageCid(I)Ljava/lang/String;
    .registers 4
    .param p1, "sessionId"    # I

    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "smdl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildSessionDir(ILandroid/content/pm/PackageInstaller$SessionParams;)Ljava/io/File;
    .registers 7
    .param p1, "sessionId"    # I
    .param p2, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;

    .line 1068
    iget-boolean v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v0, :cond_5c

    iget v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    goto :goto_5c

    .line 1072
    :cond_c
    iget-object v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageInstallerService;->buildTmpSessionDir(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1073
    .local v0, "result":Ljava/io/File;
    sget-boolean v1, Lcom/android/server/pm/PackageInstallerService;->DEBUG:Z

    if-eqz v1, :cond_5b

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerService;->tryParseSessionId(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_5b

    .line 1074
    :cond_2d
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "session folder format is off: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1075
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1077
    :cond_5b
    :goto_5b
    return-object v0

    .line 1069
    .end local v0    # "result":Ljava/io/File;
    :cond_5c
    :goto_5c
    iget-object v0, p2, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getDataStagingDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1070
    .local v0, "sessionStagingDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "session_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method static buildSuccessNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentText"    # Ljava/lang/String;
    .param p2, "basePackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1718
    const/4 v0, 0x0

    .line 1720
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/32 v2, 0x4000000

    invoke-interface {v1, p2, v2, v3, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_e

    move-object v0, v1

    .line 1723
    goto :goto_f

    .line 1722
    :catch_e
    move-exception v1

    .line 1724
    :goto_f
    if-eqz v0, :cond_7b

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_16

    goto :goto_7b

    .line 1728
    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1729
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1730
    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1731
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1733
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1729
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/ImageUtils;->buildScaledBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1735
    .local v2, "packageIcon":Landroid/graphics/Bitmap;
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1736
    .local v3, "packageLabel":Ljava/lang/CharSequence;
    new-instance v4, Landroid/app/Notification$Builder;

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    invoke-direct {v4, p0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x1080363

    .line 1737
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1738
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x106001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1740
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1741
    invoke-virtual {v4, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 1742
    invoke-virtual {v5, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1743
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1744
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 1736
    return-object v4

    .line 1725
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    .end local v2    # "packageIcon":Landroid/graphics/Bitmap;
    .end local v3    # "packageLabel":Ljava/lang/CharSequence;
    :cond_7b
    :goto_7b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notification not built for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageInstaller"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    const/4 v1, 0x0

    return-object v1
.end method

.method private buildTmpSessionDir(ILjava/lang/String;)Ljava/io/File;
    .registers 7
    .param p1, "sessionId"    # I
    .param p2, "volumeUuid"    # Ljava/lang/String;

    .line 1063
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageInstallerService;->getTmpSessionDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1064
    .local v0, "sessionStagingDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vmdl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private checkOpenSessionAccess(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 6
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 987
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 988
    return v0

    .line 990
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    .line 991
    return v2

    .line 994
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    move-result v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.PACKAGE_VERIFICATION_AGENT"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1d

    .line 997
    return v2

    .line 999
    :cond_1d
    return v0
.end method

.method private createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 50
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "installerAttributionTag"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 627
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    const/16 v0, 0x5a

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 628
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 629
    .local v13, "callingUid":I
    iget-object v0, v14, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v11

    .line 630
    .local v11, "snapshot":Lcom/android/server/pm/Computer;
    const-string v6, "createSession"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, v11

    move v2, v13

    move/from16 v3, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 633
    iget-object v0, v14, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_49a

    .line 638
    iget-object v0, v14, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "no_install_apps"

    move/from16 v10, p4

    invoke-virtual {v0, v10, v1}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_492

    .line 642
    iget-object v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz v0, :cond_4a

    iget-object v0, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v1, "com.android.permission.USE_INSTALLER_V2"

    .line 643
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_42

    goto :goto_4a

    .line 645
    :cond_42
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You need the com.android.permission.USE_INSTALLER_V2 permission to use a data loader"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_4a
    :goto_4a
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6c

    .line 654
    iget-object v0, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_MANAGE_ROLLBACKS"

    .line 656
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_64

    goto :goto_6c

    .line 658
    :cond_64
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "INSTALL_REASON_ROLLBACK requires the MANAGE_ROLLBACKS permission or the TEST_MANAGE_ROLLBACKS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_6c
    :goto_6c
    iget-object v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const/4 v9, 0x0

    if-eqz v0, :cond_7b

    iget-object v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->isValidPackageName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 667
    iput-object v9, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    .line 670
    :cond_7b
    iget-object v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/text/TextUtils;->trimToSize(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 674
    iget-object v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_95

    iget-object v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->isValidPackageName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_95

    .line 676
    iput-object v9, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    .line 680
    :cond_95
    if-eqz p2, :cond_9f

    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PackageInstallerService;->isValidPackageName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9f

    .line 681
    const/4 v0, 0x0

    .end local p2    # "installerPackageName":Ljava/lang/String;
    .local v0, "installerPackageName":Ljava/lang/String;
    goto :goto_a1

    .line 685
    .end local v0    # "installerPackageName":Ljava/lang/String;
    .restart local p2    # "installerPackageName":Ljava/lang/String;
    :cond_9f
    move-object/from16 v0, p2

    .end local p2    # "installerPackageName":Ljava/lang/String;
    .restart local v0    # "installerPackageName":Ljava/lang/String;
    :goto_a1
    iget-object v2, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_a8

    iget-object v2, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageName:Ljava/lang/String;

    goto :goto_a9

    .line 686
    :cond_a8
    move-object v2, v0

    :goto_a9
    move-object v5, v2

    .line 688
    .local v5, "requestedInstallerPackageName":Ljava/lang/String;
    const/16 v2, 0x7d0

    if-eq v13, v2, :cond_10e

    if-eqz v13, :cond_10e

    .line 689
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/PackageInstallerSession;->isSystemDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v3

    if-eqz v3, :cond_b7

    goto :goto_10e

    .line 695
    :cond_b7
    if-eq v13, v1, :cond_be

    .line 697
    iget-object v1, v14, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v13, v0}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 701
    :cond_be
    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d3

    .line 702
    iget-object v1, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_d3

    .line 704
    iget-object v1, v14, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v13, v5}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 708
    :cond_d3
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 709
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v1, v1, -0x41

    iput v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 710
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 711
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v3, 0x10000

    and-int/2addr v1, v3

    if-eqz v1, :cond_fc

    iget-object v1, v14, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 712
    invoke-virtual {v1, v11, v13}, Lcom/android/server/pm/PackageManagerService;->isCallerVerifier(Lcom/android/server/pm/Computer;I)Z

    move-result v1

    if-nez v1, :cond_fc

    .line 713
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v3, -0x10001

    and-int/2addr v1, v3

    iput v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 715
    :cond_fc
    iget-object v1, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INSTALL_TEST_ONLY_PACKAGE"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_10c

    .line 717
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v1, v1, -0x5

    iput v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 721
    :cond_10c
    move-object v8, v0

    goto :goto_116

    .line 690
    :cond_10e
    :goto_10e
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 693
    const/4 v0, 0x0

    move-object v8, v0

    .line 721
    .end local v0    # "installerPackageName":Ljava/lang/String;
    .local v8, "installerPackageName":Ljava/lang/String;
    :goto_116
    const/4 v0, 0x0

    .line 722
    .local v0, "originatingPackageName":Ljava/lang/String;
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_130

    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    if-eq v1, v13, :cond_130

    .line 724
    iget v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-interface {v11, v1}, Lcom/android/server/pm/Computer;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 725
    .local v1, "packages":[Ljava/lang/String;
    if-eqz v1, :cond_130

    array-length v6, v1

    if-lez v6, :cond_130

    .line 727
    aget-object v0, v1, v4

    move-object v7, v0

    goto :goto_131

    .line 731
    .end local v1    # "packages":[Ljava/lang/String;
    :cond_130
    move-object v7, v0

    .end local v0    # "originatingPackageName":Ljava/lang/String;
    .local v7, "originatingPackageName":Ljava/lang/String;
    :goto_131
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_14b

    invoke-direct {v14, v13}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_13c

    goto :goto_14b

    .line 734
    :cond_13c
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 735
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_152

    .line 732
    :cond_14b
    :goto_14b
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 738
    :goto_152
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/16 v1, 0x24

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_161

    .line 741
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 744
    :cond_161
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_16b

    move v0, v1

    goto :goto_16c

    :cond_16b
    move v0, v4

    :goto_16c
    move/from16 v33, v0

    .line 745
    .local v33, "isApex":Z
    if-eqz v33, :cond_18d

    .line 746
    iget-object v0, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.INSTALL_PACKAGE_UPDATES"

    invoke-virtual {v0, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_19a

    iget-object v0, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.INSTALL_PACKAGES"

    .line 748
    invoke-virtual {v0, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_185

    goto :goto_19a

    .line 750
    :cond_185
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not allowed to perform APEX updates"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 752
    :cond_18d
    iget-boolean v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_19a

    .line 753
    iget-object v0, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.INSTALL_PACKAGES"

    const-string v12, "PackageInstaller"

    invoke-virtual {v0, v6, v12}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :cond_19a
    :goto_19a
    if-eqz v33, :cond_1d4

    .line 757
    iget-object v0, v14, Lcom/android/server/pm/PackageInstallerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->isApexSupported()Z

    move-result v0

    if-eqz v0, :cond_1cc

    .line 761
    iget-boolean v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v0, :cond_1c4

    .line 764
    invoke-direct {v14, v13}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v0

    if-nez v0, :cond_1bc

    iget-boolean v0, v14, Lcom/android/server/pm/PackageInstallerService;->mBypassNextAllowedApexUpdateCheck:Z

    if-eqz v0, :cond_1b3

    goto :goto_1bc

    .line 769
    :cond_1b3
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const v6, -0x400001

    and-int/2addr v0, v6

    iput v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_1d4

    .line 765
    :cond_1bc
    :goto_1bc
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v6, 0x400000

    or-int/2addr v0, v6

    iput v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_1d4

    .line 762
    :cond_1c4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A multi-session can\'t be set as APEX."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 758
    :cond_1cc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This device doesn\'t support the installation of APEX files"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 773
    :cond_1d4
    :goto_1d4
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1f0

    .line 774
    invoke-direct {v14, v13}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v0

    if-nez v0, :cond_1f0

    .line 775
    invoke-interface {v11, v13}, Lcom/android/server/pm/Computer;->getFlagsForUid(I)I

    move-result v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_1e8

    goto :goto_1f0

    .line 777
    :cond_1e8
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only system apps could use the PackageManager.INSTALL_INSTANT_APP flag."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :cond_1f0
    :goto_1f0
    iget-boolean v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_20d

    invoke-direct {v14, v13}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v0

    if-nez v0, :cond_20d

    .line 782
    iget-boolean v0, v14, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    if-nez v0, :cond_20d

    .line 783
    invoke-direct {v14, v5}, Lcom/android/server/pm/PackageInstallerService;->isStagedInstallerAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_205

    goto :goto_20d

    .line 784
    :cond_205
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Installer not allowed to commit staged install"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 787
    :cond_20d
    :goto_20d
    if-eqz v33, :cond_228

    invoke-direct {v14, v13}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v0

    if-nez v0, :cond_228

    .line 788
    iget-boolean v0, v14, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    if-nez v0, :cond_228

    .line 789
    invoke-direct {v14, v5}, Lcom/android/server/pm/PackageInstallerService;->isStagedInstallerAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_220

    goto :goto_228

    .line 790
    :cond_220
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Installer not allowed to commit non-staged APEX install"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 795
    :cond_228
    :goto_228
    iput-boolean v4, v14, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    .line 796
    iput-boolean v4, v14, Lcom/android/server/pm/PackageInstallerService;->mBypassNextAllowedApexUpdateCheck:Z

    .line 798
    iget-boolean v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v0, :cond_2d7

    .line 800
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_249

    iget-object v0, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS"

    .line 801
    invoke-virtual {v0, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v3, :cond_241

    goto :goto_249

    .line 803
    :cond_241
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You need the android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS permission to use the PackageManager.INSTALL_GRANT_RUNTIME_PERMISSIONS flag"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 809
    :cond_249
    :goto_249
    iget-object v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_277

    .line 810
    iget-object v0, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 812
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v3

    .line 813
    .local v3, "iconSize":I
    iget-object v6, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int/lit8 v12, v3, 0x2

    if-gt v6, v12, :cond_26f

    iget-object v6, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 814
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/lit8 v12, v3, 0x2

    if-le v6, v12, :cond_277

    .line 815
    :cond_26f
    iget-object v6, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    invoke-static {v6, v3, v3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 820
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "iconSize":I
    :cond_277
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    packed-switch v0, :pswitch_data_4a2

    .line 825
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid install mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v15, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 823
    :pswitch_297
    nop

    .line 830
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2af

    .line 831
    iget-object v0, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v15}, Lcom/android/internal/content/InstallLocationUtils;->fitsOnInternal(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v0

    if-eqz v0, :cond_2a7

    goto :goto_2d7

    .line 832
    :cond_2a7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "No suitable internal storage available"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 834
    :cond_2af
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2bc

    .line 837
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    goto :goto_2d7

    .line 839
    :cond_2bc
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 843
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 845
    .local v16, "ident":J
    :try_start_2c6
    iget-object v0, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {v0, v15}, Lcom/android/internal/content/InstallLocationUtils;->resolveInstallVolume(Landroid/content/Context;Landroid/content/pm/PackageInstaller$SessionParams;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;
    :try_end_2ce
    .catchall {:try_start_2c6 .. :try_end_2ce} :catchall_2d2

    .line 847
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 848
    goto :goto_2d7

    .line 847
    :catchall_2d2
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 848
    throw v0

    .line 854
    .end local v16    # "ident":J
    :cond_2d7
    :goto_2d7
    iget-object v1, v14, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 856
    :try_start_2da
    iget-object v0, v14, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-static {v0, v13}, Lcom/android/server/pm/PackageInstallerService;->getSessionCount(Landroid/util/SparseArray;I)I

    move-result v0

    .line 857
    .local v0, "activeCount":I
    iget-object v3, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v3, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3
    :try_end_2e8
    .catchall {:try_start_2da .. :try_end_2e8} :catchall_482

    if-nez v3, :cond_319

    .line 859
    int-to-long v9, v0

    const-wide/16 v16, 0x400

    cmp-long v3, v9, v16

    if-gez v3, :cond_2f2

    goto :goto_320

    .line 860
    :cond_2f2
    :try_start_2f2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many active sessions for UID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v5    # "requestedInstallerPackageName":Ljava/lang/String;
    .end local v7    # "originatingPackageName":Ljava/lang/String;
    .end local v8    # "installerPackageName":Ljava/lang/String;
    .end local v11    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v13    # "callingUid":I
    .end local v33    # "isApex":Z
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .end local p1    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local p3    # "installerAttributionTag":Ljava/lang/String;
    .end local p4    # "userId":I
    throw v2
    :try_end_30b
    .catchall {:try_start_2f2 .. :try_end_30b} :catchall_30b

    .line 874
    .end local v0    # "activeCount":I
    .restart local v5    # "requestedInstallerPackageName":Ljava/lang/String;
    .restart local v7    # "originatingPackageName":Ljava/lang/String;
    .restart local v8    # "installerPackageName":Ljava/lang/String;
    .restart local v11    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v13    # "callingUid":I
    .restart local v33    # "isApex":Z
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .restart local p1    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local p3    # "installerAttributionTag":Ljava/lang/String;
    .restart local p4    # "userId":I
    :catchall_30b
    move-exception v0

    move-object/from16 v41, v5

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    move-object/from16 v43, v11

    move v7, v13

    move-object v4, v14

    move-object v6, v15

    goto/16 :goto_48e

    .line 863
    .restart local v0    # "activeCount":I
    :cond_319
    int-to-long v9, v0

    const-wide/16 v16, 0x32

    cmp-long v3, v9, v16

    if-gez v3, :cond_45e

    .line 867
    :goto_320
    :try_start_320
    iget-object v3, v14, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessionsByInstaller:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3
    :try_end_326
    .catchall {:try_start_320 .. :try_end_326} :catchall_482

    .line 868
    .local v3, "historicalCount":I
    int-to-long v9, v3

    const-wide/32 v16, 0x100000

    cmp-long v6, v9, v16

    if-gez v6, :cond_433

    .line 873
    :try_start_32e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    move-result v6

    move v10, v6

    .line 874
    .end local v0    # "activeCount":I
    .end local v3    # "historicalCount":I
    .local v10, "sessionId":I
    monitor-exit v1
    :try_end_334
    .catchall {:try_start_32e .. :try_end_334} :catchall_426

    .line 876
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    .line 878
    .local v34, "createdMillis":J
    const/4 v0, 0x0

    .line 879
    .local v0, "stageDir":Ljava/io/File;
    const/4 v1, 0x0

    .line 880
    .local v1, "stageCid":Ljava/lang/String;
    iget-boolean v3, v15, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v3, :cond_356

    .line 881
    iget v3, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_34d

    .line 882
    invoke-direct {v14, v10, v15}, Lcom/android/server/pm/PackageInstallerService;->buildSessionDir(ILandroid/content/pm/PackageInstaller$SessionParams;)Ljava/io/File;

    move-result-object v0

    move-object/from16 v36, v0

    move-object/from16 v37, v1

    goto :goto_35a

    .line 884
    :cond_34d
    invoke-direct {v14, v10}, Lcom/android/server/pm/PackageInstallerService;->buildExternalStageCid(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v36, v0

    move-object/from16 v37, v1

    goto :goto_35a

    .line 880
    :cond_356
    move-object/from16 v36, v0

    move-object/from16 v37, v1

    .line 889
    .end local v0    # "stageDir":Ljava/io/File;
    .end local v1    # "stageCid":Ljava/lang/String;
    .local v36, "stageDir":Ljava/io/File;
    .local v37, "stageCid":Ljava/lang/String;
    :goto_35a
    iget-boolean v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    if-eqz v0, :cond_364

    .line 890
    if-eq v13, v2, :cond_364

    if-eqz v13, :cond_364

    .line 891
    iput-boolean v4, v15, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    .line 894
    :cond_364
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    move-object/from16 v9, p3

    invoke-static {v8, v7, v5, v9, v0}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/pm/InstallSource;

    move-result-object v38

    .local v38, "installSource":Lcom/android/server/pm/InstallSource;
    move-object/from16 v12, v38

    .line 897
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession;

    move-object v1, v0

    iget-object v2, v14, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v3, v14, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    iget-object v4, v14, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v14, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    move-object/from16 p2, v5

    .end local v5    # "requestedInstallerPackageName":Ljava/lang/String;
    .local p2, "requestedInstallerPackageName":Ljava/lang/String;
    iget-object v5, v14, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    .line 898
    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    move-object/from16 v39, v7

    .end local v7    # "originatingPackageName":Ljava/lang/String;
    .local v39, "originatingPackageName":Ljava/lang/String;
    move-object v7, v5

    iget-object v5, v14, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    move-object/from16 v40, v8

    .end local v8    # "installerPackageName":Ljava/lang/String;
    .local v40, "installerPackageName":Ljava/lang/String;
    move-object v8, v5

    const-wide/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-string v32, ""

    move-object/from16 v41, p2

    .end local p2    # "requestedInstallerPackageName":Ljava/lang/String;
    .local v41, "requestedInstallerPackageName":Ljava/lang/String;
    move-object/from16 v5, p0

    move v9, v10

    move/from16 v42, v10

    .end local v10    # "sessionId":I
    .local v42, "sessionId":I
    move/from16 v10, p4

    move-object/from16 v43, v11

    .end local v11    # "snapshot":Lcom/android/server/pm/Computer;
    .local v43, "snapshot":Lcom/android/server/pm/Computer;
    move v11, v13

    move/from16 v44, v13

    .end local v13    # "callingUid":I
    .local v44, "callingUid":I
    move-object/from16 v13, p1

    move-wide/from16 v14, v34

    move-object/from16 v18, v36

    move-object/from16 v19, v37

    invoke-direct/range {v1 .. v32}, Lcom/android/server/pm/PackageInstallerSession;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSessionProvider;Lcom/android/server/pm/SilentUpdatePolicy;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;IIILcom/android/server/pm/InstallSource;Landroid/content/pm/PackageInstaller$SessionParams;JJLjava/io/File;Ljava/lang/String;[Landroid/content/pm/InstallationFile;Landroid/util/ArrayMap;ZZZZ[IIZZZILjava/lang/String;)V

    move-object v2, v0

    .line 903
    .local v2, "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceStub;->get()Lcom/android/server/pm/PackageManagerServiceStub;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/pm/PackageManagerServiceStub;->setCallingPackage(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)V

    .line 905
    move-object/from16 v4, p0

    iget-object v3, v4, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v3

    .line 906
    :try_start_3cc
    iget-object v0, v4, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;
    :try_end_3ce
    .catchall {:try_start_3cc .. :try_end_3ce} :catchall_41d

    move/from16 v5, v42

    .end local v42    # "sessionId":I
    .local v5, "sessionId":I
    :try_start_3d0
    invoke-virtual {v0, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 907
    monitor-exit v3
    :try_end_3d4
    .catchall {:try_start_3d0 .. :try_end_3d4} :catchall_419

    .line 908
    iget-object v0, v4, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->addInstallerPackageName(Lcom/android/server/pm/InstallSource;)V

    .line 910
    iget-object v0, v4, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    iget v1, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v3, v2, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {v0, v1, v3}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->-$$Nest$mnotifySessionCreated(Lcom/android/server/pm/PackageInstallerService$Callbacks;II)V

    .line 912
    iget-object v0, v4, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    invoke-virtual {v0}, Lcom/android/server/pm/utils/RequestThrottle;->schedule()V

    .line 913
    sget-boolean v0, Lcom/android/server/pm/PackageInstallerService;->LOGD:Z

    if-eqz v0, :cond_416

    .line 914
    const-string v0, "PackageInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created session id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " staged="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v6, p1

    iget-boolean v3, v6, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_418

    .line 913
    :cond_416
    move-object/from16 v6, p1

    .line 916
    :goto_418
    return v5

    .line 907
    :catchall_419
    move-exception v0

    move-object/from16 v6, p1

    goto :goto_422

    .end local v5    # "sessionId":I
    .restart local v42    # "sessionId":I
    :catchall_41d
    move-exception v0

    move-object/from16 v6, p1

    move/from16 v5, v42

    .end local v42    # "sessionId":I
    .restart local v5    # "sessionId":I
    :goto_422
    :try_start_422
    monitor-exit v3
    :try_end_423
    .catchall {:try_start_422 .. :try_end_423} :catchall_424

    throw v0

    :catchall_424
    move-exception v0

    goto :goto_422

    .line 874
    .end local v2    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .end local v34    # "createdMillis":J
    .end local v36    # "stageDir":Ljava/io/File;
    .end local v37    # "stageCid":Ljava/lang/String;
    .end local v38    # "installSource":Lcom/android/server/pm/InstallSource;
    .end local v39    # "originatingPackageName":Ljava/lang/String;
    .end local v40    # "installerPackageName":Ljava/lang/String;
    .end local v41    # "requestedInstallerPackageName":Ljava/lang/String;
    .end local v43    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v44    # "callingUid":I
    .local v5, "requestedInstallerPackageName":Ljava/lang/String;
    .restart local v7    # "originatingPackageName":Ljava/lang/String;
    .restart local v8    # "installerPackageName":Ljava/lang/String;
    .restart local v11    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v13    # "callingUid":I
    :catchall_426
    move-exception v0

    move-object/from16 v41, v5

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    move-object/from16 v43, v11

    move-object v4, v14

    move-object v6, v15

    move v7, v13

    .end local v5    # "requestedInstallerPackageName":Ljava/lang/String;
    .end local v7    # "originatingPackageName":Ljava/lang/String;
    .end local v8    # "installerPackageName":Ljava/lang/String;
    .end local v11    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v13    # "callingUid":I
    .restart local v39    # "originatingPackageName":Ljava/lang/String;
    .restart local v40    # "installerPackageName":Ljava/lang/String;
    .restart local v41    # "requestedInstallerPackageName":Ljava/lang/String;
    .restart local v43    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v44    # "callingUid":I
    goto :goto_48e

    .line 869
    .end local v39    # "originatingPackageName":Ljava/lang/String;
    .end local v40    # "installerPackageName":Ljava/lang/String;
    .end local v41    # "requestedInstallerPackageName":Ljava/lang/String;
    .end local v43    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v44    # "callingUid":I
    .local v0, "activeCount":I
    .restart local v3    # "historicalCount":I
    .restart local v5    # "requestedInstallerPackageName":Ljava/lang/String;
    .restart local v7    # "originatingPackageName":Ljava/lang/String;
    .restart local v8    # "installerPackageName":Ljava/lang/String;
    .restart local v11    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v13    # "callingUid":I
    :cond_433
    move-object/from16 v41, v5

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    move-object/from16 v43, v11

    move/from16 v44, v13

    move-object v4, v14

    move-object v6, v15

    .end local v5    # "requestedInstallerPackageName":Ljava/lang/String;
    .end local v7    # "originatingPackageName":Ljava/lang/String;
    .end local v8    # "installerPackageName":Ljava/lang/String;
    .end local v11    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v13    # "callingUid":I
    .restart local v39    # "originatingPackageName":Ljava/lang/String;
    .restart local v40    # "installerPackageName":Ljava/lang/String;
    .restart local v41    # "requestedInstallerPackageName":Ljava/lang/String;
    .restart local v43    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v44    # "callingUid":I
    :try_start_43f
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Too many historical sessions for UID "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5
    :try_end_44c
    .catchall {:try_start_43f .. :try_end_44c} :catchall_45a

    move/from16 v7, v44

    .end local v44    # "callingUid":I
    .local v7, "callingUid":I
    :try_start_44e
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v7    # "callingUid":I
    .end local v33    # "isApex":Z
    .end local v39    # "originatingPackageName":Ljava/lang/String;
    .end local v40    # "installerPackageName":Ljava/lang/String;
    .end local v41    # "requestedInstallerPackageName":Ljava/lang/String;
    .end local v43    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .end local p1    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local p3    # "installerAttributionTag":Ljava/lang/String;
    .end local p4    # "userId":I
    throw v2

    .line 874
    .end local v0    # "activeCount":I
    .end local v3    # "historicalCount":I
    .restart local v33    # "isApex":Z
    .restart local v39    # "originatingPackageName":Ljava/lang/String;
    .restart local v40    # "installerPackageName":Ljava/lang/String;
    .restart local v41    # "requestedInstallerPackageName":Ljava/lang/String;
    .restart local v43    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v44    # "callingUid":I
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .restart local p1    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local p3    # "installerAttributionTag":Ljava/lang/String;
    .restart local p4    # "userId":I
    :catchall_45a
    move-exception v0

    move/from16 v7, v44

    .end local v44    # "callingUid":I
    .restart local v7    # "callingUid":I
    goto :goto_48e

    .line 864
    .end local v39    # "originatingPackageName":Ljava/lang/String;
    .end local v40    # "installerPackageName":Ljava/lang/String;
    .end local v41    # "requestedInstallerPackageName":Ljava/lang/String;
    .end local v43    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v0    # "activeCount":I
    .restart local v5    # "requestedInstallerPackageName":Ljava/lang/String;
    .local v7, "originatingPackageName":Ljava/lang/String;
    .restart local v8    # "installerPackageName":Ljava/lang/String;
    .restart local v11    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v13    # "callingUid":I
    :cond_45e
    move-object/from16 v41, v5

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    move-object/from16 v43, v11

    move v7, v13

    move-object v4, v14

    move-object v6, v15

    .end local v5    # "requestedInstallerPackageName":Ljava/lang/String;
    .end local v8    # "installerPackageName":Ljava/lang/String;
    .end local v11    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v13    # "callingUid":I
    .local v7, "callingUid":I
    .restart local v39    # "originatingPackageName":Ljava/lang/String;
    .restart local v40    # "installerPackageName":Ljava/lang/String;
    .restart local v41    # "requestedInstallerPackageName":Ljava/lang/String;
    .restart local v43    # "snapshot":Lcom/android/server/pm/Computer;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many active sessions for UID "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v7    # "callingUid":I
    .end local v33    # "isApex":Z
    .end local v39    # "originatingPackageName":Ljava/lang/String;
    .end local v40    # "installerPackageName":Ljava/lang/String;
    .end local v41    # "requestedInstallerPackageName":Ljava/lang/String;
    .end local v43    # "snapshot":Lcom/android/server/pm/Computer;
    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .end local p1    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .end local p3    # "installerAttributionTag":Ljava/lang/String;
    .end local p4    # "userId":I
    throw v2

    .line 874
    .end local v0    # "activeCount":I
    .restart local v5    # "requestedInstallerPackageName":Ljava/lang/String;
    .local v7, "originatingPackageName":Ljava/lang/String;
    .restart local v8    # "installerPackageName":Ljava/lang/String;
    .restart local v11    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v13    # "callingUid":I
    .restart local v33    # "isApex":Z
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .restart local p1    # "params":Landroid/content/pm/PackageInstaller$SessionParams;
    .restart local p3    # "installerAttributionTag":Ljava/lang/String;
    .restart local p4    # "userId":I
    :catchall_482
    move-exception v0

    move-object/from16 v41, v5

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    move-object/from16 v43, v11

    move v7, v13

    move-object v4, v14

    move-object v6, v15

    .end local v5    # "requestedInstallerPackageName":Ljava/lang/String;
    .end local v8    # "installerPackageName":Ljava/lang/String;
    .end local v11    # "snapshot":Lcom/android/server/pm/Computer;
    .end local v13    # "callingUid":I
    .local v7, "callingUid":I
    .restart local v39    # "originatingPackageName":Ljava/lang/String;
    .restart local v40    # "installerPackageName":Ljava/lang/String;
    .restart local v41    # "requestedInstallerPackageName":Ljava/lang/String;
    .restart local v43    # "snapshot":Lcom/android/server/pm/Computer;
    :goto_48e
    monitor-exit v1
    :try_end_48f
    .catchall {:try_start_44e .. :try_end_48f} :catchall_490

    throw v0

    :catchall_490
    move-exception v0

    goto :goto_48e

    .line 639
    .end local v7    # "callingUid":I
    .end local v33    # "isApex":Z
    .end local v39    # "originatingPackageName":Ljava/lang/String;
    .end local v40    # "installerPackageName":Ljava/lang/String;
    .end local v41    # "requestedInstallerPackageName":Ljava/lang/String;
    .end local v43    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v11    # "snapshot":Lcom/android/server/pm/Computer;
    .restart local v13    # "callingUid":I
    .local p2, "installerPackageName":Ljava/lang/String;
    :cond_492
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "User restriction prevents installing"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_49a
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "System is not ready yet!"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_4a2
    .packed-switch 0x1
        :pswitch_297
        :pswitch_297
    .end packed-switch
.end method

.method private expireSessionsLocked()V
    .registers 13

    .line 523
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    .line 524
    .local v0, "tmp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/PackageInstallerSession;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 525
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_86

    .line 526
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 527
    .local v3, "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 529
    goto :goto_83

    .line 531
    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    sub-long/2addr v4, v6

    .line 532
    .local v4, "age":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->getUpdatedMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    .line 534
    .local v6, "timeSinceUpdate":J
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v8

    const-string v9, "PackageInstaller"

    if-eqz v8, :cond_44

    .line 535
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v8

    if-eqz v8, :cond_42

    const-wide/32 v10, 0x6c258c00

    cmp-long v8, v6, v10

    if-gez v8, :cond_40

    goto :goto_42

    :cond_40
    const/4 v8, 0x0

    goto :goto_43

    :cond_42
    :goto_42
    const/4 v8, 0x1

    .local v8, "valid":Z
    :goto_43
    goto :goto_66

    .line 537
    .end local v8    # "valid":Z
    :cond_44
    const-wide/32 v10, 0xf731400

    cmp-long v8, v4, v10

    if-ltz v8, :cond_65

    .line 538
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Abandoning old session created at "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v3, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v8, 0x0

    .restart local v8    # "valid":Z
    goto :goto_66

    .line 542
    .end local v8    # "valid":Z
    :cond_65
    const/4 v8, 0x1

    .line 544
    .restart local v8    # "valid":Z
    :goto_66
    if-nez v8, :cond_83

    .line 545
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Remove old session: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageInstallerService;->removeActiveSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 525
    .end local v3    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .end local v4    # "age":J
    .end local v6    # "timeSinceUpdate":J
    .end local v8    # "valid":Z
    :cond_83
    :goto_83
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 550
    .end local v2    # "i":I
    :cond_86
    return-void
.end method

.method private static getSessionCount(Landroid/util/SparseArray;I)I
    .registers 7
    .param p1, "installerUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;I)I"
        }
    .end annotation

    .line 1608
    .local p0, "sessions":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/pm/PackageInstallerSession;>;"
    const/4 v0, 0x0

    .line 1609
    .local v0, "count":I
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1610
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_19

    .line 1611
    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 1612
    .local v3, "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v4

    if-ne v4, p1, :cond_16

    .line 1613
    add-int/lit8 v0, v0, 0x1

    .line 1610
    .end local v3    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1616
    .end local v2    # "i":I
    :cond_19
    return v0
.end method

.method private getSpeedInstallDownloadSoucePathForPackage(Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1429
    const/4 v0, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2c

    .line 1433
    :cond_a
    if-eqz p2, :cond_d

    .line 1434
    return-object v0

    .line 1437
    :cond_d
    invoke-static {p1}, Landroid/content/pm/PackageInstaller;->getSpeedInstallDirForPackage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1438
    .local v1, "speedInstallPath":Ljava/io/File;
    if-nez v1, :cond_14

    .line 1439
    return-object v0

    .line 1441
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/download"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1443
    .local v0, "sourcePath":Ljava/lang/String;
    return-object v0

    .line 1430
    .end local v0    # "sourcePath":Ljava/lang/String;
    .end local v1    # "speedInstallPath":Ljava/io/File;
    :cond_2c
    :goto_2c
    return-object v0
.end method

.method private getStagingDirsOnVolume(Ljava/lang/String;)Landroid/util/ArraySet;
    .registers 6
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 393
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->getTmpSessionDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 394
    .local v0, "stagingDir":Ljava/io/File;
    sget-object v1, Lcom/android/server/pm/PackageInstallerService;->sStageFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerService;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    .line 397
    .local v1, "stagingDirs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/io/File;>;"
    invoke-static {p1}, Landroid/os/Environment;->getDataStagingDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 398
    .local v2, "stagedSessionStagingDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/PackageInstallerService;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 399
    return-object v1
.end method

.method private getTmpSessionDir(Ljava/lang/String;)Ljava/io/File;
    .registers 3
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 1059
    invoke-static {p1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private isCalledBySystemOrShell(I)Z
    .registers 3
    .param p1, "callingUid"    # I

    .line 920
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_d

    if-eqz p1, :cond_d

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method private isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 5
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 1620
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1621
    .local v0, "callingUid":I
    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 1622
    return v1

    .line 1624
    :cond_8
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v2

    if-ne v0, v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method static isStageName(Ljava/lang/String;)Z
    .registers 6
    .param p0, "name"    # Ljava/lang/String;

    .line 1029
    const-string/jumbo v0, "vmdl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ".tmp"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v3

    .line 1030
    .local v0, "isFile":Z
    :goto_16
    const-string/jumbo v4, "smdl"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    move v1, v2

    goto :goto_28

    :cond_27
    move v1, v3

    .line 1031
    .local v1, "isContainer":Z
    :goto_28
    const-string/jumbo v4, "smdl2tmp"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 1032
    .local v4, "isLegacyContainer":Z
    if-nez v0, :cond_37

    if-nez v1, :cond_37

    if-eqz v4, :cond_36

    goto :goto_37

    :cond_36
    move v2, v3

    :cond_37
    :goto_37
    return v2
.end method

.method private isStagedInstallerAllowed(Ljava/lang/String;)Z
    .registers 3
    .param p1, "installerName"    # Ljava/lang/String;

    .line 925
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getWhitelistedStagedInstallers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isValidPackageName(Ljava/lang/String;)Z
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1046
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xff

    if-le v0, v2, :cond_a

    .line 1047
    return v1

    .line 1050
    :cond_a
    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 1052
    .local v2, "errorMessage":Ljava/lang/String;
    if-eqz v2, :cond_12

    .line 1053
    return v1

    .line 1055
    :cond_12
    return v0
.end method

.method static synthetic lambda$registerCallback$3(II)Z
    .registers 3
    .param p0, "userId"    # I
    .param p1, "eventUserId"    # I

    .line 1541
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private matchesInstaller(Lcom/android/server/pm/PackageInstallerSession;II)Z
    .registers 8
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "installerAppId"    # I
    .param p3, "userId"    # I

    .line 2092
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v0

    .line 2093
    .local v0, "installerUid":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne p2, v3, :cond_12

    .line 2094
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    if-ne v3, p2, :cond_10

    goto :goto_11

    :cond_10
    move v1, v2

    :goto_11
    return v1

    .line 2096
    :cond_12
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    if-ne v3, v0, :cond_19

    goto :goto_1a

    :cond_19
    move v1, v2

    :goto_1a
    return v1
.end method

.method public static varargs newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Landroid/util/ArraySet<",
            "TE;>;"
        }
    .end annotation

    .line 1748
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1749
    .local v0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    if-eqz p0, :cond_e

    .line 1750
    array-length v1, p0

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 1751
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1753
    :cond_e
    return-object v0
.end method

.method private onBroadcastReady()V
    .registers 2

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    .line 349
    return-void
.end method

.method private openSessionInternal(I)Landroid/content/pm/IPackageInstallerSession;
    .registers 7
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1003
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1004
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 1005
    .local v1, "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->checkOpenSessionAccess(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1008
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->open()V

    .line 1009
    monitor-exit v0

    return-object v1

    .line 1006
    :cond_16
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller has no access to session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .end local p1    # "sessionId":I
    throw v2

    .line 1010
    .end local v1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .restart local p1    # "sessionId":I
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method static prepareStageDir(Ljava/io/File;)V
    .registers 7
    .param p0, "stageDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1081
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_93

    .line 1086
    :try_start_6
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1}, Landroid/system/Os;->mkdir(Ljava/lang/String;I)V

    .line 1087
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_16
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_16} :catch_79

    .line 1091
    nop

    .line 1093
    invoke-static {p0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_78

    .line 1094
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1095
    .local v0, "path":Ljava/lang/String;
    invoke-static {v0}, Landroid/os/SELinux;->fileSelabelLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1096
    .local v1, "ctx":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/os/SELinux;->setFileContext(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1097
    .local v2, "success":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to SELinux.restorecon session dir, path: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], ctx: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]. Retrying via SELinux.fileSelabelLookup/SELinux.setFileContext: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1100
    if-eqz v2, :cond_4d

    const-string v4, "SUCCESS"

    goto :goto_4f

    :cond_4d
    const-string v4, "FAILURE"

    :goto_4f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1097
    const-string v4, "PackageInstaller"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    if-eqz v2, :cond_5f

    goto :goto_78

    .line 1102
    :cond_5f
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to restorecon session dir: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1105
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "ctx":Ljava/lang/String;
    .end local v2    # "success":Z
    :cond_78
    :goto_78
    return-void

    .line 1088
    :catch_79
    move-exception v0

    .line 1090
    .local v0, "e":Landroid/system/ErrnoException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to prepare session dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1082
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_93
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session dir already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readSessionsLocked()V
    .registers 15

    .line 479
    sget-boolean v0, Lcom/android/server/pm/PackageInstallerService;->LOGD:Z

    const-string v1, "PackageInstaller"

    if-eqz v0, :cond_c

    const-string/jumbo v0, "readSessionsLocked()"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_c
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 483
    const/4 v0, 0x0

    .line 485
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_12
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v0, v2

    .line 486
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v2

    move-object v3, v2

    .line 489
    .local v3, "in":Landroid/util/TypedXmlPullParser;
    :cond_1e
    :goto_1e
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    move v12, v2

    .local v12, "type":I
    const/4 v13, 0x1

    if-eq v2, v13, :cond_65

    .line 490
    const/4 v2, 0x2

    if-ne v12, v2, :cond_1e

    .line 491
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "tag":Ljava/lang/String;
    const-string/jumbo v4, "session"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_34} :catch_74
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_34} :catch_68
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_34} :catch_68
    .catchall {:try_start_12 .. :try_end_34} :catchall_66

    if-eqz v4, :cond_64

    .line 495
    :try_start_36
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mInstallThread:Landroid/os/HandlerThread;

    .line 496
    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    iget-object v9, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    iget-object v11, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    .line 495
    move-object v10, p0

    invoke-static/range {v3 .. v11}, Lcom/android/server/pm/PackageInstallerSession;->readFromXml(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;Ljava/io/File;Lcom/android/server/pm/PackageSessionProvider;Lcom/android/server/pm/SilentUpdatePolicy;)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v4
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4d} :catch_5d
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_4d} :catch_74
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_4d} :catch_68
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_36 .. :try_end_4d} :catch_68
    .catchall {:try_start_36 .. :try_end_4d} :catchall_66

    .line 501
    .local v4, "session":Lcom/android/server/pm/PackageInstallerSession;
    nop

    .line 502
    :try_start_4e
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    iget v6, v4, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 503
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mAllocatedSessions:Landroid/util/SparseBooleanArray;

    iget v6, v4, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v5, v6, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_64

    .line 498
    .end local v4    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :catch_5d
    move-exception v4

    .line 499
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "Could not read session"

    invoke-static {v1, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_63
    .catch Ljava/io/FileNotFoundException; {:try_start_4e .. :try_end_63} :catch_74
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_63} :catch_68
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4e .. :try_end_63} :catch_68
    .catchall {:try_start_4e .. :try_end_63} :catchall_66

    .line 500
    goto :goto_1e

    .line 505
    .end local v2    # "tag":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_64
    :goto_64
    goto :goto_1e

    .line 489
    .end local v3    # "in":Landroid/util/TypedXmlPullParser;
    .end local v12    # "type":I
    :cond_65
    goto :goto_75

    .line 512
    :catchall_66
    move-exception v1

    goto :goto_70

    .line 509
    :catch_68
    move-exception v2

    .line 510
    .local v2, "e":Ljava/lang/Exception;
    :try_start_69
    const-string v3, "Failed reading install sessions"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_69 .. :try_end_6e} :catchall_66

    .line 512
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_76

    :goto_70
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 513
    throw v1

    .line 507
    :catch_74
    move-exception v1

    .line 512
    :goto_75
    nop

    :goto_76
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 513
    nop

    .line 515
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7b
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_93

    .line 516
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 517
    .local v2, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->onAfterSessionRead(Landroid/util/SparseArray;)V

    .line 515
    .end local v2    # "session":Lcom/android/server/pm/PackageInstallerSession;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    .line 519
    .end local v1    # "i":I
    :cond_93
    return-void
.end method

.method private readSpeedInstallFileLocked()V
    .registers 13

    .line 1472
    const-string v0, "PackageInstaller"

    const/4 v1, 0x0

    .line 1473
    .local v1, "inputStream":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 1474
    .local v2, "inputReader":Ljava/io/InputStreamReader;
    const/4 v3, 0x0

    .line 1475
    .local v3, "bufferedReader":Ljava/io/BufferedReader;
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSpeedInstallRedirectMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1478
    :try_start_a
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSpeedInstallRedirectFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    move-object v1, v4

    .line 1479
    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v2, v4

    .line 1480
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    .line 1482
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1483
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_24
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "dataLine":Ljava/lang/String;
    if-eqz v5, :cond_2f

    .line 1484
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 1487
    :cond_2f
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1488
    .local v5, "jsonObj":Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 1489
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6d

    .line 1490
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1491
    .local v8, "name":Ljava/lang/String;
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1492
    .local v9, "value":Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/android/server/pm/PackageInstallerService;->transferSpeedInstallExternalpath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1494
    .local v10, "tempFilePath":Ljava/lang/String;
    if-eqz v10, :cond_62

    iget-object v11, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v11, v8, v10}, Lcom/android/server/pm/Installer;->speedInstallRedirectDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_62

    .line 1495
    iget-object v11, p0, Lcom/android/server/pm/PackageInstallerService;->mSpeedInstallRedirectMap:Ljava/util/HashMap;

    invoke-virtual {v11, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6c

    .line 1497
    :cond_62
    sget-boolean v11, Lcom/android/server/pm/PackageInstallerService;->LOGD:Z

    if-eqz v11, :cond_6c

    const-string/jumbo v11, "readSpeedInstallFileLocked() failed redirect"

    invoke-static {v0, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_6c} :catch_85
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_6c} :catch_70
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_6c} :catch_70
    .catchall {:try_start_a .. :try_end_6c} :catchall_6e

    .line 1499
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "tempFilePath":Ljava/lang/String;
    :cond_6c
    :goto_6c
    goto :goto_3c

    .line 1489
    .end local v4    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "jsonObj":Lorg/json/JSONObject;
    .end local v6    # "dataLine":Ljava/lang/String;
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6d
    goto :goto_86

    .line 1505
    :catchall_6e
    move-exception v0

    goto :goto_7b

    .line 1502
    :catch_70
    move-exception v4

    .line 1503
    .local v4, "e":Ljava/lang/Exception;
    :try_start_71
    sget-boolean v5, Lcom/android/server/pm/PackageInstallerService;->LOGD:Z

    if-eqz v5, :cond_86

    const-string v5, "Failed reading speedinstall dir redirect info"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7a
    .catchall {:try_start_71 .. :try_end_7a} :catchall_6e

    goto :goto_86

    .line 1505
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_7b
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1506
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1507
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1508
    throw v0

    .line 1500
    :catch_85
    move-exception v0

    .line 1505
    :cond_86
    :goto_86
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1506
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1507
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1508
    nop

    .line 1509
    return-void
.end method

.method private reconcileStagesLocked(Ljava/lang/String;)V
    .registers 6
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 383
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->getStagingDirsOnVolume(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 385
    .local v0, "unclaimedStages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/io/File;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 386
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 387
    .local v2, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget-object v3, v2, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 385
    .end local v2    # "session":Lcom/android/server/pm/PackageInstallerSession;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 389
    .end local v1    # "i":I
    :cond_1d
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->removeStagingDirs(Landroid/util/ArraySet;)V

    .line 390
    return-void
.end method

.method private removeActiveSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 6
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 558
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 559
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->addHistoricalSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 560
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 561
    .local v1, "child":Lcom/android/server/pm/PackageInstallerSession;
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 562
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->addHistoricalSessionLocked(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 563
    .end local v1    # "child":Lcom/android/server/pm/PackageInstallerSession;
    goto :goto_12

    .line 564
    :cond_29
    return-void
.end method

.method private removeStagingDirs(Landroid/util/ArraySet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 403
    .local p1, "stagingDirsToRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/io/File;>;"
    new-instance v0, Lcom/android/server/pm/RemovePackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/pm/RemovePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 405
    .local v0, "removePackageHelper":Lcom/android/server/pm/RemovePackageHelper;
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 406
    .local v2, "stage":Ljava/io/File;
    const-string v3, "PackageInstaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting orphan stage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 408
    :try_start_34
    invoke-virtual {v0, v2}, Lcom/android/server/pm/RemovePackageHelper;->removeCodePathLI(Ljava/io/File;)V

    .line 409
    monitor-exit v3

    .line 410
    .end local v2    # "stage":Ljava/io/File;
    goto :goto_b

    .line 409
    .restart local v2    # "stage":Ljava/io/File;
    :catchall_39
    move-exception v1

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_39

    throw v1

    .line 411
    .end local v2    # "stage":Ljava/io/File;
    :cond_3c
    return-void
.end method

.method private sendSessionUpdatedBroadcast(Landroid/content/pm/PackageInstaller$SessionInfo;I)V
    .registers 6
    .param p1, "sessionInfo"    # Landroid/content/pm/PackageInstaller$SessionInfo;
    .param p2, "userId"    # I

    .line 2058
    iget-object v0, p1, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2059
    return-void

    .line 2061
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.SESSION_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2062
    const-string v1, "android.content.pm.extra.SESSION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p1, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    .line 2063
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2064
    .local v0, "sessionUpdatedIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2065
    return-void
.end method

.method private shouldFilterSession(Lcom/android/server/pm/Computer;II)Z
    .registers 7
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "uid"    # I
    .param p3, "sessionId"    # I

    .line 1629
    invoke-virtual {p0, p3}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    .line 1630
    .local v0, "session":Lcom/android/server/pm/PackageInstallerSession;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1631
    return v1

    .line 1633
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v2

    if-eq p2, v2, :cond_1a

    .line 1634
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v2}, Lcom/android/server/pm/Computer;->canQueryPackage(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    nop

    .line 1633
    :goto_1b
    return v1
.end method

.method private shouldFilterSession(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z
    .registers 6
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "uid"    # I
    .param p3, "info"    # Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 1112
    const/4 v0, 0x0

    if-nez p3, :cond_4

    .line 1113
    return v0

    .line 1115
    :cond_4
    invoke-virtual {p3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerUid()I

    move-result v1

    if-eq p2, v1, :cond_16

    .line 1116
    invoke-virtual {p3}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lcom/android/server/pm/Computer;->canQueryPackage(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    nop

    .line 1115
    :goto_17
    return v0
.end method

.method private transferSpeedInstallExternalpath(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p1, "sourcePath"    # Ljava/lang/String;

    .line 1515
    if-eqz p1, :cond_66

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_66

    .line 1518
    :cond_9
    const/4 v0, 0x0

    .line 1519
    .local v0, "userId":I
    new-instance v1, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v1, v0}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 1520
    .local v1, "env":Landroid/os/Environment$UserEnvironment;
    const/4 v2, 0x0

    .line 1521
    .local v2, "externalPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1523
    .local v3, "ident":J
    :try_start_14
    invoke-virtual {v1}, Landroid/os/Environment$UserEnvironment;->getExternalDirs()[Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_61

    move-object v2, v5

    .line 1525
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1526
    nop

    .line 1529
    const-string v5, "/data/media/0"

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1531
    .local v5, "tempPath":Ljava/lang/String;
    sget-boolean v6, Lcom/android/server/pm/PackageInstallerService;->LOGD:Z

    const-string v7, "PackageInstaller"

    if-eqz v6, :cond_47

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "speedinstall transferSpeedInstallExternalpath sourcePath ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    :cond_47
    if-eqz v6, :cond_60

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "speedinstall transferSpeedInstallExternalpath tempPath = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    :cond_60
    return-object v5

    .line 1525
    .end local v5    # "tempPath":Ljava/lang/String;
    :catchall_61
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1526
    throw v5

    .line 1516
    .end local v0    # "userId":I
    .end local v1    # "env":Landroid/os/Environment$UserEnvironment;
    .end local v2    # "externalPath":Ljava/lang/String;
    .end local v3    # "ident":J
    :cond_66
    :goto_66
    const/4 v0, 0x0

    return-object v0
.end method

.method static tryParseSessionId(Ljava/lang/String;)I
    .registers 4
    .param p0, "tmpSessionDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1037
    const-string/jumbo v0, "vmdl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, ".tmp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1040
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1041
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v2, v1

    .line 1040
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1042
    .local v0, "sessionId":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 1038
    .end local v0    # "sessionId":Ljava/lang/String;
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a temporary session directory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeSessionsLocked()Z
    .registers 10

    .line 581
    const-string/jumbo v0, "sessions"

    sget-boolean v1, Lcom/android/server/pm/PackageInstallerService;->LOGD:Z

    if-eqz v1, :cond_f

    const-string v1, "PackageInstaller"

    const-string/jumbo v2, "writeSessionsLocked()"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_f
    const/4 v1, 0x0

    .line 585
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_10
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 587
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v2

    .line 588
    .local v2, "out":Landroid/util/TypedXmlSerializer;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 589
    invoke-interface {v2, v5, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 590
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 591
    .local v4, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2e
    if-ge v6, v4, :cond_40

    .line 592
    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageInstallerSession;

    .line 593
    .local v7, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    invoke-virtual {v7, v2, v8}, Lcom/android/server/pm/PackageInstallerSession;->write(Landroid/util/TypedXmlSerializer;Ljava/io/File;)V

    .line 591
    .end local v7    # "session":Lcom/android/server/pm/PackageInstallerSession;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    .line 595
    .end local v6    # "i":I
    :cond_40
    invoke-interface {v2, v5, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 596
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 598
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_4b} :catch_4c

    .line 599
    return v3

    .line 600
    .end local v2    # "out":Landroid/util/TypedXmlSerializer;
    .end local v4    # "size":I
    :catch_4c
    move-exception v0

    .line 601
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_54

    .line 602
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 606
    .end local v0    # "e":Ljava/io/IOException;
    :cond_54
    const/4 v0, 0x0

    return v0
.end method

.method private writeSpeedIntallFileLocked()V
    .registers 6

    .line 1450
    const/4 v0, 0x0

    .line 1451
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 1453
    .local v1, "outputWriter":Ljava/io/OutputStreamWriter;
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSpeedInstallRedirectMap:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1454
    .local v2, "jsonObj":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSpeedInstallRedirectFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v0, v3

    .line 1455
    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object v1, v3

    .line 1456
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 1457
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 1458
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSpeedInstallRedirectFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_27} :catch_2a
    .catchall {:try_start_2 .. :try_end_27} :catchall_28

    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    goto :goto_37

    .line 1464
    :catchall_28
    move-exception v2

    goto :goto_33

    .line 1459
    :catch_2a
    move-exception v2

    .line 1460
    .local v2, "e":Ljava/io/IOException;
    if-eqz v0, :cond_37

    .line 1461
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSpeedInstallRedirectFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_32
    .catchall {:try_start_2d .. :try_end_32} :catchall_28

    goto :goto_37

    .line 1464
    .end local v2    # "e":Ljava/io/IOException;
    :goto_33
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1465
    throw v2

    .line 1464
    :cond_37
    :goto_37
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1465
    nop

    .line 1466
    return-void
.end method


# virtual methods
.method public abandonSession(I)V
    .registers 7
    .param p1, "sessionId"    # I

    .line 968
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 969
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 970
    .local v1, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v1, :cond_18

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 973
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    .line 974
    .end local v1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    monitor-exit v0

    .line 975
    return-void

    .line 971
    .restart local v1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_18
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller has no access to session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .end local p1    # "sessionId":I
    throw v2

    .line 974
    .end local v1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .restart local p1    # "sessionId":I
    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v1
.end method

.method public allocateExternalStageCidLegacy()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 471
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    move-result v1

    .line 472
    .local v1, "sessionId":I
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "smdl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 474
    .end local v1    # "sessionId":I
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public allocateStageDirLegacy(Ljava/lang/String;Z)Ljava/io/File;
    .registers 7
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "isEphemeral"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 455
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 457
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->allocateSessionIdLocked()I

    move-result v1

    .line 458
    .local v1, "sessionId":I
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 459
    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageInstallerService;->buildTmpSessionDir(ILjava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 460
    .local v2, "sessionStageDir":Ljava/io/File;
    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerService;->prepareStageDir(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_14} :catch_18
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    .line 461
    :try_start_14
    monitor-exit v0

    return-object v2

    .line 465
    .end local v1    # "sessionId":I
    .end local v2    # "sessionStageDir":Ljava/io/File;
    :catchall_16
    move-exception v1

    goto :goto_1f

    .line 462
    :catch_18
    move-exception v1

    .line 463
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .end local p1    # "volumeUuid":Ljava/lang/String;
    .end local p2    # "isEphemeral":Z
    throw v2

    .line 465
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .restart local p1    # "volumeUuid":Ljava/lang/String;
    .restart local p2    # "isEphemeral":Z
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_16

    throw v1
.end method

.method public bypassNextAllowedApexUpdateCheck(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 1578
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1581
    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextAllowedApexUpdateCheck:Z

    .line 1582
    return-void

    .line 1579
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller not allowed to bypass allowed apex update check"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bypassNextStagedInstallerCheck(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 1570
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1573
    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerService;->mBypassNextStagedInstallerCheck:Z

    .line 1574
    return-void

    .line 1571
    :cond_d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller not allowed to bypass staged installer check"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createSession(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 7
    .param p1, "params"    # Landroid/content/pm/PackageInstaller$SessionParams;
    .param p2, "installerPackageName"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 617
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageInstallerService;->createSessionInternal(Landroid/content/pm/PackageInstaller$SessionParams;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 619
    :catch_5
    move-exception v0

    .line 620
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 11
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1917
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1918
    :try_start_3
    new-instance v1, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;

    invoke-direct {v1}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;-><init>()V

    .line 1919
    .local v1, "activeSessionMap":Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;
    new-instance v2, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;

    invoke-direct {v2}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;-><init>()V

    .line 1920
    .local v2, "orphanedChildSessionMap":Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;
    new-instance v3, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;

    invoke-direct {v3}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;-><init>()V

    .line 1922
    .local v3, "finalizedSessionMap":Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 1923
    .local v4, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_19
    if-ge v5, v4, :cond_4a

    .line 1924
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageInstallerSession;

    .line 1926
    .local v6, "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-virtual {v6}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v7

    if-eqz v7, :cond_32

    .line 1927
    invoke-virtual {v6}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v7

    goto :goto_33

    .line 1928
    :cond_32
    move-object v7, v6

    :goto_33
    nop

    .line 1930
    .local v7, "rootSession":Lcom/android/server/pm/PackageInstallerSession;
    if-nez v7, :cond_3a

    .line 1931
    invoke-virtual {v2, v6, v7}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->addSession(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1932
    goto :goto_47

    .line 1936
    :cond_3a
    invoke-virtual {v7}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v8

    if-eqz v8, :cond_44

    .line 1937
    invoke-virtual {v3, v6, v7}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->addSession(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1938
    goto :goto_47

    .line 1941
    :cond_44
    invoke-virtual {v1, v6, v7}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->addSession(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1923
    .end local v6    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .end local v7    # "rootSession":Lcom/android/server/pm/PackageInstallerSession;
    :goto_47
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 1944
    .end local v5    # "i":I
    :cond_4a
    const-string v5, "Active"

    invoke-virtual {v1, v5, p1}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->dump(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1946
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->containsSession()Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 1949
    const-string v5, "Orphaned"

    invoke-virtual {v2, v5, p1}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->dump(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1952
    :cond_5a
    const-string v5, "Finalized"

    invoke-virtual {v3, v5, p1}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->dump(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1954
    const-string v5, "Historical install sessions:"

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1955
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1956
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v4, v5

    .line 1957
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_6f
    if-ge v5, v4, :cond_82

    .line 1958
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1959
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1957
    add-int/lit8 v5, v5, 0x1

    goto :goto_6f

    .line 1961
    .end local v5    # "i":I
    :cond_82
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1962
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1964
    const-string v5, "Legacy install sessions:"

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1965
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1966
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mLegacySessions:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1967
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1968
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1969
    nop

    .end local v1    # "activeSessionMap":Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;
    .end local v2    # "orphanedChildSessionMap":Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;
    .end local v3    # "finalizedSessionMap":Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;
    .end local v4    # "N":I
    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_3 .. :try_end_a1} :catchall_a7

    .line 1970
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SilentUpdatePolicy;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1971
    return-void

    .line 1969
    :catchall_a7
    move-exception v1

    :try_start_a8
    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw v1
.end method

.method public freeStageDirs(Ljava/lang/String;)V
    .registers 14
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 423
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->getStagingDirsOnVolume(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    .line 424
    .local v0, "unclaimedStagingDirsOnVolume":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/io/File;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 425
    .local v1, "currentTimeMillis":J
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v3

    .line 426
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    :try_start_c
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_81

    .line 427
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession;

    .line 428
    .local v5, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget-object v6, v5, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_25

    .line 430
    goto :goto_7e

    .line 432
    :cond_25
    iget-wide v6, v5, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    sub-long v6, v1, v6

    .line 433
    .local v6, "age":J
    const-wide/32 v8, 0x1b77400

    cmp-long v8, v6, v8

    if-ltz v8, :cond_79

    .line 436
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v8

    if-nez v8, :cond_38

    .line 437
    move-object v8, v5

    goto :goto_44

    :cond_38
    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageInstallerSession;

    .line 438
    .local v8, "root":Lcom/android/server/pm/PackageInstallerSession;
    :goto_44
    if-nez v8, :cond_6f

    .line 439
    const-string v9, "PackageInstaller"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "freeStageDirs: found an orphaned session: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " parent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 440
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 439
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 441
    :cond_6f
    invoke-virtual {v8}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v9

    if-nez v9, :cond_78

    .line 442
    invoke-virtual {v8}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    .line 444
    .end local v8    # "root":Lcom/android/server/pm/PackageInstallerSession;
    :cond_78
    :goto_78
    goto :goto_7e

    .line 446
    :cond_79
    iget-object v8, v5, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 426
    .end local v5    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .end local v6    # "age":J
    :goto_7e
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 449
    .end local v4    # "i":I
    :cond_81
    monitor-exit v3
    :try_end_82
    .catchall {:try_start_c .. :try_end_82} :catchall_86

    .line 450
    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->removeStagingDirs(Landroid/util/ArraySet;)V

    .line 451
    return-void

    .line 449
    :catchall_86
    move-exception v4

    :try_start_87
    monitor-exit v3
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v4
.end method

.method public getAllSessions(I)Landroid/content/pm/ParceledListSlice;
    .registers 10
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 1151
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 1152
    .local v6, "callingUid":I
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v7

    .line 1153
    .local v7, "snapshot":Lcom/android/server/pm/Computer;
    const-string v5, "getAllSessions"

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, v7

    move v1, v6

    move v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1156
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1157
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4e

    .line 1158
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 1159
    .local v3, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget v4, v3, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    if-ne v4, p1, :cond_4b

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v4

    if-nez v4, :cond_4b

    .line 1160
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_4b

    .line 1161
    :cond_43
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1157
    .end local v3    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_4b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 1164
    .end local v2    # "i":I
    :cond_4e
    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_1d .. :try_end_4f} :catchall_5d

    .line 1165
    new-instance v1, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v7, v6}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/Computer;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1166
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1

    .line 1164
    :catchall_5d
    move-exception v2

    :try_start_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v2
.end method

.method public getMySessions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .registers 11
    .param p1, "installerPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 1171
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 1172
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1173
    .local v7, "callingUid":I
    const-string v6, "getMySessions"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, v0

    move v2, v7

    move v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1174
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v7, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1177
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1178
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_22
    :try_start_22
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_59

    .line 1179
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    .line 1181
    .local v4, "session":Lcom/android/server/pm/PackageInstallerSession;
    const/4 v5, 0x0

    const/16 v6, 0x3e8

    .line 1182
    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    .line 1183
    .local v5, "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    iget v6, v4, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    if-ne v6, p2, :cond_56

    .line 1184
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v6

    if-nez v6, :cond_56

    .line 1185
    invoke-direct {p0, v4}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 1186
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1178
    .end local v4    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .end local v5    # "info":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 1189
    .end local v3    # "i":I
    :cond_59
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_22 .. :try_end_5a} :catchall_60

    .line 1190
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v2, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v2

    .line 1189
    :catchall_60
    move-exception v3

    :try_start_61
    monitor-exit v2
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v3
.end method

.method public getSession(I)Lcom/android/server/pm/PackageInstallerSession;
    .registers 4
    .param p1, "sessionId"    # I

    .line 1558
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1559
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    monitor-exit v0

    return-object v1

    .line 1560
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 7
    .param p1, "sessionId"    # I

    .line 1121
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1123
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1124
    :try_start_7
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 1125
    .local v2, "session":Lcom/android/server/pm/PackageInstallerSession;
    const/4 v3, 0x0

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_24

    .line 1126
    :cond_1e
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v0}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v4

    goto :goto_25

    .line 1127
    :cond_24
    move-object v4, v3

    :goto_25
    move-object v2, v4

    .line 1128
    .local v2, "result":Landroid/content/pm/PackageInstaller$SessionInfo;
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_36

    .line 1129
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/pm/PackageInstallerService;->shouldFilterSession(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result v1

    if-eqz v1, :cond_34

    goto :goto_35

    :cond_34
    move-object v3, v2

    :goto_35
    return-object v3

    .line 1128
    .end local v2    # "result":Landroid/content/pm/PackageInstaller$SessionInfo;
    :catchall_36
    move-exception v2

    :try_start_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v2
.end method

.method public getSessionVerifier()Lcom/android/server/pm/PackageSessionVerifier;
    .registers 2

    .line 1565
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionVerifier:Lcom/android/server/pm/PackageSessionVerifier;

    return-object v0
.end method

.method public getSpeedInstallExternalFilePath(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1292
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INSTALL_PACKAGES"

    const-string v2, "PackageInstaller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1294
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1297
    invoke-direct {p0, p1, p3}, Lcom/android/server/pm/PackageInstallerService;->getSpeedInstallDownloadSoucePathForPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1298
    .local v1, "sourcePath":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v1, :cond_1a

    .line 1299
    return-object v2

    .line 1302
    :cond_1a
    if-nez p2, :cond_1d

    .line 1303
    return-object v2

    .line 1306
    :cond_1d
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1307
    .local v3, "sourceFile":Ljava/io/File;
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSpeedInstallLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1308
    :try_start_25
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3b

    .line 1309
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_c0

    .line 1311
    :try_start_2e
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1ff

    invoke-static {v5, v6}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_37
    .catch Landroid/system/ErrnoException; {:try_start_2e .. :try_end_37} :catch_38
    .catchall {:try_start_2e .. :try_end_37} :catchall_c0

    .line 1314
    goto :goto_3b

    .line 1312
    :catch_38
    move-exception v5

    .line 1313
    .local v5, "e":Landroid/system/ErrnoException;
    :try_start_39
    monitor-exit v4

    return-object v2

    .line 1316
    .end local v5    # "e":Landroid/system/ErrnoException;
    :cond_3b
    :goto_3b
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_c0

    .line 1318
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSpeedInstallRedirectMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 1319
    :try_start_3f
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSpeedInstallRedirectMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 1320
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSpeedInstallRedirectMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    monitor-exit v5

    return-object v2

    .line 1322
    :cond_59
    monitor-exit v5
    :try_end_5a
    .catchall {:try_start_3f .. :try_end_5a} :catchall_bd

    .line 1324
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageInstallerService;->transferSpeedInstallExternalpath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1325
    .local v4, "targetPathTmp":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/Installer;->speedInstallRedirectDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6d

    .line 1327
    return-object v2

    .line 1329
    :cond_6d
    sget-boolean v2, Lcom/android/server/pm/PackageInstallerService;->LOGD:Z

    if-eqz v2, :cond_8e

    const-string v5, "PackageInstaller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "speedinstall getSpeedInstallExternalFilePath() sourceFile = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1330
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1329
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    :cond_8e
    if-eqz v2, :cond_a9

    const-string v2, "PackageInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "speedinstall getSpeedInstallExternalFilePath() targetPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :cond_a9
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSpeedInstallRedirectMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 1334
    :try_start_ac
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSpeedInstallRedirectMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->writeSpeedIntallFileLocked()V

    .line 1337
    monitor-exit v2

    .line 1338
    return-object p2

    .line 1337
    :catchall_ba
    move-exception v5

    monitor-exit v2
    :try_end_bc
    .catchall {:try_start_ac .. :try_end_bc} :catchall_ba

    throw v5

    .line 1322
    .end local v4    # "targetPathTmp":Ljava/lang/String;
    :catchall_bd
    move-exception v2

    :try_start_be
    monitor-exit v5
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    throw v2

    .line 1316
    :catchall_c0
    move-exception v2

    :try_start_c1
    monitor-exit v4
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c0

    throw v2
.end method

.method public getSpeedInstallRedirectPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "redirectedFilePath"    # Ljava/lang/String;

    .line 1370
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSpeedInstallRedirectMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1371
    return-object v1

    .line 1374
    :cond_a
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSpeedInstallRedirectMap:Ljava/util/HashMap;

    .line 1375
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1377
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1378
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1379
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 1380
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1382
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3d
    goto :goto_14

    .line 1383
    :cond_3e
    return-object v1
.end method

.method public getStagedSessions()Landroid/content/pm/ParceledListSlice;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/pm/PackageInstaller$SessionInfo;",
            ">;"
        }
    .end annotation

    .line 1134
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1135
    .local v0, "callingUid":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1136
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInstaller$SessionInfo;>;"
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1137
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    :try_start_d
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_34

    .line 1138
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession;

    .line 1139
    .local v4, "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v5

    if-nez v5, :cond_31

    .line 1140
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1137
    .end local v4    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 1143
    .end local v3    # "i":I
    :cond_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_d .. :try_end_35} :catchall_49

    .line 1144
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    .line 1145
    .local v2, "snapshot":Lcom/android/server/pm/Computer;
    new-instance v3, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/Computer;I)V

    invoke-interface {v1, v3}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1146
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v3

    .line 1143
    .end local v2    # "snapshot":Lcom/android/server/pm/Computer;
    :catchall_49
    move-exception v3

    :try_start_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v3
.end method

.method getStagingManager()Lcom/android/server/pm/StagingManager;
    .registers 2

    .line 305
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    return-object v0
.end method

.method public installExistingPackage(Ljava/lang/String;IILandroid/content/IntentSender;ILjava/util/List;)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installFlags"    # I
    .param p3, "installReason"    # I
    .param p4, "statusReceiver"    # Landroid/content/IntentSender;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/content/IntentSender;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1269
    .local p6, "allowListedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/pm/InstallPackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/pm/InstallPackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 1270
    .local v0, "installPackageHelper":Lcom/android/server/pm/InstallPackageHelper;
    move-object v1, p1

    move v2, p5

    move v3, p2

    move v4, p3

    move-object v5, p6

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/InstallPackageHelper;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;Landroid/content/IntentSender;)I

    .line 1272
    return-void
.end method

.method synthetic lambda$getAllSessions$2$com-android-server-pm-PackageInstallerService(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z
    .registers 5
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "callingUid"    # I
    .param p3, "info"    # Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 1165
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService;->shouldFilterSession(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$getStagedSessions$1$com-android-server-pm-PackageInstallerService(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z
    .registers 5
    .param p1, "snapshot"    # Lcom/android/server/pm/Computer;
    .param p2, "callingUid"    # I
    .param p3, "info"    # Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 1145
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService;->shouldFilterSession(Lcom/android/server/pm/Computer;ILandroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$new$0$com-android-server-pm-PackageInstallerService()Ljava/lang/Boolean;
    .registers 3

    .line 256
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 257
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->writeSessionsLocked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 258
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method okToSendBroadcasts()Z
    .registers 2

    .line 309
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService;->mOkToSendBroadcasts:Z

    return v0
.end method

.method public onEmulatedVolumeMounted(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 1358
    invoke-static {}, Landroid/content/pm/PackageInstaller;->isSupportedSpeedInstall()Z

    move-result v0

    if-eqz v0, :cond_16

    if-nez p1, :cond_16

    .line 1359
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSpeedInstallRedirectMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1360
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->readSpeedInstallFileLocked()V

    .line 1361
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->writeSpeedIntallFileLocked()V

    .line 1362
    monitor-exit v0

    goto :goto_16

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_13

    throw v1

    .line 1364
    :cond_16
    :goto_16
    return-void
.end method

.method onInstallerPackageDeleted(II)V
    .registers 8
    .param p1, "installerAppId"    # I
    .param p2, "userId"    # I

    .line 2073
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2074
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_43

    .line 2075
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 2076
    .local v2, "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/pm/PackageInstallerService;->matchesInstaller(Lcom/android/server/pm/PackageInstallerSession;II)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 2077
    goto :goto_40

    .line 2080
    :cond_1b
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v3

    if-nez v3, :cond_23

    .line 2081
    move-object v3, v2

    goto :goto_2f

    :cond_23
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 2082
    .local v3, "root":Lcom/android/server/pm/PackageInstallerSession;
    :goto_2f
    if-eqz v3, :cond_40

    invoke-direct {p0, v3, p1, p2}, Lcom/android/server/pm/PackageInstallerService;->matchesInstaller(Lcom/android/server/pm/PackageInstallerSession;II)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 2083
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v4

    if-nez v4, :cond_40

    .line 2084
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->abandon()V

    .line 2074
    .end local v2    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .end local v3    # "root":Lcom/android/server/pm/PackageInstallerSession;
    :cond_40
    :goto_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2087
    .end local v1    # "i":I
    :cond_43
    monitor-exit v0

    .line 2088
    return-void

    .line 2087
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_4 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public onPrivateVolumeMounted(Ljava/lang/String;)V
    .registers 4
    .param p1, "volumeUuid"    # Ljava/lang/String;

    .line 414
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 415
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->reconcileStagesLocked(Ljava/lang/String;)V

    .line 416
    monitor-exit v0

    .line 417
    return-void

    .line 416
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public openSession(I)Landroid/content/pm/IPackageInstallerSession;
    .registers 4
    .param p1, "sessionId"    # I

    .line 980
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerService;->openSessionInternal(I)Landroid/content/pm/IPackageInstallerSession;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 981
    :catch_5
    move-exception v0

    .line 982
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerCallback(Landroid/content/pm/IPackageInstallerCallback;I)V
    .registers 10
    .param p1, "callback"    # Landroid/content/pm/IPackageInstallerCallback;
    .param p2, "userId"    # I

    .line 1538
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 1539
    .local v0, "snapshot":Lcom/android/server/pm/Computer;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "registerCallback"

    move-object v1, v0

    move v3, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1541
    new-instance v1, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/android/server/pm/PackageInstallerService$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/PackageInstallerService;->registerCallback(Landroid/content/pm/IPackageInstallerCallback;Ljava/util/function/IntPredicate;)V

    .line 1542
    return-void
.end method

.method public registerCallback(Landroid/content/pm/IPackageInstallerCallback;Ljava/util/function/IntPredicate;)V
    .registers 6
    .param p1, "callback"    # Landroid/content/pm/IPackageInstallerCallback;
    .param p2, "userCheck"    # Ljava/util/function/IntPredicate;

    .line 1548
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    new-instance v1, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2, p2}, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;-><init>(ILjava/util/function/IntPredicate;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->register(Landroid/content/pm/IPackageInstallerCallback;Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;)V

    .line 1549
    return-void
.end method

.method public removeSpeedInstallExternalFilePath(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1346
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INSTALL_PACKAGES"

    const-string v2, "PackageInstaller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1348
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1350
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerService;->removeSpeedInstallExternalFilePathForPackage(Ljava/lang/String;I)V

    .line 1351
    return-void
.end method

.method public removeSpeedInstallExternalFilePathForPackage(Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1390
    if-eqz p1, :cond_65

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_65

    .line 1394
    :cond_9
    const/4 v0, -0x1

    if-ne p2, v0, :cond_e

    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    move v0, p2

    .line 1395
    .local v0, "tempUser":I
    :goto_f
    if-eqz v0, :cond_12

    .line 1396
    return-void

    .line 1399
    :cond_12
    invoke-static {p1}, Landroid/content/pm/PackageInstaller;->getSpeedInstallDirForPackage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1400
    .local v1, "baseFilePath":Ljava/io/File;
    if-eqz v1, :cond_64

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_64

    .line 1404
    :cond_1f
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageInstallerService;->getSpeedInstallDownloadSoucePathForPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1405
    .local v2, "sourcePath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1406
    .local v3, "targetPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSpeedInstallRedirectMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 1407
    if-eqz v2, :cond_3f

    :try_start_29
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSpeedInstallRedirectMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 1408
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSpeedInstallRedirectMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v3, v5

    .line 1409
    invoke-direct {p0, v3}, Lcom/android/server/pm/PackageInstallerService;->transferSpeedInstallExternalpath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 1411
    :cond_3f
    monitor-exit v4
    :try_end_40
    .catchall {:try_start_29 .. :try_end_40} :catchall_61

    .line 1413
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/server/pm/Installer;->speedInstallUnRedirectAndDeleteDir(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 1415
    if-eqz v3, :cond_60

    .line 1416
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService;->mSpeedInstallRedirectMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 1417
    :try_start_53
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService;->mSpeedInstallRedirectMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1418
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->writeSpeedIntallFileLocked()V

    .line 1419
    monitor-exit v4

    goto :goto_60

    :catchall_5d
    move-exception v5

    monitor-exit v4
    :try_end_5f
    .catchall {:try_start_53 .. :try_end_5f} :catchall_5d

    throw v5

    .line 1422
    :cond_60
    :goto_60
    return-void

    .line 1411
    :catchall_61
    move-exception v5

    :try_start_62
    monitor-exit v4
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v5

    .line 1401
    .end local v2    # "sourcePath":Ljava/lang/String;
    .end local v3    # "targetPath":Ljava/lang/String;
    :cond_64
    :goto_64
    return-void

    .line 1391
    .end local v0    # "tempUser":I
    .end local v1    # "baseFilePath":Ljava/io/File;
    :cond_65
    :goto_65
    return-void
.end method

.method restoreAndApplyStagedSessionIfNeeded()V
    .registers 9

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v0, "stagedSessionsToRestore":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/StagingManager$StagedSession;>;"
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v1

    .line 354
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_81

    .line 355
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 356
    .local v3, "session":Lcom/android/server/pm/PackageInstallerSession;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v4

    if-nez v4, :cond_20

    .line 357
    goto :goto_7e

    .line 359
    :cond_20
    iget-object v4, v3, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 360
    .local v4, "stagedSession":Lcom/android/server/pm/StagingManager$StagedSession;
    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v5

    if-nez v5, :cond_69

    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->hasParentSessionId()Z

    move-result v5

    if-eqz v5, :cond_69

    .line 361
    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->getParentSessionId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/pm/PackageInstallerService;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v5

    if-nez v5, :cond_69

    .line 362
    const/16 v5, -0x80

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "An orphan staged session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 363
    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->sessionId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is found, parent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 364
    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->getParentSessionId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is missing"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 362
    invoke-interface {v4, v5, v6}, Lcom/android/server/pm/StagingManager$StagedSession;->setSessionFailed(ILjava/lang/String;)V

    .line 365
    goto :goto_7e

    .line 367
    :cond_69
    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->hasParentSessionId()Z

    move-result v5

    if-nez v5, :cond_7e

    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->isCommitted()Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 368
    invoke-interface {v4}, Lcom/android/server/pm/StagingManager$StagedSession;->isInTerminalState()Z

    move-result v5

    if-nez v5, :cond_7e

    .line 371
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    .end local v3    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .end local v4    # "stagedSession":Lcom/android/server/pm/StagingManager$StagedSession;
    :cond_7e
    :goto_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 374
    .end local v2    # "i":I
    :cond_81
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_9 .. :try_end_82} :catchall_8e

    .line 378
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/StagingManager;->restoreSessions(Ljava/util/List;Z)V

    .line 379
    return-void

    .line 374
    :catchall_8e
    move-exception v2

    :try_start_8f
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw v2
.end method

.method public setAllowUnlimitedSilentUpdates(Ljava/lang/String;)V
    .registers 4
    .param p1, "installerPackageName"    # Ljava/lang/String;

    .line 1589
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1592
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/SilentUpdatePolicy;->setAllowUnlimitedSilentUpdates(Ljava/lang/String;)V

    .line 1593
    return-void

    .line 1590
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller not allowed to unlimite silent updates"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPermissionsResult(IZ)V
    .registers 6
    .param p1, "sessionId"    # I
    .param p2, "accepted"    # Z

    .line 1276
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INSTALL_PACKAGES"

    const-string v2, "PackageInstaller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1279
    :try_start_c
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 1280
    .local v1, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v1, :cond_19

    .line 1281
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageInstallerSession;->setPermissionsResult(Z)V

    .line 1283
    .end local v1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_19
    monitor-exit v0

    .line 1284
    return-void

    .line 1283
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public setSilentUpdatesThrottleTime(J)V
    .registers 5
    .param p1, "throttleTimeInSeconds"    # J

    .line 1600
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageInstallerService;->isCalledBySystemOrShell(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1603
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/SilentUpdatePolicy;->setSilentUpdatesThrottleTime(J)V

    .line 1604
    return-void

    .line 1601
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller not allowed to set silent updates throttle time"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public systemReady()V
    .registers 8

    .line 313
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 314
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mStagingManager:Lcom/android/server/pm/StagingManager;

    invoke-virtual {v0}, Lcom/android/server/pm/StagingManager;->systemReady()V

    .line 316
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 317
    :try_start_14
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->readSessionsLocked()V

    .line 318
    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService;->expireSessionsLocked()V

    .line 320
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->reconcileStagesLocked(Ljava/lang/String;)V

    .line 322
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessionsDir:Ljava/io/File;

    .line 323
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 322
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerService;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v1

    .line 326
    .local v1, "unclaimedIcons":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/io/File;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2a
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_47

    .line 327
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    .line 328
    .local v3, "session":Lcom/android/server/pm/PackageInstallerSession;
    iget v4, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-direct {p0, v4}, Lcom/android/server/pm/PackageInstallerService;->buildAppIconFile(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 326
    nop

    .end local v3    # "session":Lcom/android/server/pm/PackageInstallerSession;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 332
    .end local v2    # "i":I
    :cond_47
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 333
    .local v3, "icon":Ljava/io/File;
    const-string v4, "PackageInstaller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting orphan icon "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 335
    nop

    .end local v3    # "icon":Ljava/io/File;
    goto :goto_4b

    .line 339
    :cond_74
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mSettingsWriteRequest:Lcom/android/server/pm/utils/RequestThrottle;

    invoke-virtual {v2}, Lcom/android/server/pm/utils/RequestThrottle;->runNow()Z

    .line 341
    nop

    .end local v1    # "unclaimedIcons":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/io/File;>;"
    monitor-exit v0

    .line 342
    return-void

    .line 341
    :catchall_7c
    move-exception v1

    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_14 .. :try_end_7e} :catchall_7c

    throw v1
.end method

.method public uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V
    .registers 22
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "callerPackageName"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "statusReceiver"    # Landroid/content/IntentSender;
    .param p5, "userId"    # I

    .line 1196
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v11, p5

    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v12

    .line 1197
    .local v12, "snapshot":Lcom/android/server/pm/Computer;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 1198
    .local v13, "callingUid":I
    const/4 v8, 0x1

    const/4 v9, 0x1

    const-string/jumbo v10, "uninstall"

    move-object v5, v12

    move v6, v13

    move/from16 v7, p5

    invoke-interface/range {v5 .. v10}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1199
    const/16 v0, 0x7d0

    if-eq v13, v0, :cond_2b

    if-eqz v13, :cond_2b

    .line 1200
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v13, v3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1205
    :cond_2b
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 1206
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 1207
    .local v14, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v14, :cond_3e

    .line 1208
    invoke-virtual {v14, v3, v13}, Landroid/app/admin/DevicePolicyManagerInternal;->canSilentlyInstallPackage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3e

    const/4 v0, 0x1

    goto :goto_3f

    :cond_3e
    const/4 v0, 0x0

    :goto_3f
    move v15, v0

    .line 1210
    .local v15, "canSilentlyInstallPackage":Z
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 1211
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v8

    move-object v5, v0

    move-object/from16 v7, p4

    move v9, v15

    move/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZI)V

    .line 1213
    .local v5, "adapter":Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.DELETE_PACKAGES"

    invoke-virtual {v0, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_66

    .line 1216
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v6

    invoke-virtual {v0, v2, v6, v11, v4}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V

    goto/16 :goto_102

    .line 1217
    :cond_66
    if-eqz v15, :cond_c9

    .line 1219
    const/4 v0, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Silent uninstall "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1220
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1221
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " caller: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1219
    invoke-static {v0, v6}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1225
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1227
    .local v6, "ident":J
    :try_start_a9
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v8

    invoke-virtual {v0, v2, v8, v11, v4}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V
    :try_end_b2
    .catchall {:try_start_a9 .. :try_end_b2} :catchall_c4

    .line 1229
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1230
    nop

    .line 1231
    const/16 v0, 0x71

    .line 1232
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 1233
    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 1234
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 1235
    .end local v6    # "ident":J
    goto :goto_102

    .line 1229
    .restart local v6    # "ident":J
    :catchall_c4
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1230
    throw v0

    .line 1236
    .end local v6    # "ident":J
    :cond_c9
    const-wide/16 v6, 0x0

    invoke-interface {v12, v3, v6, v7, v11}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1237
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x1c

    const/4 v8, 0x0

    if-lt v6, v7, :cond_dd

    .line 1238
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.REQUEST_DELETE_PACKAGES"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    :cond_dd
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1244
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "package"

    invoke-static {v9, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1245
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/pm/IPackageDeleteObserver2;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    const-string v8, "android.content.pm.extra.CALLBACK"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 1246
    invoke-virtual {v5, v6}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onUserActionRequired(Landroid/content/Intent;)V

    .line 1248
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "intent":Landroid/content/Intent;
    :goto_102
    return-void
.end method

.method public uninstallExistingPackage(Landroid/content/pm/VersionedPackage;Ljava/lang/String;Landroid/content/IntentSender;I)V
    .registers 20
    .param p1, "versionedPackage"    # Landroid/content/pm/VersionedPackage;
    .param p2, "callerPackageName"    # Ljava/lang/String;
    .param p3, "statusReceiver"    # Landroid/content/IntentSender;
    .param p4, "userId"    # I

    .line 1253
    move-object v0, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1254
    .local v7, "callingUid":I
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DELETE_PACKAGES"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v8

    .line 1256
    .local v8, "snapshot":Lcom/android/server/pm/Computer;
    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string/jumbo v6, "uninstall"

    move-object v1, v8

    move v2, v7

    move/from16 v3, p4

    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->enforceCrossUserPermission(IIZZLjava/lang/String;)V

    .line 1257
    const/16 v1, 0x7d0

    if-eq v7, v1, :cond_2d

    if-eqz v7, :cond_2d

    .line 1258
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerService;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v2, p2

    invoke-virtual {v1, v7, v2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    goto :goto_2f

    .line 1257
    :cond_2d
    move-object/from16 v2, p2

    .line 1261
    :goto_2f
    new-instance v1, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    iget-object v10, v0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    .line 1262
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    move-object v9, v1

    move-object/from16 v11, p3

    move/from16 v14, p4

    invoke-direct/range {v9 .. v14}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZI)V

    .line 1263
    .local v1, "adapter":Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerService;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v4

    move-object/from16 v5, p1

    move/from16 v6, p4

    invoke-virtual {v3, v5, v4, v6}, Lcom/android/server/pm/PackageManagerService;->deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V

    .line 1264
    return-void
.end method

.method public unregisterCallback(Landroid/content/pm/IPackageInstallerCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/pm/IPackageInstallerCallback;

    .line 1553
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->unregister(Landroid/content/pm/IPackageInstallerCallback;)V

    .line 1554
    return-void
.end method

.method public updateSessionAppIcon(ILandroid/graphics/Bitmap;)V
    .registers 9
    .param p1, "sessionId"    # I
    .param p2, "appIcon"    # Landroid/graphics/Bitmap;

    .line 930
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 931
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 932
    .local v1, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v1, :cond_4a

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 937
    if-eqz p2, :cond_39

    .line 938
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 940
    .local v2, "am":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v3

    .line 941
    .local v3, "iconSize":I
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit8 v5, v3, 0x2

    if-gt v4, v5, :cond_33

    .line 942
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/lit8 v5, v3, 0x2

    if-le v4, v5, :cond_39

    .line 943
    :cond_33
    const/4 v4, 0x1

    invoke-static {p2, v3, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object p2, v4

    .line 947
    .end local v2    # "am":Landroid/app/ActivityManager;
    .end local v3    # "iconSize":I
    :cond_39
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iput-object p2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 948
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    .line 950
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionBadgingChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 951
    .end local v1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    monitor-exit v0

    .line 952
    return-void

    .line 933
    .restart local v1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_4a
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller has no access to session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .end local p1    # "sessionId":I
    .end local p2    # "appIcon":Landroid/graphics/Bitmap;
    throw v2

    .line 951
    .end local v1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .restart local p1    # "sessionId":I
    .restart local p2    # "appIcon":Landroid/graphics/Bitmap;
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_63

    throw v1
.end method

.method public updateSessionAppLabel(ILjava/lang/String;)V
    .registers 8
    .param p1, "sessionId"    # I
    .param p2, "appLabel"    # Ljava/lang/String;

    .line 956
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    monitor-enter v0

    .line 957
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 958
    .local v1, "session":Lcom/android/server/pm/PackageInstallerSession;
    if-eqz v1, :cond_1e

    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageInstallerService;->isCallingUidOwner(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 961
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iput-object p2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    .line 962
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService;->mInternalCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionBadgingChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 963
    .end local v1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    monitor-exit v0

    .line 964
    return-void

    .line 959
    .restart local v1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    :cond_1e
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller has no access to session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .end local p1    # "sessionId":I
    .end local p2    # "appLabel":Ljava/lang/String;
    throw v2

    .line 963
    .end local v1    # "session":Lcom/android/server/pm/PackageInstallerSession;
    .restart local p0    # "this":Lcom/android/server/pm/PackageInstallerService;
    .restart local p1    # "sessionId":I
    .restart local p2    # "appLabel":Ljava/lang/String;
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method
