.class Lcom/android/server/wm/InsetsStateController;
.super Ljava/lang/Object;
.source "InsetsStateController.java"


# instance fields
.field private final mControlTargetTypeMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/InsetsControlTarget;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDispatchInsetsChanged:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mEmptyImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

.field private final mLastState:Landroid/view/InsetsState;

.field private final mPendingControlChanged:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/InsetsControlTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/WindowContainerInsetsSourceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final mState:Landroid/view/InsetsState;

.field private final mTypeControlTargetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/InsetsControlTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mTypeFakeControlTargetMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/InsetsControlTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmDisplayContent(Lcom/android/server/wm/InsetsStateController;)Lcom/android/server/wm/DisplayContent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 3
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    .line 54
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeFakeControlTargetMap:Landroid/util/SparseArray;

    .line 66
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    .line 68
    new-instance v0, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda5;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    .line 73
    new-instance v0, Lcom/android/server/wm/InsetsStateController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/InsetsStateController$1;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    iput-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mEmptyImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 90
    iput-object p1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 91
    return-void
.end method

.method private addToControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V
    .registers 6
    .param p1, "target"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p2, "type"    # I
    .param p3, "fake"    # Z

    .line 321
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 323
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    if-eqz p3, :cond_1c

    .line 325
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mTypeFakeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_21

    .line 327
    :cond_1c
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    :goto_21
    return-void
.end method

.method static synthetic lambda$addToControlMaps$4(Lcom/android/server/wm/InsetsControlTarget;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "key"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 322
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$new$0(Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p0, "w"    # Lcom/android/server/wm/WindowState;

    .line 69
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyToDispatchInsetsState()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 70
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->notifyInsetsChanged()V

    .line 72
    :cond_9
    return-void
.end method

.method private notifyPendingInsetsControlChanged()V
    .registers 3

    .line 337
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 338
    return-void

    .line 340
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    new-instance v1, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V

    .line 364
    return-void
.end method

.method private onControlChanged(ILcom/android/server/wm/InsetsControlTarget;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 252
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsControlTarget;

    .line 253
    .local v0, "previous":Lcom/android/server/wm/InsetsControlTarget;
    if-ne p2, v0, :cond_b

    .line 254
    return-void

    .line 256
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    .line 257
    .local v1, "provider":Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
    if-nez v1, :cond_1a

    .line 258
    return-void

    .line 260
    :cond_1a
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->isControllable()Z

    move-result v2

    if-nez v2, :cond_21

    .line 261
    return-void

    .line 263
    :cond_21
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;Z)V

    .line 264
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p2

    .line 265
    if-eqz v0, :cond_33

    .line 266
    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/wm/InsetsStateController;->removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V

    .line 267
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_33
    if-eqz p2, :cond_3d

    .line 270
    invoke-direct {p0, p2, p1, v2}, Lcom/android/server/wm/InsetsStateController;->addToControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V

    .line 271
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_3d
    return-void
.end method

.method private removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V
    .registers 6
    .param p1, "target"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p2, "type"    # I
    .param p3, "fake"    # Z

    .line 304
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 305
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v0, :cond_b

    .line 306
    return-void

    .line 308
    :cond_b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 309
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 310
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_1d
    if-eqz p3, :cond_25

    .line 313
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mTypeFakeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2a

    .line 315
    :cond_25
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 317
    :goto_2a
    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "WindowInsetsStateController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 373
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v0, p1, p2}, Landroid/view/InsetsState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Control map:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_4c
    if-ltz v0, :cond_8f

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/view/InsetsState;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mTypeControlTargetMap:Landroid/util/SparseArray;

    .line 378
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 377
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    add-int/lit8 v0, v0, -0x1

    goto :goto_4c

    .line 380
    .end local v0    # "i":I
    :cond_8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "InsetsSourceProviders:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_ad
    if-ltz v0, :cond_ce

    .line 382
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 381
    add-int/lit8 v0, v0, -0x1

    goto :goto_ad

    .line 384
    .end local v0    # "i":I
    :cond_ce
    return-void
.end method

.method getControlsForDispatch(Lcom/android/server/wm/InsetsControlTarget;)[Landroid/view/InsetsSourceControl;
    .registers 8
    .param p1, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 99
    .local v0, "controlled":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez v0, :cond_c

    .line 100
    const/4 v1, 0x0

    return-object v1

    .line 102
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 103
    .local v1, "size":I
    new-array v2, v1, [Landroid/view/InsetsSourceControl;

    .line 104
    .local v2, "result":[Landroid/view/InsetsSourceControl;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v1, :cond_2a

    .line 105
    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;

    move-result-object v4

    aput-object v4, v2, v3

    .line 104
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 107
    .end local v3    # "i":I
    :cond_2a
    return-object v2
.end method

.method getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;
    .registers 2

    .line 130
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ImeInsetsSourceProvider;

    return-object v0
.end method

.method getRawInsetsState()Landroid/view/InsetsState;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    return-object v0
.end method

.method getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
    .registers 5
    .param p1, "type"    # I

    .line 118
    const/16 v0, 0x13

    if-ne p1, v0, :cond_16

    .line 119
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    return-object v0

    .line 123
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/InsetsStateController;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    return-object v0
.end method

.method getSourceProviders()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/WindowContainerInsetsSourceProvider;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    return-object v0
.end method

.method isFakeTarget(ILcom/android/server/wm/InsetsControlTarget;)Z
    .registers 4
    .param p1, "type"    # I
    .param p2, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 207
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeFakeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method synthetic lambda$getSourceProvider$1$com-android-server-wm-InsetsStateController(Ljava/lang/Integer;)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
    .registers 5
    .param p1, "key"    # Ljava/lang/Integer;

    .line 120
    new-instance v0, Lcom/android/server/wm/ImeInsetsSourceProvider;

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 121
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/wm/ImeInsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    .line 120
    return-object v0
.end method

.method synthetic lambda$getSourceProvider$2$com-android-server-wm-InsetsStateController(Ljava/lang/Integer;)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
    .registers 5
    .param p1, "key"    # Ljava/lang/Integer;

    .line 124
    new-instance v0, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    return-object v0
.end method

.method synthetic lambda$notifyPendingInsetsControlChanged$5$com-android-server-wm-InsetsStateController()V
    .registers 5

    .line 341
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 342
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    .line 343
    .local v1, "provider":Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->onSurfaceTransactionApplied()V

    .line 341
    .end local v1    # "provider":Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 345
    .end local v0    # "i":I
    :cond_18
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 346
    .local v0, "newControlTargets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/InsetsControlTarget;>;"
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_25
    if-ltz v1, :cond_40

    .line 347
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InsetsControlTarget;

    .line 348
    .local v2, "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->notifyInsetsControlChanged()V

    .line 349
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mControlTargetTypeMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 351
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 346
    .end local v2    # "controlTarget":Lcom/android/server/wm/InsetsControlTarget;
    :cond_3d
    add-int/lit8 v1, v1, -0x1

    goto :goto_25

    .line 354
    .end local v1    # "i":I
    :cond_40
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 359
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_4b
    if-ltz v1, :cond_59

    .line 360
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/InsetsStateController;->onInsetsModified(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 359
    add-int/lit8 v1, v1, -0x1

    goto :goto_4b

    .line 362
    .end local v1    # "i":I
    :cond_59
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 363
    return-void
.end method

.method synthetic lambda$onDisplayFramesUpdated$3$com-android-server-wm-InsetsStateController(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "insetsChangedWindows"    # Ljava/util/ArrayList;
    .param p2, "w"    # Lcom/android/server/wm/WindowState;

    .line 183
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAboveInsetsState:Landroid/view/InsetsState;

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;I)V

    .line 184
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method notifyControlChanged(Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 3
    .param p1, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 332
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-direct {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    .line 334
    return-void
.end method

.method notifyControlRevoked(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;)V
    .registers 5
    .param p1, "previousControlTarget"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p2, "provider"    # Lcom/android/server/wm/InsetsSourceProvider;

    .line 246
    invoke-virtual {p2}, Lcom/android/server/wm/InsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/InsetsStateController;->removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V

    .line 248
    return-void
.end method

.method notifyInsetsChanged()V
    .registers 3

    .line 367
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->notifyInsetsChanged(Ljava/util/function/Consumer;)V

    .line 368
    return-void
.end method

.method onBarControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 9
    .param p1, "statusControlling"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p2, "fakeStatusControlling"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p3, "navControlling"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p4, "fakeNavControlling"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 233
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/InsetsStateController;->onControlChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 234
    const/4 v1, 0x1

    invoke-direct {p0, v1, p3}, Lcom/android/server/wm/InsetsStateController;->onControlChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 235
    const/16 v2, 0x14

    invoke-direct {p0, v2, p1}, Lcom/android/server/wm/InsetsStateController;->onControlChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 236
    const/16 v3, 0x15

    invoke-direct {p0, v3, p3}, Lcom/android/server/wm/InsetsStateController;->onControlChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 237
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/InsetsStateController;->onControlFakeTargetChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 238
    invoke-virtual {p0, v1, p4}, Lcom/android/server/wm/InsetsStateController;->onControlFakeTargetChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 239
    invoke-virtual {p0, v2, p2}, Lcom/android/server/wm/InsetsStateController;->onControlFakeTargetChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 240
    invoke-virtual {p0, v3, p4}, Lcom/android/server/wm/InsetsStateController;->onControlFakeTargetChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 241
    invoke-direct {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    .line 242
    return-void
.end method

.method onControlFakeTargetChanged(ILcom/android/server/wm/InsetsControlTarget;)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "fakeTarget"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 283
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mTypeFakeControlTargetMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/InsetsControlTarget;

    .line 284
    .local v0, "previous":Lcom/android/server/wm/InsetsControlTarget;
    if-ne p2, v0, :cond_b

    .line 285
    return-void

    .line 287
    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    .line 288
    .local v1, "provider":Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
    if-nez v1, :cond_1a

    .line 289
    return-void

    .line 291
    :cond_1a
    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->updateControlForFakeTarget(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 292
    const/4 v2, 0x1

    if-eqz v0, :cond_28

    .line 293
    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/wm/InsetsStateController;->removeFromControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V

    .line 294
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_28
    if-eqz p2, :cond_32

    .line 297
    invoke-direct {p0, p2, p1, v2}, Lcom/android/server/wm/InsetsStateController;->addToControlMaps(Lcom/android/server/wm/InsetsControlTarget;IZ)V

    .line 298
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mPendingControlChanged:Landroid/util/ArraySet;

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_32
    return-void
.end method

.method onDisplayFramesUpdated(Z)V
    .registers 6
    .param p1, "notifyInsetsChange"    # Z

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v0, "insetsChangedWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v2, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/InsetsStateController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/InsetsStateController;Ljava/util/ArrayList;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 186
    if-eqz p1, :cond_27

    .line 187
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_27

    .line 188
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-interface {v2, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 187
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 191
    .end local v1    # "i":I
    :cond_27
    return-void
.end method

.method onImeControlTargetChanged(Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 9
    .param p1, "imeTarget"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 214
    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_6

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mEmptyImeControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    .line 215
    .local v0, "target":Lcom/android/server/wm/InsetsControlTarget;
    :goto_6
    const/16 v1, 0x13

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/InsetsStateController;->onControlChanged(ILcom/android/server/wm/InsetsControlTarget;)V

    .line 216
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    if-eqz v1, :cond_2c

    if-eqz v0, :cond_16

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_19

    :cond_16
    const-string/jumbo v1, "null"

    :goto_19
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x62dc4f45

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 218
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    :cond_2c
    invoke-direct {p0}, Lcom/android/server/wm/InsetsStateController;->notifyPendingInsetsControlChanged()V

    .line 219
    return-void
.end method

.method onInsetsModified(Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 5
    .param p1, "caller"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_1b

    .line 196
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->updateClientVisibility(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 195
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 198
    .end local v1    # "i":I
    :cond_1b
    if-eqz v0, :cond_33

    .line 199
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    .line 200
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 201
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->updateKeepClearAreas()V

    .line 202
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->updateSystemBarAttributes()V

    .line 204
    :cond_33
    return-void
.end method

.method onPostLayout()V
    .registers 6

    .line 145
    const-wide/16 v0, 0x20

    const-string v2, "ISC.onPostLayout"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 146
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_f
    if-ltz v2, :cond_1f

    .line 147
    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->onPostLayout()V

    .line 146
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 149
    .end local v2    # "i":I
    :cond_1f
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v2, v4}, Landroid/view/InsetsState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 150
    iget-object v2, p0, Lcom/android/server/wm/InsetsStateController;->mLastState:Landroid/view/InsetsState;

    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    invoke-virtual {v2, v4, v3}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;Z)V

    .line 151
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->notifyInsetsChanged()V

    .line 153
    :cond_33
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 154
    return-void
.end method

.method peekSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
    .registers 4
    .param p1, "type"    # I

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/InsetsStateController;->mProviders:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    return-object v0
.end method

.method updateAboveInsetsState(Z)V
    .registers 8
    .param p1, "notifyInsetsChange"    # Z

    .line 162
    new-instance v0, Landroid/view/InsetsState;

    invoke-direct {v0}, Landroid/view/InsetsState;-><init>()V

    .line 163
    .local v0, "aboveInsetsState":Landroid/view/InsetsState;
    iget-object v1, p0, Lcom/android/server/wm/InsetsStateController;->mState:Landroid/view/InsetsState;

    .line 164
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v3

    or-int/2addr v2, v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v3

    or-int/2addr v2, v3

    .line 163
    invoke-virtual {v0, v1, v2}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;I)V

    .line 165
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 167
    .local v1, "insetsChangedWindows":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowState;>;"
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 171
    .local v2, "localInsetsSourceProvidersFromParent":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/InsetsSourceProvider;>;"
    iget-object v3, p0, Lcom/android/server/wm/InsetsStateController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, v0, v2, v1}, Lcom/android/server/wm/DisplayContent;->updateAboveInsetsState(Landroid/view/InsetsState;Landroid/util/SparseArray;Landroid/util/ArraySet;)V

    .line 173
    if-eqz p1, :cond_3f

    .line 174
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_2f
    if-ltz v3, :cond_3f

    .line 175
    iget-object v4, p0, Lcom/android/server/wm/InsetsStateController;->mDispatchInsetsChanged:Ljava/util/function/Consumer;

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    invoke-interface {v4, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 174
    add-int/lit8 v3, v3, -0x1

    goto :goto_2f

    .line 178
    .end local v3    # "i":I
    :cond_3f
    return-void
.end method
