.class Lcom/android/server/wm/RunningTasks;
.super Ljava/lang/Object;
.source "RunningTasks.java"


# static fields
.field static final FLAG_ALLOWED:I = 0x2

.field static final FLAG_CROSS_USERS:I = 0x4

.field static final FLAG_FILTER_ONLY_VISIBLE_RECENTS:I = 0x1

.field static final FLAG_KEEP_INTENT_EXTRA:I = 0x8


# instance fields
.field private mAllowed:Z

.field private mCallingUid:I

.field private mCrossUser:Z

.field private mFilterOnlyVisibleRecents:Z

.field private mKeepIntentExtra:Z

.field private mProfileIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field private final mTmpFocusedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpInvisibleTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpSortedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpVisibleTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mUserId:I


# direct methods
.method public static synthetic $r8$lambda$aFBbfqyz8Q9KhX3puvL-WHTqL88(Lcom/android/server/wm/RunningTasks;Lcom/android/server/wm/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/RunningTasks;->processTask(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RunningTasks;->mTmpInvisibleTasks:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RunningTasks;->mTmpFocusedTasks:Ljava/util/ArrayList;

    return-void
.end method

.method private createRunningTaskInfo(Lcom/android/server/wm/Task;J)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 7
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "visibleActiveTime"    # J

    .line 182
    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 183
    .local v0, "rti":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-boolean v1, p0, Lcom/android/server/wm/RunningTasks;->mKeepIntentExtra:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;Z)V

    .line 184
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_14

    .line 185
    iput-wide p2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    .line 188
    :cond_14
    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 190
    iget-boolean v1, p0, Lcom/android/server/wm/RunningTasks;->mAllowed:Z

    if-nez v1, :cond_1f

    .line 191
    invoke-static {p1, v0}, Lcom/android/server/wm/Task;->trimIneffectiveInfo(Lcom/android/server/wm/Task;Landroid/app/TaskInfo;)V

    .line 193
    :cond_1f
    return-object v0
.end method

.method private processTask(Lcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 141
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_7

    .line 143
    return-void

    .line 145
    :cond_7
    iget v0, p1, Lcom/android/server/wm/Task;->effectiveUid:I

    iget v1, p0, Lcom/android/server/wm/RunningTasks;->mCallingUid:I

    if-eq v0, v1, :cond_2b

    .line 146
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget v1, p0, Lcom/android/server/wm/RunningTasks;->mUserId:I

    if-eq v0, v1, :cond_26

    iget-boolean v0, p0, Lcom/android/server/wm/RunningTasks;->mCrossUser:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/wm/RunningTasks;->mProfileIds:Landroid/util/ArraySet;

    iget v1, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 149
    return-void

    .line 151
    :cond_26
    iget-boolean v0, p0, Lcom/android/server/wm/RunningTasks;->mAllowed:Z

    if-nez v0, :cond_2b

    .line 153
    return-void

    .line 156
    :cond_2b
    iget-boolean v0, p0, Lcom/android/server/wm/RunningTasks;->mFilterOnlyVisibleRecents:Z

    if-eqz v0, :cond_46

    .line 157
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_46

    .line 158
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_46

    iget-object v0, p0, Lcom/android/server/wm/RunningTasks;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 159
    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 162
    return-void

    .line 166
    :cond_46
    invoke-static {}, Lcom/android/server/wm/PreloadStateManagerStub;->get()Lcom/android/server/wm/PreloadStateManagerStub;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/PreloadStateManagerStub;->isPreloadDisplayId(I)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 167
    return-void

    .line 172
    :cond_55
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-nez v0, :cond_68

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_62

    goto :goto_68

    .line 176
    :cond_62
    iget-object v0, p0, Lcom/android/server/wm/RunningTasks;->mTmpInvisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6d

    .line 174
    :cond_68
    :goto_68
    iget-object v0, p0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :goto_6d
    return-void
.end method

.method private processTaskInWindowContainer(Lcom/android/server/wm/WindowContainer;)V
    .registers 4
    .param p1, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 134
    new-instance v0, Lcom/android/server/wm/RunningTasks$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/RunningTasks$$ExternalSyntheticLambda0;-><init>()V

    const-class v1, Lcom/android/server/wm/Task;

    .line 135
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 134
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 136
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 137
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 138
    return-void
.end method


# virtual methods
.method getTasks(ILjava/util/List;ILcom/android/server/wm/RootWindowContainer;ILandroid/util/ArraySet;)V
    .registers 22
    .param p1, "maxNum"    # I
    .param p3, "flags"    # I
    .param p4, "root"    # Lcom/android/server/wm/RootWindowContainer;
    .param p5, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;I",
            "Lcom/android/server/wm/RootWindowContainer;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .local p6, "profileIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    if-gtz v1, :cond_8

    .line 64
    return-void

    .line 67
    :cond_8
    move/from16 v3, p5

    iput v3, v0, Lcom/android/server/wm/RunningTasks;->mCallingUid:I

    .line 68
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iput v4, v0, Lcom/android/server/wm/RunningTasks;->mUserId:I

    .line 69
    and-int/lit8 v4, p3, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v5, :cond_1b

    move v4, v7

    goto :goto_1c

    :cond_1b
    move v4, v6

    :goto_1c
    iput-boolean v4, v0, Lcom/android/server/wm/RunningTasks;->mCrossUser:Z

    .line 70
    move-object/from16 v4, p6

    iput-object v4, v0, Lcom/android/server/wm/RunningTasks;->mProfileIds:Landroid/util/ArraySet;

    .line 71
    and-int/lit8 v5, p3, 0x2

    const/4 v8, 0x2

    if-ne v5, v8, :cond_29

    move v5, v7

    goto :goto_2a

    :cond_29
    move v5, v6

    :goto_2a
    iput-boolean v5, v0, Lcom/android/server/wm/RunningTasks;->mAllowed:Z

    .line 72
    and-int/lit8 v5, p3, 0x1

    if-ne v5, v7, :cond_32

    move v5, v7

    goto :goto_33

    :cond_32
    move v5, v6

    :goto_33
    iput-boolean v5, v0, Lcom/android/server/wm/RunningTasks;->mFilterOnlyVisibleRecents:Z

    .line 74
    iget-object v5, v2, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/wm/RunningTasks;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 75
    and-int/lit8 v5, p3, 0x8

    const/16 v8, 0x8

    if-ne v5, v8, :cond_45

    move v5, v7

    goto :goto_46

    :cond_45
    move v5, v6

    :goto_46
    iput-boolean v5, v0, Lcom/android/server/wm/RunningTasks;->mKeepIntentExtra:Z

    .line 77
    instance-of v5, v2, Lcom/android/server/wm/RootWindowContainer;

    if-eqz v5, :cond_55

    .line 78
    new-instance v5, Lcom/android/server/wm/RunningTasks$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/android/server/wm/RunningTasks$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/RunningTasks;)V

    invoke-virtual {v2, v5}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    goto :goto_7e

    .line 86
    :cond_55
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 87
    .local v5, "dc":Lcom/android/server/wm/DisplayContent;
    const/4 v8, 0x0

    if-eqz v5, :cond_67

    .line 88
    iget-object v9, v5, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v9, :cond_68

    iget-object v8, v5, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    goto :goto_68

    .line 89
    :cond_67
    nop

    :cond_68
    :goto_68
    nop

    .line 91
    .local v8, "focusedTask":Lcom/android/server/wm/Task;
    if-eqz v8, :cond_73

    .line 92
    invoke-virtual {v8, v2}, Lcom/android/server/wm/Task;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v9

    if-eqz v9, :cond_73

    move v6, v7

    goto :goto_74

    :cond_73
    nop

    .line 93
    .local v6, "rootContainsFocusedTask":Z
    :goto_74
    if-eqz v6, :cond_7b

    .line 94
    iget-object v7, v0, Lcom/android/server/wm/RunningTasks;->mTmpFocusedTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_7b
    invoke-direct {p0, v2}, Lcom/android/server/wm/RunningTasks;->processTaskInWindowContainer(Lcom/android/server/wm/WindowContainer;)V

    .line 99
    .end local v5    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "rootContainsFocusedTask":Z
    .end local v8    # "focusedTask":Lcom/android/server/wm/Task;
    :goto_7e
    iget-object v5, v0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 100
    .local v5, "visibleTaskCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_85
    iget-object v7, v0, Lcom/android/server/wm/RunningTasks;->mTmpFocusedTasks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_a5

    .line 101
    iget-object v7, v0, Lcom/android/server/wm/RunningTasks;->mTmpFocusedTasks:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Task;

    .line 102
    .local v7, "focusedTask":Lcom/android/server/wm/Task;
    iget-object v8, v0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v8

    .line 103
    .local v8, "containsFocusedTask":Z
    if-eqz v8, :cond_a2

    .line 105
    iget-object v9, v0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v7    # "focusedTask":Lcom/android/server/wm/Task;
    .end local v8    # "containsFocusedTask":Z
    :cond_a2
    add-int/lit8 v6, v6, 0x1

    goto :goto_85

    .line 108
    .end local v6    # "i":I
    :cond_a5
    iget-object v6, v0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b4

    .line 109
    iget-object v6, v0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 111
    :cond_b4
    iget-object v6, v0, Lcom/android/server/wm/RunningTasks;->mTmpInvisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c3

    .line 112
    iget-object v6, v0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/android/server/wm/RunningTasks;->mTmpInvisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 116
    :cond_c3
    iget-object v6, v0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 117
    .local v6, "size":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 118
    .local v7, "now":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_d2
    if-ge v9, v6, :cond_f1

    .line 119
    iget-object v10, v0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/Task;

    .line 123
    .local v10, "task":Lcom/android/server/wm/Task;
    if-ge v9, v5, :cond_e3

    int-to-long v11, v6

    add-long/2addr v11, v7

    int-to-long v13, v9

    sub-long/2addr v11, v13

    goto :goto_e5

    :cond_e3
    const-wide/16 v11, -0x1

    .line 124
    .local v11, "visibleActiveTime":J
    :goto_e5
    invoke-direct {p0, v10, v11, v12}, Lcom/android/server/wm/RunningTasks;->createRunningTaskInfo(Lcom/android/server/wm/Task;J)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v13

    move-object/from16 v14, p2

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v10    # "task":Lcom/android/server/wm/Task;
    .end local v11    # "visibleActiveTime":J
    add-int/lit8 v9, v9, 0x1

    goto :goto_d2

    :cond_f1
    move-object/from16 v14, p2

    .line 127
    .end local v9    # "i":I
    iget-object v9, v0, Lcom/android/server/wm/RunningTasks;->mTmpFocusedTasks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 128
    iget-object v9, v0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 129
    iget-object v9, v0, Lcom/android/server/wm/RunningTasks;->mTmpInvisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 130
    iget-object v9, v0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 131
    return-void
.end method

.method synthetic lambda$getTasks$0$com-android-server-wm-RunningTasks(Lcom/android/server/wm/DisplayContent;)V
    .registers 4
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 79
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 80
    .local v0, "focusedTask":Lcom/android/server/wm/Task;
    :goto_c
    if-eqz v0, :cond_13

    .line 81
    iget-object v1, p0, Lcom/android/server/wm/RunningTasks;->mTmpFocusedTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_13
    invoke-direct {p0, p1}, Lcom/android/server/wm/RunningTasks;->processTaskInWindowContainer(Lcom/android/server/wm/WindowContainer;)V

    .line 84
    return-void
.end method
