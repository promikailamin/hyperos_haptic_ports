.class public Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;
.super Ljava/lang/Object;
.source "AbsAppSnapshotController.java"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public mConsumer:Ljava/util/function/Consumer;

.field public mHasSet:Z

.field public mSnapshot:Landroid/window/TaskSnapshot;

.field public mSupplier:Ljava/util/function/Supplier;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/window/TaskSnapshot;
    .registers 1

    .line 617
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->handleSnapshot()V

    .line 618
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSnapshot:Landroid/window/TaskSnapshot;

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 581
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->get()Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public handleSnapshot()V
    .registers 2

    .line 602
    iget-boolean v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mHasSet:Z

    if-eqz v0, :cond_5

    goto :goto_25

    :cond_5
    const/4 v0, 0x1

    .line 605
    iput-boolean v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mHasSet:Z

    .line 606
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSnapshot:Landroid/window/TaskSnapshot;

    if-nez v0, :cond_1a

    .line 607
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TaskSnapshot;

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    iput-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 609
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mConsumer:Ljava/util/function/Consumer;

    if-eqz v0, :cond_25

    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSnapshot:Landroid/window/TaskSnapshot;

    if-eqz p0, :cond_25

    .line 610
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_25
    :goto_25
    return-void
.end method

.method public setConsumer(Ljava/util/function/Consumer;)V
    .registers 2

    .line 590
    iput-object p1, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method public setSnapshot(Landroid/window/TaskSnapshot;)V
    .registers 2

    .line 598
    iput-object p1, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSnapshot:Landroid/window/TaskSnapshot;

    return-void
.end method

.method public setSupplier(Ljava/util/function/Supplier;)V
    .registers 2

    .line 594
    iput-object p1, p0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->mSupplier:Ljava/util/function/Supplier;

    return-void
.end method
