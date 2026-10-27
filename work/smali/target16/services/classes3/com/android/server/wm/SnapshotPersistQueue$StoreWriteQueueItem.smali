.class public Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;
.super Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
.source "SnapshotPersistQueue.java"


# instance fields
.field public final mId:I

.field public mKnownLowResSnapshot:Landroid/window/TaskSnapshot;

.field public final mLowResSnapshotConsumer:Ljava/util/function/Consumer;

.field public final mSnapshot:Landroid/window/TaskSnapshot;

.field public final synthetic this$0:Lcom/android/server/wm/SnapshotPersistQueue;


# direct methods
.method public static synthetic $r8$lambda$MNPT25TkTGkcQvuGrbhrIBePnGg(Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->lambda$onQueuedLocked$0(Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmId(Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKnownLowResSnapshot(Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;)Landroid/window/TaskSnapshot;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mKnownLowResSnapshot:Landroid/window/TaskSnapshot;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSnapshot(Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;)Landroid/window/TaskSnapshot;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mremoveKnownLowResSnapshot(Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->removeKnownLowResSnapshot()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/SnapshotPersistQueue;IILandroid/window/TaskSnapshot;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;Ljava/util/function/Consumer;)V
    .registers 7

    .line 366
    iput-object p1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 367
    invoke-direct {p0, p5, p3}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;I)V

    .line 368
    iput p2, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mId:I

    const/4 p1, 0x4

    .line 369
    invoke-virtual {p4, p1}, Landroid/window/TaskSnapshot;->addReference(I)V

    .line 370
    iput-object p4, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 371
    iput-object p6, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mLowResSnapshotConsumer:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_24

    .line 549
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_e

    goto :goto_24

    .line 550
    :cond_e
    check-cast p1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

    .line 551
    iget v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mId:I

    iget v2, p1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mId:I

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

.method public isDuplicateOrExclusiveItem(Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;)Z
    .registers 6

    .line 564
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    .line 565
    check-cast p1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

    .line 566
    iget-object v0, p1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    if-eq v0, p0, :cond_2f

    .line 567
    invoke-virtual {p1}, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->onRemovedFromWriteQueue()V

    return v2

    .line 570
    :cond_14
    instance-of v0, p1, Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;

    if-eqz v0, :cond_2f

    .line 571
    check-cast p1, Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;

    .line 572
    invoke-static {p1}, Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;->-$$Nest$fgetmId(Lcom/android/server/wm/SnapshotPersistQueue$DeleteWriteQueueItem;)I

    move-result v0

    iget v3, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mId:I

    if-ne v0, v3, :cond_2f

    iget v0, p1, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    iget v3, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    if-ne v0, v3, :cond_2f

    iget-object p1, p1, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    if-ne p1, p0, :cond_2f

    return v2

    :cond_2f
    return v1
.end method

.method public final synthetic lambda$onQueuedLocked$0(Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;)Z
    .registers 3

    .line 379
    invoke-virtual {p1, p0}, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    if-eq v0, p0, :cond_15

    const/4 p0, 0x4

    .line 380
    invoke-virtual {v0, p0}, Landroid/window/TaskSnapshot;->removeReference(I)V

    .line 381
    invoke-virtual {p1}, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->removeKnownLowResSnapshot()V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public onDequeuedLocked()V
    .registers 2

    .line 392
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmStoreQueueItems(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onQueuedLocked()V
    .registers 3

    .line 378
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmStoreQueueItems(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/util/ArrayDeque;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->removeIf(Ljava/util/function/Predicate;)Z

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmStoreQueueItems(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRemovedFromWriteQueue()V
    .registers 3

    .line 557
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-static {v0}, Lcom/android/server/wm/SnapshotPersistQueue;->-$$Nest$fgetmStoreQueueItems(Lcom/android/server/wm/SnapshotPersistQueue;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 558
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/window/TaskSnapshot;->removeReference(I)V

    .line 559
    invoke-virtual {p0}, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->removeKnownLowResSnapshot()V

    return-void
.end method

.method public final removeKnownLowResSnapshot()V
    .registers 2

    .line 405
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mKnownLowResSnapshot:Landroid/window/TaskSnapshot;

    if-eqz p0, :cond_9

    const/16 v0, 0x40

    .line 406
    invoke-virtual {p0, v0}, Landroid/window/TaskSnapshot;->removeReference(I)V

    :cond_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StoreWriteQueueItem{ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mId:I

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

.method public updateKnownLowResSnapshotIfPossible(Landroid/window/TaskSnapshot;)Z
    .registers 6

    .line 396
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mKnownLowResSnapshot:Landroid/window/TaskSnapshot;

    if-nez v0, :cond_1b

    .line 397
    iput-object p1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mKnownLowResSnapshot:Landroid/window/TaskSnapshot;

    const/16 p0, 0x40

    .line 398
    invoke-virtual {p1, p0}, Landroid/window/TaskSnapshot;->addReference(I)V

    const/4 p0, 0x1

    return p0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public write()V
    .registers 7

    const-wide/16 v0, 0x20

    .line 413
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StoreWriteQueueItem#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 416
    :cond_1e
    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    iget v3, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->createDirectory(I)Z

    move-result v2

    if-nez v2, :cond_46

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create snapshot directory for user dir="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    iget v4, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    .line 418
    invoke-virtual {v3, v4}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 417
    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_46
    invoke-virtual {p0}, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->writeProto()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 424
    invoke-virtual {p0}, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->writeBuffer()Z

    move-result v4

    if-nez v4, :cond_53

    goto :goto_54

    :cond_53
    move v3, v2

    :goto_54
    if-eqz v3, :cond_61

    .line 428
    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    iget v3, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mId:I

    iget v4, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    iget-object v5, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/SnapshotPersistQueue;->deleteSnapshot(IILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    .line 430
    :cond_61
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/window/TaskSnapshot;->removeReference(I)V

    .line 431
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public writeBuffer()Z
    .registers 12

    .line 473
    const-string v0, " for persisting."

    const-string v1, "Unable to open "

    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-static {v2}, Lcom/android/server/wm/AbsAppSnapshotController;->isInvalidHardwareBuffer(Landroid/window/TaskSnapshot;)Z

    move-result v2

    const-string v3, "WindowManager"

    const/4 v4, 0x0

    if-eqz v2, :cond_26

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid task snapshot hw buffer, taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 478
    :cond_26
    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-static {v2}, Lcom/android/server/wm/TaskSnapshotConvertUtil;->copySWBitmap(Landroid/window/TaskSnapshot;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2f

    return v4

    .line 482
    :cond_2f
    iget-object v5, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    iget v6, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mId:I

    iget v7, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getHighResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v5

    .line 483
    :try_start_39
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3e} :catch_c5

    .line 484
    :try_start_3e
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x5f

    invoke-virtual {v2, v7, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_c7

    .line 486
    :try_start_45
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_c5

    .line 491
    iget-object v5, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-virtual {v5}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->enableLowResSnapshots()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_55

    .line 492
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    return v6

    .line 499
    :cond_55
    iget-object v5, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v5}, Landroid/window/TaskSnapshot;->getHardwareBufferWidth()I

    move-result v5

    .line 500
    iget-object v9, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v9}, Landroid/window/TaskSnapshot;->getHardwareBufferHeight()I

    move-result v9

    int-to-float v5, v5

    .line 506
    iget-object v10, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 507
    invoke-virtual {v10}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->lowResScaleFactor()F

    move-result v10

    mul-float/2addr v5, v10

    float-to-int v5, v5

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 508
    invoke-virtual {v10}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->lowResScaleFactor()F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 506
    invoke-static {v2, v5, v9, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 510
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 512
    iget-object v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    iget v9, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mId:I

    iget v10, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    invoke-virtual {v2, v9, v10}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getLowResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v2

    .line 513
    :try_start_84
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_89} :catch_a3

    .line 514
    :try_start_89
    invoke-virtual {v5, v7, v8, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_a5

    .line 515
    :try_start_8c
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_a3

    .line 519
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mLowResSnapshotConsumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_9c

    .line 520
    new-instance v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem$1;

    invoke-direct {v1, p0, v5}, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem$1;-><init>(Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;Landroid/graphics/Bitmap;)V

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_a2

    .line 540
    :cond_9c
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 541
    invoke-virtual {p0}, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->removeKnownLowResSnapshot()V

    :goto_a2
    return v6

    :catch_a3
    move-exception p0

    goto :goto_af

    :catchall_a5
    move-exception p0

    .line 513
    :try_start_a6
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_a9
    .catchall {:try_start_a6 .. :try_end_a9} :catchall_aa

    goto :goto_ae

    :catchall_aa
    move-exception v5

    :try_start_ab
    invoke-virtual {p0, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_ae
    throw p0
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_af} :catch_a3

    .line 516
    :goto_af
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4

    :catch_c5
    move-exception p0

    goto :goto_d1

    :catchall_c7
    move-exception p0

    .line 483
    :try_start_c8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_cc

    goto :goto_d0

    :catchall_cc
    move-exception v2

    :try_start_cd
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d0
    throw p0
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d1} :catch_c5

    .line 487
    :goto_d1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method public writeProto()Z
    .registers 4

    .line 435
    new-instance v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    invoke-direct {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;-><init>()V

    .line 436
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getOrientation()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    .line 437
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getRotation()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->rotation:I

    .line 438
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskWidth:I

    .line 439
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskHeight:I

    .line 440
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    .line 441
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    .line 442
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    .line 443
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    .line 444
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetLeft:I

    .line 445
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetTop:I

    .line 446
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetRight:I

    .line 447
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetBottom:I

    .line 448
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->isRealSnapshot()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    .line 449
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getWindowingMode()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    .line 450
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getAppearance()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->appearance:I

    .line 451
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->isTranslucent()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    .line 452
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getTopActivityComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->topActivityComponent:Ljava/lang/String;

    .line 453
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getUiMode()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->uiMode:I

    .line 454
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->id:J

    .line 455
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getDensityDpi()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->densityDpi:I

    .line 456
    invoke-static {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 457
    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    iget v2, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mId:I

    iget p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    invoke-virtual {v1, v2, p0}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getProtoFile(II)Ljava/io/File;

    move-result-object p0

    .line 458
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 461
    :try_start_d0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d4} :catch_de

    .line 462
    :try_start_d4
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 463
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_da} :catch_dc

    const/4 p0, 0x1

    return p0

    :catch_dc
    move-exception v0

    goto :goto_e0

    :catch_de
    move-exception v0

    const/4 v2, 0x0

    .line 465
    :goto_e0
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " for persisting. "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
