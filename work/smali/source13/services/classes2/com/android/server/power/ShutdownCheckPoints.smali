.class public final Lcom/android/server/power/ShutdownCheckPoints;
.super Ljava/lang/Object;
.source "ShutdownCheckPoints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;,
        Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;,
        Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;,
        Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;,
        Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;,
        Lcom/android/server/power/ShutdownCheckPoints$Injector;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

.field private static final MAX_CHECK_POINTS:I = 0x64

.field private static final MAX_DUMP_FILES:I = 0x14

.field private static final TAG:Ljava/lang/String; = "ShutdownCheckPoints"


# instance fields
.field private final mCheckPoints:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;


# direct methods
.method static bridge synthetic -$$Nest$sfgetDATE_FORMAT()Ljava/text/SimpleDateFormat;
    .registers 1

    sget-object v0, Lcom/android/server/power/ShutdownCheckPoints;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 53
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownCheckPoints;-><init>()V

    sput-object v0, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    .line 57
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS z"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/ShutdownCheckPoints;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 64
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$1;

    invoke-direct {v0}, Lcom/android/server/power/ShutdownCheckPoints$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownCheckPoints;-><init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;)V

    .line 85
    return-void
.end method

.method constructor <init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;)V
    .registers 3
    .param p1, "injector"    # Lcom/android/server/power/ShutdownCheckPoints$Injector;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/LinkedList;

    .line 90
    iput-object p1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    .line 91
    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "printWriter"    # Ljava/io/PrintWriter;

    .line 111
    sget-object v0, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    invoke-virtual {v0, p0}, Lcom/android/server/power/ShutdownCheckPoints;->dumpInternal(Ljava/io/PrintWriter;)V

    .line 112
    return-void
.end method

.method public static newDumpThread(Ljava/io/File;)Ljava/lang/Thread;
    .registers 2
    .param p0, "baseFile"    # Ljava/io/File;

    .line 120
    sget-object v0, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    invoke-virtual {v0, p0}, Lcom/android/server/power/ShutdownCheckPoints;->newDumpThreadInternal(Ljava/io/File;)Ljava/lang/Thread;

    move-result-object v0

    return-object v0
.end method

.method public static recordCheckPoint(ILjava/lang/String;)V
    .registers 3
    .param p0, "callerProcessId"    # I
    .param p1, "reason"    # Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(ILjava/lang/String;)V

    .line 101
    return-void
.end method

.method public static recordCheckPoint(Ljava/lang/String;)V
    .registers 2
    .param p0, "reason"    # Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    invoke-virtual {v0, p0}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static recordCheckPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "intentName"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 106
    sget-object v0, Lcom/android/server/power/ShutdownCheckPoints;->INSTANCE:Lcom/android/server/power/ShutdownCheckPoints;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method private recordCheckPointInternal(Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;)V
    .registers 5
    .param p1, "checkPoint"    # Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;

    .line 161
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/LinkedList;

    monitor-enter v0

    .line 162
    :try_start_3
    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 163
    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-interface {v2}, Lcom/android/server/power/ShutdownCheckPoints$Injector;->maxCheckPoints()I

    move-result v2

    if-le v1, v2, :cond_1b

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 164
    :cond_1b
    monitor-exit v0

    .line 165
    return-void

    .line 164
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method


# virtual methods
.method dumpInternal(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 170
    iget-object v0, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/LinkedList;

    monitor-enter v0

    .line 171
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/power/ShutdownCheckPoints;->mCheckPoints:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 172
    .local v1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;>;"
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_23

    .line 173
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;

    .line 174
    .local v2, "record":Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;
    invoke-virtual {v2, p1}, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;->dump(Ljava/io/PrintWriter;)V

    .line 175
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 176
    .end local v2    # "record":Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;
    goto :goto_f

    .line 177
    :cond_22
    return-void

    .line 172
    .end local v1    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;>;"
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method newDumpThreadInternal(Ljava/io/File;)Ljava/lang/Thread;
    .registers 4
    .param p1, "baseFile"    # Ljava/io/File;

    .line 181
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-interface {v1}, Lcom/android/server/power/ShutdownCheckPoints$Injector;->maxDumpFiles()I

    move-result v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/power/ShutdownCheckPoints$FileDumperThread;-><init>(Lcom/android/server/power/ShutdownCheckPoints;Ljava/io/File;I)V

    return-object v0
.end method

.method recordCheckPointInternal(ILjava/lang/String;)V
    .registers 8
    .param p1, "callerProcessId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 131
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_e

    .line 132
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-direct {v0, v1, p2}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;-><init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/lang/String;)V

    goto :goto_15

    .line 133
    :cond_e
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;-><init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;ILjava/lang/String;)V

    .line 131
    :goto_15
    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder shutdown checkpoint recorded with pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShutdownCheckPoints"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;-><init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;ILjava/lang/String;)V

    .line 138
    .local v0, "binderCheckPoint":Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;
    if-nez p2, :cond_47

    .line 139
    invoke-virtual {v0}, Lcom/android/server/power/ShutdownCheckPoints$BinderCheckPoint;->getProcessName()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "pocessName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "binder"

    invoke-virtual {v2, v1, v4, v3}, Lcom/android/server/ScoutStub;->reportRebootNullEventtoMqs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .end local v1    # "pocessName":Ljava/lang/String;
    :cond_47
    return-void
.end method

.method recordCheckPointInternal(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 125
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-direct {v0, v1, p1}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;-><init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;)V

    .line 126
    const-string v0, "ShutdownCheckPoints"

    const-string v1, "System server shutdown checkpoint recorded"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method recordCheckPointInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "intentName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .line 147
    const-string v0, "android"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 148
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-direct {v0, v1, p3}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;-><init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/lang/String;)V

    goto :goto_17

    .line 149
    :cond_10
    new-instance v0, Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints;->mInjector:Lcom/android/server/power/ShutdownCheckPoints$Injector;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/server/power/ShutdownCheckPoints$IntentCheckPoint;-><init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_17
    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownCheckPoints;->recordCheckPointInternal(Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;)V

    .line 150
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "Shutdown intent checkpoint recorded intent=%s from package=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShutdownCheckPoints"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    if-nez p3, :cond_39

    .line 155
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v0

    const-string v1, "intent"

    invoke-virtual {v0, p2, v1, p1}, Lcom/android/server/ScoutStub;->reportRebootNullEventtoMqs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_39
    return-void
.end method
