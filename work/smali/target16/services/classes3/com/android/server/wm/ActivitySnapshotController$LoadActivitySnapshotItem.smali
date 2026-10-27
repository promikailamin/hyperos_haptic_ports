.class public Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;
.super Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
.source "ActivitySnapshotController.java"


# instance fields
.field public final mActivities:[Lcom/android/server/wm/ActivityRecord;

.field public final mCode:I

.field public final synthetic this$0:Lcom/android/server/wm/ActivitySnapshotController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivitySnapshotController;[Lcom/android/server/wm/ActivityRecord;IILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V
    .registers 6

    .line 261
    iput-object p1, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->this$0:Lcom/android/server/wm/ActivitySnapshotController;

    .line 262
    invoke-direct {p0, p5, p4}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;I)V

    .line 263
    iput-object p2, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mActivities:[Lcom/android/server/wm/ActivityRecord;

    .line 264
    iput p3, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_24

    .line 293
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_e

    goto :goto_24

    .line 294
    :cond_e
    check-cast p1, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;

    .line 295
    iget v1, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mCode:I

    iget v2, p1, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mCode:I

    if-ne v1, v2, :cond_24

    iget v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    iget v2, p1, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    if-ne v1, v2, :cond_24

    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    iget-object p1, p1, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    if-ne p0, p1, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    :goto_24
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadActivitySnapshotItem{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", UserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write()V
    .registers 10

    const-wide/16 v0, 0x20

    .line 270
    :try_start_2
    const-string v2, "load_activity_snapshot"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 272
    iget-object v2, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->this$0:Lcom/android/server/wm/ActivitySnapshotController;

    invoke-static {v2}, Lcom/android/server/wm/ActivitySnapshotController;->-$$Nest$fgetmSnapshotLoader(Lcom/android/server/wm/ActivitySnapshotController;)Lcom/android/server/wm/AppSnapshotLoader;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mCode:I

    iget v4, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/AppSnapshotLoader;->loadTask(IIZ)Landroid/window/TaskSnapshot;

    move-result-object v2
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_52

    if-nez v2, :cond_1c

    .line 287
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 277
    :cond_1c
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->this$0:Lcom/android/server/wm/ActivitySnapshotController;

    iget-object v3, v3, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_52

    .line 279
    :try_start_25
    iget-object v4, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->this$0:Lcom/android/server/wm/ActivitySnapshotController;

    iget-object v6, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mActivities:[Lcom/android/server/wm/ActivityRecord;

    aget-object v6, v6, v5

    invoke-virtual {v4, v6}, Lcom/android/server/wm/ActivitySnapshotController;->hasRecord(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 280
    monitor-exit v3
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_36

    .line 287
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_36
    move-exception p0

    goto :goto_50

    .line 282
    :cond_38
    :try_start_38
    iget-object v4, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->mActivities:[Lcom/android/server/wm/ActivityRecord;

    array-length v6, v4

    :goto_3b
    if-ge v5, v6, :cond_4b

    aget-object v7, v4, v5

    .line 283
    iget-object v8, p0, Lcom/android/server/wm/ActivitySnapshotController$LoadActivitySnapshotItem;->this$0:Lcom/android/server/wm/ActivitySnapshotController;

    iget-object v8, v8, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v8, Lcom/android/server/wm/ActivitySnapshotCache;

    invoke-virtual {v8, v7, v2}, Lcom/android/server/wm/ActivitySnapshotCache;->putSnapshot(Lcom/android/server/wm/ActivityRecord;Landroid/window/TaskSnapshot;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 285
    :cond_4b
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_38 .. :try_end_4c} :catchall_36

    .line 287
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 285
    :goto_50
    :try_start_50
    monitor-exit v3
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_36

    :try_start_51
    throw p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception p0

    .line 287
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 288
    throw p0
.end method
