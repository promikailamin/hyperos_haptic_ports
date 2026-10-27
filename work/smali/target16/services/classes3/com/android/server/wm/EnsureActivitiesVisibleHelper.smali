.class public Lcom/android/server/wm/EnsureActivitiesVisibleHelper;
.super Ljava/lang/Object;
.source "EnsureActivitiesVisibleHelper.java"


# instance fields
.field public mAboveTop:Z

.field public mBehindFullyOccludedContainer:Z

.field public mContainerShouldBeVisible:Z

.field public mNotifyClients:Z

.field public final mTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public static synthetic $r8$lambda$QjmemDRlAMjTs9p6w-73LC8Uhds(Ljava/util/ArrayList;Lcom/android/server/wm/TaskFragment;)V
    .registers 2

    .line 129
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$pFgq3mv7pWvdD6HY9d3CCGkWB-g(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskFragment;)Z
    .registers 2

    .line 114
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/TaskFragment;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    return-void
.end method


# virtual methods
.method public final makeVisibleAndRestartIfNeeded(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityRecord;)V
    .registers 6

    .line 235
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget-boolean v0, p3, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz v0, :cond_e

    .line 239
    :cond_b
    invoke-virtual {p3, v1}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    :cond_e
    if-eq p3, p1, :cond_1b

    .line 241
    iget-boolean p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    if-eqz p1, :cond_1b

    .line 242
    iget-object p0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, p3, p2, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    :cond_1b
    return-void
.end method

.method public process(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 12

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->reset(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 76
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 78
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->checkTranslucentActivityWaiting(Lcom/android/server/wm/ActivityRecord;)V

    .line 84
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_38

    iget-boolean v0, v0, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 86
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskFragment;->canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_38

    if-eqz p1, :cond_36

    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 87
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_38

    :cond_36
    move v0, v2

    goto :goto_39

    :cond_38
    move v0, v1

    .line 90
    :goto_39
    iget-object v3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    :goto_43
    if-ltz v3, :cond_d3

    .line 91
    iget-object v5, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 92
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    if-eqz v6, :cond_c2

    .line 94
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_c2

    .line 95
    invoke-virtual {v6, p1, p2}, Lcom/android/server/wm/TaskFragment;->updateActivityVisibilities(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 98
    iget-boolean v5, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    .line 99
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_78

    .line 100
    invoke-virtual {v6, p1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v7

    if-nez v7, :cond_78

    move v7, v2

    goto :goto_79

    :cond_78
    move v7, v1

    :goto_79
    or-int/2addr v5, v7

    iput-boolean v5, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    .line 101
    iget-boolean v5, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    if-eqz v5, :cond_8a

    iget-object v5, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    if-ne v5, v6, :cond_8a

    .line 102
    iput-boolean v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    .line 105
    :cond_8a
    iget-boolean v5, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    if-eqz v5, :cond_8f

    goto :goto_cf

    :cond_8f
    if-eqz v4, :cond_ac

    .line 109
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ac

    .line 111
    invoke-virtual {v6, p1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    if-nez v5, :cond_cf

    new-instance v5, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda0;

    invoke-direct {v5, p1}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    .line 112
    invoke-virtual {v6, v5}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v5

    if-eqz v5, :cond_a9

    goto :goto_cf

    .line 118
    :cond_a9
    iput-boolean v2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    goto :goto_cf

    .line 123
    :cond_ac
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v5

    if-eqz v5, :cond_cf

    if-nez v4, :cond_b9

    .line 125
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 128
    :cond_b9
    new-instance v5, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda1;

    invoke-direct {v5, v4}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v6, v5}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Consumer;)V

    goto :goto_cf

    .line 132
    :cond_c2
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_cf

    .line 133
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    invoke-virtual {p0, v5, p1, v0}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->setActivityVisibilityState(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_cf
    :goto_cf
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_43

    :cond_d3
    return-void
.end method

.method public reset(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 5

    .line 49
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 52
    :goto_e
    iput-boolean v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    .line 53
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContainerShouldBeVisible:Z

    xor-int/2addr p1, v1

    .line 54
    iput-boolean p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    .line 55
    iput-boolean p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    return-void
.end method

.method public final setActivityVisibilityState(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 9

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    .line 141
    :goto_9
    iget-boolean v3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    if-eqz v3, :cond_13

    if-nez v0, :cond_13

    .line 144
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->makeInvisible()V

    return-void

    .line 147
    :cond_13
    iput-boolean v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    .line 149
    iget-boolean v3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityRecord;->updateVisibilityIgnoringKeyguard(Z)V

    .line 150
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisibleUnchecked()Z

    move-result v3

    .line 153
    iget-boolean v4, p1, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v4, :cond_2e

    .line 154
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 161
    iput-boolean v2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    goto :goto_39

    .line 163
    :cond_2b
    iput-boolean v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    goto :goto_39

    .line 165
    :cond_2e
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 166
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->cancelInitializing()V

    :cond_39
    :goto_39
    if-eqz v3, :cond_76

    .line 170
    iget-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_40

    goto :goto_8d

    :cond_40
    if-eq p1, p2, :cond_50

    .line 179
    iget-boolean v3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    if-eqz v3, :cond_50

    if-nez v0, :cond_4d

    .line 181
    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayContent;->applyFixedRotationForNonTopVisibleActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 183
    :cond_4d
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    .line 186
    :cond_50
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v3

    if-nez v3, :cond_5f

    if-eqz p3, :cond_5b

    if-eqz v0, :cond_5b

    move v1, v2

    .line 187
    :cond_5b
    invoke-virtual {p0, p2, v1, p1}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->makeVisibleAndRestartIfNeeded(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityRecord;)V

    goto :goto_79

    .line 188
    :cond_5f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p3

    if-eqz p3, :cond_70

    .line 194
    iget-boolean p3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    if-eqz p3, :cond_6c

    .line 195
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    .line 197
    :cond_6c
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->handleAlreadyVisible()V

    goto :goto_79

    .line 199
    :cond_70
    iget-boolean p3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/ActivityRecord;->makeVisibleIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V

    goto :goto_79

    .line 209
    :cond_76
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->makeInvisible()V

    .line 212
    :goto_79
    iget-boolean p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    if-nez p2, :cond_8d

    iget-object p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p2

    if-eqz p2, :cond_8d

    .line 213
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result p1

    if-eqz p1, :cond_8d

    .line 224
    iput-boolean v2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    :cond_8d
    :goto_8d
    return-void
.end method
