.class public Lcom/android/server/wm/RunningTasks;
.super Ljava/lang/Object;
.source "RunningTasks.java"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public mAllowed:Z

.field public mCallingUid:I

.field public mCrossUser:Z

.field public mFilterOnlyVisibleRecents:Z

.field public mKeepIntentExtra:Z

.field public mProfileIds:Landroid/util/ArraySet;

.field public mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field public final mTmpFocusedTasks:Ljava/util/ArrayList;

.field public final mTmpInvisibleTasks:Ljava/util/ArrayList;

.field public final mTmpSortedTasks:Ljava/util/ArrayList;

.field public final mTmpVisibleTasks:Ljava/util/ArrayList;

.field public mUserId:I


# direct methods
.method public static synthetic $r8$lambda$MfBca7mzpEqQjGaOD89UUs0nLyk(Lcom/android/server/wm/RunningTasks;Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RunningTasks;->lambda$getTasks$0(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RunningTasks;->mTmpInvisibleTasks:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RunningTasks;->mTmpFocusedTasks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/server/wm/Task;)V
    .registers 4

    .line 137
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_43

    .line 141
    :cond_7
    iget v0, p1, Lcom/android/server/wm/Task;->effectiveUid:I

    iget v1, p0, Lcom/android/server/wm/RunningTasks;->mCallingUid:I

    if-eq v0, v1, :cond_29

    .line 142
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget v1, p0, Lcom/android/server/wm/RunningTasks;->mUserId:I

    if-eq v0, v1, :cond_24

    iget-boolean v1, p0, Lcom/android/server/wm/RunningTasks;->mCrossUser:Z

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/android/server/wm/RunningTasks;->mProfileIds:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_43

    .line 147
    :cond_24
    iget-boolean v0, p0, Lcom/android/server/wm/RunningTasks;->mAllowed:Z

    if-nez v0, :cond_29

    goto :goto_43

    .line 152
    :cond_29
    iget-boolean v0, p0, Lcom/android/server/wm/RunningTasks;->mFilterOnlyVisibleRecents:Z

    if-eqz v0, :cond_44

    .line 153
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_44

    .line 154
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_44

    iget-object v0, p0, Lcom/android/server/wm/RunningTasks;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 155
    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_44

    :goto_43
    return-void

    .line 160
    :cond_44
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 161
    iget-object p0, p0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 163
    :cond_50
    iget-object p0, p0, Lcom/android/server/wm/RunningTasks;->mTmpInvisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 34
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RunningTasks;->accept(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public final createRunningTaskInfo(Lcom/android/server/wm/Task;J)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 7

    .line 169
    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 170
    iget-boolean v1, p0, Lcom/android/server/wm/RunningTasks;->mKeepIntentExtra:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;Z)V

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_14

    .line 172
    iput-wide p2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    .line 175
    :cond_14
    iget p2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput p2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 177
    iget-boolean p0, p0, Lcom/android/server/wm/RunningTasks;->mAllowed:Z

    if-nez p0, :cond_1f

    .line 178
    invoke-static {p1, v0}, Lcom/android/server/wm/Task;->trimIneffectiveInfo(Lcom/android/server/wm/Task;Landroid/app/TaskInfo;)V

    :cond_1f
    return-object v0
.end method

.method public getTasks(ILjava/util/List;ILcom/android/server/wm/RecentTasks;Lcom/android/server/wm/WindowContainer;ILandroid/util/ArraySet;)V
    .registers 14

    if-gtz p1, :cond_3

    return-void

    .line 65
    :cond_3
    iput p6, p0, Lcom/android/server/wm/RunningTasks;->mCallingUid:I

    .line 66
    invoke-static {p6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p6

    iput p6, p0, Lcom/android/server/wm/RunningTasks;->mUserId:I

    and-int/lit8 p6, p3, 0x4

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p6, v0, :cond_14

    move p6, v2

    goto :goto_15

    :cond_14
    move p6, v1

    .line 67
    :goto_15
    iput-boolean p6, p0, Lcom/android/server/wm/RunningTasks;->mCrossUser:Z

    .line 68
    iput-object p7, p0, Lcom/android/server/wm/RunningTasks;->mProfileIds:Landroid/util/ArraySet;

    and-int/lit8 p6, p3, 0x2

    const/4 p7, 0x2

    if-ne p6, p7, :cond_20

    move p6, v2

    goto :goto_21

    :cond_20
    move p6, v1

    .line 69
    :goto_21
    iput-boolean p6, p0, Lcom/android/server/wm/RunningTasks;->mAllowed:Z

    and-int/lit8 p6, p3, 0x1

    if-ne p6, v2, :cond_29

    move p6, v2

    goto :goto_2a

    :cond_29
    move p6, v1

    .line 70
    :goto_2a
    iput-boolean p6, p0, Lcom/android/server/wm/RunningTasks;->mFilterOnlyVisibleRecents:Z

    .line 72
    iput-object p4, p0, Lcom/android/server/wm/RunningTasks;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    const/16 p4, 0x8

    and-int/2addr p3, p4

    if-ne p3, p4, :cond_34

    goto :goto_35

    :cond_34
    move v2, v1

    .line 73
    :goto_35
    iput-boolean v2, p0, Lcom/android/server/wm/RunningTasks;->mKeepIntentExtra:Z

    .line 75
    instance-of p3, p5, Lcom/android/server/wm/RootWindowContainer;

    if-eqz p3, :cond_46

    .line 76
    check-cast p5, Lcom/android/server/wm/RootWindowContainer;

    new-instance p3, Lcom/android/server/wm/RunningTasks$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/server/wm/RunningTasks$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/RunningTasks;)V

    invoke-virtual {p5, p3}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    goto :goto_65

    .line 84
    :cond_46
    invoke-virtual {p5}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_55

    .line 86
    iget-object p3, p3, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz p3, :cond_55

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p4

    :cond_55
    if-eqz p4, :cond_62

    .line 90
    invoke-virtual {p4, p5}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result p3

    if-eqz p3, :cond_62

    .line 92
    iget-object p3, p0, Lcom/android/server/wm/RunningTasks;->mTmpFocusedTasks:Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_62
    invoke-virtual {p0, p5}, Lcom/android/server/wm/RunningTasks;->processTaskInWindowContainer(Lcom/android/server/wm/WindowContainer;)V

    .line 97
    :goto_65
    iget-object p3, p0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    move p4, v1

    .line 98
    :goto_6c
    iget-object p5, p0, Lcom/android/server/wm/RunningTasks;->mTmpFocusedTasks:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p5

    if-ge p4, p5, :cond_8c

    .line 99
    iget-object p5, p0, Lcom/android/server/wm/RunningTasks;->mTmpFocusedTasks:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/server/wm/Task;

    .line 100
    iget-object p6, p0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {p6, p5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_89

    .line 103
    iget-object p6, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    invoke-virtual {p6, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_89
    add-int/lit8 p4, p4, 0x1

    goto :goto_6c

    .line 106
    :cond_8c
    iget-object p4, p0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_9b

    .line 107
    iget-object p4, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    iget-object p5, p0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 109
    :cond_9b
    iget-object p4, p0, Lcom/android/server/wm/RunningTasks;->mTmpInvisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_aa

    .line 110
    iget-object p4, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    iget-object p5, p0, Lcom/android/server/wm/RunningTasks;->mTmpInvisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 114
    :cond_aa
    iget-object p4, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p4

    :goto_b8
    if-ge v1, p1, :cond_d5

    .line 117
    iget-object p6, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    invoke-virtual {p6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/android/server/wm/Task;

    if-ge v1, p3, :cond_c9

    int-to-long v2, p1

    add-long/2addr v2, p4

    int-to-long v4, v1

    sub-long/2addr v2, v4

    goto :goto_cb

    :cond_c9
    const-wide/16 v2, -0x1

    .line 122
    :goto_cb
    invoke-virtual {p0, p6, v2, v3}, Lcom/android/server/wm/RunningTasks;->createRunningTaskInfo(Lcom/android/server/wm/Task;J)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p6

    invoke-interface {p2, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_b8

    .line 125
    :cond_d5
    iget-object p1, p0, Lcom/android/server/wm/RunningTasks;->mTmpFocusedTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 126
    iget-object p1, p0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 127
    iget-object p1, p0, Lcom/android/server/wm/RunningTasks;->mTmpInvisibleTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 128
    iget-object p0, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final synthetic lambda$getTasks$0(Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 77
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_11

    .line 79
    iget-object v1, p0, Lcom/android/server/wm/RunningTasks;->mTmpFocusedTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RunningTasks;->processTaskInWindowContainer(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public final processTaskInWindowContainer(Lcom/android/server/wm/WindowContainer;)V
    .registers 3

    const/4 v0, 0x1

    .line 132
    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    return-void
.end method
