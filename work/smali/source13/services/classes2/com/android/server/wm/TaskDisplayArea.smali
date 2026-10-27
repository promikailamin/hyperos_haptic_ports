.class final Lcom/android/server/wm/TaskDisplayArea;
.super Lcom/android/server/wm/DisplayArea;
.source "TaskDisplayArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;,
        Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/DisplayArea<",
        "Lcom/android/server/wm/WindowContainer;",
        ">;"
    }
.end annotation


# instance fields
.field private mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mBackgroundColor:I

.field private final mCanHostHomeTask:Z

.field private mColorLayerCounter:I

.field final mCreatedByOrganizer:Z

.field mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mLastFocusedRootTask:Lcom/android/server/wm/Task;

.field private mLastLeafTaskToFrontId:I

.field mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

.field private final mLaunchRootTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;",
            ">;"
        }
    .end annotation
.end field

.field mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

.field private mRemoved:Z

.field private mRootHomeTask:Lcom/android/server/wm/Task;

.field private mRootPinnedTask:Lcom/android/server/wm/Task;

.field private mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field private mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

.field private final mTempConfiguration:Landroid/content/res/Configuration;

.field private final mTmpAlwaysOnTopChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpHomeChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

.field private final mTmpNormalChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$VlCsJqULLc5sYclwBX7VBWYipDs(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->isHomeActivityForUser(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;I)V
    .registers 12
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "displayAreaFeature"    # I

    .line 200
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskDisplayArea;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;IZZ)V

    .line 202
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;IZ)V
    .registers 13
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "displayAreaFeature"    # I
    .param p5, "createdByOrganizer"    # Z

    .line 206
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskDisplayArea;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;IZZ)V

    .line 208
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;IZZ)V
    .registers 8
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "displayAreaFeature"    # I
    .param p5, "createdByOrganizer"    # Z
    .param p6, "canHostHomeTask"    # Z

    .line 213
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    invoke-direct {p0, p2, v0, p3, p4}, Lcom/android/server/wm/DisplayArea;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayArea$Type;Ljava/lang/String;I)V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mBackgroundColor:I

    .line 97
    iput v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorLayerCounter:I

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopChildren:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalChildren:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeChildren:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpTasks:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTempConfiguration:Landroid/content/res/Configuration;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;

    .line 214
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 215
    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 216
    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 217
    iput-boolean p5, p0, Lcom/android/server/wm/TaskDisplayArea;->mCreatedByOrganizer:Z

    .line 218
    iput-boolean p6, p0, Lcom/android/server/wm/TaskDisplayArea;->mCanHostHomeTask:Z

    .line 219
    return-void
.end method

.method private addChildTask(Lcom/android/server/wm/Task;I)V
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "position"    # I

    .line 337
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on taskDisplayArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_26
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->addRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    .line 340
    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->findPositionForRootTask(ILcom/android/server/wm/Task;Z)I

    move-result p2

    .line 342
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 343
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_46

    .line 344
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 345
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v0

    if-gez v0, :cond_46

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 351
    :cond_46
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string v1, "addChildTask"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 354
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onRootTaskOrderChanged(Lcom/android/server/wm/Task;)V

    .line 355
    return-void
.end method

.method private adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;I)I
    .registers 13
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p3, "startLayer"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl$Transaction;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;I)I"
        }
    .end annotation

    .line 792
    .local p2, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowContainer;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->clear()V

    .line 793
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 794
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 795
    .local v1, "hasAdjacentTask":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_5c

    .line 796
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 797
    .local v3, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 799
    .local v4, "childTda":Lcom/android/server/wm/TaskDisplayArea;
    if-nez v3, :cond_1a

    goto :goto_59

    .line 800
    :cond_1a
    if-eqz v4, :cond_21

    .line 801
    invoke-direct {v4}, Lcom/android/server/wm/TaskDisplayArea;->childrenNeedZBoost()Z

    move-result v5

    goto :goto_25

    .line 802
    :cond_21
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    move-result v5

    :goto_25
    nop

    .line 804
    .local v5, "childNeedsZBoost":Z
    if-eqz v5, :cond_2e

    .line 805
    iget-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v6, v2}, Landroid/util/IntArray;->add(I)V

    .line 806
    goto :goto_59

    .line 809
    :cond_2e
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v6

    .line 810
    .local v6, "childTask":Lcom/android/server/wm/Task;
    if-eqz v6, :cond_46

    .line 811
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->inMultiWindowMode()Z

    move-result v7

    if-eqz v7, :cond_46

    .line 812
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v7

    if-eqz v7, :cond_46

    const/4 v7, 0x1

    goto :goto_47

    :cond_46
    const/4 v7, 0x0

    .line 814
    .local v7, "inAdjacentTask":Z
    :goto_47
    if-eqz v7, :cond_4b

    .line 815
    const/4 v1, 0x1

    goto :goto_53

    .line 816
    :cond_4b
    if-eqz v1, :cond_53

    const/16 v8, 0x7530

    if-ge p3, v8, :cond_53

    .line 819
    const/16 p3, 0x7531

    .line 822
    :cond_53
    :goto_53
    add-int/lit8 v8, p3, 0x1

    .end local p3    # "startLayer":I
    .local v8, "startLayer":I
    invoke-virtual {v3, p1, p3}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    move p3, v8

    .line 795
    .end local v3    # "child":Lcom/android/server/wm/WindowContainer;
    .end local v4    # "childTda":Lcom/android/server/wm/TaskDisplayArea;
    .end local v5    # "childNeedsZBoost":Z
    .end local v6    # "childTask":Lcom/android/server/wm/Task;
    .end local v7    # "inAdjacentTask":Z
    .end local v8    # "startLayer":I
    .restart local p3    # "startLayer":I
    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 825
    .end local v2    # "i":I
    :cond_5c
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    .line 826
    .local v2, "zBoostSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_63
    if-ge v3, v2, :cond_7d

    .line 827
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNeedsZBoostIndexes:Landroid/util/IntArray;

    invoke-virtual {v4, v3}, Landroid/util/IntArray;->get(I)I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 829
    .local v4, "child":Lcom/android/server/wm/WindowContainer;
    if-nez v4, :cond_74

    goto :goto_7a

    .line 830
    :cond_74
    add-int/lit8 v5, p3, 0x1

    .end local p3    # "startLayer":I
    .local v5, "startLayer":I
    invoke-virtual {v4, p1, p3}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    move p3, v5

    .line 826
    .end local v4    # "child":Lcom/android/server/wm/WindowContainer;
    .end local v5    # "startLayer":I
    .restart local p3    # "startLayer":I
    :goto_7a
    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    .line 832
    .end local v3    # "i":I
    :cond_7d
    return p3
.end method

.method private childrenNeedZBoost()Z
    .registers 3

    .line 836
    const/4 v0, 0x1

    new-array v0, v0, [Z

    .line 837
    .local v0, "needsZBoost":[Z
    new-instance v1, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda0;-><init>([Z)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 840
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    return v1
.end method

.method private findMaxPositionForRootTask(Lcom/android/server/wm/Task;)I
    .registers 8
    .param p1, "rootTask"    # Lcom/android/server/wm/Task;

    .line 613
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_26

    .line 614
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 617
    .local v3, "curr":Lcom/android/server/wm/WindowContainer;
    if-ne v3, p1, :cond_16

    move v2, v1

    .line 618
    .local v2, "sameRootTask":Z
    :cond_16
    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/WindowContainer;)I

    move-result v4

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/WindowContainer;)I

    move-result v5

    if-gt v4, v5, :cond_23

    if-nez v2, :cond_23

    .line 619
    return v0

    .line 613
    .end local v2    # "sameRootTask":Z
    .end local v3    # "curr":Lcom/android/server/wm/WindowContainer;
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 622
    .end local v0    # "i":I
    :cond_26
    return v2
.end method

.method private findMinPositionForRootTask(Lcom/android/server/wm/Task;)I
    .registers 6
    .param p1, "rootTask"    # Lcom/android/server/wm/Task;

    .line 589
    const/high16 v0, -0x80000000

    .line 590
    .local v0, "minPosition":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 591
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-direct {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/WindowContainer;)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/WindowContainer;)I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 592
    move v0, v1

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 598
    .end local v1    # "i":I
    :cond_21
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 604
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 605
    .local v1, "currentIndex":I
    if-le v1, v0, :cond_30

    .line 606
    move v0, v1

    .line 609
    .end local v1    # "currentIndex":I
    :cond_30
    return v0
.end method

.method private findPositionForRootTask(ILcom/android/server/wm/Task;Z)I
    .registers 8
    .param p1, "requestedPosition"    # I
    .param p2, "rootTask"    # Lcom/android/server/wm/Task;
    .param p3, "adding"    # Z

    .line 647
    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->findMaxPositionForRootTask(Lcom/android/server/wm/Task;)I

    move-result v0

    .line 649
    .local v0, "maxPosition":I
    invoke-direct {p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->findMinPositionForRootTask(Lcom/android/server/wm/Task;)I

    move-result v1

    .line 653
    .local v1, "minPosition":I
    const v2, 0x7fffffff

    if-ne p1, v2, :cond_14

    .line 654
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result p1

    goto :goto_19

    .line 655
    :cond_14
    const/high16 v2, -0x80000000

    if-ne p1, v2, :cond_19

    .line 656
    const/4 p1, 0x0

    .line 659
    :cond_19
    :goto_19
    move v2, p1

    .line 660
    .local v2, "targetPosition":I
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 661
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 663
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 669
    .local v3, "prevPosition":I
    if-eq v2, p1, :cond_30

    if-nez p3, :cond_2e

    if-ge v2, v3, :cond_30

    .line 670
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    .line 673
    :cond_30
    return v2
.end method

.method private getBottomMostVisibleRootTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;
    .registers 4
    .param p1, "excludeRootTask"    # Lcom/android/server/wm/Task;

    .line 1898
    new-instance v0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda1;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method private getLaunchRootTaskDef(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;
    .registers 6
    .param p1, "rootTask"    # Lcom/android/server/wm/Task;

    .line 1179
    const/4 v0, 0x0

    .line 1180
    .local v0, "def":Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_27

    .line 1181
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    iget-object v2, v2, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->task:Lcom/android/server/wm/Task;

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v2, v3, :cond_1e

    .line 1180
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1182
    :cond_1e
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    .line 1185
    .end local v1    # "i":I
    :cond_27
    return-object v0
.end method

.method private getPriority(Lcom/android/server/wm/WindowContainer;)I
    .registers 6
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 564
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 565
    .local v0, "tda":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v0, :cond_f

    .line 567
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getPriority(Lcom/android/server/wm/WindowContainer;)I

    move-result v1

    return v1

    .line 569
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 574
    .local v1, "rootTask":Lcom/android/server/wm/Task;
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mAssistantOnTopOfDream:Z

    if-eqz v2, :cond_21

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isActivityTypeAssistant()Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x5

    return v2

    .line 575
    :cond_21
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isActivityTypeDream()Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 v2, 0x4

    return v2

    .line 576
    :cond_29
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x3

    return v2

    .line 577
    :cond_31
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_53

    .line 578
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v2

    .line 579
    .local v2, "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v2, :cond_53

    invoke-virtual {v2}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->isInMiniFreeFormMode()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 580
    const/4 v3, 0x2

    return v3

    .line 584
    .end local v2    # "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    :cond_53
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_5b

    const/4 v2, 0x1

    return v2

    .line 585
    :cond_5b
    const/4 v2, 0x0

    return v2
.end method

.method static getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;
    .registers 4
    .param p0, "rootTask"    # Lcom/android/server/wm/Task;

    .line 1942
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1943
    .local v0, "wc":Lcom/android/server/wm/WindowContainer;
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1944
    .local v1, "index":I
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    return-object v2
.end method

.method private static isHomeActivityForUser(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "userId"    # I

    .line 1847
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, -0x1

    if-eq p1, v0, :cond_d

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne v0, p1, :cond_f

    :cond_d
    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private isLargeEnoughForMultiWindow()Z
    .registers 3

    .line 1690
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mLargeScreenSmallestScreenWidthDp:I

    if-lt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static isWindowingModeSupported(IZZZ)Z
    .registers 7
    .param p0, "windowingMode"    # I
    .param p1, "supportsMultiWindow"    # Z
    .param p2, "supportsFreeform"    # Z
    .param p3, "supportsPip"    # Z

    .line 1462
    const/4 v0, 0x1

    if-eqz p0, :cond_1b

    if-ne p0, v0, :cond_6

    goto :goto_1b

    .line 1466
    :cond_6
    const/4 v1, 0x0

    if-nez p1, :cond_a

    .line 1467
    return v1

    .line 1470
    :cond_a
    const/4 v2, 0x6

    if-ne p0, v2, :cond_e

    .line 1471
    return v0

    .line 1474
    :cond_e
    if-nez p2, :cond_14

    const/4 v2, 0x5

    if-ne p0, v2, :cond_14

    .line 1475
    return v1

    .line 1478
    :cond_14
    if-nez p3, :cond_1a

    const/4 v2, 0x2

    if-ne p0, v2, :cond_1a

    .line 1479
    return v1

    .line 1481
    :cond_1a
    return v0

    .line 1464
    :cond_1b
    :goto_1b
    return v0
.end method

.method static synthetic lambda$childrenNeedZBoost$5([ZLcom/android/server/wm/Task;)V
    .registers 5
    .param p0, "needsZBoost"    # [Z
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 838
    const/4 v0, 0x0

    aget-boolean v1, p0, v0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->needsZBoost()Z

    move-result v2

    or-int/2addr v1, v2

    aput-boolean v1, p0, v0

    .line 839
    return-void
.end method

.method static synthetic lambda$ensureActivitiesVisible$11(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/Task;)V
    .registers 5
    .param p0, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "configChanges"    # I
    .param p2, "preserveWindows"    # Z
    .param p3, "notifyClients"    # Z
    .param p4, "rootTask"    # Lcom/android/server/wm/Task;

    .line 2018
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 2020
    return-void
.end method

.method static synthetic lambda$getBottomMostVisibleRootTask$10(Lcom/android/server/wm/Task;)Z
    .registers 6
    .param p0, "task"    # Lcom/android/server/wm/Task;

    .line 1899
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 1900
    .local v0, "winMode":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    move v3, v2

    goto :goto_b

    :cond_a
    move v3, v1

    .line 1901
    .local v3, "isValidWindowingMode":Z
    :goto_b
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_15

    if-eqz v3, :cond_15

    move v1, v2

    :cond_15
    return v1
.end method

.method static synthetic lambda$getOrientation$4(Lcom/android/server/wm/Task;)Z
    .registers 2
    .param p0, "t"    # Lcom/android/server/wm/Task;

    .line 695
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$getRootTask$0(IILcom/android/server/wm/Task;)Z
    .registers 4
    .param p0, "activityType"    # I
    .param p1, "windowingMode"    # I
    .param p2, "rootTask"    # Lcom/android/server/wm/Task;

    .line 234
    if-nez p0, :cond_a

    .line 235
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    if-ne p1, v0, :cond_a

    .line 238
    const/4 v0, 0x1

    return v0

    .line 240
    :cond_a
    invoke-virtual {p2, p1, p0}, Lcom/android/server/wm/Task;->isCompatible(II)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getRootTaskCount$9([ILcom/android/server/wm/Task;)V
    .registers 4
    .param p0, "count"    # [I
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 1770
    const/4 v0, 0x0

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    .line 1771
    return-void
.end method

.method static synthetic lambda$getTopRootTask$1(Lcom/android/server/wm/Task;)Z
    .registers 2
    .param p0, "t"    # Lcom/android/server/wm/Task;

    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$getVisibleTasks$2(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 3
    .param p0, "visibleTasks"    # Ljava/util/ArrayList;
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 261
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 262
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_f
    return-void
.end method

.method private positionChildTaskAt(ILcom/android/server/wm/Task;Z)V
    .registers 11
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/Task;
    .param p3, "includingParents"    # Z

    .line 397
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    move v0, v2

    .line 398
    .local v0, "moveToTop":Z
    :goto_c
    if-gtz p1, :cond_10

    move v3, v1

    goto :goto_11

    :cond_10
    move v3, v2

    .line 400
    .local v3, "moveToBottom":Z
    :goto_11
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 401
    .local v4, "oldPosition":I
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v5

    if-eqz v5, :cond_41

    if-nez v0, :cond_41

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring move of always-on-top root task="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " to bottom"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "WindowManager"

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-super {p0, v4, p2, v2}, Lcom/android/server/wm/DisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 408
    return-void

    .line 415
    :cond_41
    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->isTrusted()Z

    move-result v5

    if-eqz v5, :cond_4f

    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v5, v5, Lcom/android/server/wm/DisplayContent;->mDontMoveToTop:Z

    if-eqz v5, :cond_5a

    .line 416
    :cond_4f
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    move-result v5

    if-nez v5, :cond_5a

    .line 417
    const/4 p3, 0x0

    .line 419
    :cond_5a
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/wm/TaskDisplayArea;->findPositionForRootTask(ILcom/android/server/wm/Task;Z)I

    move-result v5

    .line 420
    .local v5, "targetPosition":I
    invoke-super {p0, v5, p2, v2}, Lcom/android/server/wm/DisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 422
    if-eqz p3, :cond_7c

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-eqz v2, :cond_7c

    if-nez v0, :cond_6d

    if-eqz v3, :cond_7c

    .line 423
    :cond_6d
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-eqz v0, :cond_77

    const v6, 0x7fffffff

    goto :goto_79

    :cond_77
    const/high16 v6, -0x80000000

    :goto_79
    invoke-virtual {v2, v6, p0, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 427
    :cond_7c
    invoke-virtual {p2, v0, v5}, Lcom/android/server/wm/Task;->updateTaskMovement(ZI)V

    .line 429
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 437
    if-eqz v0, :cond_8f

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isFocusableAndVisible()Z

    move-result v1

    if-eqz v1, :cond_8f

    .line 438
    iput-object p2, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    goto :goto_96

    .line 439
    :cond_8f
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    if-ne v1, p2, :cond_96

    .line 440
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 444
    :cond_96
    :goto_96
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string/jumbo v2, "positionChildTaskAt"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded(Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v4, :cond_ab

    .line 447
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->onRootTaskOrderChanged(Lcom/android/server/wm/Task;)V

    .line 449
    :cond_ab
    return-void
.end method

.method private removeChildTask(Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 371
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 372
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onRootTaskRemoved(Lcom/android/server/wm/Task;)V

    .line 373
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 374
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    .line 375
    return-void
.end method

.method private shouldProhibitPauseWhenHoldingOn(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5
    .param p1, "resumed"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "resuming"    # Lcom/android/server/wm/ActivityRecord;

    .line 1446
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mIsHoldOn:Z

    if-eqz v0, :cond_12

    if-eqz p2, :cond_12

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/WindowContainer;I)V
    .registers 6
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;
    .param p2, "position"    # I

    .line 322
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 323
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v0, :cond_2c

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set TaskDisplayArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on taskDisplayArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_2c
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_3d

    .line 327
    :cond_30
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 328
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/TaskDisplayArea;->addChildTask(Lcom/android/server/wm/Task;I)V

    .line 334
    :goto_3d
    return-void

    .line 330
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskDisplayArea can only add Task and TaskDisplayArea, but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method addRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V
    .registers 8
    .param p1, "rootTask"    # Lcom/android/server/wm/Task;

    .line 278
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v0

    const-string v1, " rootTask="

    const-string v2, " already exist on display="

    if-eqz v0, :cond_42

    .line 279
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_40

    .line 280
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_42

    .line 281
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addRootTaskReferenceIfNeeded: root home task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_40
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    .line 290
    :cond_42
    :goto_42
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_49

    .line 291
    return-void

    .line 293
    :cond_49
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 294
    .local v0, "windowingMode":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_82

    .line 295
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    if-nez v3, :cond_57

    .line 300
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    goto :goto_82

    .line 296
    :cond_57
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addRootTaskReferenceIfNeeded: root pinned task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 302
    :cond_82
    :goto_82
    return-void
.end method

.method allResumedActivitiesComplete()Z
    .registers 7

    .line 1378
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_42

    .line 1379
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 1380
    .local v2, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_24

    .line 1381
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 1382
    return v4

    .line 1387
    :cond_24
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1388
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_3f

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v5

    if-nez v5, :cond_3f

    .line 1389
    return v4

    .line 1378
    .end local v2    # "child":Lcom/android/server/wm/WindowContainer;
    .end local v3    # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_3f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1392
    .end local v0    # "i":I
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1393
    .local v0, "currentFocusedRootTask":Lcom/android/server/wm/Task;
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v2, :cond_6e

    .line 1394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allResumedActivitiesComplete: currentFocusedRootTask changing from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    :cond_6e
    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedRootTask:Lcom/android/server/wm/Task;

    .line 1398
    return v1
.end method

.method asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .registers 1

    .line 2138
    return-object p0
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 729
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->assignRootTaskOrdering(Landroid/view/SurfaceControl$Transaction;)V

    .line 731
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 732
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 731
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 734
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method

.method assignRootTaskOrdering(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 737
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_7

    .line 738
    return-void

    .line 740
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 741
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 742
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 743
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_17
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7b

    .line 744
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 745
    .local v1, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 746
    .local v2, "childTda":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v2, :cond_57

    .line 747
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 748
    .local v3, "childTdaTopRootTask":Lcom/android/server/wm/Task;
    if-nez v3, :cond_39

    .line 749
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 750
    :cond_39
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 751
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 752
    :cond_45
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 753
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 755
    :cond_51
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 757
    goto :goto_78

    .line 760
    .end local v3    # "childTdaTopRootTask":Lcom/android/server/wm/Task;
    :cond_57
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 761
    .local v3, "childTask":Lcom/android/server/wm/Task;
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v4

    if-eqz v4, :cond_67

    .line 762
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 763
    :cond_67
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v4

    if-eqz v4, :cond_73

    .line 764
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 766
    :cond_73
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    .end local v1    # "child":Lcom/android/server/wm/WindowContainer;
    .end local v2    # "childTda":Lcom/android/server/wm/TaskDisplayArea;
    .end local v3    # "childTask":Lcom/android/server/wm/Task;
    :goto_78
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 770
    .end local v0    # "i":I
    :cond_7b
    const/4 v0, 0x0

    .line 772
    .local v0, "layer":I
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpHomeChildren:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/wm/TaskDisplayArea;->adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;I)I

    move-result v0

    .line 773
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpNormalChildren:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/wm/TaskDisplayArea;->adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;I)I

    move-result v0

    .line 777
    const/16 v1, 0x7531

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 778
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTmpAlwaysOnTopChildren:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/wm/TaskDisplayArea;->adjustRootTaskLayer(Landroid/view/SurfaceControl$Transaction;Ljava/util/ArrayList;I)I

    .line 779
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    const/16 v2, 0x7530

    invoke-virtual {p1, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 780
    return-void
.end method

.method canCreateRemoteAnimationTarget()Z
    .registers 2

    .line 1996
    const/4 v0, 0x1

    return v0
.end method

.method canHostHomeTask()Z
    .registers 2

    .line 2003
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->supportsSystemDecorations()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mCanHostHomeTask:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method canSpecifyOrientation()Z
    .registers 2

    .line 2105
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getIgnoreOrientationRequest()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2106
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getOrientationRequestingTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eq v0, p0, :cond_18

    .line 2107
    invoke-static {}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->get()Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->isMiuiIgnoreOrientationRequestDisabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 2105
    :goto_1b
    return v0
.end method

.method clearBackgroundColor()V
    .registers 3

    .line 902
    iget v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorLayerCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorLayerCounter:I

    .line 906
    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_18

    .line 907
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->unsetColor(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 908
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->scheduleAnimation()V

    .line 910
    :cond_18
    return-void
.end method

.method clearPreferredTopFocusableRootTask()V
    .registers 2

    .line 2112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 2113
    return-void
.end method

.method createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;
    .registers 4
    .param p1, "record"    # Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 846
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 847
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method createRootTask(IIZ)Lcom/android/server/wm/Task;
    .registers 5
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "onTop"    # Z

    .line 1101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/TaskDisplayArea;->createRootTask(IIZLandroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method createRootTask(IIZLandroid/app/ActivityOptions;)Lcom/android/server/wm/Task;
    .registers 7
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "onTop"    # Z
    .param p4, "opts"    # Landroid/app/ActivityOptions;

    .line 1121
    new-instance v0, Lcom/android/server/wm/Task$Builder;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 1122
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task$Builder;->setWindowingMode(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 1123
    invoke-virtual {v0, p2}, Lcom/android/server/wm/Task$Builder;->setActivityType(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 1124
    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task$Builder;->setParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 1125
    invoke-virtual {v0, p3}, Lcom/android/server/wm/Task$Builder;->setOnTop(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 1126
    invoke-virtual {v0, p4}, Lcom/android/server/wm/Task$Builder;->setActivityOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 1127
    invoke-virtual {v0}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1121
    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 2143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TaskDisplayArea "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2145
    .local v0, "doublePrefix":Ljava/lang/String;
    invoke-super {p0, p1, v0, p3}, Lcom/android/server/wm/DisplayArea;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2146
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_55

    .line 2147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "mPreferredTopFocusableRootTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2150
    :cond_55
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedRootTask:Lcom/android/server/wm/Task;

    if-eqz v2, :cond_75

    .line 2151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mLastFocusedRootTask="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2154
    :cond_75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2156
    .local v1, "triplePrefix":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_ef

    .line 2157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mLaunchRootTasks:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2158
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_ac
    if-ltz v2, :cond_ef

    .line 2159
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    .line 2160
    .local v3, "def":Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->activityTypes:[I

    .line 2161
    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->windowingModes:[I

    .line 2162
    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2160
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2158
    .end local v3    # "def":Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;
    add-int/lit8 v2, v2, -0x1

    goto :goto_ac

    .line 2167
    .end local v2    # "i":I
    :cond_ef
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Application tokens in top down Z order:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2168
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "index":I
    :goto_10b
    if-ltz v2, :cond_13f

    .line 2169
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 2170
    .local v3, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eqz v4, :cond_11b

    .line 2171
    invoke-virtual {v3, p1, v0, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2172
    goto :goto_13c

    .line 2174
    :cond_11b
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 2175
    .local v4, "rootTask":Lcom/android/server/wm/Task;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "* "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2176
    invoke-virtual {v4, p1, v1, p3}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2168
    .end local v3    # "child":Lcom/android/server/wm/WindowContainer;
    .end local v4    # "rootTask":Lcom/android/server/wm/Task;
    :goto_13c
    add-int/lit8 v2, v2, -0x1

    goto :goto_10b

    .line 2178
    .end local v2    # "index":I
    :cond_13f
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .registers 7
    .param p1, "starting"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z
    .param p4, "notifyClients"    # Z

    .line 2015
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginActivityVisibilityUpdate()V

    .line 2017
    :try_start_7
    new-instance v0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/ActivityRecord;IZZ)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->forAllRootTasks(Ljava/util/function/Consumer;)V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_18

    .line 2022
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 2023
    nop

    .line 2024
    return-void

    .line 2022
    :catchall_18
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 2023
    throw v0
.end method

.method forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V
    .registers 3
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;Z)V"
        }
    .end annotation

    .line 514
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/TaskDisplayArea;>;"
    if-eqz p2, :cond_9

    .line 515
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V

    .line 516
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_f

    .line 518
    :cond_9
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 519
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllTaskDisplayAreas(Ljava/util/function/Consumer;Z)V

    .line 521
    :goto_f
    return-void
.end method

.method forAllTaskDisplayAreas(Ljava/util/function/Predicate;Z)Z
    .registers 6
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;Z)Z"
        }
    .end annotation

    .line 504
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/TaskDisplayArea;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_12

    .line 506
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;Z)Z

    move-result v2

    if-nez v2, :cond_10

    .line 507
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    move v0, v1

    .line 506
    :cond_11
    return v0

    .line 509
    :cond_12
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;Z)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_1e
    move v0, v1

    :cond_1f
    return v0
.end method

.method getDisplayId()I
    .registers 2

    .line 1958
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    return v0
.end method

.method getFocusedActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 4

    .line 1329
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1330
    .local v0, "focusedRootTask":Lcom/android/server/wm/Task;
    if-nez v0, :cond_8

    .line 1331
    const/4 v1, 0x0

    return-object v1

    .line 1335
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1336
    .local v1, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_12

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v2, :cond_21

    .line 1339
    :cond_12
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1340
    if-eqz v1, :cond_1c

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v2, :cond_21

    .line 1343
    :cond_1c
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1346
    :cond_21
    return-object v1
.end method

.method getFocusedRootTask()Lcom/android/server/wm/Task;
    .registers 5

    .line 1263
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_5

    .line 1264
    return-object v0

    .line 1267
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_d
    if-ltz v0, :cond_3e

    .line 1268
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1269
    .local v1, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 1270
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 1271
    .local v2, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_3b

    .line 1272
    return-object v2

    .line 1277
    .end local v2    # "rootTask":Lcom/android/server/wm/Task;
    :cond_28
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 1278
    .restart local v2    # "rootTask":Lcom/android/server/wm/Task;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isFocusableAndVisible()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 1279
    return-object v2

    .line 1267
    .end local v1    # "child":Lcom/android/server/wm/WindowContainer;
    .end local v2    # "rootTask":Lcom/android/server/wm/Task;
    :cond_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 1283
    .end local v0    # "i":I
    :cond_3e
    const/4 v0, 0x0

    return-object v0
.end method

.method getHomeActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 1828
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getHomeActivityForUser(I)Lcom/android/server/wm/ActivityRecord;
    .registers 6
    .param p1, "userId"    # I

    .line 1833
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1834
    .local v0, "rootHomeTask":Lcom/android/server/wm/Task;
    if-nez v0, :cond_8

    .line 1835
    const/4 v1, 0x0

    return-object v1

    .line 1838
    :cond_8
    new-instance v1, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda6;-><init>()V

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 1839
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 1840
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1838
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v1

    .line 1841
    .local v1, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1842
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 1843
    return-object v2
.end method

.method getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;
    .registers 5
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            "TR;>;Z)TR;"
        }
    .end annotation

    .line 542
    .local p1, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/wm/TaskDisplayArea;TR;>;"
    if-eqz p2, :cond_f

    .line 543
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;

    move-result-object v0

    .line 544
    .local v0, "item":Ljava/lang/Object;, "TR;"
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_e

    :cond_a
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_e
    return-object v1

    .line 546
    .end local v0    # "item":Ljava/lang/Object;, "TR;"
    :cond_f
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 547
    .restart local v0    # "item":Ljava/lang/Object;, "TR;"
    if-eqz v0, :cond_17

    .line 548
    move-object v1, v0

    goto :goto_1b

    .line 549
    :cond_17
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->getItemFromTaskDisplayAreas(Ljava/util/function/Function;Z)Ljava/lang/Object;

    move-result-object v1

    .line 547
    :goto_1b
    return-object v1
.end method

.method getLastFocusedRootTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 1350
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedRootTask:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/Task;
    .registers 13
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "sourceTask"    # Lcom/android/server/wm/Task;
    .param p5, "launchFlags"    # I

    .line 1191
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;ILcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;ILcom/android/server/wm/Task;)Lcom/android/server/wm/Task;
    .registers 12
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "sourceTask"    # Lcom/android/server/wm/Task;
    .param p5, "launchFlags"    # I
    .param p6, "candidateTask"    # Lcom/android/server/wm/Task;

    .line 1199
    if-eqz p3, :cond_11

    .line 1200
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1202
    .local v0, "launchRootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_11

    iget-boolean v1, v0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_11

    .line 1203
    return-object v0

    .line 1208
    .end local v0    # "launchRootTask":Lcom/android/server/wm/Task;
    :cond_11
    and-int/lit16 v0, p5, 0x1000

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_41

    .line 1210
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v0

    if-nez v0, :cond_41

    .line 1212
    if-eqz p4, :cond_3e

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    if-eq p4, v0, :cond_33

    .line 1214
    invoke-virtual {p4, v0}, Lcom/android/server/wm/Task;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1215
    :cond_33
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0

    .line 1217
    :cond_3e
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    return-object v0

    .line 1221
    :cond_41
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_49
    const/4 v1, 0x0

    if-ltz v0, :cond_83

    .line 1222
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 1223
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    iget-object v2, v2, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->task:Lcom/android/server/wm/Task;

    .line 1224
    .local v2, "launchRootTask":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_6b

    .line 1225
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    goto :goto_6c

    :cond_6b
    move-object v3, v1

    .line 1227
    .local v3, "adjacentTaskFragment":Lcom/android/server/wm/TaskFragment;
    :goto_6c
    if-eqz v3, :cond_72

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1228
    .local v1, "adjacentRootTask":Lcom/android/server/wm/Task;
    :cond_72
    if-eqz p4, :cond_7f

    if-eqz v1, :cond_7f

    if-eq p4, v1, :cond_7e

    .line 1230
    invoke-virtual {p4, v1}, Lcom/android/server/wm/Task;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 1231
    :cond_7e
    return-object v1

    .line 1233
    :cond_7f
    return-object v2

    .line 1221
    .end local v1    # "adjacentRootTask":Lcom/android/server/wm/Task;
    .end local v2    # "launchRootTask":Lcom/android/server/wm/Task;
    .end local v3    # "adjacentTaskFragment":Lcom/android/server/wm/TaskFragment;
    :cond_80
    add-int/lit8 v0, v0, -0x1

    goto :goto_49

    .line 1241
    .end local v0    # "i":I
    :cond_83
    if-eqz p4, :cond_a3

    .line 1242
    invoke-virtual {p4}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1243
    .local v0, "launchTarget":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_a3

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_a3

    .line 1244
    if-eqz p6, :cond_a2

    .line 1245
    invoke-virtual {p6}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1246
    .local v1, "candidateRoot":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_a2

    if-eq v1, v0, :cond_a2

    .line 1247
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-ne v0, v2, :cond_a2

    .line 1248
    move-object v0, v1

    .line 1251
    .end local v1    # "candidateRoot":Lcom/android/server/wm/Task;
    :cond_a2
    return-object v0

    .line 1255
    .end local v0    # "launchTarget":Lcom/android/server/wm/Task;
    :cond_a3
    return-object v1
.end method

.method getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;
    .registers 4
    .param p1, "currentFocus"    # Lcom/android/server/wm/Task;
    .param p2, "ignoreCurrent"    # Z

    .line 1288
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableRootTask(Lcom/android/server/wm/Task;ZZI)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method getNextFocusableRootTask(Lcom/android/server/wm/Task;ZZI)Lcom/android/server/wm/Task;
    .registers 12
    .param p1, "currentFocus"    # Lcom/android/server/wm/Task;
    .param p2, "ignoreCurrent"    # Z
    .param p3, "isIgnoreWindowingMode"    # Z
    .param p4, "ignoreWindowingMode"    # I

    .line 1294
    if-eqz p1, :cond_7

    .line 1295
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 1297
    .local v0, "currentWindowingMode":I
    :goto_8
    const/4 v1, 0x0

    .line 1298
    .local v1, "candidate":Lcom/android/server/wm/Task;
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_51

    .line 1299
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 1300
    .local v3, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 1301
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 1302
    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1303
    .local v4, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_4d

    .line 1304
    return-object v4

    .line 1309
    .end local v4    # "rootTask":Lcom/android/server/wm/Task;
    :cond_2c
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1310
    .restart local v4    # "rootTask":Lcom/android/server/wm/Task;
    if-eqz p2, :cond_3d

    if-ne v4, p1, :cond_3d

    .line 1311
    goto :goto_4d

    .line 1314
    :cond_3d
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v5

    .line 1315
    .local v5, "windowingMode":I
    if-eqz p3, :cond_46

    if-ne v5, p4, :cond_46

    .line 1316
    goto :goto_4d

    .line 1319
    :cond_46
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isFocusableAndVisible()Z

    move-result v6

    if-nez v6, :cond_50

    .line 1320
    nop

    .line 1298
    .end local v3    # "child":Lcom/android/server/wm/WindowContainer;
    .end local v4    # "rootTask":Lcom/android/server/wm/Task;
    .end local v5    # "windowingMode":I
    :cond_4d
    :goto_4d
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 1323
    .restart local v3    # "child":Lcom/android/server/wm/WindowContainer;
    .restart local v4    # "rootTask":Lcom/android/server/wm/Task;
    .restart local v5    # "windowingMode":I
    :cond_50
    return-object v4

    .line 1325
    .end local v2    # "i":I
    .end local v3    # "child":Lcom/android/server/wm/WindowContainer;
    .end local v4    # "rootTask":Lcom/android/server/wm/Task;
    .end local v5    # "windowingMode":I
    :cond_51
    return-object v1
.end method

.method getNextRootTaskId()I
    .registers 2

    .line 1097
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getNextTaskIdForUser()I

    move-result v0

    return v0
.end method

.method getOrCreateRootHomeTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 1777
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask(Z)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method getOrCreateRootHomeTask(Z)Lcom/android/server/wm/Task;
    .registers 5
    .param p1, "onTop"    # Z

    .line 1789
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1792
    .local v0, "homeTask":Lcom/android/server/wm/Task;
    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->canHostHomeTask()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1793
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/wm/TaskDisplayArea;->createRootTask(IIZ)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1795
    :cond_12
    return-object v0
.end method

.method getOrCreateRootTask(IIZ)Lcom/android/server/wm/Task;
    .registers 12
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "onTop"    # Z

    .line 983
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(IIZLcom/android/server/wm/Task;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;I)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method getOrCreateRootTask(IIZLcom/android/server/wm/Task;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;I)Lcom/android/server/wm/Task;
    .registers 22
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I
    .param p3, "onTop"    # Z
    .param p4, "candidateTask"    # Lcom/android/server/wm/Task;
    .param p5, "sourceTask"    # Lcom/android/server/wm/Task;
    .param p6, "options"    # Landroid/app/ActivityOptions;
    .param p7, "launchFlags"    # I

    .line 1009
    move-object v7, p0

    move v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    if-nez v8, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getWindowingMode()I

    move-result v0

    goto :goto_10

    :cond_f
    move v0, v8

    :goto_10
    move v12, v0

    .line 1012
    .local v12, "resolvedWindowingMode":I
    invoke-static {v12, v9}, Lcom/android/server/wm/DisplayContent;->alwaysCreateRootTask(II)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1013
    invoke-virtual {p0, v12, v9}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1014
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_1e

    .line 1015
    return-object v0

    .line 1014
    .end local v0    # "rootTask":Lcom/android/server/wm/Task;
    :cond_1e
    goto :goto_79

    .line 1017
    :cond_1f
    if-eqz v11, :cond_79

    .line 1018
    if-eqz v10, :cond_27

    const v0, 0x7fffffff

    goto :goto_29

    :cond_27
    const/high16 v0, -0x80000000

    :goto_29
    move v13, v0

    .line 1019
    .local v13, "position":I
    move-object v0, p0

    move v1, v12

    move/from16 v2, p2

    move-object/from16 v3, p6

    move-object/from16 v4, p5

    move/from16 v5, p7

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;ILcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1021
    .local v0, "launchRootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_50

    .line 1022
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-nez v1, :cond_46

    .line 1023
    invoke-virtual {v0, v11, v13}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_63

    .line 1024
    :cond_46
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eq v1, v0, :cond_63

    .line 1025
    invoke-virtual {v11, v0, v13}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_63

    .line 1027
    :cond_50
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eq v1, v7, :cond_63

    .line 1028
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-nez v1, :cond_60

    .line 1029
    invoke-virtual {p0, v11, v13}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_63

    .line 1031
    :cond_60
    invoke-virtual {v11, p0, v10}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    .line 1035
    :cond_63
    :goto_63
    if-eqz v8, :cond_74

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 1036
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    if-eq v1, v8, :cond_74

    .line 1037
    invoke-virtual {v11, p1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 1039
    :cond_74
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    return-object v1

    .line 1017
    .end local v0    # "launchRootTask":Lcom/android/server/wm/Task;
    .end local v13    # "position":I
    :cond_79
    :goto_79
    nop

    .line 1041
    new-instance v0, Lcom/android/server/wm/Task$Builder;

    iget-object v1, v7, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 1042
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task$Builder;->setWindowingMode(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 1043
    invoke-virtual {v0, v9}, Lcom/android/server/wm/Task$Builder;->setActivityType(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 1044
    invoke-virtual {v0, v10}, Lcom/android/server/wm/Task$Builder;->setOnTop(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 1045
    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task$Builder;->setParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 1046
    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task$Builder;->setSourceTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 1047
    move-object/from16 v2, p6

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task$Builder;->setActivityOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 1048
    move/from16 v3, p7

    invoke-virtual {v0, v3}, Lcom/android/server/wm/Task$Builder;->setLaunchFlags(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 1049
    invoke-virtual {v0}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1041
    return-object v0
.end method

.method getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/LaunchParamsController$LaunchParams;IIZ)Lcom/android/server/wm/Task;
    .registers 22
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "candidateTask"    # Lcom/android/server/wm/Task;
    .param p4, "sourceTask"    # Lcom/android/server/wm/Task;
    .param p5, "launchParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p6, "launchFlags"    # I
    .param p7, "activityType"    # I
    .param p8, "onTop"    # Z

    .line 1061
    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    const/4 v0, 0x0

    .line 1062
    .local v0, "windowingMode":I
    if-eqz v11, :cond_c

    .line 1064
    iget v0, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    goto :goto_12

    .line 1065
    :cond_c
    if-eqz p2, :cond_12

    .line 1068
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    .line 1073
    :cond_12
    :goto_12
    invoke-virtual {p0, v0, p1, v10}, Lcom/android/server/wm/TaskDisplayArea;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v0

    .line 1075
    if-nez v10, :cond_2c

    invoke-static {p1, v0}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isFullScreenStrategyNeededInDesktopMode(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1076
    const/4 v0, 0x1

    .line 1077
    invoke-static {p1}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isFullscreenNotHideOtherAppInDesktopMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 1078
    iget-object v1, v8, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->hideOtherFreeform()V

    .line 1081
    :cond_2c
    if-nez v10, :cond_39

    if-eqz v9, :cond_39

    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-static {v1}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isLaunchNotesInKeyGuard(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1082
    const/4 v0, 0x1

    .line 1086
    :cond_39
    if-eqz p2, :cond_5e

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5e

    .line 1087
    const/4 v0, 0x1

    .line 1088
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set windowingMode to options\'s LaunchWindowingMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v0

    goto :goto_5f

    .line 1091
    :cond_5e
    move v12, v0

    .end local v0    # "windowingMode":I
    .local v12, "windowingMode":I
    :goto_5f
    move-object v0, p0

    move v1, v12

    move/from16 v2, p7

    move/from16 v3, p8

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, p2

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootTask(IIZLcom/android/server/wm/Task;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;I)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method getOrientation(I)I
    .registers 16
    .param p1, "candidate"    # I

    .line 678
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastOrientationSource:Lcom/android/server/wm/WindowContainer;

    .line 679
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getIgnoreOrientationRequest()Z

    move-result v1

    const/4 v2, -0x2

    if-eqz v1, :cond_b

    .line 680
    return v2

    .line 682
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->canSpecifyOrientation()Z

    move-result v1

    if-nez v1, :cond_25

    .line 684
    new-instance v0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/TaskDisplayArea;I)V

    .line 689
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 684
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 694
    :cond_25
    new-instance v1, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda9;-><init>()V

    .line 695
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 696
    .local v1, "nonFloatingTopTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_4f

    .line 697
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 698
    .local v3, "task":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_4f

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_4f

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 701
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->getOrientation(Lcom/android/server/wm/Task;)I

    move-result v0

    .line 702
    .local v0, "orientation":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_4e

    .line 703
    return v0

    .line 706
    :cond_4e
    return v2

    .line 710
    .end local v0    # "orientation":I
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :cond_4f
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->getOrientation(I)I

    move-result v3

    .line 711
    .local v3, "orientation":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x5

    if-eq v3, v2, :cond_7d

    const/4 v2, 0x3

    if-eq v3, v2, :cond_7d

    .line 713
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v2, :cond_7c

    int-to-long v8, v3

    .local v8, "protoLogParam0":J
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v10, v2

    .local v10, "protoLogParam1":J
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, 0x5253dbca

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v6, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-static {v2, v12, v7, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 716
    .end local v8    # "protoLogParam0":J
    .end local v10    # "protoLogParam1":J
    :cond_7c
    return v3

    .line 719
    :cond_7d
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ORIENTATION_enabled:Z

    if-eqz v2, :cond_a3

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v2

    int-to-long v8, v2

    .restart local v8    # "protoLogParam0":J
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v10, v2

    .restart local v10    # "protoLogParam1":J
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, 0x61c711e7

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v6, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v6, v4

    invoke-static {v2, v12, v7, v0, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 724
    .end local v8    # "protoLogParam0":J
    .end local v10    # "protoLogParam1":J
    :cond_a3
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastOrientation()I

    move-result v0

    return v0
.end method

.method getRootHomeTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getRootPinnedTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    return-object v0
.end method

.method getRootTask(II)Lcom/android/server/wm/Task;
    .registers 4
    .param p1, "windowingMode"    # I
    .param p2, "activityType"    # I

    .line 227
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    .line 228
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    return-object v0

    .line 230
    :cond_6
    if-ne p1, v0, :cond_b

    .line 231
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    return-object v0

    .line 233
    :cond_b
    new-instance v0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda12;

    invoke-direct {v0, p2, p1}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda12;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method protected getRootTaskCount()I
    .registers 3

    .line 1768
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1769
    .local v0, "count":[I
    new-instance v1, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda3;-><init>([I)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->forAllRootTasks(Ljava/util/function/Consumer;)V

    .line 1772
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method getSplitPackageNames()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2203
    .local v0, "splitPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isInSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 2204
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getSplitScreenRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2205
    .local v1, "splitRootTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_35

    .line 2207
    iget-object v2, v1, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 2208
    .local v3, "children":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 2209
    .local v4, "task":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_30

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_31

    :cond_30
    const/4 v5, 0x0

    :goto_31
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2210
    .end local v3    # "children":Lcom/android/server/wm/WindowContainer;
    .end local v4    # "task":Lcom/android/server/wm/Task;
    goto :goto_19

    .line 2213
    .end local v1    # "splitRootTask":Lcom/android/server/wm/Task;
    :cond_35
    return-object v0
.end method

.method getSplitScreenDividerAnchor()Landroid/view/SurfaceControl;
    .registers 2

    .line 851
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method getSplitScreenRootTask()Lcom/android/server/wm/Task;
    .registers 5

    .line 2188
    const/4 v0, 0x0

    .line 2189
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_7
    if-ltz v1, :cond_1e

    .line 2190
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 2192
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isSplitScreenRootTask()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2193
    move-object v0, v2

    .line 2194
    goto :goto_1e

    .line 2189
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 2197
    .end local v1    # "i":I
    :cond_1e
    :goto_1e
    return-object v0
.end method

.method getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .registers 1

    .line 2128
    return-object p0
.end method

.method getTopRootTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 246
    new-instance v0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method getTopRootTaskInWindowingMode(I)Lcom/android/server/wm/Task;
    .registers 3
    .param p1, "windowingMode"    # I

    .line 1803
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method getVisibleTasks()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v0, "visibleTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    new-instance v1, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda10;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 265
    return-object v0
.end method

.method hasPinnedTask()Z
    .registers 2

    .line 1934
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isOnTop()Z
    .registers 2

    .line 380
    const/4 v0, 0x1

    return v0
.end method

.method isRemoved()Z
    .registers 2

    .line 1962
    iget-boolean v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRemoved:Z

    return v0
.end method

.method isRootTaskVisible(I)Z
    .registers 4
    .param p1, "windowingMode"    # I

    .line 1949
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInWindowingMode(I)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1950
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method isSplitScreenModeActivated()Z
    .registers 2

    .line 2182
    const/4 v0, 0x0

    return v0
.end method

.method isTaskDisplayArea()Z
    .registers 2

    .line 2133
    const/4 v0, 0x1

    return v0
.end method

.method isTopRootTask(Lcom/android/server/wm/Task;)Z
    .registers 3
    .param p1, "rootTask"    # Lcom/android/server/wm/Task;

    .line 1695
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z
    .registers 15
    .param p1, "windowingMode"    # I
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "task"    # Lcom/android/server/wm/Task;

    .line 1532
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 1533
    .local v0, "supportsMultiWindow":Z
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 1535
    .local v1, "supportsFreeform":Z
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiBuild()Z

    move-result v2

    .line 1536
    .local v2, "isMiuiBuild":Z
    const/4 v3, 0x5

    if-nez v1, :cond_19

    if-ne p1, v3, :cond_19

    .line 1537
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-boolean v2, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 1538
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 1541
    :cond_19
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    .line 1542
    .local v4, "supportsPip":Z
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_ee

    .line 1543
    if-eqz p3, :cond_9e

    .line 1544
    invoke-virtual {p3, p0}, Lcom/android/server/wm/Task;->supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v1

    .line 1545
    invoke-virtual {p3, p0}, Lcom/android/server/wm/Task;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v7

    if-nez v7, :cond_35

    const/4 v7, 0x2

    if-ne p1, v7, :cond_33

    if-eqz v4, :cond_33

    goto :goto_35

    :cond_33
    move v7, v5

    goto :goto_36

    :cond_35
    :goto_35
    move v7, v6

    :goto_36
    move v0, v7

    .line 1551
    if-nez v0, :cond_98

    if-ne p1, v3, :cond_98

    if-eqz v2, :cond_98

    .line 1552
    iget-object v3, p3, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_48

    iget-object v3, p3, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_63

    .line 1553
    :cond_48
    iget-object v3, p3, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_53

    iget-object v3, p3, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_63

    .line 1554
    :cond_53
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 1555
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_63

    :cond_60
    const-string/jumbo v3, "unknown"

    :goto_63
    nop

    .line 1557
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->inFreeformWhiteList(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 1558
    const/4 v0, 0x1

    .line 1559
    const/4 v1, 0x1

    .line 1562
    :cond_6c
    iget-object v7, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isLandscapeGameApp(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_80

    iget-object v7, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1563
    invoke-static {v7}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_98

    :cond_80
    iget-object v7, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1565
    invoke-static {v6}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getAbnormalFreeformBlackList(Z)Ljava/util/List;

    move-result-object v8

    .line 1566
    invoke-static {v6}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getAbnormalFreeformWhiteList(Z)Ljava/util/List;

    move-result-object v9

    .line 1567
    invoke-static {v6}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getEnableAbnormalFreeFormDebug(Z)I

    move-result v10

    .line 1564
    invoke-static {v3, v7, v8, v9, v10}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isEnableAbnormalFreeform(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)Z

    move-result v7

    if-eqz v7, :cond_98

    .line 1568
    const/4 v0, 0x1

    .line 1569
    const/4 v1, 0x1

    .line 1574
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_98
    const/16 v3, 0x65

    if-ne p1, v3, :cond_ee

    .line 1575
    const/4 v0, 0x1

    goto :goto_ee

    .line 1578
    :cond_9e
    if-eqz p2, :cond_ee

    .line 1579
    invoke-virtual {p2, p0}, Lcom/android/server/wm/ActivityRecord;->supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v1

    .line 1580
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v4

    .line 1581
    invoke-virtual {p2, p0}, Lcom/android/server/wm/ActivityRecord;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    .line 1583
    if-eqz v0, :cond_b0

    if-nez v1, :cond_ee

    :cond_b0
    if-ne p1, v3, :cond_ee

    if-eqz v2, :cond_ee

    .line 1586
    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->inFreeformWhiteList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_be

    .line 1587
    const/4 v0, 0x1

    .line 1588
    const/4 v1, 0x1

    .line 1591
    :cond_be
    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isLandscapeGameApp(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_d4

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1592
    invoke-static {v3}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isPadScreen(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_ee

    :cond_d4
    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1594
    invoke-static {v6}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getAbnormalFreeformBlackList(Z)Ljava/util/List;

    move-result-object v8

    .line 1595
    invoke-static {v6}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getAbnormalFreeformWhiteList(Z)Ljava/util/List;

    move-result-object v9

    .line 1596
    invoke-static {v6}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getEnableAbnormalFreeFormDebug(Z)I

    move-result v10

    .line 1593
    invoke-static {v3, v7, v8, v9, v10}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isEnableAbnormalFreeform(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 1597
    const/4 v0, 0x1

    .line 1598
    const/4 v1, 0x1

    .line 1605
    :cond_ee
    :goto_ee
    if-eqz p1, :cond_f8

    .line 1606
    invoke-static {p1, v0, v1, v4}, Lcom/android/server/wm/TaskDisplayArea;->isWindowingModeSupported(IZZZ)Z

    move-result v3

    if-eqz v3, :cond_f8

    move v5, v6

    goto :goto_f9

    :cond_f8
    nop

    .line 1605
    :goto_f9
    return v5
.end method

.method synthetic lambda$getOrientation$3$com-android-server-wm-TaskDisplayArea(ILcom/android/server/wm/TaskDisplayArea;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 6
    .param p1, "candidate"    # I
    .param p2, "taskDisplayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p3, "orientation"    # Ljava/lang/Integer;

    .line 685
    if-eq p2, p0, :cond_13

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_a

    goto :goto_13

    .line 688
    :cond_a
    invoke-virtual {p2, p1}, Lcom/android/server/wm/TaskDisplayArea;->getOrientation(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 686
    :cond_13
    :goto_13
    return-object p3
.end method

.method synthetic lambda$onParentChanged$6$com-android-server-wm-TaskDisplayArea()V
    .registers 3

    .line 858
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 859
    const-string/jumbo v1, "splitScreenDividerAnchor"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 860
    const-string v1, "TaskDisplayArea.onParentChanged"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 861
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 863
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 864
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 865
    return-void
.end method

.method synthetic lambda$pauseBackTasks$7$com-android-server-wm-TaskDisplayArea(Lcom/android/server/wm/ActivityRecord;[ILcom/android/server/wm/TaskFragment;)V
    .registers 7
    .param p1, "resuming"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "someActivityPaused"    # [I
    .param p3, "taskFrag"    # Lcom/android/server/wm/TaskFragment;

    .line 1428
    invoke-virtual {p3}, Lcom/android/server/wm/TaskFragment;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1431
    .local v0, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_22

    invoke-virtual {p3, p1}, Lcom/android/server/wm/TaskFragment;->canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 1432
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/TaskDisplayArea;->shouldProhibitPauseWhenHoldingOn(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 1434
    const/4 v1, 0x0

    const-string/jumbo v2, "pauseBackTasks"

    invoke-virtual {p3, v1, p1, v2}, Lcom/android/server/wm/TaskFragment;->startPausing(ZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1435
    aget v2, p2, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p2, v1

    .line 1438
    :cond_22
    return-void
.end method

.method synthetic lambda$pauseBackTasks$8$com-android-server-wm-TaskDisplayArea(Lcom/android/server/wm/ActivityRecord;[ILcom/android/server/wm/Task;)V
    .registers 9
    .param p1, "resuming"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "someActivityPaused"    # [I
    .param p3, "leafTask"    # Lcom/android/server/wm/Task;

    .line 1416
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isLeafTaskFragment()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_26

    .line 1417
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1418
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1419
    .local v2, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_26

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eq v3, p3, :cond_26

    .line 1421
    const/4 v3, 0x0

    const-string/jumbo v4, "pauseBackTasks"

    invoke-virtual {p3, v3, p1, v4}, Lcom/android/server/wm/Task;->startPausing(ZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1422
    aget v4, p2, v3

    add-int/2addr v4, v1

    aput v4, p2, v3

    .line 1427
    .end local v0    # "top":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_26
    new-instance v0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;[I)V

    invoke-virtual {p3, v0, v1}, Lcom/android/server/wm/Task;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 1439
    return-void
.end method

.method migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 914
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V

    .line 916
    iget v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorLayerCounter:I

    if-lez v0, :cond_d

    .line 917
    iget v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mBackgroundColor:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->setBackgroundColor(IZ)V

    .line 920
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    if-nez v0, :cond_12

    .line 921
    return-void

    .line 925
    :cond_12
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 926
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->reassignLayer(Landroid/view/SurfaceControl$Transaction;)V

    .line 927
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->scheduleAnimation()V

    .line 928
    return-void
.end method

.method moveHomeActivityToTop(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 1818
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1819
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_a

    .line 1820
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    .line 1821
    return-void

    .line 1823
    :cond_a
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 1824
    return-void
.end method

.method moveHomeRootTaskToFront(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 1807
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1808
    .local v0, "homeRootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_9

    .line 1809
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 1811
    :cond_9
    return-void
.end method

.method moveRootTaskBehindBottomMostVisibleRootTask(Lcom/android/server/wm/Task;)V
    .registers 11
    .param p1, "rootTask"    # Lcom/android/server/wm/Task;

    .line 1856
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1858
    return-void

    .line 1862
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 1866
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    .line 1868
    .local v1, "isRootTask":Z
    if-eqz v1, :cond_1f

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    goto :goto_27

    :cond_1f
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    .line 1869
    .local v2, "numRootTasks":I
    :goto_27
    const/4 v4, 0x0

    .local v4, "rootTaskNdx":I
    :goto_28
    if-ge v4, v2, :cond_7b

    .line 1871
    if-eqz v1, :cond_48

    .line 1872
    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 1873
    .local v5, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    if-eqz v6, :cond_43

    .line 1874
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    invoke-direct {v6, p1}, Lcom/android/server/wm/TaskDisplayArea;->getBottomMostVisibleRootTask(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v6

    .local v6, "s":Lcom/android/server/wm/Task;
    goto :goto_47

    .line 1876
    .end local v6    # "s":Lcom/android/server/wm/Task;
    :cond_43
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v6

    .line 1878
    .end local v5    # "child":Lcom/android/server/wm/WindowContainer;
    .restart local v6    # "s":Lcom/android/server/wm/Task;
    :goto_47
    goto :goto_54

    .line 1879
    .end local v6    # "s":Lcom/android/server/wm/Task;
    :cond_48
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v6

    .line 1881
    .restart local v6    # "s":Lcom/android/server/wm/Task;
    :goto_54
    if-eq v6, p1, :cond_78

    if-nez v6, :cond_59

    .line 1882
    goto :goto_78

    .line 1884
    :cond_59
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v5

    .line 1885
    .local v5, "winMode":I
    const/4 v7, 0x1

    if-ne v5, v7, :cond_61

    goto :goto_62

    :cond_61
    move v7, v3

    .line 1886
    .local v7, "isValidWindowingMode":Z
    :goto_62
    invoke-virtual {v6, v0}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    if-eqz v8, :cond_78

    if-eqz v7, :cond_78

    .line 1888
    add-int/lit8 v0, v4, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1889
    .local v0, "position":I
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    invoke-virtual {v8, v0, p1, v3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 1891
    goto :goto_7b

    .line 1869
    .end local v0    # "position":I
    .end local v5    # "winMode":I
    .end local v6    # "s":Lcom/android/server/wm/Task;
    .end local v7    # "isValidWindowingMode":Z
    :cond_78
    :goto_78
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 1894
    .end local v4    # "rootTaskNdx":I
    :cond_7b
    :goto_7b
    return-void
.end method

.method moveRootTaskBehindRootTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V
    .registers 9
    .param p1, "rootTask"    # Lcom/android/server/wm/Task;
    .param p2, "behindRootTask"    # Lcom/android/server/wm/Task;

    .line 1912
    if-eqz p2, :cond_2e

    if-ne p2, p1, :cond_5

    goto :goto_2e

    .line 1916
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1917
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_2d

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eq v0, v1, :cond_12

    goto :goto_2d

    .line 1925
    :cond_12
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1926
    .local v1, "rootTaskIndex":I
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1927
    .local v2, "behindRootTaskIndex":I
    if-gt v1, v2, :cond_23

    .line 1928
    add-int/lit8 v3, v2, -0x1

    goto :goto_24

    :cond_23
    move v3, v2

    .line 1929
    .local v3, "insertIndex":I
    :goto_24
    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1930
    .local v5, "position":I
    invoke-virtual {v0, v5, p1, v4}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 1931
    return-void

    .line 1918
    .end local v1    # "rootTaskIndex":I
    .end local v2    # "behindRootTaskIndex":I
    .end local v3    # "insertIndex":I
    .end local v5    # "position":I
    :cond_2d
    :goto_2d
    return-void

    .line 1913
    .end local v0    # "parent":Lcom/android/server/wm/WindowContainer;
    :cond_2e
    :goto_2e
    return-void
.end method

.method onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .registers 3
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 495
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    .line 496
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->invalidateTaskLayers()V

    .line 497
    return-void
.end method

.method onLeafTaskMoved(Lcom/android/server/wm/Task;Z)V
    .registers 7
    .param p1, "t"    # Lcom/android/server/wm/Task;
    .param p2, "toTop"    # Z

    .line 459
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 460
    invoke-interface {v0, v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v0

    .line 462
    .local v0, "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-nez p2, :cond_35

    .line 463
    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastLeafTaskToFrontId:I

    if-ne v1, v2, :cond_34

    .line 464
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastLeafTaskToFrontId:I

    .line 468
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 471
    .local v1, "topMost":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_34

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->inPinMode()Z

    move-result v2

    if-nez v2, :cond_34

    .line 472
    :cond_23
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    .line 473
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    .line 472
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToFront(Landroid/app/TaskInfo;)V

    .line 476
    .end local v1    # "topMost":Lcom/android/server/wm/ActivityRecord;
    :cond_34
    return-void

    .line 480
    :cond_35
    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastLeafTaskToFrontId:I

    if-eq v1, v2, :cond_63

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_63

    if-eqz v0, :cond_4a

    .line 481
    invoke-virtual {v0}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->isRunningPinAnim()Z

    move-result v1

    if-eqz v1, :cond_4a

    goto :goto_63

    .line 486
    :cond_4a
    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iput v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastLeafTaskToFrontId:I

    .line 487
    iget v1, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1, v2}, Lcom/android/server/wm/EventLogTags;->writeWmTaskToFront(II)V

    .line 490
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToFront(Landroid/app/TaskInfo;)V

    .line 491
    return-void

    .line 483
    :cond_63
    :goto_63
    return-void
.end method

.method onLeafTaskRemoved(I)V
    .registers 3
    .param p1, "taskId"    # I

    .line 452
    iget v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastLeafTaskToFrontId:I

    if-ne v0, p1, :cond_7

    .line 453
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastLeafTaskToFrontId:I

    .line 455
    :cond_7
    return-void
.end method

.method onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .registers 5
    .param p1, "newParent"    # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "oldParent"    # Lcom/android/server/wm/ConfigurationContainer;

    .line 856
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 857
    new-instance v0, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/TaskDisplayArea;)V

    invoke-super {p0, p1, p2, v0}, Lcom/android/server/wm/DisplayArea;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/WindowContainer$PreAssignChildLayersCallback;)V

    goto :goto_28

    .line 867
    :cond_f
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/DisplayArea;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 868
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 869
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 870
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 871
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mSplitScreenDividerAnchor:Landroid/view/SurfaceControl;

    .line 873
    :goto_28
    return-void
.end method

.method onRootTaskOrderChanged(Lcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "rootTask"    # Lcom/android/server/wm/Task;

    .line 1989
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1990
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;

    invoke-interface {v1, p1}, Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;->onRootTaskOrderChanged(Lcom/android/server/wm/Task;)V

    .line 1989
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1992
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method onRootTaskRemoved(Lcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "rootTask"    # Lcom/android/server/wm/Task;

    .line 931
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v0, :cond_2b

    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRootTaskRemoved: detaching "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_32

    .line 936
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 938
    :cond_32
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    if-ne v0, p1, :cond_38

    .line 939
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    .line 942
    :cond_38
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mReparenting:Z

    if-nez v0, :cond_44

    .line 943
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->removeFreeFormActivityStack(Lcom/android/server/wm/Task;Z)V

    .line 946
    :cond_44
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->releaseSelfIfNeeded()V

    .line 947
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onRootTaskOrderChanged(Lcom/android/server/wm/Task;)V

    .line 948
    return-void
.end method

.method onRootTaskWindowingModeChanged(Lcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "rootTask"    # Lcom/android/server/wm/Task;

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    .line 270
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->addRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    .line 271
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    if-ne p1, v0, :cond_17

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq v0, p1, :cond_17

    .line 273
    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 275
    :cond_17
    return-void
.end method

.method pauseBackTasks(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 6
    .param p1, "resuming"    # Lcom/android/server/wm/ActivityRecord;

    .line 1412
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 1413
    .local v1, "someActivityPaused":[I
    new-instance v3, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/wm/TaskDisplayArea$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;[I)V

    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/TaskDisplayArea;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 1440
    aget v3, v1, v2

    if-lez v3, :cond_13

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    return v0
.end method

.method positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "child"    # Lcom/android/server/wm/WindowContainer;
    .param p3, "includingParents"    # Z

    .line 385
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 386
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    goto :goto_17

    .line 387
    :cond_a
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 388
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/wm/TaskDisplayArea;->positionChildTaskAt(ILcom/android/server/wm/Task;Z)V

    .line 394
    :goto_17
    return-void

    .line 390
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskDisplayArea can only position Task and TaskDisplayArea, but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method positionTaskBehindHome(Lcom/android/server/wm/Task;)V
    .registers 12
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 956
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 957
    .local v0, "home":Lcom/android/server/wm/Task;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 958
    .local v1, "homeParent":Lcom/android/server/wm/WindowContainer;
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    .line 959
    .local v2, "homeParentTask":Lcom/android/server/wm/Task;
    :goto_10
    if-nez v2, :cond_23

    .line 961
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    const/4 v4, 0x0

    if-ne v3, p0, :cond_1f

    .line 962
    const/high16 v3, -0x80000000

    invoke-virtual {p0, v3, p1, v4}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    goto :goto_39

    .line 964
    :cond_1f
    invoke-virtual {p1, p0, v4}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    goto :goto_39

    .line 966
    :cond_23
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-ne v2, v3, :cond_2d

    .line 968
    invoke-virtual {v2, p1}, Lcom/android/server/wm/Task;->positionChildAtBottom(Lcom/android/server/wm/Task;)V

    goto :goto_39

    .line 970
    :cond_2d
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "positionTaskBehindHome"

    move-object v3, p1

    move-object v4, v2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)Z

    .line 974
    :goto_39
    return-void
.end method

.method reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;
    .registers 6
    .param p3, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiFunction<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            "TR;TR;>;TR;Z)TR;"
        }
    .end annotation

    .line 527
    .local p1, "accumulator":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Lcom/android/server/wm/TaskDisplayArea;TR;TR;>;"
    .local p2, "initValue":Ljava/lang/Object;, "TR;"
    if-eqz p3, :cond_c

    .line 528
    nop

    .line 529
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayArea;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    .line 530
    .local v0, "result":Ljava/lang/Object;, "TR;"
    invoke-interface {p1, p0, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 532
    .end local v0    # "result":Ljava/lang/Object;, "TR;"
    :cond_c
    invoke-interface {p1, p0, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 533
    .restart local v0    # "result":Ljava/lang/Object;, "TR;"
    invoke-super {p0, p1, v0, p3}, Lcom/android/server/wm/DisplayArea;->reduceOnAllTaskDisplayAreas(Ljava/util/function/BiFunction;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method registerRootTaskOrderChangedListener(Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;

    .line 1971
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1972
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1974
    :cond_d
    return-void
.end method

.method remove()Lcom/android/server/wm/Task;
    .registers 18

    .line 2032
    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    .line 2034
    iget-object v2, v0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->shouldDestroyContentOnRemove()Z

    move-result v2

    .line 2035
    .local v2, "destroyContentOnRemoval":Z
    iget-object v3, v0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 2036
    .local v3, "toDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v4, 0x0

    .line 2044
    .local v4, "lastReparentedRootTask":Lcom/android/server/wm/Task;
    iget-object v5, v0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    .line 2046
    .local v5, "numRootTasks":I
    const/4 v6, 0x0

    move-object v10, v4

    move v11, v5

    move v12, v6

    .end local v4    # "lastReparentedRootTask":Lcom/android/server/wm/Task;
    .end local v5    # "numRootTasks":I
    .local v10, "lastReparentedRootTask":Lcom/android/server/wm/Task;
    .local v11, "numRootTasks":I
    .local v12, "i":I
    :goto_1c
    const/4 v13, 0x1

    if-ge v12, v11, :cond_a0

    .line 2047
    iget-object v4, v0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v12}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lcom/android/server/wm/WindowContainer;

    .line 2048
    .local v14, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eqz v4, :cond_39

    .line 2049
    invoke-virtual {v14}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->remove()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 2050
    .end local v10    # "lastReparentedRootTask":Lcom/android/server/wm/Task;
    .restart local v4    # "lastReparentedRootTask":Lcom/android/server/wm/Task;
    move-object v10, v4

    goto/16 :goto_9c

    .line 2052
    .end local v4    # "lastReparentedRootTask":Lcom/android/server/wm/Task;
    .restart local v10    # "lastReparentedRootTask":Lcom/android/server/wm/Task;
    :cond_39
    iget-object v4, v0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v12}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v15

    .line 2056
    .local v15, "task":Lcom/android/server/wm/Task;
    const/4 v9, 0x0

    if-nez v2, :cond_85

    .line 2057
    invoke-virtual {v15}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v4

    if-eqz v4, :cond_83

    iget-boolean v4, v15, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v4, :cond_54

    move v1, v9

    goto :goto_86

    .line 2063
    :cond_54
    invoke-virtual {v15, v3}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 2064
    nop

    .line 2065
    invoke-virtual {v15}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v5

    .line 2066
    invoke-virtual {v15}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v16, 0x0

    .line 2064
    move-object v4, v3

    move v1, v9

    move/from16 v9, v16

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/Task;

    move-result-object v4

    goto :goto_72

    .line 2070
    :cond_70
    move v1, v9

    const/4 v4, 0x0

    :goto_72
    nop

    .line 2071
    .local v4, "launchRoot":Lcom/android/server/wm/WindowContainer;
    if-nez v4, :cond_77

    move-object v5, v3

    goto :goto_78

    :cond_77
    move-object v5, v4

    :goto_78
    const v6, 0x7fffffff

    invoke-virtual {v15, v5, v6}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 2075
    invoke-virtual {v15, v1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 2076
    move-object v10, v15

    goto :goto_8c

    .line 2057
    .end local v4    # "launchRoot":Lcom/android/server/wm/WindowContainer;
    :cond_83
    move v1, v9

    goto :goto_86

    .line 2056
    :cond_85
    move v1, v9

    .line 2059
    :goto_86
    const-string/jumbo v4, "removeTaskDisplayArea"

    invoke-virtual {v15, v1, v4}, Lcom/android/server/wm/Task;->remove(ZLjava/lang/String;)V

    .line 2080
    :goto_8c
    iget-object v1, v0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    sub-int v1, v11, v1

    sub-int/2addr v12, v1

    .line 2081
    iget-object v1, v0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    move v11, v1

    .line 2046
    .end local v14    # "child":Lcom/android/server/wm/WindowContainer;
    .end local v15    # "task":Lcom/android/server/wm/Task;
    :goto_9c
    add-int/2addr v12, v13

    const/4 v1, 0x0

    goto/16 :goto_1c

    .line 2084
    .end local v12    # "i":I
    :cond_a0
    if-eqz v10, :cond_b1

    invoke-virtual {v10}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-nez v1, :cond_b1

    .line 2088
    invoke-virtual {v10}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const-string v4, "display-removed"

    invoke-virtual {v1, v4}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 2091
    :cond_b1
    iput-boolean v13, v0, Lcom/android/server/wm/TaskDisplayArea;->mRemoved:Z

    .line 2093
    return-object v10
.end method

.method protected removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 5
    .param p1, "child"    # Lcom/android/server/wm/WindowContainer;

    .line 359
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 360
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_17

    .line 361
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 362
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->removeChildTask(Lcom/android/server/wm/Task;)V

    .line 368
    :goto_17
    return-void

    .line 364
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskDisplayArea can only remove Task and TaskDisplayArea, but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeLaunchRootTask(Lcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "rootTask"    # Lcom/android/server/wm/Task;

    .line 1154
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTaskDef(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    move-result-object v0

    .line 1155
    .local v0, "def":Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;
    if-eqz v0, :cond_b

    .line 1156
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1158
    :cond_b
    return-void
.end method

.method removeRootTask(Lcom/android/server/wm/Task;)V
    .registers 2
    .param p1, "rootTask"    # Lcom/android/server/wm/Task;

    .line 1954
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1955
    return-void
.end method

.method removeRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "rootTask"    # Lcom/android/server/wm/Task;

    .line 305
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_8

    .line 306
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootHomeTask:Lcom/android/server/wm/Task;

    goto :goto_e

    .line 307
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    if-ne p1, v0, :cond_e

    .line 308
    iput-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootPinnedTask:Lcom/android/server/wm/Task;

    .line 310
    :cond_e
    :goto_e
    return-void
.end method

.method resolveWindowingMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)I
    .registers 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "task"    # Lcom/android/server/wm/Task;

    .line 1498
    if-eqz p2, :cond_7

    .line 1499
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 1503
    .local v0, "windowingMode":I
    :goto_8
    if-nez v0, :cond_1e

    .line 1504
    if-eqz p3, :cond_10

    .line 1505
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 1507
    :cond_10
    if-nez v0, :cond_18

    if-eqz p1, :cond_18

    .line 1508
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v0

    .line 1510
    :cond_18
    if-nez v0, :cond_1e

    .line 1512
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getWindowingMode()I

    move-result v0

    .line 1515
    :cond_1e
    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/wm/TaskDisplayArea;->validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v0

    .line 1516
    if-eqz v0, :cond_26

    .line 1517
    move v1, v0

    goto :goto_27

    :cond_26
    const/4 v1, 0x1

    .line 1516
    :goto_27
    return v1
.end method

.method setBackgroundColor(I)V
    .registers 3
    .param p1, "colorInt"    # I

    .line 876
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->setBackgroundColor(IZ)V

    .line 877
    return-void
.end method

.method setBackgroundColor(IZ)V
    .registers 10
    .param p1, "colorInt"    # I
    .param p2, "restore"    # Z

    .line 880
    iput p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mBackgroundColor:I

    .line 881
    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v0

    .line 886
    .local v0, "color":Landroid/graphics/Color;
    const/4 v1, 0x1

    if-nez p2, :cond_e

    .line 887
    iget v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorLayerCounter:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mColorLayerCounter:I

    .line 893
    :cond_e
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_35

    .line 894
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v4, 0x3

    new-array v4, v4, [F

    const/4 v5, 0x0

    .line 896
    invoke-virtual {v0}, Landroid/graphics/Color;->red()F

    move-result v6

    aput v6, v4, v5

    invoke-virtual {v0}, Landroid/graphics/Color;->green()F

    move-result v5

    aput v5, v4, v1

    const/4 v1, 0x2

    invoke-virtual {v0}, Landroid/graphics/Color;->blue()F

    move-result v5

    aput v5, v4, v1

    .line 895
    invoke-virtual {v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 897
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->scheduleAnimation()V

    .line 899
    :cond_35
    return-void
.end method

.method setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V
    .registers 2
    .param p1, "b"    # Landroid/view/SurfaceControl$Builder;

    .line 316
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    .line 317
    invoke-super {p0, p1}, Lcom/android/server/wm/DisplayArea;->setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V

    .line 318
    return-void
.end method

.method setLaunchAdjacentFlagRootTask(Lcom/android/server/wm/Task;)V
    .registers 5
    .param p1, "adjacentFlagRootTask"    # Lcom/android/server/wm/Task;

    .line 1161
    if-eqz p1, :cond_3f

    .line 1162
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_26

    .line 1168
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_d

    goto :goto_3f

    .line 1169
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set non-adjacent root as launch adjacent flag root tr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1163
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set not mCreatedByOrganizer as launch adjacent flag root tr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1175
    :cond_3f
    :goto_3f
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchAdjacentFlagRootTask:Lcom/android/server/wm/Task;

    .line 1176
    return-void
.end method

.method setLaunchRootTask(Lcom/android/server/wm/Task;[I[I)V
    .registers 7
    .param p1, "rootTask"    # Lcom/android/server/wm/Task;
    .param p2, "windowingModes"    # [I
    .param p3, "activityTypes"    # [I

    .line 1132
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_2f

    .line 1137
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTaskDef(Lcom/android/server/wm/Task;)Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    move-result-object v0

    .line 1138
    .local v0, "def":Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;
    if-eqz v0, :cond_10

    .line 1140
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_19

    .line 1142
    :cond_10
    new-instance v1, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;-><init>(Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef-IA;)V

    move-object v0, v1

    .line 1143
    iput-object p1, v0, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->task:Lcom/android/server/wm/Task;

    .line 1146
    :goto_19
    iput-object p3, v0, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->activityTypes:[I

    .line 1147
    iput-object p2, v0, Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;->windowingModes:[I

    .line 1148
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1149
    :cond_29
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLaunchRootTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1151
    :cond_2e
    return-void

    .line 1133
    .end local v0    # "def":Lcom/android/server/wm/TaskDisplayArea$LaunchRootTaskDef;
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set not mCreatedByOrganizer as launch root tr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWindowingMode(I)V
    .registers 4
    .param p1, "windowingMode"    # I

    .line 2118
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2119
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mTempConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2120
    .local v0, "tempRequestWindowConfiguration":Landroid/app/WindowConfiguration;
    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 2121
    invoke-virtual {v0, p1}, Landroid/app/WindowConfiguration;->setDisplayWindowingMode(I)V

    .line 2122
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mTempConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2123
    return-void
.end method

.method supportsActivityMinWidthHeightMultiWindow(IILandroid/content/pm/ActivityInfo;)Z
    .registers 11
    .param p1, "minWidth"    # I
    .param p2, "minHeight"    # I
    .param p3, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 1652
    const/4 v0, 0x1

    if-eqz p3, :cond_a

    invoke-virtual {p3}, Landroid/content/pm/ActivityInfo;->shouldCheckMinWidthHeightForMultiWindow()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1653
    return v0

    .line 1655
    :cond_a
    if-gtz p1, :cond_f

    if-gtz p2, :cond_f

    .line 1657
    return v0

    .line 1659
    :cond_f
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRespectsActivityMinWidthHeightMultiWindow:I

    .line 1661
    .local v1, "configRespectsActivityMinWidthHeightMultiWindow":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    .line 1663
    return v0

    .line 1665
    :cond_17
    if-nez v1, :cond_20

    .line 1666
    invoke-direct {p0}, Lcom/android/server/wm/TaskDisplayArea;->isLargeEnoughForMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1668
    return v0

    .line 1671
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 1672
    .local v2, "config":Landroid/content/res/Configuration;
    iget v3, v2, Landroid/content/res/Configuration;->orientation:I

    .line 1673
    .local v3, "orientation":I
    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v3, v4, :cond_41

    .line 1674
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMinPercentageMultiWindowSupportWidth:F

    iget v6, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    iget-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1675
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    .line 1676
    .local v4, "maxSupportMinWidth":I
    if-gt p1, v4, :cond_3f

    goto :goto_40

    :cond_3f
    move v0, v5

    :goto_40
    return v0

    .line 1678
    .end local v4    # "maxSupportMinWidth":I
    :cond_41
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mMinPercentageMultiWindowSupportHeight:F

    iget v6, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v6, v6

    mul-float/2addr v4, v6

    iget-object v6, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1680
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    .line 1681
    .local v4, "maxSupportMinHeight":I
    if-gt p2, v4, :cond_56

    goto :goto_57

    :cond_56
    move v0, v5

    :goto_57
    return v0
.end method

.method supportsNonResizableMultiWindow()Z
    .registers 4

    .line 1631
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsNonResizableMultiWindow:I

    .line 1633
    .local v0, "configSupportsNonResizableMultiWindow":I
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDevEnableNonResizableMultiWindow:Z

    const/4 v2, 0x1

    if-nez v1, :cond_18

    if-ne v0, v2, :cond_e

    goto :goto_18

    .line 1638
    :cond_e
    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    .line 1640
    const/4 v1, 0x0

    return v1

    .line 1643
    :cond_13
    invoke-direct {p0}, Lcom/android/server/wm/TaskDisplayArea;->isLargeEnoughForMultiWindow()Z

    move-result v1

    return v1

    .line 1636
    :cond_18
    :goto_18
    return v2
.end method

.method topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 1699
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .registers 3
    .param p1, "considerKeyguardState"    # Z

    .line 1715
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .registers 9
    .param p1, "considerKeyguardState"    # Z
    .param p2, "excludeFreeform"    # Z

    .line 1719
    const/4 v0, 0x0

    .line 1720
    .local v0, "topRunning":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1721
    .local v1, "focusedRootTask":Lcom/android/server/wm/Task;
    const/4 v2, 0x1

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v3

    if-eqz v3, :cond_2e

    if-eqz p2, :cond_2e

    .line 1722
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "topRunningActivity() skip freeform focusedStack: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    const/4 v3, 0x5

    invoke-virtual {p0, v1, v2, v2, v3}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableRootTask(Lcom/android/server/wm/Task;ZZI)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1727
    :cond_2e
    if-eqz v1, :cond_34

    .line 1728
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1732
    :cond_34
    if-nez v0, :cond_78

    .line 1733
    iget-object v3, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_3d
    if-ltz v3, :cond_78

    .line 1734
    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 1735
    .local v2, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eqz v4, :cond_59

    .line 1736
    nop

    .line 1737
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1738
    if-eqz v0, :cond_75

    .line 1739
    goto :goto_78

    .line 1743
    :cond_59
    iget-object v4, p0, Lcom/android/server/wm/TaskDisplayArea;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1745
    .local v4, "rootTask":Lcom/android/server/wm/Task;
    if-eq v4, v1, :cond_75

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isTopActivityFocusable()Z

    move-result v5

    if-nez v5, :cond_6e

    .line 1746
    goto :goto_75

    .line 1748
    :cond_6e
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1749
    if-eqz v0, :cond_75

    .line 1750
    goto :goto_78

    .line 1733
    .end local v2    # "child":Lcom/android/server/wm/WindowContainer;
    .end local v4    # "rootTask":Lcom/android/server/wm/Task;
    :cond_75
    :goto_75
    add-int/lit8 v3, v3, -0x1

    goto :goto_3d

    .line 1757
    .end local v3    # "i":I
    :cond_78
    :goto_78
    if-eqz v0, :cond_96

    if-eqz p1, :cond_96

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1758
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v2

    .line 1759
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    move-result v2

    if-eqz v2, :cond_96

    .line 1760
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v2

    if-nez v2, :cond_96

    .line 1761
    const/4 v2, 0x0

    return-object v2

    .line 1764
    :cond_96
    return-object v0
.end method

.method unregisterRootTaskOrderChangedListener(Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;

    .line 1980
    iget-object v0, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootTaskOrderChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1981
    return-void
.end method

.method updateLastFocusedRootTask(Lcom/android/server/wm/Task;Ljava/lang/String;)V
    .registers 9
    .param p1, "prevFocusedTask"    # Lcom/android/server/wm/Task;
    .param p2, "updateLastFocusedTaskReason"    # Ljava/lang/String;

    .line 1354
    if-nez p2, :cond_3

    .line 1355
    return-void

    .line 1358
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1359
    .local v0, "currentFocusedTask":Lcom/android/server/wm/Task;
    if-ne v0, p1, :cond_a

    .line 1360
    return-void

    .line 1365
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1366
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->clearLastPausedActivity()V

    .line 1369
    :cond_15
    iput-object p1, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedRootTask:Lcom/android/server/wm/Task;

    .line 1370
    iget-object v1, p0, Lcom/android/server/wm/TaskDisplayArea;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v1, v1, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    iget-object v2, p0, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1372
    const/4 v3, -0x1

    if-nez v0, :cond_24

    move v4, v3

    goto :goto_28

    :cond_24
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v4

    .line 1373
    :goto_28
    iget-object v5, p0, Lcom/android/server/wm/TaskDisplayArea;->mLastFocusedRootTask:Lcom/android/server/wm/Task;

    if-nez v5, :cond_2d

    goto :goto_31

    :cond_2d
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v3

    .line 1370
    :goto_31
    invoke-static {v1, v2, v4, v3, p2}, Lcom/android/server/wm/EventLogTags;->writeWmFocusedRootTask(IIIILjava/lang/String;)V

    .line 1375
    return-void
.end method

.method validateWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I
    .registers 5
    .param p1, "windowingMode"    # I
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "task"    # Lcom/android/server/wm/Task;

    .line 1620
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskDisplayArea;->isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1621
    const/4 v0, 0x0

    return v0

    .line 1623
    :cond_8
    return p1
.end method
