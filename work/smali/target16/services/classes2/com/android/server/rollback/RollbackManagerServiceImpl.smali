.class public Lcom/android/server/rollback/RollbackManagerServiceImpl;
.super Landroid/content/rollback/IRollbackManager$Stub;
.source "RollbackManagerServiceImpl.java"

# interfaces
.implements Lcom/android/server/rollback/RollbackManagerInternal;


# static fields
.field public static final DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS:J

.field public static final HANDLER_THREAD_TIMEOUT_DURATION_MILLIS:J

.field public static final LOCAL_LOGV:Z


# instance fields
.field public final mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

.field public final mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

.field public final mContext:Landroid/content/Context;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mHandler:Landroid/os/Handler;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public final mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

.field public final mPackageWatchdog:Lcom/android/server/PackageWatchdog;

.field public final mRandom:Ljava/util/Random;

.field public mRelativeBootTime:J

.field public mRollbackLifetimeDurationInMillis:J

.field public final mRollbackStore:Lcom/android/server/rollback/RollbackStore;

.field public final mRollbacks:Ljava/util/List;

.field public final mRunExpiration:Ljava/lang/Runnable;

.field public final mSleepDuration:Landroid/util/LongArrayQueue;

.field public final mUserBroadcastReceivers:Landroid/util/ArrayMap;


# direct methods
.method public static synthetic $r8$lambda$2VvkTVIHdJRcNwfCsUuOnAVCSrg(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;[IILjava/lang/String;I)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$snapshotAndRestoreUserData$12(Ljava/lang/String;[IILjava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$5ba2COgc7nscJnHcl1QkhQ-HxvI(Lcom/android/server/rollback/RollbackManagerServiceImpl;Landroid/content/Context;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$new$0(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5ePSTVmaLxSjKqVxrnrccgGY6zE(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$onBootCompleted$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$5tQXNWvAjaaDIurB7OaM0ZLLgkE(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$expireRollbackForPackage$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6wVe4YeQyP1IYc6CkpY-4SEE9_Y(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->runExpiration()V

    return-void
.end method

.method public static synthetic $r8$lambda$Cgtuf_5dagNRnyeqyJSt-SkgYrE(Lcom/android/server/rollback/RollbackManagerServiceImpl;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$onBootCompleted$10(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E12yKais_ZT6UmD7C7ceevrZTo8(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Landroid/content/pm/ParceledListSlice;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$getRecentlyCommittedRollbacks$2()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KTFhNtgvTTaxZxgdCpFeRkq3kg8(Lcom/android/server/rollback/RollbackManagerServiceImpl;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$blockRollbackManager$6(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$NEa1nlTnxZ3uHyw6aGoYzrCWL1A(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$reloadPersistedData$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$No8LDEgXeH4Ylci5VNWDDAvC_PE(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)Ljava/lang/Integer;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$notifyStagedSession$13(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QUbd13KFyDqxIfT_YSz5yMAQQhY(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$dump$14(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bbfHD4WtP5OoGBOtkEzNdwF9g2M(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Landroid/content/pm/ParceledListSlice;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$getAvailableRollbacks$1()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cgsk1gEEkcqmJsC3ABW97j7UdiE(Lcom/android/server/rollback/RollbackManagerServiceImpl;ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$commitRollback$3(ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fQDZo-8mYW8tPdxnapF0CQgGj4w(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$onUnlockUser$8(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$l0jOsI4D4tsO9tHi89vVcHGslz8(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$onUnlockUser$9(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tEQRYHZBUl3VS0VAYgHVFKMsLXg(Lcom/android/server/rollback/RollbackManagerServiceImpl;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->lambda$queueSleepIfNeeded$7(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmRelativeBootTime(Lcom/android/server/rollback/RollbackManagerServiceImpl;)J
    .registers 3

    .line 0
    iget-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRelativeBootTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmRollbacks(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/util/List;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmRelativeBootTime(Lcom/android/server/rollback/RollbackManagerServiceImpl;J)V
    .registers 3

    .line 0
    iput-wide p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRelativeBootTime:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$massertInWorkerThread(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcompleteEnableRollback(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/Rollback;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->completeEnableRollback(Lcom/android/server/rollback/Rollback;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdeleteRollback(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$menableRollback(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enableRollback(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetHandler(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Landroid/os/Handler;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetRollbackForSession(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)Lcom/android/server/rollback/Rollback;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getRollbackForSession(I)Lcom/android/server/rollback/Rollback;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmakeRollbackAvailable(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/Rollback;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->makeRollbackAvailable(Lcom/android/server/rollback/Rollback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageFullyRemoved(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->onPackageFullyRemoved(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageReplaced(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->onPackageReplaced(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mqueueSleepIfNeeded(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->queueSleepIfNeeded()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterUserCallbacks(Lcom/android/server/rollback/RollbackManagerServiceImpl;Landroid/os/UserHandle;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->registerUserCallbacks(Landroid/os/UserHandle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregisterUserCallbacks(Lcom/android/server/rollback/RollbackManagerServiceImpl;Landroid/os/UserHandle;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->unregisterUserCallbacks(Landroid/os/UserHandle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetLOCAL_LOGV()Z
    .registers 1

    .line 0
    sget-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$smcalculateRelativeBootTime()J
    .registers 2

    .line 0
    invoke-static {}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->calculateRelativeBootTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 135
    const-string v0, "RollbackManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    .line 139
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS:J

    .line 144
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    .line 145
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->HANDLER_THREAD_TIMEOUT_DURATION_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 183
    invoke-direct {p0}, Landroid/content/rollback/IRollbackManager$Stub;-><init>()V

    .line 142
    sget-wide v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS:J

    iput-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    .line 149
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRandom:Ljava/util/Random;

    .line 153
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 167
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRunExpiration:Ljava/lang/Runnable;

    .line 173
    new-instance v0, Landroid/util/LongArrayQueue;

    invoke-direct {v0}, Landroid/util/LongArrayQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mSleepDuration:Landroid/util/LongArrayQueue;

    .line 179
    invoke-static {}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->calculateRelativeBootTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRelativeBootTime:J

    .line 184
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 187
    new-instance v0, Lcom/android/server/pm/Installer;

    invoke-direct {v0, p1}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mInstaller:Lcom/android/server/pm/Installer;

    .line 188
    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->onStart()V

    .line 190
    new-instance v1, Lcom/android/server/rollback/RollbackStore;

    new-instance v2, Ljava/io/File;

    .line 191
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "rollback"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    .line 192
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "rollback-history"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/server/rollback/RollbackStore;-><init>(Ljava/io/File;Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    .line 194
    new-instance v1, Lcom/android/server/rollback/RollbackPackageHealthObserver;

    invoke-direct {v1, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    .line 195
    new-instance v1, Lcom/android/server/rollback/AppDataRollbackHelper;

    invoke-direct {v1, v0}, Lcom/android/server/rollback/AppDataRollbackHelper;-><init>(Lcom/android/server/pm/Installer;)V

    iput-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    .line 196
    invoke-static {p1}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    .line 199
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RollbackManagerServiceHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 201
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 202
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-wide v2, Lcom/android/server/rollback/RollbackManagerServiceImpl;->HANDLER_THREAD_TIMEOUT_DURATION_MILLIS:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 203
    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 206
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mUserBroadcastReceivers:Landroid/util/ArrayMap;

    .line 223
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    const/4 v0, 0x1

    .line 224
    invoke-virtual {p1, v0}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 225
    invoke-virtual {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->registerUserCallbacks(Landroid/os/UserHandle;)V

    goto :goto_c0

    .line 228
    :cond_d0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 229
    const-string v0, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    :try_start_da
    const-string v0, "application/vnd.android.package-archive"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_df
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_da .. :try_end_df} :catch_e0

    goto :goto_e8

    :catch_e0
    move-exception v0

    .line 233
    const-string v1, "RollbackManager"

    const-string v2, "addDataType"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    :goto_e8
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 263
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    .line 236
    invoke-virtual {v0, v1, p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 265
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 266
    const-string v0, "android.intent.action.CANCEL_ENABLE_ROLLBACK"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$2;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$2;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 286
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 268
    invoke-virtual {v0, v1, p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 288
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 289
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$3;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$3;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 310
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 291
    invoke-virtual {v0, v1, p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 312
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->registerTimeChangeReceiver()V

    return-void
.end method

.method public static calculateRelativeBootTime()J
    .registers 4

    .line 470
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V
    .registers 11

    .line 723
    const-string v0, "RollbackManager"

    invoke-static {v0, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :try_start_5
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 726
    const-string v0, "android.content.rollback.extra.STATUS"

    invoke-virtual {v4, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 727
    const-string p2, "android.content.rollback.extra.STATUS_MESSAGE"

    invoke-virtual {v4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v2, p0

    move-object v1, p1

    .line 728
    invoke-virtual/range {v1 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_1c
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_5 .. :try_end_1c} :catch_1c

    :catch_1c
    return-void
.end method


# virtual methods
.method public final allocateRollbackId()I
    .registers 6

    .line 1279
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    const/4 v0, 0x0

    move v1, v0

    .line 1283
    :goto_5
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRandom:Ljava/util/Random;

    const v3, 0x7ffffffe

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 1284
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 1285
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return v2

    :cond_1e
    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x20

    if-ge v1, v3, :cond_26

    move v1, v2

    goto :goto_5

    .line 1290
    :cond_26
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to allocate rollback ID"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final assertInWorkerThread()V
    .registers 1

    .line 334
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p0

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    return-void
.end method

.method public final assertNotInWorkerThread()V
    .registers 1

    .line 338
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    return-void
.end method

.method public final awaitResult(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 2

    .line 316
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 318
    :try_start_3
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p1, p0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_d} :catch_e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    .line 320
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final awaitResult(Ljava/lang/Runnable;)V
    .registers 2

    .line 325
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 327
    :try_start_3
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p1, p0}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_c} :catch_d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 329
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public blockRollbackManager(J)V
    .registers 6

    .line 535
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 536
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_MANAGE_ROLLBACKS"

    const-string v2, "blockRollbackManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public commitRollback(ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 12

    .line 433
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 434
    const-string v0, "commitRollback"

    invoke-virtual {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enforceManageRollbacks(Ljava/lang/String;)V

    .line 436
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 437
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 438
    invoke-virtual {v1, v0, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final commitRollbackInternal(ILjava/util/List;Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 7

    .line 481
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "commitRollback id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RollbackManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getRollbackForId(I)Lcom/android/server/rollback/Rollback;

    move-result-object p1

    if-nez p1, :cond_30

    .line 486
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 p1, 0x2

    const-string p2, "Rollback unavailable"

    invoke-static {p0, p4, p1, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    return-void

    .line 491
    :cond_30
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/android/server/rollback/Rollback;->commit(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Landroid/content/IntentSender;)V

    return-void
.end method

.method public final completeEnableRollback(Lcom/android/server/rollback/Rollback;)Z
    .registers 5

    .line 1210
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 1211
    sget-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    const-string v1, "RollbackManager"

    if-eqz v0, :cond_23

    .line 1212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completeEnableRollback id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    :cond_23
    invoke-virtual {p1}, Lcom/android/server/rollback/Rollback;->allPackagesEnabled()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 1220
    const-string v0, "Failed to enable rollback for all packages in session."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1222
    const-string v0, "Failed to enable rollback for all packages in session"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1236
    :cond_3a
    invoke-virtual {p1}, Lcom/android/server/rollback/Rollback;->saveRollback()V

    const/4 p0, 0x1

    return p0
.end method

.method public final computeRollbackDataPolicy(II)I
    .registers 3

    .line 874
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    if-eqz p2, :cond_6

    return p2

    :cond_6
    return p1
.end method

.method public final createNewRollback(Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/android/server/rollback/Rollback;
    .registers 9

    .line 1340
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 1341
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->allocateRollbackId()I

    move-result v1

    .line 1343
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1344
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    :goto_19
    move v3, v0

    goto :goto_24

    .line 1346
    :cond_1b
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    goto :goto_19

    .line 1348
    :goto_24
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1349
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v2

    .line 1351
    sget-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    if-eqz v0, :cond_56

    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createNewRollback id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " user="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " installer="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "RollbackManager"

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :cond_56
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1358
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getChildSessionIds()[I

    move-result-object v0

    :goto_60
    move-object v5, v0

    goto :goto_69

    :cond_62
    const/4 v0, 0x1

    .line 1360
    new-array v0, v0, [I

    const/4 v5, 0x0

    aput v2, v0, v5

    goto :goto_60

    .line 1365
    :goto_69
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 1366
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    .line 1367
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getExtensionVersions()Landroid/util/SparseIntArray;

    move-result-object v6

    .line 1366
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/rollback/RollbackStore;->createStagedRollback(IIILjava/lang/String;[ILandroid/util/SparseIntArray;)Lcom/android/server/rollback/Rollback;

    move-result-object v0

    goto :goto_84

    .line 1369
    :cond_7a
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    .line 1370
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getExtensionVersions()Landroid/util/SparseIntArray;

    move-result-object v6

    .line 1369
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/rollback/RollbackStore;->createNonStagedRollback(IIILjava/lang/String;[ILandroid/util/SparseIntArray;)Lcom/android/server/rollback/Rollback;

    move-result-object v0

    .line 1374
    :goto_84
    iget-wide v1, p1, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackLifetimeMillis:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/rollback/Rollback;->setRollbackLifetimeMillis(J)V

    .line 1378
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final deleteRollback(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V
    .registers 4

    .line 1412
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 1413
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    invoke-virtual {p1, v0, p2}, Lcom/android/server/rollback/Rollback;->delete(Lcom/android/server/rollback/AppDataRollbackHelper;Ljava/lang/String;)V

    .line 1414
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackStore;->saveRollbackToHistory(Lcom/android/server/rollback/Rollback;)V

    return-void
.end method

.method public final destroyCeSnapshotsForExpiredRollbacks(I)V
    .registers 6

    .line 592
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_1e

    .line 594
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/rollback/Rollback;

    iget-object v3, v3, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 596
    :cond_1e
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/ApexManager;->destroyCeSnapshotsNotSpecified(I[I)Z

    .line 598
    :try_start_25
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/Installer;->destroyCeSnapshotsNotSpecified(I[I)Z
    :try_end_2a
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_25 .. :try_end_2a} :catch_2b

    return-void

    :catch_2b
    move-exception p0

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to delete snapshots for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RollbackManager"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 1296
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 1297
    iget-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string p3, "RollbackManager"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_e

    return-void

    .line 1299
    :cond_e
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1300
    new-instance p2, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p0, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->awaitResult(Ljava/lang/Runnable;)V

    .line 1319
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    invoke-virtual {p0, p1}, Lcom/android/server/PackageWatchdog;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final enableRollback(I)Z
    .registers 6

    .line 836
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 837
    sget-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    const-string v1, "RollbackManager"

    if-eqz v0, :cond_1d

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableRollback sessionId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_1d
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 842
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_34

    .line 844
    const-string p0, "Unable to find session for enabled rollback."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 848
    :cond_34
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->hasParentSessionId()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 849
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getParentSessionId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    goto :goto_44

    :cond_43
    move-object v0, p1

    :goto_44
    if-nez v0, :cond_4c

    .line 851
    const-string p0, "Unable to find parent session for enabled rollback."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 858
    :cond_4c
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getRollbackForSession(I)Lcom/android/server/rollback/Rollback;

    move-result-object v1

    if-nez v1, :cond_5a

    .line 860
    invoke-virtual {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->createNewRollback(Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/android/server/rollback/Rollback;

    move-result-object v1

    .line 863
    :cond_5a
    invoke-virtual {p0, v1, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enableRollbackForPackageSession(Lcom/android/server/rollback/Rollback;Landroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 866
    invoke-virtual {v1}, Lcom/android/server/rollback/Rollback;->allPackagesEnabled()Z

    move-result p1

    if-eqz p1, :cond_6b

    invoke-virtual {p0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->completeEnableRollback(Lcom/android/server/rollback/Rollback;)Z

    move-result p0

    return p0

    :cond_6b
    const/4 p0, 0x1

    return p0

    :cond_6d
    return v2
.end method

.method public final enableRollbackAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1082
    :cond_4
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1083
    const-string v2, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_15

    move v2, v3

    goto :goto_16

    :cond_15
    move v2, v0

    .line 1087
    :goto_16
    const-string v4, "android.permission.TEST_MANAGE_ROLLBACKS"

    invoke-virtual {v1, v4, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_20

    move p1, v3

    goto :goto_21

    :cond_20
    move p1, v0

    .line 1092
    :goto_21
    invoke-virtual {p0, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->isRollbackAllowed(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_29

    if-nez v2, :cond_2b

    :cond_29
    if-eqz p1, :cond_2c

    :cond_2b
    return v3

    :cond_2c
    return v0
.end method

.method public final enableRollbackForPackageSession(Lcom/android/server/rollback/Rollback;Landroid/content/pm/PackageInstaller$SessionInfo;)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 895
    const-string v3, " is not installed"

    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 897
    iget v4, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    const/high16 v5, 0x40000

    and-int/2addr v5, v4

    .line 898
    const-string v6, "RollbackManager"

    const/4 v7, 0x0

    if-nez v5, :cond_1b

    .line 899
    const-string v0, "Rollback is not enabled."

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_1b
    and-int/lit16 v5, v4, 0x800

    if-eqz v5, :cond_25

    .line 903
    const-string v0, "Rollbacks not supported for instant app install"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 907
    :cond_25
    iget-object v5, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    if-nez v5, :cond_2f

    .line 908
    const-string v0, "Session code path has not been resolved."

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 913
    :cond_2f
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v5

    .line 915
    invoke-virtual {v5}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v5

    new-instance v8, Ljava/io/File;

    iget-object v9, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 914
    invoke-static {v5, v8, v7}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v5

    .line 916
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v8

    if-eqz v8, :cond_65

    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse new package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 918
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 917
    invoke-static {v6, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v7

    .line 921
    :cond_65
    invoke-interface {v5}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/parsing/ApkLite;

    .line 923
    invoke-virtual {v5}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 924
    iget v9, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackDataPolicy:I

    .line 925
    invoke-virtual {v5}, Landroid/content/pm/parsing/ApkLite;->getRollbackDataPolicy()I

    move-result v10

    .line 924
    invoke-virtual {v0, v9, v10}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->computeRollbackDataPolicy(II)I

    move-result v9

    .line 926
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v10

    const/high16 v11, 0x20000

    if-nez v10, :cond_9d

    and-int v10, v4, v11

    if-eqz v10, :cond_9d

    const/4 v10, 0x2

    if-eq v9, v10, :cond_9d

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only RETAIN is supported for rebootless APEX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 931
    :cond_9d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Enabling rollback for install of "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", session:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", rollbackDataPolicy="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", rollbackId:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    .line 934
    invoke-virtual {v12}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", originalSessionId:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 935
    invoke-virtual {v1}, Lcom/android/server/rollback/Rollback;->getOriginalSessionId()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 931
    invoke-static {v6, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v10

    .line 938
    invoke-virtual {v0, v10, v8}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enableRollbackAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_104

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Installer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not allowed to enable rollback on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_104
    and-int/2addr v4, v11

    if-eqz v4, :cond_109

    const/4 v4, 0x1

    goto :goto_10a

    :cond_109
    move v4, v7

    .line 949
    :goto_10a
    :try_start_10a
    invoke-virtual {v0, v8}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v10
    :try_end_10e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10a .. :try_end_10e} :catch_16d

    if-eqz v4, :cond_14e

    .line 960
    const-class v11, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v11}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageManagerInternal;

    .line 962
    invoke-virtual {v11, v8}, Landroid/content/pm/PackageManagerInternal;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 963
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_120
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 967
    :try_start_12c
    invoke-virtual {v0, v12}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v13
    :try_end_130
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12c .. :try_end_130} :catch_13b

    .line 975
    invoke-virtual {v13}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v13

    .line 974
    invoke-virtual {v1, v12, v13, v14, v9}, Lcom/android/server/rollback/Rollback;->enableForPackageInApex(Ljava/lang/String;JI)Z

    move-result v12

    if-nez v12, :cond_120

    return v7

    .line 971
    :catch_13b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 988
    :cond_14e
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 989
    invoke-virtual {v5}, Landroid/content/pm/parsing/ApkLite;->getVersionCode()I

    move-result v3

    int-to-long v5, v3

    .line 990
    invoke-virtual {v10}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v10

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackImpactLevel:I

    move-object v3, v8

    move-object v8, v0

    move-object v0, v1

    move-object v1, v3

    move-wide v15, v10

    move v10, v2

    move-wide v2, v5

    move v6, v4

    move-wide v4, v15

    .line 989
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/rollback/Rollback;->enableForPackage(Ljava/lang/String;JJZLjava/lang/String;[Ljava/lang/String;II)Z

    move-result v0

    return v0

    :catch_16d
    move-object v1, v8

    .line 953
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method public final enforceManageRollbacks(Ljava/lang/String;)V
    .registers 5

    .line 1324
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_37

    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 1326
    const-string v0, "android.permission.TEST_MANAGE_ROLLBACKS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_15

    goto :goto_37

    .line 1328
    :cond_15
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requires "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_37
    :goto_37
    return-void
.end method

.method public expireRollbackForPackage(Ljava/lang/String;)V
    .registers 5

    .line 525
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 526
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_MANAGE_ROLLBACKS"

    const-string v2, "expireRollbackForPackage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->awaitResult(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final expireRollbackForPackageInternal(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 511
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 512
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 513
    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 514
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/rollback/Rollback;

    .line 515
    invoke-virtual {v1, p1}, Lcom/android/server/rollback/Rollback;->includesPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 516
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 517
    invoke-virtual {p0, v1, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V

    goto :goto_9

    :cond_22
    return-void
.end method

.method public getAvailableRollbacks()Landroid/content/pm/ParceledListSlice;
    .registers 2

    .line 395
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 396
    const-string v0, "getAvailableRollbacks"

    invoke-virtual {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enforceManageRollbacks(Ljava/lang/String;)V

    .line 397
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    invoke-virtual {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->awaitResult(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ParceledListSlice;

    return-object p0
.end method

.method public final getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 4

    .line 820
    :try_start_0
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getExtensionVersions()Landroid/util/SparseIntArray;
    .registers 5

    .line 1383
    invoke-static {}, Landroid/os/ext/SdkExtensions;->getAllExtensionVersions()Ljava/util/Map;

    move-result-object p0

    .line 1384
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1385
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1386
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_15

    :cond_33
    return-object v0
.end method

.method public final getHandler()Landroid/os/Handler;
    .registers 1

    .line 814
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public final getInstalledPackageVersion(Ljava/lang/String;)J
    .registers 2

    .line 1128
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_4} :catch_9

    .line 1133
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p0

    return-wide p0

    :catch_9
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 3

    .line 1144
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v0, 0x400000

    .line 1150
    :try_start_8
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    const/high16 v0, 0x40000000    # 2.0f

    .line 1152
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public getRecentlyCommittedRollbacks()Landroid/content/pm/ParceledListSlice;
    .registers 2

    .line 413
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 414
    const-string v0, "getRecentlyCommittedRollbacks"

    invoke-virtual {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enforceManageRollbacks(Ljava/lang/String;)V

    .line 416
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    invoke-virtual {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->awaitResult(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ParceledListSlice;

    return-object p0
.end method

.method public final getRollbackForId(I)Lcom/android/server/rollback/Rollback;
    .registers 5

    .line 1266
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    const/4 v0, 0x0

    .line 1267
    :goto_4
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 1268
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/rollback/Rollback;

    .line 1269
    iget-object v2, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v2

    if-ne v2, p1, :cond_1d

    return-object v1

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_20
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRollbackForSession(I)Lcom/android/server/rollback/Rollback;
    .registers 5

    .line 1398
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    const/4 v0, 0x0

    .line 1400
    :goto_4
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 1401
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/rollback/Rollback;

    .line 1402
    invoke-virtual {v1}, Lcom/android/server/rollback/Rollback;->getOriginalSessionId()I

    move-result v2

    if-eq v2, p1, :cond_24

    .line 1403
    invoke-virtual {v1, p1}, Lcom/android/server/rollback/Rollback;->containsSessionId(I)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_24

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_24
    :goto_24
    return-object v1

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isModule(Ljava/lang/String;)Z
    .registers 3

    .line 1109
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 1112
    :try_start_7
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object p0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_b} :catch_f

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    return p0

    :catch_f
    :cond_f
    return v0
.end method

.method public final isRollbackAllowed(Ljava/lang/String;)Z
    .registers 3

    .line 1101
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getRollbackWhitelistedPackages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1102
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->isModule(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$blockRollbackManager$6(J)V
    .registers 3

    .line 540
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 541
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mSleepDuration:Landroid/util/LongArrayQueue;

    invoke-virtual {p0, p1, p2}, Landroid/util/LongArrayQueue;->addLast(J)V

    return-void
.end method

.method public final synthetic lambda$commitRollback$3(ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 5

    .line 441
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->commitRollbackInternal(ILjava/util/List;Ljava/lang/String;Landroid/content/IntentSender;)V

    return-void
.end method

.method public final synthetic lambda$dump$14(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    .line 1301
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 1302
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/rollback/Rollback;

    .line 1303
    invoke-virtual {v1, p1}, Lcom/android/server/rollback/Rollback;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_9

    .line 1305
    :cond_19
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1307
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackStore;->loadHistorialRollbacks()Ljava/util/List;

    move-result-object p0

    .line 1308
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 1309
    const-string v0, "Historical rollbacks:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1311
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_34
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/rollback/Rollback;

    .line 1312
    invoke-virtual {v0, p1}, Lcom/android/server/rollback/Rollback;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_34

    .line 1314
    :cond_44
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1315
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    :cond_4a
    return-void
.end method

.method public final synthetic lambda$expireRollbackForPackage$5(Ljava/lang/String;)V
    .registers 3

    .line 529
    const-string v0, "Expired by API"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->expireRollbackForPackageInternal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$getAvailableRollbacks$1()Landroid/content/pm/ParceledListSlice;
    .registers 5

    .line 398
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 400
    :goto_9
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 401
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/rollback/Rollback;

    .line 402
    invoke-virtual {v2}, Lcom/android/server/rollback/Rollback;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 403
    iget-object v2, v2, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 406
    :cond_27
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public final synthetic lambda$getRecentlyCommittedRollbacks$2()Landroid/content/pm/ParceledListSlice;
    .registers 5

    .line 417
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 419
    :goto_9
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 420
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/rollback/Rollback;

    .line 421
    invoke-virtual {v2}, Lcom/android/server/rollback/Rollback;->isCommitted()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 422
    iget-object v2, v2, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 425
    :cond_27
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public final synthetic lambda$new$0(Landroid/content/Context;)V
    .registers 5

    .line 207
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    invoke-virtual {v1}, Lcom/android/server/rollback/RollbackStore;->loadRollbacks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result p1

    if-nez p1, :cond_35

    .line 209
    iget-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/rollback/Rollback;

    .line 210
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

    iget-object v0, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1b

    :cond_34
    return-void

    .line 214
    :cond_35
    iget-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/rollback/Rollback;

    .line 215
    const-string v1, "Fingerprint changed"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V

    goto :goto_3b

    .line 217
    :cond_4d
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final synthetic lambda$notifyStagedSession$13(I)Ljava/lang/Integer;
    .registers 2

    .line 1066
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 1067
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getRollbackForSession(I)Lcom/android/server/rollback/Rollback;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 1068
    iget-object p0, p0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {p0}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result p0

    goto :goto_11

    :cond_10
    const/4 p0, -0x1

    :goto_11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$onBootCompleted$10(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    .line 621
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->updateRollbackLifetimeDurationInMillis()V

    return-void
.end method

.method public final synthetic lambda$onBootCompleted$11()V
    .registers 8

    .line 624
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 625
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->updateRollbackLifetimeDurationInMillis()V

    .line 626
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->runExpiration()V

    .line 630
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 631
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 632
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 633
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 634
    :cond_1e
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_94

    .line 635
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/rollback/Rollback;

    .line 636
    invoke-virtual {v4}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result v5

    if-nez v5, :cond_31

    goto :goto_1e

    .line 641
    :cond_31
    iget-object v5, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 642
    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/server/rollback/Rollback;->getOriginalSessionId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    if-eqz v5, :cond_6d

    .line 643
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v6

    if-eqz v6, :cond_4c

    goto :goto_6d

    .line 652
    :cond_4c
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied()Z

    move-result v5

    if-eqz v5, :cond_65

    .line 653
    invoke-virtual {v4}, Lcom/android/server/rollback/Rollback;->isEnabling()Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 654
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_65

    .line 655
    :cond_5c
    invoke-virtual {v4}, Lcom/android/server/rollback/Rollback;->isRestoreUserDataInProgress()Z

    move-result v5

    if-eqz v5, :cond_65

    .line 656
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    :cond_65
    :goto_65
    invoke-virtual {v4}, Lcom/android/server/rollback/Rollback;->getApexPackageNames()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1e

    .line 644
    :cond_6d
    :goto_6d
    invoke-virtual {v4}, Lcom/android/server/rollback/Rollback;->isEnabling()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 645
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 646
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/rollback/Rollback;->getOriginalSessionId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not existed or failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V

    goto :goto_1e

    .line 662
    :cond_94
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_9a
    if-ge v5, v3, :cond_a8

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/android/server/rollback/Rollback;

    .line 663
    invoke-virtual {p0, v6}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->makeRollbackAvailable(Lcom/android/server/rollback/Rollback;)V

    goto :goto_9a

    .line 666
    :cond_a8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v4

    :goto_ad
    if-ge v3, v0, :cond_bb

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/server/rollback/Rollback;

    .line 667
    invoke-virtual {v5, v4}, Lcom/android/server/rollback/Rollback;->setRestoreUserDataInProgress(Z)V

    goto :goto_ad

    .line 670
    :cond_bb
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_bf
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 675
    invoke-virtual {p0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->onPackageReplaced(Ljava/lang/String;)V

    goto :goto_bf

    .line 678
    :cond_cf
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->onBootCompletedAsync()V

    return-void
.end method

.method public final synthetic lambda$onUnlockUser$8(I)V
    .registers 6

    .line 575
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 577
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 579
    :goto_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 580
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/rollback/Rollback;

    .line 581
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/rollback/Rollback;->commitPendingBackupAndRestoreForUser(ILcom/android/server/rollback/AppDataRollbackHelper;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1f
    return-void
.end method

.method public final synthetic lambda$onUnlockUser$9(I)V
    .registers 2

    .line 586
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->destroyCeSnapshotsForExpiredRollbacks(I)V

    return-void
.end method

.method public final synthetic lambda$queueSleepIfNeeded$7(J)V
    .registers 3

    .line 556
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 558
    :try_start_3
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_7

    return-void

    .line 560
    :catch_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "RollbackManagerHandlerThread interrupted"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final synthetic lambda$reloadPersistedData$4()V
    .registers 2

    .line 503
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 504
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 505
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackStore;->loadRollbacks()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final synthetic lambda$snapshotAndRestoreUserData$12(Ljava/lang/String;[IILjava/lang/String;I)V
    .registers 6

    .line 1014
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 1015
    invoke-virtual {p0, p1, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->snapshotUserDataInternal(Ljava/lang/String;[I)V

    .line 1016
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->restoreUserDataInternal(Ljava/lang/String;[IILjava/lang/String;)V

    if-lez p5, :cond_17

    .line 1020
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    const/4 p1, 0x0

    .line 1022
    invoke-virtual {p0, p5, p1}, Landroid/content/pm/PackageManagerInternal;->finishPackageInstall(IZ)V

    :cond_17
    return-void
.end method

.method public final makeRollbackAvailable(Lcom/android/server/rollback/Rollback;)V
    .registers 6

    .line 1244
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 1245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeRollbackAvailable id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RollbackManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-virtual {p1}, Lcom/android/server/rollback/Rollback;->makeAvailable()V

    .line 1247
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    iget-object v1, p1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->notifyRollbackAvailable(Landroid/content/rollback/RollbackInfo;)V

    .line 1249
    iget-object v0, p1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getRollbackImpactLevel()I

    move-result v0

    if-nez v0, :cond_3e

    .line 1255
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mPackageWatchdog:Lcom/android/server/PackageWatchdog;

    invoke-virtual {p1}, Lcom/android/server/rollback/Rollback;->getPackageNames()Ljava/util/List;

    move-result-object p1

    iget-wide v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/PackageWatchdog;->startExplicitHealthCheck(Ljava/util/List;JLcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    .line 1258
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->runExpiration()V

    return-void
.end method

.method public notifyStagedSession(I)I
    .registers 4

    .line 1060
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 1061
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1b

    .line 1065
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->awaitResult(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 1062
    :cond_1b
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "notifyStagedSession may only be called by the system."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onBootCompleted()V
    .registers 4

    .line 620
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    const-string/jumbo v2, "rollback_boot"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 623
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPackageFullyRemoved(Ljava/lang/String;)V
    .registers 4

    .line 709
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->expireRollbackForPackageInternal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onPackageReplaced(Ljava/lang/String;)V
    .registers 8

    .line 689
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 690
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getInstalledPackageVersion(Ljava/lang/String;)J

    move-result-wide v0

    .line 691
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 692
    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 693
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/rollback/Rollback;

    .line 694
    invoke-virtual {v3}, Lcom/android/server/rollback/Rollback;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 695
    invoke-virtual {v3, p1, v0, v1}, Lcom/android/server/rollback/Rollback;->includesPackageWithDifferentVersion(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 697
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 698
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " replaced"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V

    goto :goto_d

    :cond_42
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 4

    .line 567
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 568
    sget-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    if-eqz v0, :cond_1e

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUnlockUser id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RollbackManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_1e
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->awaitResult(Ljava/lang/Runnable;)V

    .line 585
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final queueSleepIfNeeded()V
    .registers 5

    .line 547
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 548
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mSleepDuration:Landroid/util/LongArrayQueue;

    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_18

    .line 551
    :cond_c
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mSleepDuration:Landroid/util/LongArrayQueue;

    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->removeFirst()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_19

    :goto_18
    return-void

    .line 555
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda15;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final registerTimeChangeReceiver()V
    .registers 5

    .line 447
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;

    invoke-direct {v0, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 462
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 463
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    .line 465
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    .line 464
    invoke-virtual {v2, v0, v1, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final registerUserCallbacks(Landroid/os/UserHandle;)V
    .registers 7

    .line 343
    invoke-virtual {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 345
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to register user callbacks for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RollbackManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 349
    :cond_1d
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    new-instance v2, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/RollbackManagerServiceImpl-IA;)V

    .line 350
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    .line 352
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 353
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 356
    new-instance v2, Lcom/android/server/rollback/RollbackManagerServiceImpl$4;

    invoke-direct {v2, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$4;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 376
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 377
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mUserBroadcastReceivers:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public reloadPersistedData()V
    .registers 4

    .line 497
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 498
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_MANAGE_ROLLBACKS"

    const-string/jumbo v2, "reloadPersistedData"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    invoke-virtual {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->awaitResult(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final restoreUserDataInternal(Ljava/lang/String;[IILjava/lang/String;)V
    .registers 13

    .line 1043
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 1044
    sget-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    if-eqz v0, :cond_2a

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restoreUserData pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " users="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1046
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1045
    const-string v1, "RollbackManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const/4 v0, 0x0

    .line 1048
    :goto_2b
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_50

    .line 1049
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/rollback/Rollback;

    .line 1050
    iget-object v7, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/rollback/Rollback;->restoreUserDataForPackageIfInProgress(Ljava/lang/String;[IILjava/lang/String;Lcom/android/server/rollback/AppDataRollbackHelper;)Z

    move-result p1

    if-eqz p1, :cond_49

    goto :goto_50

    :cond_49
    add-int/lit8 v0, v0, 0x1

    move-object p1, v3

    move-object p2, v4

    move p3, v5

    move-object p4, v6

    goto :goto_2b

    :cond_50
    :goto_50
    return-void
.end method

.method public final runExpiration()V
    .registers 1

    .line 739
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->runExpirationCustomRollbackLifetime()V

    return-void
.end method

.method public final runExpirationCustomRollbackLifetime()V
    .registers 11

    .line 776
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRunExpiration:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 777
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 778
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 780
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 781
    :cond_19
    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_80

    .line 782
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/rollback/Rollback;

    .line 783
    invoke-virtual {v6}, Lcom/android/server/rollback/Rollback;->isAvailable()Z

    move-result v7

    if-nez v7, :cond_32

    invoke-virtual {v6}, Lcom/android/server/rollback/Rollback;->isCommitted()Z

    move-result v7

    if-nez v7, :cond_32

    goto :goto_19

    .line 786
    :cond_32
    invoke-virtual {v6}, Lcom/android/server/rollback/Rollback;->getRollbackLifetimeMillis()J

    move-result-wide v7

    cmp-long v9, v7, v2

    if-gtz v9, :cond_3c

    .line 788
    iget-wide v7, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    .line 791
    :cond_3c
    invoke-virtual {v6}, Lcom/android/server/rollback/Rollback;->getTimestamp()Ljava/time/Instant;

    move-result-object v9

    .line 792
    invoke-virtual {v9, v7, v8}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v7

    .line 793
    invoke-virtual {v0, v7}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v8

    if-nez v8, :cond_70

    .line 794
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "runExpiration id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v8}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "RollbackManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 796
    const-string v7, "Expired by timeout"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V

    goto :goto_19

    .line 800
    :cond_70
    sget-object v6, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0, v7, v6}, Ljava/time/Instant;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v6

    cmp-long v8, v4, v2

    if-eqz v8, :cond_7e

    cmp-long v8, v6, v4

    if-gez v8, :cond_19

    :cond_7e
    move-wide v4, v6

    goto :goto_19

    :cond_80
    cmp-long v0, v4, v2

    if-eqz v0, :cond_8d

    .line 808
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRunExpiration:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8d
    return-void
.end method

.method public snapshotAndRestoreUserData(Ljava/lang/String;Ljava/util/List;IJLjava/lang/String;I)V
    .registers 8

    .line 998
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 999
    invoke-static {p2}, Landroid/os/UserHandle;->fromUserHandles(Ljava/util/List;)[I

    move-result-object p2

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->snapshotAndRestoreUserData(Ljava/lang/String;[IIJLjava/lang/String;I)V

    return-void
.end method

.method public snapshotAndRestoreUserData(Ljava/lang/String;[IIJLjava/lang/String;I)V
    .registers 15

    .line 1007
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 1008
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p4

    const/16 p5, 0x3e8

    if-ne p4, p5, :cond_1e

    .line 1013
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object p4

    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;[IILjava/lang/String;I)V

    invoke-virtual {p4, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1009
    :cond_1e
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "snapshotAndRestoreUserData may only be called by the system."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final snapshotUserDataInternal(Ljava/lang/String;[I)V
    .registers 6

    .line 1029
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 1030
    sget-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    if-eqz v0, :cond_2a

    .line 1031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "snapshotUserData pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " users="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1031
    const-string v1, "RollbackManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const/4 v0, 0x0

    .line 1034
    :goto_2b
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_43

    .line 1035
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/rollback/Rollback;

    .line 1036
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/rollback/Rollback;->snapshotUserData(Ljava/lang/String;[ILcom/android/server/rollback/AppDataRollbackHelper;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_43
    return-void
.end method

.method public final unregisterUserCallbacks(Landroid/os/UserHandle;)V
    .registers 4

    .line 382
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mUserBroadcastReceivers:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_30

    .line 383
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_30

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_1b

    goto :goto_30

    .line 388
    :cond_1b
    check-cast v1, Landroid/content/Context;

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 389
    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mUserBroadcastReceivers:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 384
    :cond_30
    :goto_30
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No receiver found for the user"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RollbackManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateRollbackLifetimeDurationInMillis()V
    .registers 7

    .line 606
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 607
    sget-wide v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS:J

    const-string/jumbo v2, "rollback_boot"

    const-string/jumbo v3, "rollback_lifetime_in_millis"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_19

    .line 612
    iput-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    .line 614
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRollbackLifetimeDurationInMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RollbackManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->runExpiration()V

    return-void
.end method
