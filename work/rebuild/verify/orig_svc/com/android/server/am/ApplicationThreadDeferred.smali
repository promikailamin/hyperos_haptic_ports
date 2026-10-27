.class public final Lcom/android/server/am/ApplicationThreadDeferred;
.super Landroid/app/IApplicationThread$Delegator;
.source "ApplicationThreadDeferred.java"


# instance fields
.field public final mBase:Landroid/app/IApplicationThread;

.field public final mLock:Ljava/lang/Object;

.field public final mOperations:[Lcom/android/server/am/ApplicationThreadDeferred$Operation;

.field public mPaused:Z

.field public final mPending:[Z


# direct methods
.method public static synthetic $r8$lambda$EyFIl9oQearTD0bqYtkIdp-2aEw(Lcom/android/server/am/ApplicationThreadDeferred;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ApplicationThreadDeferred;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$PP7wSw0gGLmO6hi1tOkPocTG8v8(Lcom/android/server/am/ApplicationThreadDeferred;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ApplicationThreadDeferred;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$_AjVZez4200DRB8oUj9lSUVdMXo(Lcom/android/server/am/ApplicationThreadDeferred;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ApplicationThreadDeferred;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$pzCGrkeFAdnodnDYXv9us5vUB_A(Lcom/android/server/am/ApplicationThreadDeferred;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ApplicationThreadDeferred;->lambda$new$1()V

    return-void
.end method

.method public constructor <init>(Landroid/app/IApplicationThread;)V
    .registers 5

    .line 86
    invoke-direct {p0, p1}, Landroid/app/IApplicationThread$Delegator;-><init>(Landroid/app/IApplicationThread;)V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPaused:Z

    const/4 v1, 0x4

    .line 74
    new-array v2, v1, [Lcom/android/server/am/ApplicationThreadDeferred$Operation;

    iput-object v2, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mOperations:[Lcom/android/server/am/ApplicationThreadDeferred$Operation;

    .line 78
    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPending:[Z

    .line 88
    iput-object p1, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mBase:Landroid/app/IApplicationThread;

    .line 90
    new-instance p1, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ApplicationThreadDeferred;)V

    aput-object p1, v2, v0

    .line 91
    new-instance p1, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ApplicationThreadDeferred;)V

    const/4 v0, 0x1

    aput-object p1, v2, v0

    .line 92
    new-instance p1, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ApplicationThreadDeferred;)V

    const/4 v0, 0x2

    aput-object p1, v2, v0

    .line 93
    new-instance p1, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/server/am/ApplicationThreadDeferred$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ApplicationThreadDeferred;)V

    const/4 p0, 0x3

    aput-object p1, v2, p0

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 102
    iget-object p0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mBase:Landroid/app/IApplicationThread;

    invoke-interface {p0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public clearDnsCache()V
    .registers 2

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, v0}, Lcom/android/server/am/ApplicationThreadDeferred;->execute(I)V

    return-void
.end method

.method public final execute(I)V
    .registers 4

    .line 141
    iget-object v0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPaused:Z

    if-eqz v1, :cond_10

    .line 143
    iget-object p0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPending:[Z

    const/4 v1, 0x1

    aput-boolean v1, p0, p1

    .line 144
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    goto :goto_19

    .line 146
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_e

    .line 148
    iget-object p0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mOperations:[Lcom/android/server/am/ApplicationThreadDeferred$Operation;

    aget-object p0, p0, p1

    invoke-interface {p0}, Lcom/android/server/am/ApplicationThreadDeferred$Operation;->run()V

    return-void

    .line 146
    :goto_19
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_e

    throw p0
.end method

.method public final synthetic lambda$new$0()V
    .registers 1

    .line 90
    invoke-super {p0}, Landroid/app/IApplicationThread$Delegator;->clearDnsCache()V

    return-void
.end method

.method public final synthetic lambda$new$1()V
    .registers 1

    .line 91
    invoke-super {p0}, Landroid/app/IApplicationThread$Delegator;->updateTimeZone()V

    return-void
.end method

.method public final synthetic lambda$new$2()V
    .registers 1

    .line 92
    invoke-super {p0}, Landroid/app/IApplicationThread$Delegator;->scheduleLowMemory()V

    return-void
.end method

.method public final synthetic lambda$new$3()V
    .registers 1

    .line 93
    invoke-super {p0}, Landroid/app/IApplicationThread$Delegator;->updateHttpProxy()V

    return-void
.end method

.method public onProcessPaused()V
    .registers 3

    .line 107
    iget-object v0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 108
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPaused:Z

    .line 109
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public onProcessPausedCancelled()V
    .registers 1

    .line 133
    invoke-virtual {p0}, Lcom/android/server/am/ApplicationThreadDeferred;->onProcessUnpaused()V

    return-void
.end method

.method public onProcessUnpaused()V
    .registers 6

    .line 114
    iget-object v0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 115
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPaused:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_23

    move v2, v1

    .line 117
    :goto_7
    :try_start_7
    iget-object v3, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mOperations:[Lcom/android/server/am/ApplicationThreadDeferred$Operation;

    array-length v4, v3

    if-ge v2, v4, :cond_1d

    .line 118
    iget-object v4, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPending:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_1a

    .line 119
    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/android/server/am/ApplicationThreadDeferred$Operation;->run()V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_17} :catch_2b
    .catchall {:try_start_7 .. :try_end_17} :catchall_18

    goto :goto_1a

    :catchall_18
    move-exception v2

    goto :goto_25

    :cond_1a
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 126
    :cond_1d
    :try_start_1d
    iget-object p0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPending:[Z

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    goto :goto_30

    :catchall_23
    move-exception p0

    goto :goto_32

    :goto_25
    iget-object p0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPending:[Z

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 127
    throw v2

    .line 126
    :catch_2b
    iget-object p0, p0, Lcom/android/server/am/ApplicationThreadDeferred;->mPending:[Z

    invoke-static {p0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 128
    :goto_30
    monitor-exit v0

    return-void

    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_23

    throw p0
.end method

.method public scheduleLowMemory()V
    .registers 2

    const/4 v0, 0x2

    .line 163
    invoke-virtual {p0, v0}, Lcom/android/server/am/ApplicationThreadDeferred;->execute(I)V

    return-void
.end method

.method public updateHttpProxy()V
    .registers 2

    const/4 v0, 0x3

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/server/am/ApplicationThreadDeferred;->execute(I)V

    return-void
.end method

.method public updateTimeZone()V
    .registers 2

    const/4 v0, 0x1

    .line 158
    invoke-virtual {p0, v0}, Lcom/android/server/am/ApplicationThreadDeferred;->execute(I)V

    return-void
.end method
