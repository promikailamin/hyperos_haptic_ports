.class final Lcom/android/server/appop/AppOpsService$UidState;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UidState"
.end annotation


# instance fields
.field public appWidgetVisible:Z

.field public capability:I

.field public foregroundOps:Landroid/util/SparseBooleanArray;

.field public hasForegroundWatchers:Z

.field public opModes:Landroid/util/SparseIntArray;

.field public pendingAppWidgetVisible:Z

.field public pendingCapability:I

.field public pendingState:I

.field public pendingStateCommitTime:J

.field public pkgOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/appop/AppOpsService$Ops;",
            ">;"
        }
    .end annotation
.end field

.field public state:I

.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/appop/AppOpsService;
    .param p2, "uid"    # I

    .line 572
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    .line 558
    iput v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    .line 573
    iput p2, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 574
    return-void
.end method

.method private evalForegroundWatchers(ILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V
    .registers 9
    .param p1, "op"    # I
    .param p3, "which"    # Landroid/util/SparseBooleanArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;>;",
            "Landroid/util/SparseBooleanArray;",
            ")V"
        }
    .end annotation

    .line 638
    .local p2, "watchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    .line 639
    .local v0, "curValue":Z
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 640
    .local v1, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-eqz v1, :cond_28

    .line 641
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "cbi":I
    :goto_13
    if-nez v0, :cond_28

    if-ltz v2, :cond_28

    .line 642
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/AppOpsService$ModeCallback;

    iget v4, v4, Lcom/android/server/appop/AppOpsService$ModeCallback;->mFlags:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_25

    .line 644
    iput-boolean v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->hasForegroundWatchers:Z

    .line 645
    const/4 v0, 0x1

    .line 641
    :cond_25
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 649
    .end local v2    # "cbi":I
    :cond_28
    invoke-virtual {p3, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 650
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    .line 578
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    .line 579
    return-void
.end method

.method public evalForegroundOps(Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/appop/AppOpsService$ModeCallback;",
            ">;>;)V"
        }
    .end annotation

    .line 653
    .local p1, "watchers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;>;"
    const/4 v0, 0x0

    .line 654
    .local v0, "which":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/appop/AppOpsService$UidState;->hasForegroundWatchers:Z

    .line 655
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    if-eqz v1, :cond_2d

    .line 656
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_f
    if-ltz v1, :cond_2d

    .line 657
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-ne v3, v2, :cond_2a

    .line 658
    if-nez v0, :cond_21

    .line 659
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v0, v3

    .line 661
    :cond_21
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-direct {p0, v3, p1, v0}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundWatchers(ILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 656
    :cond_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 665
    .end local v1    # "i":I
    :cond_2d
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v1, :cond_6a

    .line 666
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_37
    if-ltz v1, :cond_6a

    .line 667
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$Ops;

    .line 668
    .local v3, "ops":Lcom/android/server/appop/AppOpsService$Ops;
    invoke-virtual {v3}, Lcom/android/server/appop/AppOpsService$Ops;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_47
    if-ltz v4, :cond_67

    .line 669
    invoke-virtual {v3, v4}, Lcom/android/server/appop/AppOpsService$Ops;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/AppOpsService$Op;

    invoke-static {v5}, Lcom/android/server/appop/AppOpsService$Op;->-$$Nest$fgetmode(Lcom/android/server/appop/AppOpsService$Op;)I

    move-result v5

    if-ne v5, v2, :cond_64

    .line 670
    if-nez v0, :cond_5d

    .line 671
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object v0, v5

    .line 673
    :cond_5d
    invoke-virtual {v3, v4}, Lcom/android/server/appop/AppOpsService$Ops;->keyAt(I)I

    move-result v5

    invoke-direct {p0, v5, p1, v0}, Lcom/android/server/appop/AppOpsService$UidState;->evalForegroundWatchers(ILandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    .line 668
    :cond_64
    add-int/lit8 v4, v4, -0x1

    goto :goto_47

    .line 666
    .end local v3    # "ops":Lcom/android/server/appop/AppOpsService$Ops;
    .end local v4    # "j":I
    :cond_67
    add-int/lit8 v1, v1, -0x1

    goto :goto_37

    .line 678
    .end local v1    # "i":I
    :cond_6a
    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->foregroundOps:Landroid/util/SparseBooleanArray;

    .line 679
    return-void
.end method

.method evalMode(II)I
    .registers 8
    .param p1, "op"    # I
    .param p2, "mode"    # I

    .line 589
    const/4 v0, 0x4

    if-ne p2, v0, :cond_60

    .line 590
    iget-boolean v1, p0, Lcom/android/server/appop/AppOpsService$UidState;->appWidgetVisible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 591
    return v2

    .line 592
    :cond_9
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/appop/AppOpsService;)Landroid/app/ActivityManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/appop/AppOpsService;)Landroid/app/ActivityManagerInternal;

    move-result-object v1

    iget v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 593
    invoke-virtual {v1, v3}, Landroid/app/ActivityManagerInternal;->isPendingTopUid(I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 594
    return v2

    .line 595
    :cond_20
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/appop/AppOpsService;)Landroid/app/ActivityManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$UidState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/appop/AppOpsService;)Landroid/app/ActivityManagerInternal;

    move-result-object v1

    iget v3, p0, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    .line 596
    invoke-virtual {v1, v3}, Landroid/app/ActivityManagerInternal;->isTempAllowlistedForFgsWhileInUse(I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 597
    return v2

    .line 598
    :cond_37
    iget v1, p0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/16 v3, 0xc8

    if-gt v1, v3, :cond_3e

    .line 600
    return v2

    .line 601
    :cond_3e
    invoke-static {p1}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    move-result v3

    const/4 v4, 0x1

    if-gt v1, v3, :cond_5f

    .line 603
    sparse-switch p1, :sswitch_data_62

    .line 626
    return v2

    .line 620
    :sswitch_49
    iget v1, p0, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4f

    .line 621
    return v2

    .line 623
    :cond_4f
    return v4

    .line 614
    :sswitch_50
    iget v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_57

    .line 615
    return v2

    .line 617
    :cond_57
    return v4

    .line 608
    :sswitch_58
    iget v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->capability:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_5e

    .line 609
    return v2

    .line 611
    :cond_5e
    return v4

    .line 630
    :cond_5f
    return v4

    .line 633
    :cond_60
    return p2

    nop

    :sswitch_data_62
    .sparse-switch
        0x0 -> :sswitch_58
        0x1 -> :sswitch_58
        0x1a -> :sswitch_50
        0x1b -> :sswitch_49
        0x29 -> :sswitch_58
        0x2a -> :sswitch_58
    .end sparse-switch
.end method

.method public isDefault()Z
    .registers 3

    .line 582
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_a
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_14

    .line 583
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-gtz v0, :cond_20

    :cond_14
    iget v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->state:I

    const/16 v1, 0x2bc

    if-ne v0, v1, :cond_20

    iget v0, p0, Lcom/android/server/appop/AppOpsService$UidState;->pendingState:I

    if-ne v0, v1, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 582
    :goto_21
    return v0
.end method
