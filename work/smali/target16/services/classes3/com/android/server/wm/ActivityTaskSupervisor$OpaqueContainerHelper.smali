.class public Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;
.super Ljava/lang/Object;
.source "ActivityTaskSupervisor.java"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final mEnableMultipleDesktopsBackend:Z

.field public mIgnoringInvisibleActivity:Z

.field public mIgnoringKeyguard:Z

.field public mStarting:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public static synthetic $r8$lambda$6f0G5pcQtnjw__iU8ofU_Zna2Gs(Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;Lcom/android/server/wm/TaskFragment;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->lambda$isOpaqueInner$0(Lcom/android/server/wm/TaskFragment;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 3113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3114
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_MULTIPLE_DESKTOPS_BACKEND:Landroid/window/DesktopExperienceFlags;

    .line 3115
    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mEnableMultipleDesktopsBackend:Z

    return-void
.end method


# virtual methods
.method public isOpaque(Lcom/android/server/wm/WindowContainer;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3122
    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->isOpaque(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;ZZ)Z

    move-result p0

    return p0
.end method

.method public isOpaque(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;ZZ)Z
    .registers 5

    .line 3133
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    .line 3134
    iput-boolean p4, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mIgnoringInvisibleActivity:Z

    .line 3135
    iput-boolean p3, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mIgnoringKeyguard:Z

    .line 3138
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mEnableMultipleDesktopsBackend:Z

    const/4 p3, 0x0

    if-nez p2, :cond_15

    const/4 p2, 0x1

    .line 3139
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_13

    goto :goto_19

    :cond_13
    const/4 p2, 0x0

    goto :goto_19

    .line 3142
    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->isOpaqueInner(Lcom/android/server/wm/WindowContainer;)Z

    move-result p2

    .line 3144
    :goto_19
    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    return p2
.end method

.method public final isOpaqueInner(Lcom/android/server/wm/WindowContainer;)Z
    .registers 7

    .line 3149
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .line 3150
    :goto_b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eqz v3, :cond_1c

    move-object v3, p1

    check-cast v3, Lcom/android/server/wm/TaskFragment;

    .line 3151
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->isLeafTaskFragment()Z

    move-result v3

    if-eqz v3, :cond_1c

    move v3, v2

    goto :goto_1d

    :cond_1c
    move v3, v1

    :goto_1d
    if-nez v0, :cond_65

    if-eqz v3, :cond_22

    goto :goto_65

    :cond_22
    move v0, v1

    .line 3162
    :goto_23
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_64

    .line 3163
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 3164
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->isOpaque(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-eqz v4, :cond_3a

    return v2

    .line 3168
    :cond_3a
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_61

    .line 3169
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v4

    if-eqz v4, :cond_61

    .line 3170
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->isOpaque(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 3171
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    new-instance v4, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_60

    goto :goto_61

    :cond_60
    return v2

    :cond_61
    :goto_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_64
    return v1

    :cond_65
    :goto_65
    const/4 v0, 0x0

    .line 3155
    invoke-virtual {p1, p0, v2, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_6d

    return v2

    :cond_6d
    return v1
.end method

.method public final synthetic lambda$isOpaqueInner$0(Lcom/android/server/wm/TaskFragment;)Z
    .registers 2

    .line 3172
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->isOpaque(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public test(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 3185
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mIgnoringInvisibleActivity:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    if-eq p1, v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mIgnoringKeyguard:Z

    if-eqz v0, :cond_10

    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v1, :cond_18

    :cond_10
    if-nez v0, :cond_1a

    .line 3187
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_18
    const/4 p0, 0x0

    return p0

    .line 3192
    :cond_1a
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->mIgnoringInvisibleActivity:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .registers 2

    .line 3113
    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->test(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method
