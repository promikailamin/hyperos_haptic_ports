.class Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;
.super Ljava/lang/Object;
.source "WindowContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationRunnerBuilder"
.end annotation


# instance fields
.field private final mOnAnimationCancelled:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnAnimationFinished:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wm/WindowContainer;


# direct methods
.method static bridge synthetic -$$Nest$mbuild(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;)Lcom/android/server/wm/WindowContainer$IAnimationStarter;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->build()Lcom/android/server/wm/WindowContainer$IAnimationStarter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhideInsetSourceViewOverflows(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->hideInsetSourceViewOverflows(Ljava/util/Set;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTaskBackgroundColor(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->setTaskBackgroundColor(I)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 4200
    .local p0, "this":Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;, "Lcom/android/server/wm/WindowContainer<TE;>.AnimationRunnerBuilder;"
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->this$0:Lcom/android/server/wm/WindowContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4204
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->mOnAnimationFinished:Ljava/util/List;

    .line 4208
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->mOnAnimationCancelled:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;-><init>(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method private build()Lcom/android/server/wm/WindowContainer$IAnimationStarter;
    .registers 2

    .line 4255
    .local p0, "this":Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;, "Lcom/android/server/wm/WindowContainer<TE;>.AnimationRunnerBuilder;"
    new-instance v0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;)V

    return-object v0
.end method

.method private hideInsetSourceViewOverflows(Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 4235
    .local p0, "this":Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;, "Lcom/android/server/wm/WindowContainer<TE;>.AnimationRunnerBuilder;"
    .local p1, "insetTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    .line 4236
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4238
    .local v0, "surfaceControls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/SurfaceControl;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4239
    .local v2, "insetType":I
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->this$0:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 4240
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v3

    .line 4244
    .local v3, "insetProvider":Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->this$0:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->setCropToProvidingInsetsBounds(Landroid/view/SurfaceControl$Transaction;)V

    .line 4248
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->mOnAnimationFinished:Ljava/util/List;

    new-instance v5, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, v3}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;Lcom/android/server/wm/WindowContainerInsetsSourceProvider;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4251
    .end local v2    # "insetType":I
    .end local v3    # "insetProvider":Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
    goto :goto_d

    .line 4252
    :cond_3f
    return-void
.end method

.method static synthetic lambda$setTaskBackgroundColor$0(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/wm/TaskDisplayArea;)V
    .registers 3
    .param p0, "callbackCounter"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p1, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 4221
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_9

    .line 4222
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->clearBackgroundColor()V

    .line 4224
    :cond_9
    return-void
.end method

.method private setTaskBackgroundColor(I)V
    .registers 6
    .param p1, "backgroundColor"    # I

    .line 4211
    .local p0, "this":Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;, "Lcom/android/server/wm/WindowContainer<TE;>.AnimationRunnerBuilder;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->this$0:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 4213
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v0, :cond_22

    if-eqz p1, :cond_22

    .line 4214
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskDisplayArea;->setBackgroundColor(I)V

    .line 4219
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 4220
    .local v1, "callbackCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    new-instance v2, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1, v0}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/wm/TaskDisplayArea;)V

    .line 4229
    .local v2, "clearBackgroundColorHandler":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->mOnAnimationFinished:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4230
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->mOnAnimationCancelled:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4232
    .end local v1    # "callbackCounter":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v2    # "clearBackgroundColorHandler":Ljava/lang/Runnable;
    :cond_22
    return-void
.end method


# virtual methods
.method synthetic lambda$build$2$com-android-server-wm-WindowContainer$AnimationRunnerBuilder(ILcom/android/server/wm/AnimationAdapter;)V
    .registers 5
    .param p1, "animType"    # I
    .param p2, "anim"    # Lcom/android/server/wm/AnimationAdapter;

    .line 4258
    .local p0, "this":Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;, "Lcom/android/server/wm/WindowContainer<TE;>.AnimationRunnerBuilder;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->mOnAnimationFinished:Ljava/util/List;

    new-instance v1, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method synthetic lambda$build$3$com-android-server-wm-WindowContainer$AnimationRunnerBuilder()V
    .registers 3

    .line 4259
    .local p0, "this":Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;, "Lcom/android/server/wm/WindowContainer<TE;>.AnimationRunnerBuilder;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->mOnAnimationCancelled:Ljava/util/List;

    new-instance v1, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method synthetic lambda$build$4$com-android-server-wm-WindowContainer$AnimationRunnerBuilder(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/AnimationAdapter;)V
    .registers 14
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "adapter"    # Lcom/android/server/wm/AnimationAdapter;
    .param p3, "hidden"    # Z
    .param p4, "type"    # I
    .param p5, "snapshotAnim"    # Lcom/android/server/wm/AnimationAdapter;

    .line 4257
    .local p0, "this":Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;, "Lcom/android/server/wm/WindowContainer<TE;>.AnimationRunnerBuilder;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->this$0:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->this$0:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    new-instance v5, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;)V

    new-instance v6, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;)V

    move-object v2, p2

    move v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/WindowContainer;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZILcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;Ljava/lang/Runnable;Lcom/android/server/wm/AnimationAdapter;)V

    .line 4260
    return-void
.end method

.method synthetic lambda$hideInsetSourceViewOverflows$1$com-android-server-wm-WindowContainer$AnimationRunnerBuilder(Lcom/android/server/wm/WindowContainerInsetsSourceProvider;)V
    .registers 3
    .param p1, "insetProvider"    # Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    .line 4249
    .local p0, "this":Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;, "Lcom/android/server/wm/WindowContainer<TE;>.AnimationRunnerBuilder;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$AnimationRunnerBuilder;->this$0:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->removeCropToProvidingInsetsBounds(Landroid/view/SurfaceControl$Transaction;)V

    .line 4250
    return-void
.end method
