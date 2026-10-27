.class public Lcom/android/server/wm/InsetsStateController;
.super Ljava/lang/Object;
.source "InsetsStateController.java"


# instance fields
.field public final mControlTargetProvidersMap:Landroid/util/ArrayMap;

.field public final mDispatchInsetsChanged:Ljava/util/function/Consumer;

.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public final mEmptyImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field public mForcedConsumingTypes:I

.field public final mIdControlTargetMap:Landroid/util/SparseArray;

.field public final mIdFakeControlTargetMap:Landroid/util/SparseArray;

.field public final mLastState:Landroid/view/InsetsState;

.field public final mPendingTargetProvidersMap:Landroid/util/ArrayMap;

.field public final mProviders:Landroid/util/SparseArray;

.field public final mState:Landroid/view/InsetsState;

.field public final mSurfaceTransactionIds:Landroid/util/SparseLongArray;


# direct methods
.method public static synthetic $r8$lambda$9P0lIIOEjVyKR81E86PJUW6hJRs(Lcom/android/server/wm/InsetsControlTarget;)Ljava/util/ArrayList;
    .registers 1

    .line 422
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static synthetic $r8$lambda$ByGwbLxcGKvL9evJ-S2rqZyHoIw(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 81
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyToDispatchInsetsState()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 82
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->notifyInsetsChanged()V

    :cond_9
    return-void
.end method

.method public static synthetic $r8$lambda$TzYyjwJniEoBgyDjbMpQVgjWyYo(Lcom/android/server/wm/InsetsControlTarget;)Ljava/util/ArrayList;
    .registers 1

    .line 410
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static synthetic $r8$lambda$a0HV9ad2Wd_wQT3ba_TprluaiHw(Lcom/android/server/wm/InsetsStateController;ILandroid/util/SparseLongArray;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/InsetsStateController;->lambda$notifyPendingInsetsControlChanged$4(ILandroid/util/SparseLongArray;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tyu8cagOKV5anXv5qidgt8V37vE(Lcom/android/server/wm/InsetsStateController;Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/InsetsStateController;->lambda$onDisplayFramesUpdated$1(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InsetsStateController;)Lcom/android/server/wm/DisplayContent;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    .line 60
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    .line 66
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mSurfaceTransactionIds:Landroid/util/SparseLongArray;

    .line 68
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    .line 71
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingTargetProvidersMap:Landroid/util/ArrayMap;

    .line 74
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mIdControlTargetMap:Landroid/util/SparseArray;

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mIdFakeControlTargetMap:Landroid/util/SparseArray;

    .line 79
    new-instance v0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda3;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    .line 90
    new-instance v0, Lcom/android/server/wm/InsetsStateController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/InsetsStateController$1;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mEmptyImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 111
    iput-object p1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public final addToControlMaps(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V
    .registers 6

    .line 409
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 411
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_20

    .line 413
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mIdFakeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/InsetsSource;->getId()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    .line 415
    :cond_20
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mIdControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/InsetsSource;->getId()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final addToPendingControlMaps(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;)V
    .registers 4

    .line 421
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingTargetProvidersMap:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;-><init>()V

    .line 422
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 423
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 11

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WindowInsetsStateController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 530
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v1, v0, p2}, Landroid/view/InsetsState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Control map:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_46
    if-ltz v1, :cond_ae

    .line 533
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InsetsControlTarget;

    .line 534
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 535
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 536
    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 538
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_78
    if-ltz v4, :cond_ab

    .line 539
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v5, :cond_a8

    .line 541
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v5}, Lcom/android/server/wm/InsetsSourceProvider;->getFakeControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v6

    if-ne v2, v6, :cond_a1

    .line 543
    const-string v6, "(fake) "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 545
    :cond_a1
    invoke-virtual {v5, v2}, Lcom/android/server/wm/InsetsSourceProvider;->getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_a8
    add-int/lit8 v4, v4, -0x1

    goto :goto_78

    :cond_ab
    add-int/lit8 v1, v1, -0x1

    goto :goto_46

    .line 549
    :cond_ae
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_ca

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  none"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 552
    :cond_ca
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "InsetsSourceProviders:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_e6
    if-ltz v1, :cond_105

    .line 554
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InsetsSourceProvider;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/InsetsSourceProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_e6

    .line 556
    :cond_105
    iget p1, p0, Lcom/android/server/wm/InsetsStateController;->mForcedConsumingTypes:I

    if-eqz p1, :cond_126

    .line 557
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mForcedConsumingTypes="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/InsetsStateController;->mForcedConsumingTypes:I

    .line 558
    invoke-static {p0}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 557
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_126
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;I)V
    .registers 7

    .line 563
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_31

    .line 564
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    .line 566
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    if-ne v2, v3, :cond_26

    const-wide v2, 0x10b0000001fL

    goto :goto_2b

    :cond_26
    const-wide v2, 0x20b00000023L

    .line 565
    :goto_2b
    invoke-virtual {v1, p1, v2, v3, p2}, Lcom/android/server/wm/InsetsSourceProvider;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_31
    return-void
.end method

.method public getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;
    .registers 6

    .line 121
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 125
    :cond_c
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 126
    new-array v1, v0, [Landroid/view/InsetsSourceControl;

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v0, :cond_24

    .line 128
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InsetsSourceProvider;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/InsetsSourceProvider;->getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_24
    return-object v1
.end method

.method public getFakeControllingTypes(Lcom/android/server/wm/InsetsTarget;)I
    .registers 6

    .line 290
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_9
    if-ltz v0, :cond_25

    .line 291
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InsetsSourceProvider;

    .line 292
    invoke-virtual {v2}, Lcom/android/server/wm/InsetsSourceProvider;->getFakeControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v3

    if-ne p1, v3, :cond_22

    .line 294
    invoke-virtual {v2}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    or-int/2addr v1, v2

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_25
    return v1
.end method

.method public getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;
    .registers 3

    .line 162
    sget v0, Landroid/view/InsetsSource;->ID_IME:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/InsetsStateController;->getOrCreateSourceProvider(II)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ImeInsetsSourceProvider;

    return-object p0
.end method

.method public getOrCreateSourceProvider(II)Lcom/android/server/wm/InsetsSourceProvider;
    .registers 6

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsSourceProvider;

    if-eqz v0, :cond_b

    return-object v0

    .line 147
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v0, p1, p2}, Landroid/view/InsetsState;->getOrCreateSource(II)Landroid/view/InsetsSource;

    move-result-object v0

    .line 148
    sget v1, Landroid/view/InsetsSource;->ID_IME:I

    if-ne p1, v1, :cond_1d

    .line 149
    new-instance v1, Lcom/android/server/wm/ImeInsetsSourceProvider;

    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/server/wm/ImeInsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    goto :goto_24

    .line 150
    :cond_1d
    new-instance v1, Lcom/android/server/wm/InsetsSourceProvider;

    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v1, v0, p0, v2}, Lcom/android/server/wm/InsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    .line 152
    :goto_24
    iget v0, p0, Lcom/android/server/wm/InsetsStateController;->mForcedConsumingTypes:I

    and-int/2addr p2, v0

    const/4 v0, 0x4

    if-eqz p2, :cond_2c

    move p2, v0

    goto :goto_2d

    :cond_2c
    const/4 p2, 0x0

    .line 151
    :goto_2d
    invoke-virtual {v1, p2, v0}, Lcom/android/server/wm/InsetsSourceProvider;->setFlags(II)Z

    .line 156
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method public getRawInsetsState()Landroid/view/InsetsState;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    return-object p0
.end method

.method public getSourceProviders()Landroid/util/SparseArray;
    .registers 1

    .line 135
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    return-object p0
.end method

.method public hasPendingControls(Lcom/android/server/wm/InsetsControlTarget;)Z
    .registers 2

    .line 524
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$notifyPendingInsetsControlChanged$4(ILandroid/util/SparseLongArray;)V
    .registers 10

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_1c

    .line 462
    invoke-virtual {p2, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    .line 463
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    if-nez v1, :cond_12

    goto :goto_19

    .line 467
    :cond_12
    invoke-virtual {p2, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/InsetsSourceProvider;->onSurfaceTransactionCommitted(J)V

    :goto_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 469
    :cond_1c
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 470
    iget-object p2, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p2

    .line 471
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingTargetProvidersMap:Landroid/util/ArrayMap;

    .line 473
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2f
    if-ltz v1, :cond_77

    .line 474
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InsetsControlTarget;

    .line 475
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 476
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_43
    if-ltz v4, :cond_5d

    .line 477
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/InsetsSourceProvider;

    .line 478
    invoke-virtual {v5}, Lcom/android/server/wm/InsetsSourceProvider;->isLeashInitialized()Z

    move-result v6

    if-nez v6, :cond_57

    invoke-virtual {v5}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v5

    if-eq v5, v2, :cond_5a

    .line 480
    :cond_57
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5a
    add-int/lit8 v4, v4, -0x1

    goto :goto_43

    .line 483
    :cond_5d
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_74

    .line 484
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 487
    invoke-interface {v2, p2}, Lcom/android/server/wm/InsetsControlTarget;->notifyInsetsControlChanged(I)V

    .line 488
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 490
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_74
    add-int/lit8 v1, v1, -0x1

    goto :goto_2f

    .line 498
    :cond_77
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_7d
    if-ltz p2, :cond_90

    .line 501
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsTarget;

    .line 502
    invoke-static {}, Landroid/view/WindowInsets$Type;->all()I

    move-result v1

    const/4 v2, 0x0

    .line 501
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/InsetsStateController;->onRequestedVisibleTypesChanged(Lcom/android/server/wm/InsetsTarget;ILandroid/view/inputmethod/ImeTracker$Token;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_7d

    .line 504
    :cond_90
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public final synthetic lambda$onDisplayFramesUpdated$1(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 251
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAboveInsetsState:Landroid/view/InsetsState;

    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;I)V

    .line 252
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public notifyControlChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;)V
    .registers 3

    .line 428
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/InsetsStateController;->addToPendingControlMaps(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;)V

    .line 429
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    return-void
.end method

.method public notifyControlRevoked(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;)V
    .registers 4

    const/4 v0, 0x0

    .line 346
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/InsetsStateController;->removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V

    .line 347
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/InsetsStateController;->addToPendingControlMaps(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;)V

    .line 348
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    return-void
.end method

.method public notifyControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;)V
    .registers 4

    const/4 v0, 0x0

    .line 340
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/InsetsControlTarget;Z)V

    .line 341
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    return-void
.end method

.method public notifyInsetsChanged()V
    .registers 2

    .line 509
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayContent;->notifyInsetsChanged(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public notifyInsetsChanged(Landroid/util/ArraySet;)V
    .registers 5

    .line 513
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_16

    .line 514
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final notifyPendingInsetsControlChanged()V
    .registers 7

    .line 451
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 454
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mSurfaceTransactionIds:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    .line 455
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1, v0}, Landroid/util/SparseLongArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v0, :cond_29

    .line 457
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mSurfaceTransactionIds:Landroid/util/SparseLongArray;

    .line 458
    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mSurfaceTransactionIds:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    .line 457
    invoke-virtual {v1, v3, v4, v5}, Landroid/util/SparseLongArray;->append(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 460
    :cond_29
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    new-instance v3, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/InsetsStateController;ILandroid/util/SparseLongArray;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifySurfaceTransactionReady(Lcom/android/server/wm/InsetsSourceProvider;JZ)V
    .registers 5

    if-eqz p4, :cond_10

    .line 435
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mSurfaceTransactionIds:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getId()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    return-void

    .line 437
    :cond_10
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mSurfaceTransactionIds:Landroid/util/SparseLongArray;

    invoke-virtual {p1}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    return-void
.end method

.method public onAnimatingTypesChanged(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 7

    .line 443
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_29

    .line 444
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/InsetsSourceProvider;

    .line 445
    invoke-virtual {v1}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/InsetsSource;->getType()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    if-ne v2, v3, :cond_22

    move-object v2, p2

    goto :goto_23

    :cond_22
    const/4 v2, 0x0

    .line 446
    :goto_23
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/InsetsSourceProvider;->onAnimatingTypesChanged(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_29
    return-void
.end method

.method public onBarControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 11

    .line 324
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_37

    .line 325
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InsetsSourceProvider;

    .line 326
    invoke-virtual {v2}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/InsetsSource;->getType()I

    move-result v3

    .line 327
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    const/4 v5, 0x0

    if-ne v3, v4, :cond_28

    .line 328
    invoke-virtual {p0, v2, p1, v5}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/InsetsControlTarget;Z)V

    .line 329
    invoke-virtual {p0, v2, p2, v1}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/InsetsControlTarget;Z)V

    goto :goto_34

    .line 330
    :cond_28
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v4

    if-ne v3, v4, :cond_34

    .line 331
    invoke-virtual {p0, v2, p3, v5}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/InsetsControlTarget;Z)V

    .line 332
    invoke-virtual {p0, v2, p4, v1}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/InsetsControlTarget;Z)V

    :cond_34
    :goto_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 335
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    return-void
.end method

.method public final onControlTargetChanged(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/InsetsControlTarget;Z)V
    .registers 7

    if-eqz p3, :cond_13

    .line 354
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mIdFakeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsControlTarget;

    goto :goto_23

    .line 355
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mIdControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsControlTarget;

    :goto_23
    if-ne p2, v0, :cond_26

    goto :goto_4f

    .line 359
    :cond_26
    invoke-virtual {p1}, Lcom/android/server/wm/InsetsSourceProvider;->isControllable()Z

    move-result v1

    if-nez v1, :cond_2d

    goto :goto_4f

    :cond_2d
    if-eqz p3, :cond_33

    .line 368
    invoke-virtual {p1, p2}, Lcom/android/server/wm/InsetsSourceProvider;->updateFakeControlTarget(Lcom/android/server/wm/InsetsControlTarget;)V

    goto :goto_3f

    :cond_33
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 371
    invoke-virtual {p1, p2, v1, v2}, Lcom/android/server/wm/InsetsSourceProvider;->updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 375
    invoke-virtual {p1}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p2

    if-ne p2, v0, :cond_3f

    goto :goto_4f

    :cond_3f
    :goto_3f
    if-eqz v0, :cond_47

    .line 381
    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/wm/InsetsStateController;->removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V

    .line 382
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/InsetsStateController;->addToPendingControlMaps(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;)V

    :cond_47
    if-eqz p2, :cond_4f

    .line 385
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wm/InsetsStateController;->addToControlMaps(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V

    .line 386
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/InsetsStateController;->addToPendingControlMaps(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;)V

    :cond_4f
    :goto_4f
    return-void
.end method

.method public onDisplayFramesUpdated(Z)V
    .registers 6

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v2, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/InsetsStateController;Ljava/util/ArrayList;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    if-eqz p1, :cond_27

    .line 255
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v3

    :goto_17
    if-ltz p1, :cond_27

    .line 256
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_17

    :cond_27
    return-void
.end method

.method public onImeControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 6

    if-eqz p1, :cond_3

    goto :goto_5

    .line 304
    :cond_3
    iget-object p1, p0, Lcom/android/server/wm/InsetsStateController;->mEmptyImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 305
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/InsetsStateController;->onControlTargetChanged(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/InsetsControlTarget;Z)V

    .line 306
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 v2, 0x1

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_30

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    :cond_1e
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0x5cc2f3394287cc11L    # -6.098552492072722E-139

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v2, v3, v1, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 309
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    return-void
.end method

.method public onPostLayout()V
    .registers 7

    .line 208
    const-string v0, "ISC.onPostLayout"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    :goto_f
    if-ltz v0, :cond_1f

    .line 210
    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/InsetsSourceProvider;

    invoke-virtual {v4}, Lcom/android/server/wm/InsetsSourceProvider;->onPostLayout()Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 212
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v5, v3}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;ZZZ)Z

    move-result v0

    if-nez v0, :cond_34

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v0, v4, v3}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 218
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    .line 220
    :cond_34
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public onRequestedVisibleTypesChanged(Lcom/android/server/wm/InsetsTarget;ILandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 11

    .line 264
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ltz v0, :cond_4d

    .line 265
    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/InsetsSourceProvider;

    .line 266
    invoke-virtual {v4}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/InsetsSource;->getType()I

    move-result v5

    .line 267
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v6

    if-ne v5, v6, :cond_24

    move v6, v1

    goto :goto_25

    :cond_24
    move v6, v2

    :goto_25
    and-int/2addr v5, p2

    if-eqz v5, :cond_3f

    if-eqz v6, :cond_2c

    move-object v5, p3

    goto :goto_2d

    :cond_2c
    const/4 v5, 0x0

    .line 269
    :goto_2d
    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/InsetsSourceProvider;->updateClientVisibility(Lcom/android/server/wm/InsetsTarget;Landroid/view/inputmethod/ImeTracker$Token;)Z

    move-result v5

    if-nez v5, :cond_3c

    .line 273
    invoke-virtual {v4}, Lcom/android/server/wm/InsetsSourceProvider;->getFakeControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v4

    if-ne p1, v4, :cond_3a

    goto :goto_3c

    :cond_3a
    move v4, v2

    goto :goto_3d

    :cond_3c
    :goto_3c
    move v4, v1

    :goto_3d
    or-int/2addr v3, v4

    goto :goto_4a

    :cond_3f
    if-eqz v6, :cond_4a

    .line 275
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    const/16 v5, 0x31

    invoke-interface {v4, p3, v5}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_4a
    :goto_4a
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_4d
    if-eqz v3, :cond_60

    .line 280
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    .line 281
    iget-object p1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 283
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    :cond_60
    return-void
.end method

.method public final removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;Z)V
    .registers 5

    .line 392
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_b

    return-void

    .line 396
    :cond_b
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 397
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 398
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetProvidersMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    if-eqz p3, :cond_29

    .line 401
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mIdFakeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void

    .line 403
    :cond_29
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mIdControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public removeSourceProvider(I)V
    .registers 3

    .line 166
    sget v0, Landroid/view/InsetsSource;->ID_IME:I

    if-eq p1, v0, :cond_e

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v0, p1}, Landroid/view/InsetsState;->removeSource(I)V

    .line 168
    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_e
    return-void
.end method

.method public setForcedConsumingTypes(I)V
    .registers 8

    .line 173
    iget v0, p0, Lcom/android/server/wm/InsetsStateController;->mForcedConsumingTypes:I

    if-eq v0, p1, :cond_36

    .line 174
    iput p1, p0, Lcom/android/server/wm/InsetsStateController;->mForcedConsumingTypes:I

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_10
    if-ltz v0, :cond_31

    .line 177
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/InsetsSourceProvider;

    .line 179
    invoke-virtual {v3}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    move-result v4

    and-int/2addr v4, p1

    const/4 v5, 0x4

    if-eqz v4, :cond_28

    move v4, v5

    goto :goto_29

    :cond_28
    move v4, v1

    .line 178
    :goto_29
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/InsetsSourceProvider;->setFlags(II)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_31
    if-eqz v2, :cond_36

    .line 185
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    :cond_36
    return-void
.end method

.method public updateAboveInsetsState(Z)V
    .registers 6

    .line 229
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    .line 230
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 231
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v3

    or-int/2addr v2, v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v3

    or-int/2addr v2, v3

    .line 230
    invoke-virtual {v0, v1, v2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;I)V

    .line 232
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 233
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 238
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/wm/WindowContainer;->updateAboveInsetsState(Landroid/view/InsetsState;Landroid/util/SparseArray;Landroid/util/ArraySet;)V

    if-eqz p1, :cond_3f

    .line 242
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_2f
    if-ltz p1, :cond_3f

    .line 243
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_2f

    :cond_3f
    return-void
.end method
