.class public final Lcom/android/server/am/PhantomProcessList;
.super Ljava/lang/Object;
.source "PhantomProcessList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PhantomProcessList$Injector;
    }
.end annotation


# static fields
.field private static final CGROUP_PATH_PREFIXES:[Ljava/lang/String;

.field private static final CGROUP_PID_PREFIX:Ljava/lang/String; = "/pid_"

.field private static final CGROUP_PROCS:Ljava/lang/String; = "/cgroup.procs"

.field private static final CGROUP_V1:I = 0x0

.field private static final CGROUP_V2:I = 0x1

.field static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field final mAppPhantomProcessMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/PhantomProcessRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCgroupProcsFds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field mCgroupVersion:I

.field private final mDataBuffer:[B

.field mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

.field private final mKillHandler:Landroid/os/Handler;

.field final mLock:Ljava/lang/Object;

.field final mPhantomProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/PhantomProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mPhantomProcessesPidFds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/PhantomProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhantomToAppProcessMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTempPhantomProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/PhantomProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mTrimPhantomProcessScheduled:Z

.field mUpdateSeq:I

.field final mZombiePhantomProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/PhantomProcessRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$DV2oO0oBIWu9yWxcWhpeHYoWXn4(Lcom/android/server/am/PhantomProcessList;Lcom/android/server/am/PhantomProcessRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/PhantomProcessList;->onPhantomProcessKilledLocked(Lcom/android/server/am/PhantomProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hpwNNTyxzGWZAqmB6EftBRf3tx4(Lcom/android/server/am/PhantomProcessList;Ljava/io/FileDescriptor;I)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/PhantomProcessList;->onPhantomProcessFdEvent(Ljava/io/FileDescriptor;I)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 117
    const-string v0, "/acct/uid_"

    const-string v1, "/sys/fs/cgroup/uid_"

    const-string v2, "/dev/cg2_bpf/uid_"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/PhantomProcessList;->CGROUP_PATH_PREFIXES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    .line 72
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcessesPidFds:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    .line 97
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    .line 100
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mDataBuffer:[B

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PhantomProcessList;->mTrimPhantomProcessScheduled:Z

    .line 129
    iput v0, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupVersion:I

    .line 133
    iput-object p1, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 134
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mKillHandler:Landroid/os/Handler;

    .line 135
    new-instance v0, Lcom/android/server/am/PhantomProcessList$Injector;

    invoke-direct {v0}, Lcom/android/server/am/PhantomProcessList$Injector;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

    .line 136
    invoke-direct {p0}, Lcom/android/server/am/PhantomProcessList;->probeCgroupVersion()V

    .line 137
    return-void
.end method

.method private addChildPidLocked(Lcom/android/server/am/ProcessRecord;II)V
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "pid"    # I
    .param p3, "appPid"    # I

    .line 244
    if-eq p3, p2, :cond_6f

    .line 246
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 247
    .local v0, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_37

    .line 249
    iget-boolean v1, v0, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    if-nez v1, :cond_6f

    .line 251
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v1, :cond_6f

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appears in the cgroup.procs of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 258
    :cond_37
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 259
    .local v1, "index":I
    if-ltz v1, :cond_50

    .line 260
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 261
    .local v2, "current":Lcom/android/server/am/ProcessRecord;
    if-ne p1, v2, :cond_4a

    .line 263
    return-void

    .line 265
    :cond_4a
    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, p1}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 266
    .end local v2    # "current":Lcom/android/server/am/ProcessRecord;
    goto :goto_55

    .line 267
    :cond_50
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 271
    :goto_55
    invoke-static {p2}, Landroid/os/Process;->getUidForPid(I)I

    move-result v2

    .line 272
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

    invoke-virtual {v3, p2}, Lcom/android/server/am/PhantomProcessList$Injector;->getProcessName(I)Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "procName":Ljava/lang/String;
    if-eqz v3, :cond_69

    if-gez v2, :cond_64

    goto :goto_69

    .line 277
    :cond_64
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v2, p2, v4}, Lcom/android/server/am/PhantomProcessList;->getOrCreatePhantomProcessIfNeededLocked(Ljava/lang/String;IIZ)Lcom/android/server/am/PhantomProcessRecord;

    goto :goto_6f

    .line 274
    :cond_69
    :goto_69
    iget-object v4, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->delete(I)V

    .line 275
    return-void

    .line 280
    .end local v0    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "index":I
    .end local v2    # "uid":I
    .end local v3    # "procName":Ljava/lang/String;
    :cond_6f
    :goto_6f
    return-void
.end method

.method static getProcessName(I)Ljava/lang/String;
    .registers 4
    .param p0, "pid"    # I

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cmdline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/os/ProcStatsUtil;->readTerminatedProcFile(Ljava/lang/String;B)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "procName":Ljava/lang/String;
    if-nez v0, :cond_22

    .line 233
    const/4 v1, 0x0

    return-object v1

    .line 235
    :cond_22
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 236
    .local v1, "l":I
    if-lez v1, :cond_38

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_38

    .line 237
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 239
    :cond_38
    return-object v0
.end method

.method private isAppProcess(I)Z
    .registers 4
    .param p1, "pid"    # I

    .line 367
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 368
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    monitor-exit v0

    return v1

    .line 369
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private lookForPhantomProcessesLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 14
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 158
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    if-nez v0, :cond_af

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v0

    if-nez v0, :cond_af

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_af

    .line 162
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    .line 163
    .local v0, "appPid":I
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 164
    .local v1, "input":Ljava/io/InputStream;
    const-string v2, "ActivityManager"

    if-nez v1, :cond_54

    .line 165
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v3, v0}, Lcom/android/server/am/PhantomProcessList;->getCgroupFilePath(II)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "path":Ljava/lang/String;
    :try_start_2a
    iget-object v4, p0, Lcom/android/server/am/PhantomProcessList;->mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

    invoke-virtual {v4, v3}, Lcom/android/server/am/PhantomProcessList$Injector;->openCgroupProcs(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_30} :catch_38
    .catch Ljava/lang/SecurityException; {:try_start_2a .. :try_end_30} :catch_38

    move-object v1, v4

    .line 173
    nop

    .line 175
    iget-object v4, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_54

    .line 168
    :catch_38
    move-exception v4

    .line 169
    .local v4, "e":Ljava/lang/Exception;
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v5, :cond_53

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    :cond_53
    return-void

    .line 177
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_54
    :goto_54
    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mDataBuffer:[B

    .line 179
    .local v3, "buf":[B
    const/4 v4, 0x0

    .line 180
    .local v4, "read":I
    const/4 v5, 0x0

    .line 181
    .local v5, "pid":I
    const-wide/16 v6, 0x0

    .line 183
    .local v6, "totalRead":J
    :cond_5a
    :try_start_5a
    iget-object v8, p0, Lcom/android/server/am/PhantomProcessList;->mInjector:Lcom/android/server/am/PhantomProcessList$Injector;

    const/4 v9, 0x0

    array-length v10, v3

    invoke-virtual {v8, v1, v3, v9, v10}, Lcom/android/server/am/PhantomProcessList$Injector;->readCgroupProcs(Ljava/io/InputStream;[BII)I

    move-result v8

    move v4, v8

    .line 184
    const/4 v8, -0x1

    if-ne v4, v8, :cond_67

    .line 185
    goto :goto_84

    .line 187
    :cond_67
    int-to-long v8, v4

    add-long/2addr v6, v8

    .line 188
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6a
    if-ge v8, v4, :cond_80

    .line 189
    aget-byte v9, v3, v8

    .line 190
    .local v9, "b":B
    const/16 v10, 0xa

    if-ne v9, v10, :cond_77

    .line 191
    invoke-direct {p0, p1, v5, v0}, Lcom/android/server/am/PhantomProcessList;->addChildPidLocked(Lcom/android/server/am/ProcessRecord;II)V

    .line 192
    const/4 v5, 0x0

    goto :goto_7d

    .line 194
    :cond_77
    mul-int/lit8 v10, v5, 0xa

    add-int/lit8 v11, v9, -0x30

    add-int/2addr v10, v11

    move v5, v10

    .line 188
    .end local v9    # "b":B
    :goto_7d
    add-int/lit8 v8, v8, 0x1

    goto :goto_6a

    .line 197
    .end local v8    # "i":I
    :cond_80
    array-length v8, v3

    if-ge v4, v8, :cond_5a

    .line 200
    nop

    .line 203
    :goto_84
    if-eqz v5, :cond_89

    .line 204
    invoke-direct {p0, p1, v5, v0}, Lcom/android/server/am/PhantomProcessList;->addChildPidLocked(Lcom/android/server/am/ProcessRecord;II)V

    .line 207
    :cond_89
    neg-long v8, v6

    invoke-virtual {v1, v8, v9}, Ljava/io/InputStream;->skip(J)J
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_8d} :catch_8f

    .line 212
    nop

    .end local v4    # "read":I
    .end local v5    # "pid":I
    .end local v6    # "totalRead":J
    goto :goto_ae

    .line 208
    :catch_8f
    move-exception v4

    .line 209
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in reading cgroup procs from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 211
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 213
    .end local v4    # "e":Ljava/io/IOException;
    :goto_ae
    return-void

    .line 160
    .end local v0    # "appPid":I
    .end local v1    # "input":Ljava/io/InputStream;
    .end local v3    # "buf":[B
    :cond_af
    :goto_af
    return-void
.end method

.method private onPhantomProcessFdEvent(Ljava/io/FileDescriptor;I)I
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I

    .line 373
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcessesPidFds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PhantomProcessRecord;

    .line 375
    .local v1, "proc":Lcom/android/server/am/PhantomProcessRecord;
    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 376
    monitor-exit v0

    return v2

    .line 378
    :cond_14
    and-int/lit8 v3, p2, 0x1

    const/4 v4, 0x1

    if-eqz v3, :cond_1d

    .line 379
    invoke-virtual {v1, v4}, Lcom/android/server/am/PhantomProcessRecord;->onProcDied(Z)V

    goto :goto_22

    .line 382
    :cond_1d
    const-string v3, "Process error"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    .line 384
    .end local v1    # "proc":Lcom/android/server/am/PhantomProcessRecord;
    :goto_22
    monitor-exit v0

    .line 385
    return v2

    .line 384
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private onPhantomProcessKilledLocked(Lcom/android/server/am/PhantomProcessRecord;)V
    .registers 6
    .param p1, "proc"    # Lcom/android/server/am/PhantomProcessRecord;

    .line 390
    iget-object v0, p1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_2b

    iget-object v0, p1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 391
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mKillHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    .line 392
    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeOnFileDescriptorEventListener(Ljava/io/FileDescriptor;)V

    .line 393
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcessesPidFds:Landroid/util/SparseArray;

    iget-object v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 394
    iget-object v0, p1, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 396
    :cond_2b
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 397
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 398
    .local v0, "index":I
    if-gez v0, :cond_3d

    .line 399
    return-void

    .line 401
    :cond_3d
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 402
    .local v1, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/PhantomProcessRecord;>;"
    iget v2, p1, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 403
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_55

    .line 404
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 406
    :cond_55
    iget-boolean v2, p1, Lcom/android/server/am/PhantomProcessRecord;->mZombie:Z

    if-eqz v2, :cond_61

    .line 408
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_68

    .line 411
    :cond_61
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 413
    :goto_68
    return-void
.end method

.method private probeCgroupVersion()V
    .registers 5

    .line 216
    sget-object v0, Lcom/android/server/am/PhantomProcessList;->CGROUP_PATH_PREFIXES:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_5
    if-ltz v0, :cond_2f

    .line 217
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/server/am/PhantomProcessList;->CGROUP_PATH_PREFIXES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 218
    iput v0, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupVersion:I

    .line 219
    goto :goto_2f

    .line 216
    :cond_2c
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 222
    .end local v0    # "i":I
    :cond_2f
    :goto_2f
    return-void
.end method

.method private scheduleTrimPhantomProcessesLocked()V
    .registers 3

    .line 417
    iget-boolean v0, p0, Lcom/android/server/am/PhantomProcessList;->mTrimPhantomProcessScheduled:Z

    if-nez v0, :cond_13

    .line 418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/PhantomProcessList;->mTrimPhantomProcessScheduled:Z

    .line 419
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActivityManagerConstants$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 421
    :cond_13
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 581
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 582
    :try_start_3
    const-string v1, "All Active App Child Processes:"

    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/am/PhantomProcessList;->dumpPhantomeProcessLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 584
    const-string v1, "All Zombie App Child Processes:"

    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/am/PhantomProcessList;->dumpPhantomeProcessLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 586
    monitor-exit v0

    .line 587
    return-void

    .line 586
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method dumpPhantomeProcessLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "headline"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/PhantomProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 591
    .local p4, "list":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/PhantomProcessRecord;>;"
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 592
    .local v0, "size":I
    if-nez v0, :cond_7

    .line 593
    return-void

    .line 595
    :cond_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 596
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    if-ge v1, v0, :cond_49

    .line 599
    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PhantomProcessRecord;

    .line 600
    .local v2, "proc":Lcom/android/server/am/PhantomProcessRecord;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 601
    const-string v3, "  proc #"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 603
    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v2}, Lcom/android/server/am/PhantomProcessRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/PhantomProcessRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 598
    .end local v2    # "proc":Lcom/android/server/am/PhantomProcessRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 607
    .end local v1    # "i":I
    :cond_49
    return-void
.end method

.method forEachPhantomProcessOfApp(Lcom/android/server/am/ProcessRecord;Ljava/util/function/Function;)V
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/function/Function<",
            "Lcom/android/server/am/PhantomProcessRecord;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 538
    .local p2, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/am/PhantomProcessRecord;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 539
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 540
    .local v1, "index":I
    if-ltz v1, :cond_35

    .line 541
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    .line 542
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 543
    .local v2, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/PhantomProcessRecord;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1d
    if-ltz v3, :cond_35

    .line 544
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/PhantomProcessRecord;

    .line 545
    .local v4, "r":Lcom/android/server/am/PhantomProcessRecord;
    invoke-interface {p2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_32

    .line 546
    goto :goto_35

    .line 543
    .end local v4    # "r":Lcom/android/server/am/PhantomProcessRecord;
    :cond_32
    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    .line 550
    .end local v1    # "index":I
    .end local v2    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/PhantomProcessRecord;>;"
    .end local v3    # "i":I
    :cond_35
    :goto_35
    monitor-exit v0

    .line 551
    return-void

    .line 550
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method getCgroupFilePath(II)Ljava/lang/String;
    .registers 6
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/PhantomProcessList;->CGROUP_PATH_PREFIXES:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupVersion:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/pid_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cgroup.procs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOrCreatePhantomProcessIfNeededLocked(Ljava/lang/String;IIZ)Lcom/android/server/am/PhantomProcessRecord;
    .registers 21
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "createIfNeeded"    # Z

    .line 302
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-direct {v1, v11}, Lcom/android/server/am/PhantomProcessList;->isAppProcess(I)Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_10

    .line 303
    return-object v12

    .line 307
    :cond_10
    iget-object v0, v1, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v13

    .line 308
    .local v13, "index":I
    if-ltz v13, :cond_49

    .line 309
    iget-object v0, v1, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PhantomProcessRecord;

    .line 310
    .local v0, "proc":Lcom/android/server/am/PhantomProcessRecord;
    invoke-virtual {v0, v9, v10, v11}, Lcom/android/server/am/PhantomProcessRecord;->equals(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 311
    return-object v0

    .line 314
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-direct {v1, v0}, Lcom/android/server/am/PhantomProcessList;->onPhantomProcessKilledLocked(Lcom/android/server/am/PhantomProcessRecord;)V

    .line 316
    .end local v0    # "proc":Lcom/android/server/am/PhantomProcessRecord;
    goto :goto_65

    .line 318
    :cond_49
    iget-object v0, v1, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 319
    .local v0, "idx":I
    if-ltz v0, :cond_65

    .line 320
    iget-object v2, v1, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PhantomProcessRecord;

    .line 321
    .local v2, "proc":Lcom/android/server/am/PhantomProcessRecord;
    invoke-virtual {v2, v9, v10, v11}, Lcom/android/server/am/PhantomProcessRecord;->equals(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 322
    return-object v2

    .line 326
    :cond_60
    iget-object v3, v1, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 330
    .end local v0    # "idx":I
    .end local v2    # "proc":Lcom/android/server/am/PhantomProcessRecord;
    :cond_65
    :goto_65
    if-nez p4, :cond_68

    .line 331
    return-object v12

    .line 334
    :cond_68
    iget-object v0, v1, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/am/ProcessRecord;

    .line 336
    .local v14, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v14, :cond_d7

    .line 339
    :try_start_73
    invoke-virtual {v14}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    .line 340
    .local v0, "appPid":I
    new-instance v15, Lcom/android/server/am/PhantomProcessRecord;

    iget-object v7, v1, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    move-object v2, v15

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move v6, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/PhantomProcessRecord;-><init>(Ljava/lang/String;IIILcom/android/server/am/ActivityManagerService;Ljava/util/function/Consumer;)V

    move-object v2, v15

    .line 343
    .restart local v2    # "proc":Lcom/android/server/am/PhantomProcessRecord;
    iget v3, v1, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    iput v3, v2, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    .line 344
    iget-object v3, v1, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    iget-object v3, v1, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 346
    .local v3, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/PhantomProcessRecord;>;"
    if-nez v3, :cond_aa

    .line 347
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    move-object v3, v4

    .line 348
    iget-object v4, v1, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 350
    :cond_aa
    invoke-virtual {v3, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 351
    iget-object v4, v2, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    if-eqz v4, :cond_d1

    .line 352
    iget-object v4, v1, Lcom/android/server/am/PhantomProcessList;->mKillHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    const/4 v6, 0x5

    new-instance v7, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda1;

    invoke-direct {v7, v1}, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 355
    iget-object v4, v1, Lcom/android/server/am/PhantomProcessList;->mPhantomProcessesPidFds:Landroid/util/SparseArray;

    iget-object v5, v2, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 357
    :cond_d1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/PhantomProcessList;->scheduleTrimPhantomProcessesLocked()V
    :try_end_d4
    .catch Ljava/lang/IllegalStateException; {:try_start_73 .. :try_end_d4} :catch_d5

    .line 358
    return-object v2

    .line 359
    .end local v0    # "appPid":I
    .end local v2    # "proc":Lcom/android/server/am/PhantomProcessRecord;
    .end local v3    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/PhantomProcessRecord;>;"
    :catch_d5
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/IllegalStateException;
    return-object v12

    .line 363
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_d7
    return-object v12
.end method

.method killPhantomProcessGroupLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/PhantomProcessRecord;IILjava/lang/String;)V
    .registers 14
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "proc"    # Lcom/android/server/am/PhantomProcessRecord;
    .param p3, "reasonCode"    # I
    .param p4, "subReason"    # I
    .param p5, "msg"    # Ljava/lang/String;

    .line 513
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 514
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    iget v2, p2, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 515
    .local v1, "index":I
    const/4 v2, 0x1

    if-ltz v1, :cond_43

    .line 516
    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mAppPhantomProcessMap:Landroid/util/SparseArray;

    .line 517
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 518
    .local v3, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/PhantomProcessRecord;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "i":I
    :goto_1b
    if-ltz v4, :cond_43

    .line 519
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/PhantomProcessRecord;

    .line 520
    .local v5, "r":Lcom/android/server/am/PhantomProcessRecord;
    if-ne v5, p2, :cond_29

    .line 521
    invoke-virtual {v5, p5, v2}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    goto :goto_40

    .line 523
    :cond_29
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caused by siling process: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    .line 518
    .end local v5    # "r":Lcom/android/server/am/PhantomProcessRecord;
    :goto_40
    add-int/lit8 v4, v4, -0x1

    goto :goto_1b

    .line 527
    .end local v1    # "index":I
    .end local v3    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/PhantomProcessRecord;>;"
    .end local v4    # "i":I
    :cond_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_5b

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caused by child process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3, p4, v2}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 530
    return-void

    .line 527
    :catchall_5b
    move-exception v1

    :try_start_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method synthetic lambda$trimPhantomProcessesIfNecessary$0$com-android-server-am-PhantomProcessList(Lcom/android/server/am/PhantomProcessRecord;Lcom/android/server/am/PhantomProcessRecord;)I
    .registers 12
    .param p1, "a"    # Lcom/android/server/am/PhantomProcessRecord;
    .param p2, "b"    # Lcom/android/server/am/PhantomProcessRecord;

    .line 442
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget v1, p1, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 448
    .local v0, "ra":Lcom/android/server/am/ProcessRecord;
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    iget v2, p2, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 449
    .local v1, "rb":Lcom/android/server/am/ProcessRecord;
    const/4 v2, 0x0

    if-nez v0, :cond_1a

    if-nez v1, :cond_1a

    .line 450
    return v2

    .line 452
    :cond_1a
    const/4 v3, 0x1

    if-nez v0, :cond_1e

    .line 454
    return v3

    .line 456
    :cond_1e
    const/4 v4, -0x1

    if-nez v1, :cond_22

    .line 458
    return v4

    .line 460
    :cond_22
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v5

    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v6

    if-eq v5, v6, :cond_41

    .line 462
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v5

    if-le v2, v5, :cond_3f

    goto :goto_40

    :cond_3f
    move v3, v4

    :goto_40
    return v3

    .line 465
    :cond_41
    iget-wide v5, p1, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    iget-wide v7, p2, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_54

    .line 467
    iget-wide v5, p1, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    iget-wide v7, p2, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    cmp-long v2, v5, v7

    if-gez v2, :cond_52

    goto :goto_53

    :cond_52
    move v3, v4

    :goto_53
    return v3

    .line 469
    :cond_54
    return v2
.end method

.method lookForPhantomProcessesLocked()V
    .registers 5

    .line 142
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomToAppProcessMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 143
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 145
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_9
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_31

    .line 146
    :try_start_e
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_18
    if-ltz v2, :cond_28

    .line 147
    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 148
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    invoke-direct {p0, v3}, Lcom/android/server/am/PhantomProcessList;->lookForPhantomProcessesLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 146
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 150
    .end local v2    # "i":I
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_e .. :try_end_29} :catchall_2e

    .line 152
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 153
    nop

    .line 154
    return-void

    .line 150
    :catchall_2e
    move-exception v2

    :try_start_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    .end local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local p0    # "this":Lcom/android/server/am/PhantomProcessList;
    :try_start_30
    throw v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    .line 152
    .restart local v0    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local p0    # "this":Lcom/android/server/am/PhantomProcessList;
    :catchall_31
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 153
    throw v1
.end method

.method onAppDied(I)V
    .registers 6
    .param p1, "pid"    # I

    .line 283
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 285
    .local v1, "index":I
    if-ltz v1, :cond_1b

    .line 286
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 287
    .local v2, "inputStream":Ljava/io/InputStream;
    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mCgroupProcsFds:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 288
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 290
    .end local v1    # "index":I
    .end local v2    # "inputStream":Ljava/io/InputStream;
    :cond_1b
    monitor-exit v0

    .line 291
    return-void

    .line 290
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method pruneStaleProcessesLocked()V
    .registers 9

    .line 488
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    const-string v2, " as it should have been dead."

    const-string v3, "Pruning "

    const-string v4, "ActivityManager"

    if-ltz v0, :cond_42

    .line 489
    iget-object v5, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/PhantomProcessRecord;

    .line 490
    .local v5, "proc":Lcom/android/server/am/PhantomProcessRecord;
    iget v6, v5, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    iget v7, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    if-ge v6, v7, :cond_3f

    .line 491
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v6, :cond_3a

    .line 492
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_3a
    const-string v2, "Stale process"

    invoke-virtual {v5, v2, v1}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    .line 488
    .end local v5    # "proc":Lcom/android/server/am/PhantomProcessRecord;
    :cond_3f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 497
    .end local v0    # "i":I
    :cond_42
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_49
    if-ltz v0, :cond_78

    .line 498
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mZombiePhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/PhantomProcessRecord;

    .line 499
    .local v1, "proc":Lcom/android/server/am/PhantomProcessRecord;
    iget v5, v1, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    iget v6, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    if-ge v5, v6, :cond_75

    .line 500
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v5, :cond_75

    .line 501
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    .end local v1    # "proc":Lcom/android/server/am/PhantomProcessRecord;
    :cond_75
    add-int/lit8 v0, v0, -0x1

    goto :goto_49

    .line 505
    .end local v0    # "i":I
    :cond_78
    return-void
.end method

.method trimPhantomProcessesIfNecessary()V
    .registers 7

    .line 429
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "settings_enable_monitor_phantom_procs"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_92

    .line 433
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_1a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 434
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_8c

    .line 435
    const/4 v2, 0x0

    :try_start_21
    iput-boolean v2, p0, Lcom/android/server/am/PhantomProcessList;->mTrimPhantomProcessScheduled:Z

    .line 436
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v2, v2, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    iget-object v3, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_83

    .line 437
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_39
    if-ltz v2, :cond_4b

    .line 438
    iget-object v4, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/am/PhantomProcessList;->mPhantomProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/PhantomProcessRecord;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    add-int/lit8 v2, v2, -0x1

    goto :goto_39

    .line 440
    .end local v2    # "i":I
    :cond_4b
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v2
    :try_end_50
    .catchall {:try_start_21 .. :try_end_50} :catchall_89

    .line 441
    :try_start_50
    iget-object v4, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0}, Lcom/android/server/am/PhantomProcessList$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/PhantomProcessList;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 471
    monitor-exit v2
    :try_end_5b
    .catchall {:try_start_50 .. :try_end_5b} :catchall_80

    .line 472
    :try_start_5b
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .line 473
    .restart local v2    # "i":I
    :goto_62
    iget-object v4, p0, Lcom/android/server/am/PhantomProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v4, v4, Lcom/android/server/am/ActivityManagerConstants;->MAX_PHANTOM_PROCESSES:I

    if-lt v2, v4, :cond_7a

    .line 474
    iget-object v4, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/PhantomProcessRecord;

    .line 475
    .local v4, "proc":Lcom/android/server/am/PhantomProcessRecord;
    const-string v5, "Trimming phantom processes"

    invoke-virtual {v4, v5, v3}, Lcom/android/server/am/PhantomProcessRecord;->killLocked(Ljava/lang/String;Z)V

    .line 473
    .end local v4    # "proc":Lcom/android/server/am/PhantomProcessRecord;
    add-int/lit8 v2, v2, -0x1

    goto :goto_62

    .line 477
    .end local v2    # "i":I
    :cond_7a
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessList;->mTempPhantomProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_7f
    .catchall {:try_start_5b .. :try_end_7f} :catchall_89

    goto :goto_83

    .line 471
    :catchall_80
    move-exception v3

    :try_start_81
    monitor-exit v2
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    .end local p0    # "this":Lcom/android/server/am/PhantomProcessList;
    :try_start_82
    throw v3

    .line 479
    .restart local p0    # "this":Lcom/android/server/am/PhantomProcessList;
    :cond_83
    :goto_83
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_82 .. :try_end_84} :catchall_89

    .line 480
    :try_start_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_8c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 481
    return-void

    .line 479
    :catchall_89
    move-exception v2

    :try_start_8a
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    .end local p0    # "this":Lcom/android/server/am/PhantomProcessList;
    :try_start_8b
    throw v2

    .line 480
    .restart local p0    # "this":Lcom/android/server/am/PhantomProcessList;
    :catchall_8c
    move-exception v1

    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_8c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1

    .line 431
    :cond_92
    :goto_92
    return-void
.end method

.method updateProcessCpuStatesLocked(Lcom/android/internal/os/ProcessCpuTracker;)V
    .registers 10
    .param p1, "tracker"    # Lcom/android/internal/os/ProcessCpuTracker;

    .line 555
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 557
    :try_start_3
    iget v1, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    .line 560
    invoke-virtual {p0}, Lcom/android/server/am/PhantomProcessList;->lookForPhantomProcessesLocked()V

    .line 562
    invoke-virtual {p1}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_12
    if-ltz v1, :cond_46

    .line 563
    invoke-virtual {p1, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v2

    .line 564
    .local v2, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget-object v3, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget v4, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget v5, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/4 v6, 0x0

    .line 565
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/server/am/PhantomProcessList;->getOrCreatePhantomProcessIfNeededLocked(Ljava/lang/String;IIZ)Lcom/android/server/am/PhantomProcessRecord;

    move-result-object v3

    .line 566
    .local v3, "r":Lcom/android/server/am/PhantomProcessRecord;
    if-eqz v3, :cond_43

    .line 567
    iget v4, p0, Lcom/android/server/am/PhantomProcessList;->mUpdateSeq:I

    iput v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    .line 568
    iget-wide v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mCurrentCputime:J

    iget v6, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v7, v2, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mCurrentCputime:J

    .line 569
    iget-wide v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_40

    .line 570
    iget-wide v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mCurrentCputime:J

    iput-wide v4, v3, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    .line 572
    :cond_40
    invoke-virtual {v3}, Lcom/android/server/am/PhantomProcessRecord;->updateAdjLocked()V

    .line 562
    .end local v2    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v3    # "r":Lcom/android/server/am/PhantomProcessRecord;
    :cond_43
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 576
    .end local v1    # "i":I
    :cond_46
    invoke-virtual {p0}, Lcom/android/server/am/PhantomProcessList;->pruneStaleProcessesLocked()V

    .line 577
    monitor-exit v0

    .line 578
    return-void

    .line 577
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw v1
.end method
