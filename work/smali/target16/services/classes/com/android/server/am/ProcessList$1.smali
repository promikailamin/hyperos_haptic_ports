.class public Lcom/android/server/am/ProcessList$1;
.super Ljava/lang/Object;
.source "ProcessList.java"

# interfaces
.implements Lcom/android/server/am/OomConnection$OomConnectionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ProcessList;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessList;)V
    .registers 2

    .line 915
    iput-object p1, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleOomEvent([Landroid/os/OomKillRecord;)V
    .registers 12

    .line 918
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_32

    aget-object v2, p1, v1

    .line 919
    iget-object v3, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v3

    .line 920
    :try_start_e
    iget-object v4, p0, Lcom/android/server/am/ProcessList$1;->this$0:Lcom/android/server/am/ProcessList;

    .line 921
    invoke-virtual {v2}, Landroid/os/OomKillRecord;->getPid()I

    move-result v5

    .line 922
    invoke-virtual {v2}, Landroid/os/OomKillRecord;->getUid()I

    move-result v6

    const-string/jumbo v9, "oom"

    const/4 v7, 0x3

    const/16 v8, 0x1e

    .line 920
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ProcessList;->noteAppKill(IIIILjava/lang/String;)V

    .line 927
    invoke-virtual {v2}, Landroid/os/OomKillRecord;->logKillOccurred()V

    .line 928
    monitor-exit v3
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_2b
    move-exception v0

    move-object p0, v0

    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0

    :cond_32
    return-void
.end method
