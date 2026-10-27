.class public Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem$1;
.super Ljava/lang/Object;
.source "SnapshotPersistQueue.java"

# interfaces
.implements Lcom/android/server/wm/BaseAppSnapshotPersister$LowResSnapshotSupplier;


# instance fields
.field public final synthetic this$1:Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

.field public final synthetic val$lowResBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;Landroid/graphics/Bitmap;)V
    .registers 3

    .line 520
    iput-object p1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem$1;->this$1:Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

    iput-object p2, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem$1;->val$lowResBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abort()V
    .registers 2

    .line 535
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem$1;->val$lowResBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 536
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem$1;->this$1:Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

    invoke-static {p0}, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->-$$Nest$mremoveKnownLowResSnapshot(Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;)V

    return-void
.end method

.method public getLowResSnapshot()Landroid/window/TaskSnapshot;
    .registers 3

    .line 523
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem$1;->this$1:Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

    invoke-static {v0}, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->-$$Nest$fgetmKnownLowResSnapshot(Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;)Landroid/window/TaskSnapshot;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 524
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem$1;->val$lowResBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 525
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem$1;->this$1:Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

    invoke-static {p0}, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->-$$Nest$fgetmKnownLowResSnapshot(Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;)Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0

    .line 527
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem$1;->this$1:Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

    invoke-static {v0}, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->-$$Nest$fgetmSnapshot(Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;)Landroid/window/TaskSnapshot;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem$1;->val$lowResBitmap:Landroid/graphics/Bitmap;

    .line 528
    invoke-static {v0, v1}, Lcom/android/server/wm/TaskSnapshotConvertUtil;->convertLowResSnapshot(Landroid/window/TaskSnapshot;Landroid/graphics/Bitmap;)Landroid/window/TaskSnapshot;

    move-result-object v0

    .line 529
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem$1;->val$lowResBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method
