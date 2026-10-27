.class Lcom/android/server/am/AnrHelper;
.super Ljava/lang/Object;
.source "AnrHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AnrHelper$AnrRecord;,
        Lcom/android/server/am/AnrHelper$AnrConsumerThread;
    }
.end annotation


# static fields
.field static final APP_NOT_RESPONDING_DEFER_MSG:I = 0x4

.field static final APP_NOT_RESPONDING_DEFER_TIMEOUT_MILLIS:I = 0x2710

.field private static final CONSECUTIVE_ANR_TIME_MS:J

.field private static final EXPIRED_REPORT_TIME_MS:J

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private final mAnrRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/AnrHelper$AnrRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mFgHandler:Landroid/os/Handler;

.field private mLastAnrTimeMs:J

.field private mProcessingPid:I

.field private final mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAnrRecords(Lcom/android/server/am/AnrHelper;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRunning(Lcom/android/server/am/AnrHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AnrHelper;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmProcessingPid(Lcom/android/server/am/AnrHelper;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/am/AnrHelper;->mProcessingPid:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mappNotResponding(Lcom/android/server/am/AnrHelper;Lcom/android/server/am/AnrHelper$AnrRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/AnrHelper$AnrRecord;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscheduleBinderHeavyHitterAutoSamplerIfNecessary(Lcom/android/server/am/AnrHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/AnrHelper;->scheduleBinderHeavyHitterAutoSamplerIfNecessary()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartAnrConsumerIfNeeded(Lcom/android/server/am/AnrHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/AnrHelper;->startAnrConsumerIfNeeded()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetEXPIRED_REPORT_TIME_MS()J
    .registers 2

    sget-wide v0, Lcom/android/server/am/AnrHelper;->EXPIRED_REPORT_TIME_MS:J

    return-wide v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AnrHelper;->EXPIRED_REPORT_TIME_MS:J

    .line 54
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AnrHelper;->CONSECUTIVE_ANR_TIME_MS:J

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/am/AnrHelper;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/AnrHelper;->mLastAnrTimeMs:J

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/AnrHelper;->mProcessingPid:I

    .line 242
    new-instance v0, Lcom/android/server/am/AnrHelper$1;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/AnrHelper$1;-><init>(Lcom/android/server/am/AnrHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/AnrHelper;->mFgHandler:Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Lcom/android/server/am/AnrHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 73
    return-void
.end method

.method private appNotResponding(Lcom/android/server/am/AnrHelper$AnrRecord;)V
    .registers 9
    .param p1, "anrRecord"    # Lcom/android/server/am/AnrHelper$AnrRecord;

    .line 101
    iget v0, p1, Lcom/android/server/am/AnrHelper$AnrRecord;->mPid:I

    .line 102
    .local v0, "incomingPid":I
    iget-object v1, p1, Lcom/android/server/am/AnrHelper$AnrRecord;->mAnnotation:Ljava/lang/String;

    .line 104
    .local v1, "annotation":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/am/AnrHelper$AnrRecord;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_19

    .line 105
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceStub;->get()Lcom/android/server/am/ActivityManagerServiceStub;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/AnrHelper$AnrRecord;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p1, Lcom/android/server/am/AnrHelper$AnrRecord;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/am/ActivityManagerServiceStub;->skipFrozenAppAnr(Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 107
    return-void

    .line 111
    :cond_19
    if-eqz v0, :cond_4c

    iget-object v2, p1, Lcom/android/server/am/AnrHelper$AnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eqz v2, :cond_4c

    .line 112
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/AnrHelper$AnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v0, v3}, Lcom/android/server/ScoutStub;->skipClipDataAppAnr(II)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 113
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip clipdata app ANR, process="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/AnrHelper$AnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void

    .line 117
    :cond_4c
    iget-object v2, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    monitor-enter v2

    .line 118
    if-nez v0, :cond_6f

    .line 120
    :try_start_51
    iget-object v3, p1, Lcom/android/server/am/AnrHelper$AnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 121
    .local v3, "anrProcess":Lcom/android/server/am/ProcessRecord;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skip zero pid ANR, process="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    monitor-exit v2

    return-void

    .line 124
    .end local v3    # "anrProcess":Lcom/android/server/am/ProcessRecord;
    :cond_6f
    iget v3, p0, Lcom/android/server/am/AnrHelper;->mProcessingPid:I

    if-ne v3, v0, :cond_97

    .line 125
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip duplicated ANR, pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    monitor-exit v2

    return-void

    .line 128
    :cond_97
    iget-object v3, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_9f
    if-ltz v3, :cond_d4

    .line 129
    iget-object v4, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AnrHelper$AnrRecord;

    iget v4, v4, Lcom/android/server/am/AnrHelper$AnrRecord;->mPid:I

    if-ne v4, v0, :cond_d1

    .line 130
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skip queued ANR, pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    monitor-exit v2

    return-void

    .line 128
    :cond_d1
    add-int/lit8 v3, v3, -0x1

    goto :goto_9f

    .line 134
    .end local v3    # "i":I
    :cond_d4
    iget-object v3, p0, Lcom/android/server/am/AnrHelper;->mAnrRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    monitor-exit v2
    :try_end_da
    .catchall {:try_start_51 .. :try_end_da} :catchall_de

    .line 136
    invoke-direct {p0}, Lcom/android/server/am/AnrHelper;->startAnrConsumerIfNeeded()V

    .line 137
    return-void

    .line 135
    :catchall_de
    move-exception v3

    :try_start_df
    monitor-exit v2
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    throw v3
.end method

.method private scheduleBinderHeavyHitterAutoSamplerIfNecessary()V
    .registers 7

    .line 202
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 203
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/am/AnrHelper;->mLastAnrTimeMs:J

    sget-wide v4, Lcom/android/server/am/AnrHelper;->CONSECUTIVE_ANR_TIME_MS:J

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-lez v2, :cond_12

    .line 204
    iget-object v2, p0, Lcom/android/server/am/AnrHelper;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->scheduleBinderHeavyHitterAutoSampler()V

    .line 206
    :cond_12
    iput-wide v0, p0, Lcom/android/server/am/AnrHelper;->mLastAnrTimeMs:J

    .line 207
    return-void
.end method

.method private startAnrConsumerIfNeeded()V
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/android/server/am/AnrHelper;->mRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 141
    new-instance v0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;

    invoke-direct {v0, p0}, Lcom/android/server/am/AnrHelper$AnrConsumerThread;-><init>(Lcom/android/server/am/AnrHelper;)V

    invoke-virtual {v0}, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->start()V

    .line 143
    :cond_12
    return-void
.end method


# virtual methods
.method appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 11
    .param p1, "anrProcess"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "annotation"    # Ljava/lang/String;

    .line 76
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;)V

    .line 79
    return-void
.end method

.method appNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;)V
    .registers 17
    .param p1, "anrProcess"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activityShortComponentName"    # Ljava/lang/String;
    .param p3, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "parentShortComponentName"    # Ljava/lang/String;
    .param p5, "parentProcess"    # Lcom/android/server/wm/WindowProcessController;
    .param p6, "aboveSystem"    # Z
    .param p7, "annotation"    # Ljava/lang/String;

    .line 84
    new-instance v8, Lcom/android/server/am/AnrHelper$AnrRecord;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/AnrHelper$AnrRecord;-><init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;)V

    move-object v0, p0

    invoke-direct {p0, v8}, Lcom/android/server/am/AnrHelper;->appNotResponding(Lcom/android/server/am/AnrHelper$AnrRecord;)V

    .line 86
    return-void
.end method

.method deferAppNotResponding(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;J)V
    .registers 19
    .param p1, "anrProcess"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activityShortComponentName"    # Ljava/lang/String;
    .param p3, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "parentShortComponentName"    # Ljava/lang/String;
    .param p5, "parentProcess"    # Lcom/android/server/wm/WindowProcessController;
    .param p6, "aboveSystem"    # Z
    .param p7, "annotation"    # Ljava/lang/String;
    .param p8, "delayInMillis"    # J

    .line 92
    new-instance v8, Lcom/android/server/am/AnrHelper$AnrRecord;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/AnrHelper$AnrRecord;-><init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;)V

    .line 94
    .local v0, "anrRecord":Lcom/android/server/am/AnrHelper$AnrRecord;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 95
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 96
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 97
    move-object v2, p0

    iget-object v3, v2, Lcom/android/server/am/AnrHelper;->mFgHandler:Landroid/os/Handler;

    move-wide/from16 v4, p8

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 98
    return-void
.end method
