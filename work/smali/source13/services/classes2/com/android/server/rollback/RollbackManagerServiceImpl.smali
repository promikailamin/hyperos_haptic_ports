.class Lcom/android/server/rollback/RollbackManagerServiceImpl;
.super Landroid/content/rollback/IRollbackManager$Stub;
.source "RollbackManagerServiceImpl.java"

# interfaces
.implements Lcom/android/server/rollback/RollbackManagerInternal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;,
        Lcom/android/server/rollback/RollbackManagerServiceImpl$ExtThread;
    }
.end annotation


# static fields
.field private static final DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS:J

.field private static final HANDLER_THREAD_TIMEOUT_DURATION_MILLIS:J

.field private static final LOCAL_LOGV:Z

.field private static final TAG:Ljava/lang/String; = "RollbackManager"


# instance fields
.field private final mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

.field private final mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

.field private final mContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mHandler:Landroid/os/Handler;

.field private final mInstaller:Lcom/android/server/pm/Installer;

.field private final mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

.field private final mRandom:Ljava/util/Random;

.field private mRelativeBootTime:J

.field private mRollbackLifetimeDurationInMillis:J

.field private final mRollbackStore:Lcom/android/server/rollback/RollbackStore;

.field private final mRollbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/rollback/Rollback;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunExpiration:Ljava/lang/Runnable;

.field private final mSleepDuration:Landroid/util/LongArrayQueue;


# direct methods
.method public static synthetic $r8$lambda$cFIOO-xjw7GyHhx5uTaE0MIKJSU(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->runExpiration()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmRelativeBootTime(Lcom/android/server/rollback/RollbackManagerServiceImpl;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRelativeBootTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmRollbacks(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmRelativeBootTime(Lcom/android/server/rollback/RollbackManagerServiceImpl;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRelativeBootTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$massertInWorkerThread(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcompleteEnableRollback(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/Rollback;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->completeEnableRollback(Lcom/android/server/rollback/Rollback;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdeleteRollback(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menableRollback(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enableRollback(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetHandler(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Landroid/os/Handler;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetRollbackForSession(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)Lcom/android/server/rollback/Rollback;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getRollbackForSession(I)Lcom/android/server/rollback/Rollback;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmakeRollbackAvailable(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/Rollback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->makeRollbackAvailable(Lcom/android/server/rollback/Rollback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPackageFullyRemoved(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->onPackageFullyRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monPackageReplaced(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->onPackageReplaced(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mqueueSleepIfNeeded(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->queueSleepIfNeeded()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterUserCallbacks(Lcom/android/server/rollback/RollbackManagerServiceImpl;Landroid/os/UserHandle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->registerUserCallbacks(Landroid/os/UserHandle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOCAL_LOGV()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$smcalculateRelativeBootTime()J
    .registers 2

    invoke-static {}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->calculateRelativeBootTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 130
    const-string v0, "RollbackManager"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    .line 133
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 134
    const-wide/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS:J

    .line 139
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 140
    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->HANDLER_THREAD_TIMEOUT_DURATION_MILLIS:J

    .line 139
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .line 175
    invoke-direct {p0}, Landroid/content/rollback/IRollbackManager$Stub;-><init>()V

    .line 137
    sget-wide v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS:J

    iput-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    .line 144
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRandom:Ljava/util/Random;

    .line 148
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    .line 162
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRunExpiration:Ljava/lang/Runnable;

    .line 167
    new-instance v0, Landroid/util/LongArrayQueue;

    invoke-direct {v0}, Landroid/util/LongArrayQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mSleepDuration:Landroid/util/LongArrayQueue;

    .line 173
    invoke-static {}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->calculateRelativeBootTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRelativeBootTime:J

    .line 176
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 179
    new-instance v0, Lcom/android/server/pm/Installer;

    invoke-direct {v0, p1}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mInstaller:Lcom/android/server/pm/Installer;

    .line 180
    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->onStart()V

    .line 182
    new-instance v1, Lcom/android/server/rollback/RollbackStore;

    new-instance v2, Ljava/io/File;

    .line 183
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "rollback"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    .line 184
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "rollback-history"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/server/rollback/RollbackStore;-><init>(Ljava/io/File;Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    .line 186
    new-instance v1, Lcom/android/server/rollback/RollbackPackageHealthObserver;

    invoke-direct {v1, p1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    .line 187
    new-instance v1, Lcom/android/server/rollback/AppDataRollbackHelper;

    invoke-direct {v1, v0}, Lcom/android/server/rollback/AppDataRollbackHelper;-><init>(Lcom/android/server/pm/Installer;)V

    iput-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    .line 190
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RollbackManagerServiceHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 191
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 192
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandler:Landroid/os/Handler;

    .line 193
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    sget-wide v3, Lcom/android/server/rollback/RollbackManagerServiceImpl;->HANDLER_THREAD_TIMEOUT_DURATION_MILLIS:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 194
    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 197
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 213
    .local v1, "userManager":Landroid/os/UserManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 214
    .local v3, "user":Landroid/os/UserHandle;
    invoke-direct {p0, v3}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->registerUserCallbacks(Landroid/os/UserHandle;)V

    .line 215
    .end local v3    # "user":Landroid/os/UserHandle;
    goto :goto_b3

    .line 217
    :cond_c3
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 218
    .local v2, "enableRollbackFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    :try_start_cd
    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_d2
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_cd .. :try_end_d2} :catch_d3

    .line 223
    goto :goto_db

    .line 221
    :catch_d3
    move-exception v3

    .line 222
    .local v3, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v4, "RollbackManager"

    const-string v5, "addDataType"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    .end local v3    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :goto_db
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;

    invoke-direct {v4, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 252
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v5

    .line 225
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 254
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 255
    .local v3, "enableRollbackTimedOutFilter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.CANCEL_ENABLE_ROLLBACK"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/rollback/RollbackManagerServiceImpl$2;

    invoke-direct {v5, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$2;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 275
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v7

    .line 257
    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 277
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_ADDED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 278
    .local v4, "userAddedIntentFilter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/android/server/rollback/RollbackManagerServiceImpl$3;

    invoke-direct {v7, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$3;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 291
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v8

    .line 278
    invoke-virtual {v5, v7, v4, v6, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 293
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->registerTimeChangeReceiver()V

    .line 294
    return-void
.end method

.method private allocateRollbackId()I
    .registers 6

    .line 1195
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 1196
    const/4 v0, 0x0

    .line 1199
    .local v0, "n":I
    :goto_4
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRandom:Ljava/util/Random;

    const v2, 0x7ffffffe

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 1200
    .local v1, "rollbackId":I
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1201
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1202
    return v1

    .line 1204
    :cond_1e
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "n":I
    .local v2, "n":I
    const/16 v3, 0x20

    if-ge v0, v3, :cond_26

    move v0, v2

    goto :goto_4

    .line 1206
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to allocate rollback ID"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertInWorkerThread()V
    .registers 2

    .line 315
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 316
    return-void
.end method

.method private assertNotInWorkerThread()V
    .registers 2

    .line 319
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 320
    return-void
.end method

.method private awaitResult(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TU;>;)TU;"
        }
    .end annotation

    .line 297
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TU;>;"
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 299
    :try_start_3
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_d} :catch_e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_d} :catch_e

    return-object v0

    .line 300
    :catch_e
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private awaitResult(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 306
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 308
    :try_start_3
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_c} :catch_e
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_c} :catch_e

    .line 311
    nop

    .line 312
    return-void

    .line 309
    :catch_e
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static calculateRelativeBootTime()J
    .registers 4

    .line 437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private commitRollbackInternal(ILjava/util/List;Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 9
    .param p1, "rollbackId"    # I
    .param p3, "callerPackageName"    # Ljava/lang/String;
    .param p4, "statusReceiver"    # Landroid/content/IntentSender;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/IntentSender;",
            ")V"
        }
    .end annotation

    .line 448
    .local p2, "causePackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VersionedPackage;>;"
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "commitRollback id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RollbackManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getRollbackForId(I)Lcom/android/server/rollback/Rollback;

    move-result-object v0

    .line 452
    .local v0, "rollback":Lcom/android/server/rollback/Rollback;
    if-nez v0, :cond_34

    .line 453
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    const-string v3, "Rollback unavailable"

    invoke-static {v1, p4, v2, v3}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    .line 456
    return-void

    .line 458
    :cond_34
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/server/rollback/Rollback;->commit(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Landroid/content/IntentSender;)V

    .line 459
    return-void
.end method

.method private completeEnableRollback(Lcom/android/server/rollback/Rollback;)Z
    .registers 5
    .param p1, "rollback"    # Lcom/android/server/rollback/Rollback;

    .line 1128
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 1129
    sget-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    const-string v1, "RollbackManager"

    if-eqz v0, :cond_25

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "completeEnableRollback id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_25
    invoke-virtual {p1}, Lcom/android/server/rollback/Rollback;->allPackagesEnabled()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 1138
    const-string v0, "Failed to enable rollback for all packages in session."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1140
    const-string v0, "Failed to enable rollback for all packages in session"

    invoke-direct {p0, p1, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V

    .line 1141
    const/4 v0, 0x0

    return v0

    .line 1154
    :cond_3c
    invoke-virtual {p1}, Lcom/android/server/rollback/Rollback;->saveRollback()V

    .line 1156
    const/4 v0, 0x1

    return v0
.end method

.method private computeRollbackDataPolicy(II)I
    .registers 3
    .param p1, "sessionPolicy"    # I
    .param p2, "manifestPolicy"    # I

    .line 794
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 799
    if-eqz p2, :cond_6

    .line 800
    return p2

    .line 802
    :cond_6
    return p1
.end method

.method private createNewRollback(Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/android/server/rollback/Rollback;
    .registers 14
    .param p1, "parentSession"    # Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 1256
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 1257
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->allocateRollbackId()I

    move-result v7

    .line 1259
    .local v7, "rollbackId":I
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1260
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    move v8, v0

    .local v0, "userId":I
    goto :goto_24

    .line 1262
    .end local v0    # "userId":I
    :cond_1b
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    move v8, v0

    .line 1264
    .local v8, "userId":I
    :goto_24
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1265
    .local v9, "installerPackageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v10

    .line 1267
    .local v10, "parentSessionId":I
    sget-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    if-eqz v0, :cond_5c

    .line 1268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createNewRollback id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " installer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RollbackManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    :cond_5c
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1274
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getChildSessionIds()[I

    move-result-object v0

    move-object v11, v0

    .local v0, "packageSessionIds":[I
    goto :goto_6f

    .line 1276
    .end local v0    # "packageSessionIds":[I
    :cond_68
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v10, v0, v1

    move-object v11, v0

    .line 1280
    .local v11, "packageSessionIds":[I
    :goto_6f
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v0

    if-eqz v0, :cond_85

    .line 1281
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    .line 1282
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getExtensionVersions()Landroid/util/SparseIntArray;

    move-result-object v6

    .line 1281
    move v1, v7

    move v2, v10

    move v3, v8

    move-object v4, v9

    move-object v5, v11

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/rollback/RollbackStore;->createStagedRollback(IIILjava/lang/String;[ILandroid/util/SparseIntArray;)Lcom/android/server/rollback/Rollback;

    move-result-object v0

    .local v0, "rollback":Lcom/android/server/rollback/Rollback;
    goto :goto_94

    .line 1284
    .end local v0    # "rollback":Lcom/android/server/rollback/Rollback;
    :cond_85
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    .line 1285
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getExtensionVersions()Landroid/util/SparseIntArray;

    move-result-object v6

    .line 1284
    move v1, v7

    move v2, v10

    move v3, v8

    move-object v4, v9

    move-object v5, v11

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/rollback/RollbackStore;->createNonStagedRollback(IIILjava/lang/String;[ILandroid/util/SparseIntArray;)Lcom/android/server/rollback/Rollback;

    move-result-object v0

    .line 1288
    .restart local v0    # "rollback":Lcom/android/server/rollback/Rollback;
    :goto_94
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1289
    return-object v0
.end method

.method private deleteRollback(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V
    .registers 4
    .param p1, "rollback"    # Lcom/android/server/rollback/Rollback;
    .param p2, "reason"    # Ljava/lang/String;

    .line 1322
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 1323
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    invoke-virtual {p1, v0, p2}, Lcom/android/server/rollback/Rollback;->delete(Lcom/android/server/rollback/AppDataRollbackHelper;Ljava/lang/String;)V

    .line 1324
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    invoke-virtual {v0, p1}, Lcom/android/server/rollback/RollbackStore;->saveRollbackToHistory(Lcom/android/server/rollback/Rollback;)V

    .line 1325
    return-void
.end method

.method private destroyCeSnapshotsForExpiredRollbacks(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 559
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 560
    .local v0, "rollbackIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_1f

    .line 561
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/rollback/Rollback;

    iget-object v2, v2, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v2

    aput v2, v0, v1

    .line 560
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 563
    .end local v1    # "i":I
    :cond_1f
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/server/pm/ApexManager;->destroyCeSnapshotsNotSpecified(I[I)Z

    .line 565
    :try_start_26
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/pm/Installer;->destroyCeSnapshotsNotSpecified(I[I)Z
    :try_end_2b
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_26 .. :try_end_2b} :catch_2c

    .line 568
    goto :goto_45

    .line 566
    :catch_2c
    move-exception v1

    .line 567
    .local v1, "ie":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete snapshots for user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RollbackManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    .end local v1    # "ie":Lcom/android/server/pm/Installer$InstallerException;
    :goto_45
    return-void
.end method

.method private enableRollback(I)Z
    .registers 8
    .param p1, "sessionId"    # I

    .line 756
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 757
    sget-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    const-string v1, "RollbackManager"

    if-eqz v0, :cond_1f

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableRollback sessionId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_1f
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v0

    .line 762
    .local v0, "installer":Landroid/content/pm/PackageInstaller;
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v2

    .line 763
    .local v2, "packageSession":Landroid/content/pm/PackageInstaller$SessionInfo;
    const/4 v3, 0x0

    if-nez v2, :cond_36

    .line 764
    const-string v4, "Unable to find session for enabled rollback."

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    return v3

    .line 768
    :cond_36
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->hasParentSessionId()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 769
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getParentSessionId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v4

    goto :goto_46

    :cond_45
    move-object v4, v2

    .line 770
    .local v4, "parentSession":Landroid/content/pm/PackageInstaller$SessionInfo;
    :goto_46
    if-nez v4, :cond_4e

    .line 771
    const-string v5, "Unable to find parent session for enabled rollback."

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    return v3

    .line 778
    :cond_4e
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getSessionId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getRollbackForSession(I)Lcom/android/server/rollback/Rollback;

    move-result-object v1

    .line 779
    .local v1, "newRollback":Lcom/android/server/rollback/Rollback;
    if-nez v1, :cond_5c

    .line 780
    invoke-direct {p0, v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->createNewRollback(Landroid/content/pm/PackageInstaller$SessionInfo;)Lcom/android/server/rollback/Rollback;

    move-result-object v1

    .line 783
    :cond_5c
    invoke-direct {p0, v1, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enableRollbackForPackageSession(Lcom/android/server/rollback/Rollback;Landroid/content/pm/PackageInstaller$SessionInfo;)Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 786
    invoke-virtual {v1}, Lcom/android/server/rollback/Rollback;->allPackagesEnabled()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-direct {p0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->completeEnableRollback(Lcom/android/server/rollback/Rollback;)Z

    move-result v3

    goto :goto_6e

    :cond_6d
    const/4 v3, 0x1

    :goto_6e
    return v3

    .line 788
    :cond_6f
    return v3
.end method

.method private enableRollbackAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p1, "installerPackageName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 996
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 997
    return v0

    .line 1000
    :cond_4
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1001
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {v1, v2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_15

    move v2, v3

    goto :goto_16

    :cond_15
    move v2, v0

    .line 1005
    .local v2, "manageRollbacksGranted":Z
    :goto_16
    const-string v4, "android.permission.TEST_MANAGE_ROLLBACKS"

    invoke-virtual {v1, v4, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_20

    move v4, v3

    goto :goto_21

    :cond_20
    move v4, v0

    .line 1010
    .local v4, "testManageRollbacksGranted":Z
    :goto_21
    invoke-direct {p0, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->isRollbackAllowed(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    if-nez v2, :cond_2b

    :cond_29
    if-eqz v4, :cond_2c

    :cond_2b
    move v0, v3

    :cond_2c
    return v0
.end method

.method private enableRollbackForPackageSession(Lcom/android/server/rollback/Rollback;Landroid/content/pm/PackageInstaller$SessionInfo;)Z
    .registers 27
    .param p1, "rollback"    # Lcom/android/server/rollback/Rollback;
    .param p2, "session"    # Landroid/content/pm/PackageInstaller$SessionInfo;

    .line 815
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, " is not installed"

    invoke-direct/range {p0 .. p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 817
    iget v4, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    .line 818
    .local v4, "installFlags":I
    const/high16 v0, 0x40000

    and-int/2addr v0, v4

    const-string v5, "RollbackManager"

    const/4 v6, 0x0

    if-nez v0, :cond_19

    .line 819
    const-string v0, "Rollback is not enabled."

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    return v6

    .line 822
    :cond_19
    and-int/lit16 v0, v4, 0x800

    if-eqz v0, :cond_23

    .line 823
    const-string v0, "Rollbacks not supported for instant app install"

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    return v6

    .line 827
    :cond_23
    iget-object v0, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    if-nez v0, :cond_2d

    .line 828
    const-string v0, "Session code path has not been resolved."

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    return v6

    .line 833
    :cond_2d
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v7

    .line 834
    .local v7, "input":Landroid/content/pm/parsing/result/ParseTypeImpl;
    nop

    .line 835
    invoke-virtual {v7}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v0

    new-instance v8, Ljava/io/File;

    iget-object v9, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 834
    invoke-static {v0, v8, v6}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v8

    .line 836
    .local v8, "parseResult":Landroid/content/pm/parsing/result/ParseResult;, "Landroid/content/pm/parsing/result/ParseResult<Landroid/content/pm/parsing/ApkLite;>;"
    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse new package: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 838
    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v3

    .line 837
    invoke-static {v5, v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 839
    return v6

    .line 841
    :cond_66
    invoke-interface {v8}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/content/pm/parsing/ApkLite;

    .line 843
    .local v9, "newPackage":Landroid/content/pm/parsing/ApkLite;
    invoke-virtual {v9}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 844
    .local v14, "packageName":Ljava/lang/String;
    iget v0, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackDataPolicy:I

    .line 845
    invoke-virtual {v9}, Landroid/content/pm/parsing/ApkLite;->getRollbackDataPolicy()I

    move-result v10

    .line 844
    invoke-direct {v1, v0, v10}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->computeRollbackDataPolicy(II)I

    move-result v15

    .line 846
    .local v15, "rollbackDataPolicy":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged()Z

    move-result v0

    const/high16 v10, 0x20000

    if-nez v0, :cond_a1

    and-int v0, v4, v10

    if-eqz v0, :cond_a1

    const/4 v0, 0x2

    if-eq v15, v0, :cond_a1

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only RETAIN is supported for rebootless APEX: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    return v6

    .line 851
    :cond_a1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Enabling rollback for install of "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", session:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v11, v2, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", rollbackDataPolicy="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    invoke-virtual/range {p2 .. p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v12

    .line 856
    .local v12, "installerPackageName":Ljava/lang/String;
    invoke-direct {v1, v12, v14}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enableRollbackAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f8

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installer "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is not allowed to enable rollback on "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    return v6

    .line 862
    :cond_f8
    and-int v0, v4, v10

    if-eqz v0, :cond_fe

    const/4 v0, 0x1

    goto :goto_ff

    :cond_fe
    move v0, v6

    :goto_ff
    move/from16 v20, v0

    .line 867
    .local v20, "isApex":Z
    :try_start_101
    invoke-direct {v1, v14}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_105
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_101 .. :try_end_105} :catch_18f

    move-object v13, v0

    .line 873
    .local v13, "pkgInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 875
    if-eqz v20, :cond_164

    .line 878
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/content/pm/PackageManagerInternal;

    .line 880
    .local v10, "pmi":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v10, v14}, Landroid/content/pm/PackageManagerInternal;->getApksInApex(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 881
    .local v11, "apksInApex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_161

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    .line 885
    .local v6, "apkInApex":Ljava/lang/String;
    :try_start_128
    invoke-direct {v1, v6}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v16
    :try_end_12c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_128 .. :try_end_12c} :catch_146

    .line 891
    .local v16, "apkPkgInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 892
    nop

    .line 893
    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    .line 892
    move-object/from16 v2, p1

    invoke-virtual {v2, v6, v0, v1, v15}, Lcom/android/server/rollback/Rollback;->enableForPackageInApex(Ljava/lang/String;JI)Z

    move-result v0

    if-nez v0, :cond_13e

    .line 894
    const/4 v1, 0x0

    return v1

    .line 896
    .end local v6    # "apkInApex":Ljava/lang/String;
    .end local v16    # "apkPkgInfo":Landroid/content/pm/PackageInfo;
    :cond_13e
    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v0, v18

    goto :goto_11a

    .line 886
    .restart local v6    # "apkInApex":Ljava/lang/String;
    :catch_146
    move-exception v0

    move-object/from16 v2, p1

    move-object v1, v0

    move-object v0, v1

    .line 889
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/4 v1, 0x0

    return v1

    .line 881
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "apkInApex":Ljava/lang/String;
    :cond_161
    move-object/from16 v2, p1

    goto :goto_166

    .line 875
    .end local v10    # "pmi":Landroid/content/pm/PackageManagerInternal;
    .end local v11    # "apksInApex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_164
    move-object/from16 v2, p1

    .line 906
    :goto_166
    iget-object v0, v13, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 907
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v9}, Landroid/content/pm/parsing/ApkLite;->getVersionCode()I

    move-result v1

    int-to-long v5, v1

    .line 908
    invoke-virtual {v13}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v16

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    .line 907
    move-object/from16 v10, p1

    move-object v11, v14

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    .end local v12    # "installerPackageName":Ljava/lang/String;
    .end local v13    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .local v21, "installerPackageName":Ljava/lang/String;
    .local v22, "pkgInfo":Landroid/content/pm/PackageInfo;
    move-wide v12, v5

    move-object v6, v14

    move/from16 v23, v15

    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "rollbackDataPolicy":I
    .local v6, "packageName":Ljava/lang/String;
    .local v23, "rollbackDataPolicy":I
    move-wide/from16 v14, v16

    move/from16 v16, v20

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move/from16 v19, v23

    invoke-virtual/range {v10 .. v19}, Lcom/android/server/rollback/Rollback;->enableForPackage(Ljava/lang/String;JJZLjava/lang/String;[Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 868
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v21    # "installerPackageName":Ljava/lang/String;
    .end local v22    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v23    # "rollbackDataPolicy":I
    .restart local v12    # "installerPackageName":Ljava/lang/String;
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v15    # "rollbackDataPolicy":I
    :catch_18f
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v21, v12

    move-object v6, v14

    move/from16 v23, v15

    move-object v1, v0

    .end local v12    # "installerPackageName":Ljava/lang/String;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "rollbackDataPolicy":I
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v21    # "installerPackageName":Ljava/lang/String;
    .restart local v23    # "rollbackDataPolicy":I
    move-object v0, v1

    .line 871
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const/4 v1, 0x0

    return v1
.end method

.method private enforceManageRollbacks(Ljava/lang/String;)V
    .registers 7
    .param p1, "message"    # Ljava/lang/String;

    .line 1240
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_ROLLBACKS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 1242
    const-string v2, "android.permission.TEST_MANAGE_ROLLBACKS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    goto :goto_3c

    .line 1244
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " or "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1248
    :cond_3c
    :goto_3c
    return-void
.end method

.method private expireRollbackForPackageInternal(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 478
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 479
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 480
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/rollback/Rollback;>;"
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 481
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/rollback/Rollback;

    .line 482
    .local v1, "rollback":Lcom/android/server/rollback/Rollback;
    invoke-virtual {v1, p1}, Lcom/android/server/rollback/Rollback;->includesPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 483
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 484
    invoke-direct {p0, v1, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V

    .line 486
    .end local v1    # "rollback":Lcom/android/server/rollback/Rollback;
    :cond_21
    goto :goto_9

    .line 487
    :cond_22
    return-void
.end method

.method private getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 5
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 740
    :try_start_0
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    .line 741
    :catch_c
    move-exception v0

    .line 742
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private getExtensionVersions()Landroid/util/SparseIntArray;
    .registers 6

    .line 1293
    invoke-static {}, Landroid/os/ext/SdkExtensions;->getAllExtensionVersions()Ljava/util/Map;

    move-result-object v0

    .line 1294
    .local v0, "allExtensionVersions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 1295
    .local v1, "result":Landroid/util/SparseIntArray;
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1296
    .local v3, "extension":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1297
    .end local v3    # "extension":I
    goto :goto_15

    .line 1298
    :cond_37
    return-object v1
.end method

.method private getHandler()Landroid/os/Handler;
    .registers 2

    .line 734
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getInstalledPackageVersion(Ljava/lang/String;)J
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1046
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_4} :catch_a

    .line 1049
    .local v0, "pkgInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 1051
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    return-wide v1

    .line 1047
    .end local v0    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_a
    move-exception v0

    .line 1048
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-wide/16 v1, -0x1

    return-wide v1
.end method

.method private getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1062
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1068
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/high16 v1, 0x400000

    :try_start_8
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_c} :catch_d

    return-object v1

    .line 1069
    :catch_d
    move-exception v1

    .line 1070
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    return-object v2
.end method

.method private getRollbackForId(I)Lcom/android/server/rollback/Rollback;
    .registers 5
    .param p1, "rollbackId"    # I

    .line 1182
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 1183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_20

    .line 1184
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/rollback/Rollback;

    .line 1185
    .local v1, "rollback":Lcom/android/server/rollback/Rollback;
    iget-object v2, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v2}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v2

    if-ne v2, p1, :cond_1d

    .line 1186
    return-object v1

    .line 1183
    .end local v1    # "rollback":Lcom/android/server/rollback/Rollback;
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1190
    .end local v0    # "i":I
    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method

.method private getRollbackForSession(I)Lcom/android/server/rollback/Rollback;
    .registers 5
    .param p1, "sessionId"    # I

    .line 1308
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 1310
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 1311
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/rollback/Rollback;

    .line 1312
    .local v1, "rollback":Lcom/android/server/rollback/Rollback;
    invoke-virtual {v1}, Lcom/android/server/rollback/Rollback;->getOriginalSessionId()I

    move-result v2

    if-eq v2, p1, :cond_24

    .line 1313
    invoke-virtual {v1, p1}, Lcom/android/server/rollback/Rollback;->containsSessionId(I)Z

    move-result v2

    if-eqz v2, :cond_21

    goto :goto_24

    .line 1310
    .end local v1    # "rollback":Lcom/android/server/rollback/Rollback;
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1314
    .restart local v1    # "rollback":Lcom/android/server/rollback/Rollback;
    :cond_24
    :goto_24
    return-object v1

    .line 1317
    .end local v0    # "i":I
    .end local v1    # "rollback":Lcom/android/server/rollback/Rollback;
    :cond_25
    const/4 v0, 0x0

    return-object v0
.end method

.method private isModule(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1027
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1030
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v2
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_b} :catch_10

    .line 1033
    .local v2, "moduleInfo":Landroid/content/pm/ModuleInfo;
    nop

    .line 1035
    if-eqz v2, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1

    .line 1031
    .end local v2    # "moduleInfo":Landroid/content/pm/ModuleInfo;
    :catch_10
    move-exception v2

    .line 1032
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method private isRollbackAllowed(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1019
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getRollbackWhitelistedPackages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1020
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->isModule(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 1019
    :goto_18
    return v0
.end method

.method private makeRollbackAvailable(Lcom/android/server/rollback/Rollback;)V
    .registers 6
    .param p1, "rollback"    # Lcom/android/server/rollback/Rollback;

    .line 1162
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "makeRollbackAvailable id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RollbackManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    invoke-virtual {p1}, Lcom/android/server/rollback/Rollback;->makeAvailable()V

    .line 1165
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    iget-object v1, p1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->notifyRollbackAvailable(Landroid/content/rollback/RollbackInfo;)V

    .line 1172
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    invoke-virtual {p1}, Lcom/android/server/rollback/Rollback;->getPackageNames()Ljava/util/List;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->startObservingHealth(Ljava/util/List;J)V

    .line 1174
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->runExpiration()V

    .line 1175
    return-void
.end method

.method private onPackageFullyRemoved(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 676
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->expireRollbackForPackageInternal(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    return-void
.end method

.method private onPackageReplaced(Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .line 656
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 657
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getInstalledPackageVersion(Ljava/lang/String;)J

    move-result-wide v0

    .line 658
    .local v0, "installedVersion":J
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 659
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/rollback/Rollback;>;"
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 660
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/rollback/Rollback;

    .line 661
    .local v3, "rollback":Lcom/android/server/rollback/Rollback;
    invoke-virtual {v3}, Lcom/android/server/rollback/Rollback;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 662
    invoke-virtual {v3, p1, v0, v1}, Lcom/android/server/rollback/Rollback;->includesPackageWithDifferentVersion(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 664
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 665
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " replaced"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V

    .line 667
    .end local v3    # "rollback":Lcom/android/server/rollback/Rollback;
    :cond_44
    goto :goto_d

    .line 668
    :cond_45
    return-void
.end method

.method private queueSleepIfNeeded()V
    .registers 5

    .line 514
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 515
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mSleepDuration:Landroid/util/LongArrayQueue;

    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->size()I

    move-result v0

    if-nez v0, :cond_c

    .line 516
    return-void

    .line 518
    :cond_c
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mSleepDuration:Landroid/util/LongArrayQueue;

    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->removeFirst()J

    move-result-wide v0

    .line 519
    .local v0, "millis":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_19

    .line 520
    return-void

    .line 522
    :cond_19
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 530
    return-void
.end method

.method private registerTimeChangeReceiver()V
    .registers 6

    .line 414
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;

    invoke-direct {v0, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 429
    .local v0, "timeChangeIntentReceiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 430
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 431
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 432
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 431
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 433
    return-void
.end method

.method private registerUserCallbacks(Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 324
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 325
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1f

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to register user callbacks for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RollbackManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void

    .line 330
    :cond_1f
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    new-instance v2, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/RollbackManagerServiceImpl$SessionCallback-IA;)V

    .line 331
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageInstaller;->registerSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;Landroid/os/Handler;)V

    .line 333
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 334
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 337
    new-instance v2, Lcom/android/server/rollback/RollbackManagerServiceImpl$4;

    invoke-direct {v2, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$4;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 356
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 337
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 357
    return-void
.end method

.method private restoreUserDataInternal(Ljava/lang/String;[IILjava/lang/String;)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I
    .param p3, "appId"    # I
    .param p4, "seInfo"    # Ljava/lang/String;

    .line 961
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 962
    sget-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    if-eqz v0, :cond_2e

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "restoreUserData pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " users="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 964
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 963
    const-string v1, "RollbackManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    :cond_2e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2f
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_50

    .line 967
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/rollback/Rollback;

    .line 968
    .local v1, "rollback":Lcom/android/server/rollback/Rollback;
    iget-object v7, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/rollback/Rollback;->restoreUserDataForPackageIfInProgress(Ljava/lang/String;[IILjava/lang/String;Lcom/android/server/rollback/AppDataRollbackHelper;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 970
    return-void

    .line 966
    .end local v1    # "rollback":Lcom/android/server/rollback/Rollback;
    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 973
    .end local v0    # "i":I
    :cond_50
    return-void
.end method

.method private runExpiration()V
    .registers 8

    .line 705
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRunExpiration:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 706
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 707
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    .line 708
    .local v0, "now":Ljava/time/Instant;
    const/4 v1, 0x0

    .line 709
    .local v1, "oldest":Ljava/time/Instant;
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 710
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/rollback/Rollback;>;"
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 711
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/rollback/Rollback;

    .line 712
    .local v3, "rollback":Lcom/android/server/rollback/Rollback;
    invoke-virtual {v3}, Lcom/android/server/rollback/Rollback;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_30

    invoke-virtual {v3}, Lcom/android/server/rollback/Rollback;->isCommitted()Z

    move-result v4

    if-nez v4, :cond_30

    .line 713
    goto :goto_17

    .line 715
    :cond_30
    invoke-virtual {v3}, Lcom/android/server/rollback/Rollback;->getTimestamp()Ljava/time/Instant;

    move-result-object v4

    .line 716
    .local v4, "rollbackTimestamp":Ljava/time/Instant;
    iget-wide v5, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    invoke-virtual {v4, v5, v6}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v5

    if-nez v5, :cond_68

    .line 717
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "runExpiration id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v6}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RollbackManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 719
    const-string v5, "Expired by timeout"

    invoke-direct {p0, v3, v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V

    goto :goto_71

    .line 720
    :cond_68
    if-eqz v1, :cond_70

    invoke-virtual {v1, v4}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v5

    if-eqz v5, :cond_71

    .line 721
    :cond_70
    move-object v1, v4

    .line 723
    .end local v3    # "rollback":Lcom/android/server/rollback/Rollback;
    .end local v4    # "rollbackTimestamp":Ljava/time/Instant;
    :cond_71
    :goto_71
    goto :goto_17

    .line 725
    :cond_72
    if-eqz v1, :cond_89

    .line 726
    iget-wide v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    .line 727
    invoke-virtual {v1, v3, v4}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v3

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    .line 726
    invoke-virtual {v0, v3, v4}, Ljava/time/Instant;->until(Ljava/time/temporal/Temporal;Ljava/time/temporal/TemporalUnit;)J

    move-result-wide v3

    .line 728
    .local v3, "delay":J
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRunExpiration:Ljava/lang/Runnable;

    invoke-virtual {v5, v6, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 730
    .end local v3    # "delay":J
    :cond_89
    return-void
.end method

.method static sendFailure(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "statusReceiver"    # Landroid/content/IntentSender;
    .param p2, "status"    # I
    .param p3, "message"    # Ljava/lang/String;

    .line 690
    const-string v0, "RollbackManager"

    invoke-static {v0, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :try_start_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 693
    .local v0, "fillIn":Landroid/content/Intent;
    const-string v1, "android.content.rollback.extra.STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 694
    const-string v1, "android.content.rollback.extra.STATUS_MESSAGE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    :try_end_1d
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_5 .. :try_end_1d} :catch_1e

    .line 698
    .end local v0    # "fillIn":Landroid/content/Intent;
    goto :goto_1f

    .line 696
    :catch_1e
    move-exception v0

    .line 699
    :goto_1f
    return-void
.end method

.method private snapshotUserDataInternal(Ljava/lang/String;[I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 947
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 948
    sget-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    if-eqz v0, :cond_2e

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "snapshotUserData pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " users="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 950
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 949
    const-string v1, "RollbackManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_2e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2f
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_47

    .line 953
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/rollback/Rollback;

    .line 954
    .local v1, "rollback":Lcom/android/server/rollback/Rollback;
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/rollback/Rollback;->snapshotUserData(Ljava/lang/String;[ILcom/android/server/rollback/AppDataRollbackHelper;)V

    .line 952
    .end local v1    # "rollback":Lcom/android/server/rollback/Rollback;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 956
    .end local v0    # "i":I
    :cond_47
    return-void
.end method

.method private updateRollbackLifetimeDurationInMillis()V
    .registers 7

    .line 573
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 574
    sget-wide v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->DEFAULT_ROLLBACK_LIFETIME_DURATION_MILLIS:J

    const-string/jumbo v2, "rollback_boot"

    const-string/jumbo v3, "rollback_lifetime_in_millis"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    .line 578
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_19

    .line 579
    iput-wide v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    .line 581
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRollbackLifetimeDurationInMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackLifetimeDurationInMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RollbackManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->runExpiration()V

    .line 583
    return-void
.end method


# virtual methods
.method public blockRollbackManager(J)V
    .registers 6
    .param p1, "millis"    # J

    .line 502
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 503
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_MANAGE_ROLLBACKS"

    const-string v2, "blockRollbackManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 510
    return-void
.end method

.method public commitRollback(ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 15
    .param p1, "rollbackId"    # I
    .param p2, "causePackages"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "callerPackageName"    # Ljava/lang/String;
    .param p4, "statusReceiver"    # Landroid/content/IntentSender;

    .line 400
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 401
    const-string v0, "commitRollback"

    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enforceManageRollbacks(Ljava/lang/String;)V

    .line 403
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 404
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 405
    .local v1, "appOps":Landroid/app/AppOpsManager;
    invoke-virtual {v1, v0, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 407
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v9, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda1;

    move-object v3, v9

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V

    invoke-virtual {v2, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 410
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1212
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 1213
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "RollbackManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 1215
    :cond_e
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1216
    .local v0, "ipw":Lcom/android/internal/util/IndentingPrintWriter;
    new-instance v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-direct {p0, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->awaitResult(Ljava/lang/Runnable;)V

    .line 1236
    return-void
.end method

.method public expireRollbackForPackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 492
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 493
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_MANAGE_ROLLBACKS"

    const-string v2, "expireRollbackForPackage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->awaitResult(Ljava/lang/Runnable;)V

    .line 497
    return-void
.end method

.method public getAvailableRollbacks()Landroid/content/pm/ParceledListSlice;
    .registers 2

    .line 362
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 363
    const-string v0, "getAvailableRollbacks"

    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enforceManageRollbacks(Ljava/lang/String;)V

    .line 364
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->awaitResult(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    return-object v0
.end method

.method public getRecentlyCommittedRollbacks()Landroid/content/pm/ParceledListSlice;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/content/rollback/RollbackInfo;",
            ">;"
        }
    .end annotation

    .line 380
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 381
    const-string v0, "getRecentlyCommittedRollbacks"

    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->enforceManageRollbacks(Ljava/lang/String;)V

    .line 383
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->awaitResult(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    return-object v0
.end method

.method synthetic lambda$blockRollbackManager$6$com-android-server-rollback-RollbackManagerServiceImpl(J)V
    .registers 4
    .param p1, "millis"    # J

    .line 507
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 508
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mSleepDuration:Landroid/util/LongArrayQueue;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongArrayQueue;->addLast(J)V

    .line 509
    return-void
.end method

.method synthetic lambda$commitRollback$3$com-android-server-rollback-RollbackManagerServiceImpl(ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V
    .registers 6
    .param p1, "rollbackId"    # I
    .param p2, "causePackages"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "callerPackageName"    # Ljava/lang/String;
    .param p4, "statusReceiver"    # Landroid/content/IntentSender;

    .line 408
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->commitRollbackInternal(ILjava/util/List;Ljava/lang/String;Landroid/content/IntentSender;)V

    return-void
.end method

.method synthetic lambda$dump$14$com-android-server-rollback-RollbackManagerServiceImpl(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1217
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 1218
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

    .line 1219
    .local v1, "rollback":Lcom/android/server/rollback/Rollback;
    invoke-virtual {v1, p1}, Lcom/android/server/rollback/Rollback;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1220
    .end local v1    # "rollback":Lcom/android/server/rollback/Rollback;
    goto :goto_9

    .line 1221
    :cond_19
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1223
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    invoke-virtual {v0}, Lcom/android/server/rollback/RollbackStore;->loadHistorialRollbacks()Ljava/util/List;

    move-result-object v0

    .line 1224
    .local v0, "historicalRollbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/rollback/Rollback;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 1225
    const-string v1, "Historical rollbacks:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1226
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1227
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/rollback/Rollback;

    .line 1228
    .local v2, "rollback":Lcom/android/server/rollback/Rollback;
    invoke-virtual {v2, p1}, Lcom/android/server/rollback/Rollback;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1229
    .end local v2    # "rollback":Lcom/android/server/rollback/Rollback;
    goto :goto_34

    .line 1230
    :cond_44
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1231
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1234
    :cond_4a
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/PackageWatchdog;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1235
    return-void
.end method

.method synthetic lambda$expireRollbackForPackage$5$com-android-server-rollback-RollbackManagerServiceImpl(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 496
    const-string v0, "Expired by API"

    invoke-direct {p0, p1, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->expireRollbackForPackageInternal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$getAvailableRollbacks$1$com-android-server-rollback-RollbackManagerServiceImpl()Landroid/content/pm/ParceledListSlice;
    .registers 5

    .line 365
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v0, "rollbacks":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/RollbackInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 368
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/rollback/Rollback;

    .line 369
    .local v2, "rollback":Lcom/android/server/rollback/Rollback;
    invoke-virtual {v2}, Lcom/android/server/rollback/Rollback;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 370
    iget-object v3, v2, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    .end local v2    # "rollback":Lcom/android/server/rollback/Rollback;
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 373
    .end local v1    # "i":I
    :cond_27
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method synthetic lambda$getRecentlyCommittedRollbacks$2$com-android-server-rollback-RollbackManagerServiceImpl()Landroid/content/pm/ParceledListSlice;
    .registers 5

    .line 384
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v0, "rollbacks":Ljava/util/List;, "Ljava/util/List<Landroid/content/rollback/RollbackInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_27

    .line 387
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/rollback/Rollback;

    .line 388
    .local v2, "rollback":Lcom/android/server/rollback/Rollback;
    invoke-virtual {v2}, Lcom/android/server/rollback/Rollback;->isCommitted()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 389
    iget-object v3, v2, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    .end local v2    # "rollback":Lcom/android/server/rollback/Rollback;
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 392
    .end local v1    # "i":I
    :cond_27
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method synthetic lambda$new$0$com-android-server-rollback-RollbackManagerServiceImpl(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 198
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    invoke-virtual {v1}, Lcom/android/server/rollback/RollbackStore;->loadRollbacks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    move-result v0

    if-nez v0, :cond_35

    .line 200
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/rollback/Rollback;

    .line 201
    .local v1, "rollback":Lcom/android/server/rollback/Rollback;
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAllocatedRollbackIds:Landroid/util/SparseBooleanArray;

    iget-object v3, v1, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v3}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 202
    .end local v1    # "rollback":Lcom/android/server/rollback/Rollback;
    goto :goto_1b

    :cond_34
    goto :goto_52

    .line 205
    :cond_35
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/rollback/Rollback;

    .line 206
    .restart local v1    # "rollback":Lcom/android/server/rollback/Rollback;
    const-string v2, "Fingerprint changed"

    invoke-direct {p0, v1, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V

    .line 207
    .end local v1    # "rollback":Lcom/android/server/rollback/Rollback;
    goto :goto_3b

    .line 208
    :cond_4d
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 210
    :goto_52
    return-void
.end method

.method synthetic lambda$notifyStagedSession$13$com-android-server-rollback-RollbackManagerServiceImpl(I)Ljava/lang/Integer;
    .registers 4
    .param p1, "sessionId"    # I

    .line 984
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 985
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getRollbackForSession(I)Lcom/android/server/rollback/Rollback;

    move-result-object v0

    .line 986
    .local v0, "rollback":Lcom/android/server/rollback/Rollback;
    if-eqz v0, :cond_10

    iget-object v1, v0, Lcom/android/server/rollback/Rollback;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v1}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, -0x1

    :goto_11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method synthetic lambda$onBootCompleted$10$com-android-server-rollback-RollbackManagerServiceImpl(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 588
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->updateRollbackLifetimeDurationInMillis()V

    return-void
.end method

.method synthetic lambda$onBootCompleted$11$com-android-server-rollback-RollbackManagerServiceImpl()V
    .registers 9

    .line 591
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 592
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->updateRollbackLifetimeDurationInMillis()V

    .line 593
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->runExpiration()V

    .line 597
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v0, "enabling":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/rollback/Rollback;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 599
    .local v1, "restoreInProgress":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/rollback/Rollback;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 600
    .local v2, "apexPackageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 601
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/rollback/Rollback;>;"
    :cond_1e
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_97

    .line 602
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/rollback/Rollback;

    .line 603
    .local v4, "rollback":Lcom/android/server/rollback/Rollback;
    invoke-virtual {v4}, Lcom/android/server/rollback/Rollback;->isStaged()Z

    move-result v5

    if-nez v5, :cond_31

    .line 605
    goto :goto_1e

    .line 608
    :cond_31
    iget-object v5, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 609
    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/server/rollback/Rollback;->getOriginalSessionId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v5

    .line 610
    .local v5, "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    if-eqz v5, :cond_6d

    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result v6

    if-eqz v6, :cond_4c

    goto :goto_6d

    .line 619
    :cond_4c
    invoke-virtual {v5}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied()Z

    move-result v6

    if-eqz v6, :cond_65

    .line 620
    invoke-virtual {v4}, Lcom/android/server/rollback/Rollback;->isEnabling()Z

    move-result v6

    if-eqz v6, :cond_5c

    .line 621
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_65

    .line 622
    :cond_5c
    invoke-virtual {v4}, Lcom/android/server/rollback/Rollback;->isRestoreUserDataInProgress()Z

    move-result v6

    if-eqz v6, :cond_65

    .line 623
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    :cond_65
    :goto_65
    invoke-virtual {v4}, Lcom/android/server/rollback/Rollback;->getApexPackageNames()Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 627
    .end local v4    # "rollback":Lcom/android/server/rollback/Rollback;
    .end local v5    # "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    goto :goto_1e

    .line 611
    .restart local v4    # "rollback":Lcom/android/server/rollback/Rollback;
    .restart local v5    # "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_6d
    :goto_6d
    invoke-virtual {v4}, Lcom/android/server/rollback/Rollback;->isEnabling()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 612
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 613
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Session "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/rollback/Rollback;->getOriginalSessionId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not existed or failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->deleteRollback(Lcom/android/server/rollback/Rollback;Ljava/lang/String;)V

    goto :goto_1e

    .line 629
    .end local v4    # "rollback":Lcom/android/server/rollback/Rollback;
    .end local v5    # "session":Landroid/content/pm/PackageInstaller$SessionInfo;
    :cond_97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ab

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/rollback/Rollback;

    .line 630
    .local v5, "rollback":Lcom/android/server/rollback/Rollback;
    invoke-direct {p0, v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->makeRollbackAvailable(Lcom/android/server/rollback/Rollback;)V

    .line 631
    .end local v5    # "rollback":Lcom/android/server/rollback/Rollback;
    goto :goto_9b

    .line 633
    :cond_ab
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_af
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/rollback/Rollback;

    .line 634
    .restart local v5    # "rollback":Lcom/android/server/rollback/Rollback;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/rollback/Rollback;->setRestoreUserDataInProgress(Z)V

    .line 635
    .end local v5    # "rollback":Lcom/android/server/rollback/Rollback;
    goto :goto_af

    .line 637
    :cond_c0
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 642
    .local v5, "apexPackageName":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->onPackageReplaced(Ljava/lang/String;)V

    .line 643
    .end local v5    # "apexPackageName":Ljava/lang/String;
    goto :goto_c4

    .line 645
    :cond_d4
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mPackageHealthObserver:Lcom/android/server/rollback/RollbackPackageHealthObserver;

    invoke-virtual {v4}, Lcom/android/server/rollback/RollbackPackageHealthObserver;->onBootCompletedAsync()V

    .line 646
    return-void
.end method

.method synthetic lambda$onUnlockUser$8$com-android-server-rollback-RollbackManagerServiceImpl(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 542
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 546
    .local v0, "rollbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/rollback/Rollback;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1f

    .line 547
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/rollback/Rollback;

    .line 548
    .local v2, "rollback":Lcom/android/server/rollback/Rollback;
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mAppDataRollbackHelper:Lcom/android/server/rollback/AppDataRollbackHelper;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/rollback/Rollback;->commitPendingBackupAndRestoreForUser(ILcom/android/server/rollback/AppDataRollbackHelper;)V

    .line 546
    .end local v2    # "rollback":Lcom/android/server/rollback/Rollback;
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 550
    .end local v1    # "i":I
    :cond_1f
    return-void
.end method

.method synthetic lambda$onUnlockUser$9$com-android-server-rollback-RollbackManagerServiceImpl(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 553
    invoke-direct {p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->destroyCeSnapshotsForExpiredRollbacks(I)V

    .line 554
    return-void
.end method

.method synthetic lambda$queueSleepIfNeeded$7$com-android-server-rollback-RollbackManagerServiceImpl(J)V
    .registers 6
    .param p1, "millis"    # J

    .line 523
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 525
    :try_start_3
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_6} :catch_8

    .line 528
    nop

    .line 529
    return-void

    .line 526
    :catch_8
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "RollbackManagerHandlerThread interrupted"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method synthetic lambda$reloadPersistedData$4$com-android-server-rollback-RollbackManagerServiceImpl()V
    .registers 3

    .line 470
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 471
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 472
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbacks:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mRollbackStore:Lcom/android/server/rollback/RollbackStore;

    invoke-virtual {v1}, Lcom/android/server/rollback/RollbackStore;->loadRollbacks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 473
    return-void
.end method

.method synthetic lambda$snapshotAndRestoreUserData$12$com-android-server-rollback-RollbackManagerServiceImpl(Ljava/lang/String;[IILjava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I
    .param p3, "appId"    # I
    .param p4, "seInfo"    # Ljava/lang/String;
    .param p5, "token"    # I

    .line 932
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertInWorkerThread()V

    .line 933
    invoke-direct {p0, p1, p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->snapshotUserDataInternal(Ljava/lang/String;[I)V

    .line 934
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->restoreUserDataInternal(Ljava/lang/String;[IILjava/lang/String;)V

    .line 937
    if-lez p5, :cond_17

    .line 938
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 940
    .local v0, "pmi":Landroid/content/pm/PackageManagerInternal;
    const/4 v1, 0x0

    invoke-virtual {v0, p5, v1}, Landroid/content/pm/PackageManagerInternal;->finishPackageInstall(IZ)V

    .line 942
    .end local v0    # "pmi":Landroid/content/pm/PackageManagerInternal;
    :cond_17
    return-void
.end method

.method public notifyStagedSession(I)I
    .registers 4
    .param p1, "sessionId"    # I

    .line 978
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 979
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1b

    .line 983
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)V

    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->awaitResult(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 980
    :cond_1b
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "notifyStagedSession may only be called by the system."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method onBootCompleted()V
    .registers 4

    .line 587
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    const-string/jumbo v2, "rollback_boot"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 590
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 647
    return-void
.end method

.method onUnlockUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 534
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 535
    sget-boolean v0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->LOCAL_LOGV:Z

    if-eqz v0, :cond_20

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUnlockUser id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RollbackManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_20
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)V

    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->awaitResult(Ljava/lang/Runnable;)V

    .line 552
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 555
    return-void
.end method

.method public reloadPersistedData()V
    .registers 4

    .line 464
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 465
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.TEST_MANAGE_ROLLBACKS"

    const-string/jumbo v2, "reloadPersistedData"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    new-instance v0, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    invoke-direct {p0, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->awaitResult(Ljava/lang/Runnable;)V

    .line 474
    return-void
.end method

.method public snapshotAndRestoreUserData(Ljava/lang/String;Ljava/util/List;IJLjava/lang/String;I)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "appId"    # I
    .param p4, "ceDataInode"    # J
    .param p6, "seInfo"    # Ljava/lang/String;
    .param p7, "token"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;IJ",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 916
    .local p2, "users":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 917
    invoke-static {p2}, Landroid/os/UserHandle;->fromUserHandles(Ljava/util/List;)[I

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->snapshotAndRestoreUserData(Ljava/lang/String;[IIJLjava/lang/String;I)V

    .line 919
    return-void
.end method

.method public snapshotAndRestoreUserData(Ljava/lang/String;[IIJLjava/lang/String;I)V
    .registers 17
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I
    .param p3, "appId"    # I
    .param p4, "ceDataInode"    # J
    .param p6, "seInfo"    # Ljava/lang/String;
    .param p7, "token"    # I

    .line 925
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->assertNotInWorkerThread()V

    .line 926
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_20

    .line 931
    invoke-direct {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda15;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/server/rollback/RollbackManagerServiceImpl$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;[IILjava/lang/String;I)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 943
    return-void

    .line 927
    :cond_20
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "snapshotAndRestoreUserData may only be called by the system."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
