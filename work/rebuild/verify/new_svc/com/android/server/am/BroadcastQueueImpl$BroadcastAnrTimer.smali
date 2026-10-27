.class public Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;
.super Lcom/android/server/utils/AnrTimer;
.source "BroadcastQueueImpl.java"


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastQueueImpl;Landroid/os/Handler;)V
    .registers 5

    .line 1314
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/server/utils/AnrTimer$Args;

    invoke-direct {p1}, Lcom/android/server/utils/AnrTimer$Args;-><init>()V

    const/4 v0, 0x1

    .line 1317
    invoke-virtual {p1, v0}, Lcom/android/server/utils/AnrTimer$Args;->extend(Z)Lcom/android/server/utils/AnrTimer$Args;

    move-result-object p1

    const/4 v0, 0x0

    .line 1318
    invoke-virtual {p1, v0}, Lcom/android/server/utils/AnrTimer$Args;->longMethodTracing(Z)Lcom/android/server/utils/AnrTimer$Args;

    move-result-object p1

    const/4 v0, 0x2

    .line 1314
    const-string v1, "BROADCAST_TIMEOUT"

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/android/server/utils/AnrTimer;-><init>(Landroid/os/Handler;ILjava/lang/String;Lcom/android/server/utils/AnrTimer$Args;)V

    return-void
.end method


# virtual methods
.method public getPid(Lcom/android/server/am/BroadcastProcessQueue;)I
    .registers 2

    .line 1323
    iget-object p0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getPid(Ljava/lang/Object;)I
    .registers 2

    .line 1312
    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;->getPid(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result p0

    return p0
.end method

.method public getUid(Lcom/android/server/am/BroadcastProcessQueue;)I
    .registers 2

    .line 1328
    iget-object p0, p1, Lcom/android/server/am/BroadcastProcessQueue;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz p0, :cond_7

    iget p0, p0, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getUid(Ljava/lang/Object;)I
    .registers 2

    .line 1312
    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    invoke-virtual {p0, p1}, Lcom/android/server/am/BroadcastQueueImpl$BroadcastAnrTimer;->getUid(Lcom/android/server/am/BroadcastProcessQueue;)I

    move-result p0

    return p0
.end method
