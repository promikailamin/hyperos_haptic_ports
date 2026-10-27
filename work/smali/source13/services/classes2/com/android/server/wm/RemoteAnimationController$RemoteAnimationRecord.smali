.class public Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;
.super Ljava/lang/Object;
.source "RemoteAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/RemoteAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoteAnimationRecord"
.end annotation


# instance fields
.field mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

.field private mMode:I

.field final mStartBounds:Landroid/graphics/Rect;

.field mTarget:Landroid/view/RemoteAnimationTarget;

.field mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

.field final mWindowContainer:Lcom/android/server/wm/WindowContainer;

.field final synthetic this$0:Lcom/android/server/wm/RemoteAnimationController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/WindowContainer;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 20
    .param p1, "this$0"    # Lcom/android/server/wm/RemoteAnimationController;
    .param p2, "windowContainer"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "endPos"    # Landroid/graphics/Point;
    .param p4, "localBounds"    # Landroid/graphics/Rect;
    .param p5, "endBounds"    # Landroid/graphics/Rect;
    .param p6, "startBounds"    # Landroid/graphics/Rect;

    .line 511
    move-object v7, p0

    move-object/from16 v8, p6

    move-object v9, p1

    iput-object v9, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    const/4 v10, 0x0

    iput-object v10, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 508
    const/4 v0, 0x2

    iput v0, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mMode:I

    .line 512
    move-object v11, p2

    iput-object v11, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    .line 513
    if-eqz v8, :cond_57

    .line 514
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v6, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mStartBounds:Landroid/graphics/Rect;

    .line 515
    new-instance v10, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;-><init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iput-object v10, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 517
    invoke-static {p1}, Lcom/android/server/wm/RemoteAnimationController;->-$$Nest$fgetmRemoteAnimationAdapter(Lcom/android/server/wm/RemoteAnimationController;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getChangeNeedsSnapshot()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 518
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v10, v0

    .line 519
    .local v10, "thumbnailLocalBounds":Landroid/graphics/Rect;
    const/4 v0, 0x0

    invoke-virtual {v10, v0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 522
    new-instance v12, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v12

    move-object v1, p1

    move-object v2, p0

    move-object v4, v10

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;-><init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iput-object v12, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mThumbnailAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 524
    .end local v10    # "thumbnailLocalBounds":Landroid/graphics/Rect;
    goto :goto_6e

    .line 526
    :cond_57
    new-instance v12, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v12

    move-object v1, p1

    move-object v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;-><init>(Lcom/android/server/wm/RemoteAnimationController;Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;Landroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iput-object v12, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    .line 528
    iput-object v10, v7, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mStartBounds:Landroid/graphics/Rect;

    .line 530
    :cond_6e
    :goto_6e
    return-void
.end method


# virtual methods
.method createRemoteAnimationTarget()Landroid/view/RemoteAnimationTarget;
    .registers 2

    .line 533
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    if-eqz v0, :cond_1a

    invoke-static {v0}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->-$$Nest$fgetmCapturedFinishCallback(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;)Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mAdapter:Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;

    iget-object v0, v0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationAdapterWrapper;->mCapturedLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_11

    goto :goto_1a

    .line 538
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mTarget:Landroid/view/RemoteAnimationTarget;

    .line 539
    return-object v0

    .line 536
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method getMode()I
    .registers 2

    .line 547
    iget v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mMode:I

    return v0
.end method

.method hasAnimatingParent()Z
    .registers 5

    .line 554
    iget-object v0, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/RemoteAnimationController;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/RemoteAnimationController;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_e
    if-ltz v0, :cond_2a

    .line 555
    iget-object v2, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v3, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->this$0:Lcom/android/server/wm/RemoteAnimationController;

    invoke-static {v3}, Lcom/android/server/wm/RemoteAnimationController;->-$$Nest$fgetmDisplayContent(Lcom/android/server/wm/RemoteAnimationController;)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 556
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 555
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 557
    return v1

    .line 554
    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 560
    .end local v0    # "i":I
    :cond_2a
    const/4 v0, 0x0

    return v0
.end method

.method setMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 543
    iput p1, p0, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->mMode:I

    .line 544
    return-void
.end method
