.class public final Lcom/android/server/am/PhantomProcessRecord;
.super Ljava/lang/Object;
.source "PhantomProcessRecord.java"


# static fields
.field static final LONG_FORMAT:[I

.field static final LONG_OUT:[J

.field static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field mAdj:I

.field mCurrentCputime:J

.field final mKillHandler:Landroid/os/Handler;

.field mKilled:Z

.field final mKnownSince:J

.field mLastCputime:J

.field final mLock:Ljava/lang/Object;

.field final mOnKillListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/am/PhantomProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mPid:I

.field final mPidFd:Ljava/io/FileDescriptor;

.field final mPpid:I

.field private mProcKillTimer:Ljava/lang/Runnable;

.field final mProcessName:Ljava/lang/String;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field mStringName:Ljava/lang/String;

.field final mUid:I

.field mUpdateSeq:I

.field mZombie:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 50
    const/4 v0, 0x1

    new-array v1, v0, [J

    sput-object v1, Lcom/android/server/am/PhantomProcessRecord;->LONG_OUT:[J

    .line 51
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x200a

    aput v2, v0, v1

    sput-object v0, Lcom/android/server/am/PhantomProcessRecord;->LONG_FORMAT:[I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IIILcom/android/server/am/ActivityManagerService;Ljava/util/function/Consumer;)V
    .registers 12
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I
    .param p4, "ppid"    # I
    .param p5, "service"    # Lcom/android/server/am/ActivityManagerService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/am/PhantomProcessRecord;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 75
    .local p6, "onKillListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/am/PhantomProcessRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v0, Lcom/android/server/am/PhantomProcessRecord$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/PhantomProcessRecord$1;-><init>(Lcom/android/server/am/PhantomProcessRecord;)V

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mProcKillTimer:Ljava/lang/Runnable;

    .line 76
    iput-object p1, p0, Lcom/android/server/am/PhantomProcessRecord;->mProcessName:Ljava/lang/String;

    .line 77
    iput p2, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    .line 78
    iput p3, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    .line 79
    iput p4, p0, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mKilled:Z

    .line 81
    const/16 v1, -0x3e8

    iput v1, p0, Lcom/android/server/am/PhantomProcessRecord;->mAdj:I

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    .line 83
    iput-object p5, p0, Lcom/android/server/am/PhantomProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 84
    iget-object v1, p5, Lcom/android/server/am/ActivityManagerService;->mPhantomProcessList:Lcom/android/server/am/PhantomProcessList;

    iget-object v1, v1, Lcom/android/server/am/PhantomProcessList;->mLock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/am/PhantomProcessRecord;->mLock:Ljava/lang/Object;

    .line 85
    iput-object p6, p0, Lcom/android/server/am/PhantomProcessRecord;->mOnKillListener:Ljava/util/function/Consumer;

    .line 86
    iget-object v1, p5, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    sget-object v1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    iput-object v1, p0, Lcom/android/server/am/PhantomProcessRecord;->mKillHandler:Landroid/os/Handler;

    .line 87
    invoke-static {}, Landroid/os/Process;->supportsPidFd()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 88
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 90
    .local v1, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_39
    invoke-static {p3, v0}, Landroid/os/Process;->openPidFd(II)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3f} :catch_4e
    .catchall {:try_start_39 .. :try_end_3f} :catchall_4c

    .line 91
    if-eqz v0, :cond_46

    .line 101
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 102
    nop

    .line 103
    .end local v1    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    goto :goto_7e

    .line 92
    .restart local v1    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_46
    :try_start_46
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .end local v1    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local p0    # "this":Lcom/android/server/am/PhantomProcessRecord;
    .end local p1    # "processName":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "pid":I
    .end local p4    # "ppid":I
    .end local p5    # "service":Lcom/android/server/am/ActivityManagerService;
    .end local p6    # "onKillListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/am/PhantomProcessRecord;>;"
    throw v0
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4c} :catch_4e
    .catchall {:try_start_46 .. :try_end_4c} :catchall_4c

    .line 101
    .restart local v1    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local p0    # "this":Lcom/android/server/am/PhantomProcessRecord;
    .restart local p1    # "processName":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "pid":I
    .restart local p4    # "ppid":I
    .restart local p5    # "service":Lcom/android/server/am/ActivityManagerService;
    .restart local p6    # "onKillListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/am/PhantomProcessRecord;>;"
    :catchall_4c
    move-exception v0

    goto :goto_77

    .line 94
    :catch_4e
    move-exception v0

    .line 96
    .local v0, "e":Ljava/io/IOException;
    :try_start_4f
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", it might be gone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    .line 98
    .local v2, "ex":Ljava/lang/IllegalStateException;
    invoke-virtual {v2, v0}, Ljava/lang/IllegalStateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 99
    nop

    .end local v1    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local p0    # "this":Lcom/android/server/am/PhantomProcessRecord;
    .end local p1    # "processName":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "pid":I
    .end local p4    # "ppid":I
    .end local p5    # "service":Lcom/android/server/am/ActivityManagerService;
    .end local p6    # "onKillListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/am/PhantomProcessRecord;>;"
    throw v2
    :try_end_77
    .catchall {:try_start_4f .. :try_end_77} :catchall_4c

    .line 101
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/lang/IllegalStateException;
    .restart local v1    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local p0    # "this":Lcom/android/server/am/PhantomProcessRecord;
    .restart local p1    # "processName":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "pid":I
    .restart local p4    # "ppid":I
    .restart local p5    # "service":Lcom/android/server/am/ActivityManagerService;
    .restart local p6    # "onKillListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/am/PhantomProcessRecord;>;"
    :goto_77
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 102
    throw v0

    .line 104
    .end local v1    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :cond_7b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mPidFd:Ljava/io/FileDescriptor;

    .line 106
    :goto_7e
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 207
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 208
    .local v0, "now":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    const-string/jumbo v2, "user #"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    iget v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 211
    const-string v2, " uid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 212
    iget v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 213
    const-string v2, " pid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 214
    iget v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 215
    const-string v2, " ppid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 216
    iget v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 217
    const-string v2, " knownSince="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    iget-wide v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mKnownSince:J

    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 219
    const-string v2, " killed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    iget-boolean v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mKilled:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 221
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    const-string/jumbo v2, "lastCpuTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    iget-wide v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 224
    iget-wide v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_6b

    .line 225
    const-string v2, " timeUsed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    iget-wide v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mCurrentCputime:J

    iget-wide v4, p0, Lcom/android/server/am/PhantomProcessRecord;->mLastCputime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 228
    :cond_6b
    const-string v2, " oom adj="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 229
    iget v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mAdj:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 230
    const-string v2, " seq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    iget v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mUpdateSeq:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 232
    return-void
.end method

.method equals(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .line 235
    iget v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    if-ne v0, p2, :cond_12

    iget v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    if-ne v0, p3, :cond_12

    iget-object v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mProcessName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method killLocked(Ljava/lang/String;Z)V
    .registers 11
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "noisy"    # Z

    .line 110
    iget-boolean v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mKilled:Z

    if-nez v0, :cond_9b

    .line 111
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "kill"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 112
    if-nez p2, :cond_16

    iget v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    iget-object v3, p0, Lcom/android/server/am/PhantomProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    if-ne v2, v3, :cond_40

    .line 113
    :cond_16
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Killing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 114
    invoke-virtual {p0}, Lcom/android/server/am/PhantomProcessRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    .line 113
    const-string v5, "ActivityManager"

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    :cond_40
    iget v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    const/4 v3, 0x1

    if-lez v2, :cond_96

    .line 117
    const/16 v2, 0x7547

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget v5, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    .line 118
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v5, 0x2

    iget-object v7, p0, Lcom/android/server/am/PhantomProcessRecord;->mProcessName:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x3

    iget v7, p0, Lcom/android/server/am/PhantomProcessRecord;->mAdj:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x4

    aput-object p1, v4, v5

    .line 117
    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 119
    invoke-static {}, Landroid/os/Process;->supportsPidFd()Z

    move-result v2

    if-nez v2, :cond_7d

    .line 120
    invoke-virtual {p0, v6}, Lcom/android/server/am/PhantomProcessRecord;->onProcDied(Z)V

    goto :goto_8a

    .line 124
    :cond_7d
    iget-object v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mKillHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/am/PhantomProcessRecord;->mProcKillTimer:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/android/server/am/PhantomProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v5, Lcom/android/server/am/ActivityManagerConstants;->mProcessKillTimeoutMs:J

    invoke-virtual {v2, v4, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 127
    :goto_8a
    iget v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-static {v2}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 128
    iget v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    iget v4, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-static {v2, v4}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 130
    :cond_96
    iput-boolean v3, p0, Lcom/android/server/am/PhantomProcessRecord;->mKilled:Z

    .line 131
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 133
    :cond_9b
    return-void
.end method

.method onProcDied(Z)V
    .registers 4
    .param p1, "reallyDead"    # Z

    .line 160
    if-eqz p1, :cond_24

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/PhantomProcessRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " died"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_24
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mKillHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/PhantomProcessRecord;->mProcKillTimer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mOnKillListener:Ljava/util/function/Consumer;

    if-eqz v0, :cond_32

    .line 165
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 167
    :cond_32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 171
    iget-object v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mStringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 172
    return-object v0

    .line 174
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 175
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "PhantomProcessRecord {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 178
    iget v1, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    iget v2, p0, Lcom/android/server/am/PhantomProcessRecord;->mPpid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    iget-object v1, p0, Lcom/android/server/am/PhantomProcessRecord;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    iget v1, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_47

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_84

    .line 187
    :cond_47
    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    iget v1, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    iget v1, p0, Lcom/android/server/am/PhantomProcessRecord;->mUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 190
    .local v1, "appId":I
    if-lt v1, v2, :cond_68

    .line 191
    const/16 v2, 0x61

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    add-int/lit16 v2, v1, -0x2710

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_70

    .line 194
    :cond_68
    const/16 v2, 0x73

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    :goto_70
    const v2, 0x182b8

    if-lt v1, v2, :cond_84

    const v3, 0x1869f

    if-gt v1, v3, :cond_84

    .line 198
    const/16 v3, 0x69

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    sub-int v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .end local v1    # "appId":I
    :cond_84
    :goto_84
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/PhantomProcessRecord;->mStringName:Ljava/lang/String;

    return-object v1
.end method

.method updateAdjLocked()V
    .registers 5

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/PhantomProcessRecord;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/oom_score_adj"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/PhantomProcessRecord;->LONG_FORMAT:[I

    sget-object v2, Lcom/android/server/am/PhantomProcessRecord;->LONG_OUT:[J

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 154
    const/4 v0, 0x0

    aget-wide v0, v2, v0

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/PhantomProcessRecord;->mAdj:I

    .line 156
    :cond_2c
    return-void
.end method
