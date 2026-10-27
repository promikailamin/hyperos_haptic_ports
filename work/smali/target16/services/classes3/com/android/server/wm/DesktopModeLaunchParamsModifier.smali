.class public Lcom/android/server/wm/DesktopModeLaunchParamsModifier;
.super Ljava/lang/Object;
.source "DesktopModeLaunchParamsModifier.java"

# interfaces
.implements Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDesktopModeCompatPolicy:Lcom/android/internal/policy/DesktopModeCompatPolicy;

.field public mLogBuilder:Ljava/lang/StringBuilder;

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;


# direct methods
.method public static synthetic $r8$lambda$7v9pymhjS6A1twgo6q8kaLEhb9I(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 184
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public static synthetic $r8$lambda$LBY9_LtIcZJBWdJiHyJc_JKTr_k(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 431
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$Ncj_dFrutiiNkbeVpX0B6wCxBuA(Lcom/android/server/wm/DesktopModeLaunchParamsModifier;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 310
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PqPVAmB14ttu63paC5w-colvPhA(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 366
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$aaZKPM6dk9059M-28ZxcQj1VCkg(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    .line 181
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eIFc4C2U2JJa0ZohMsXAO75lM4Y(Lcom/android/server/wm/DesktopModeLaunchParamsModifier;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 104
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/internal/policy/DesktopModeCompatPolicy;)V
    .registers 4

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 74
    iput-object p3, p0, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->mDesktopModeCompatPolicy:Lcom/android/internal/policy/DesktopModeCompatPolicy;

    return-void
.end method


# virtual methods
.method public final varargs appendLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    .line 576
    iget-object p0, p0, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->mLogBuilder:Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final areTaskBoundsValidForDisplay(Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;)Z
    .registers 3

    .line 487
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 488
    invoke-virtual {p2, p0}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 489
    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public final calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .registers 42

    move-object/from16 v0, p0

    move-object/from16 v9, p9

    .line 97
    iget-object v1, v0, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/wm/DesktopModeHelper;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_15

    .line 98
    const-string v1, "desktop mode is not enabled, skipping"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return v10

    .line 103
    :cond_15
    iget-object v1, v0, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    new-instance v8, Lcom/android/server/wm/DesktopModeLaunchParamsModifier$$ExternalSyntheticLambda1;

    invoke-direct {v8, v0}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DesktopModeLaunchParamsModifier;)V

    move-object/from16 v2, p1

    move-object/from16 v6, p3

    move-object/from16 v4, p4

    move-object/from16 v3, p5

    move-object/from16 v7, p6

    move-object/from16 v5, p8

    invoke-static/range {v1 .. v8}, Lcom/android/server/wm/LaunchParamsUtil;->getPreferredLaunchTaskDisplayArea(Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;Ljava/util/function/Consumer;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 105
    iput-object v1, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 106
    iget-object v7, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "display-id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " task-display-area-windowing-mode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " suggested-display-area="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v10, [Ljava/lang/Object;

    .line 107
    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    const/4 v8, 0x1

    if-nez v2, :cond_6e

    .line 113
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostVisibleFreeformActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_6c

    goto :goto_6e

    :cond_6c
    move v11, v10

    goto :goto_6f

    :cond_6e
    :goto_6e
    move v11, v8

    .line 114
    :goto_6f
    sget-object v12, Landroid/window/DesktopExperienceFlags;->ENABLE_FREEFORM_DISPLAY_LAUNCH_PARAMS:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v12}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v2

    const-string v14, "activity exempt from desktop, launching in fullscreen"

    if-eqz v2, :cond_85

    if-nez p1, :cond_85

    const/4 v2, 0x0

    .line 115
    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isRequestingFreeformWindowMode(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z

    move-result v2

    if-nez v2, :cond_8b

    if-eqz v11, :cond_85

    goto :goto_8b

    :cond_85
    move-object/from16 v2, p4

    move-object v4, v1

    move-object/from16 v1, p1

    goto :goto_d6

    .line 117
    :cond_8b
    :goto_8b
    sget-object v2, Landroid/window/DesktopExperienceFlags;->HANDLE_INCOMPATIBLE_TASKS_IN_DESKTOP_LAUNCH_PARAMS:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v2}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v2

    if-eqz v2, :cond_c3

    if-eqz v6, :cond_c3

    .line 119
    iget-object v15, v0, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->mDesktopModeCompatPolicy:Lcom/android/internal/policy/DesktopModeCompatPolicy;

    iget-object v2, v6, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 120
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isNoDisplay()Z

    move-result v17

    .line 121
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v4

    xor-int/lit8 v18, v4, 0x1

    iget v4, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v13, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v8, v6, Lcom/android/server/wm/WindowToken;->windowType:I

    const/16 v19, 0x1

    move-object/from16 v16, v2

    move/from16 v20, v4

    move/from16 v22, v8

    move-object/from16 v21, v13

    .line 119
    invoke-virtual/range {v15 .. v22}, Lcom/android/internal/policy/DesktopModeCompatPolicy;->isTopActivityExemptFromDesktopWindowing(Landroid/content/ComponentName;ZZIILandroid/content/pm/ActivityInfo;I)Z

    move-result v2

    if-eqz v2, :cond_c2

    .line 123
    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v14, v1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v8, 0x1

    .line 124
    iput v8, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    return v8

    :cond_c2
    const/4 v8, 0x1

    :cond_c3
    if-eqz v3, :cond_85

    .line 129
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_85

    .line 133
    iput v2, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 134
    const-string v1, "launch-freeform"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return v8

    .line 140
    :goto_d6
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->getWindowingModeForDesktopFirstPolicy(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    move-result v13

    if-eqz v13, :cond_e3

    .line 143
    iput v13, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-nez p1, :cond_e1

    return v8

    :cond_e1
    const/4 v8, 0x1

    goto :goto_e4

    :cond_e3
    move v8, v10

    :goto_e4
    if-eqz p1, :cond_ec

    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-nez v0, :cond_f0

    :cond_ec
    move-object/from16 v7, p0

    goto/16 :goto_37e

    .line 158
    :cond_f0
    sget-object v15, Landroid/window/DesktopModeFlags;->DISABLE_DESKTOP_LAUNCH_PARAMS_OUTSIDE_DESKTOP_BUG_FIX:Landroid/window/DesktopModeFlags;

    invoke-virtual {v15}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_110

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v5, p8

    .line 159
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isEnteringDesktopMode(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z

    move-result v16

    if-nez v16, :cond_116

    .line 161
    const-string v1, "not entering desktop mode, skipping"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return v10

    :cond_110
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p8

    :cond_116
    if-eqz p5, :cond_121

    .line 166
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_121

    const/4 v2, 0x1

    goto :goto_122

    :cond_121
    move v2, v10

    .line 167
    :goto_122
    sget-object v3, Landroid/window/DesktopExperienceFlags;->RESPECT_FULLSCREEN_ACTIVITY_OPTION_IN_DESKTOP_LAUNCH_PARAMS:Landroid/window/DesktopExperienceFlags;

    .line 168
    invoke-virtual {v3}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v3

    if-eqz v3, :cond_137

    if-eqz v2, :cond_137

    .line 169
    const-string v1, "respecting fullscreen activity option"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v8, 0x1

    .line 170
    iput v8, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    return v8

    :cond_137
    if-eqz v6, :cond_13b

    move-object v3, v6

    goto :goto_13f

    .line 176
    :cond_13b
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 178
    :goto_13f
    sget-object v16, Landroid/window/DesktopExperienceFlags;->HANDLE_INCOMPATIBLE_TASKS_IN_DESKTOP_LAUNCH_PARAMS:Landroid/window/DesktopExperienceFlags;

    invoke-virtual/range {v16 .. v16}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v16

    if-eqz v16, :cond_19b

    if-eqz v3, :cond_19b

    .line 180
    new-instance v10, Lcom/android/server/wm/DesktopModeLaunchParamsModifier$$ExternalSyntheticLambda2;

    invoke-direct {v10}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v10}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    move-result v10

    if-nez v10, :cond_15d

    .line 181
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v10

    if-nez v10, :cond_15d

    const/16 v27, 0x1

    goto :goto_15f

    :cond_15d
    const/16 v27, 0x0

    .line 182
    :goto_15f
    new-instance v10, Ljava/util/concurrent/atomic/AtomicInteger;

    move/from16 v17, v2

    const/4 v2, 0x1

    invoke-direct {v10, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 183
    new-instance v2, Lcom/android/server/wm/DesktopModeLaunchParamsModifier$$ExternalSyntheticLambda3;

    invoke-direct {v2, v10}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 186
    iget-object v2, v0, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->mDesktopModeCompatPolicy:Lcom/android/internal/policy/DesktopModeCompatPolicy;

    iget-object v1, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 187
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isNoDisplay()Z

    move-result v26

    .line 188
    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v28

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getUserId()I

    move-result v29

    iget-object v10, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v1

    iget v1, v3, Lcom/android/server/wm/WindowToken;->windowType:I

    move/from16 v31, v1

    move-object/from16 v24, v2

    move-object/from16 v30, v10

    .line 186
    invoke-virtual/range {v24 .. v31}, Lcom/android/internal/policy/DesktopModeCompatPolicy;->isTopActivityExemptFromDesktopWindowing(Landroid/content/ComponentName;ZZIILandroid/content/pm/ActivityInfo;I)Z

    move-result v1

    if-eqz v1, :cond_19d

    const/4 v1, 0x0

    .line 190
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v14, v1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v8, 0x1

    .line 191
    iput v8, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    return v8

    :cond_19b
    move/from16 v17, v2

    .line 196
    :cond_19d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 198
    invoke-virtual {v12}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v2

    if-eqz v2, :cond_1c9

    .line 199
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-nez v2, :cond_1c7

    sget-object v2, Landroid/window/DesktopExperienceFlags;->ENABLE_MULTIPLE_DESKTOPS_BACKEND:Landroid/window/DesktopExperienceFlags;

    .line 200
    invoke-virtual {v2}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v2

    if-eqz v2, :cond_1c9

    if-eqz v1, :cond_1c9

    .line 201
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_1c9

    .line 202
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v2

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v10

    if-ne v2, v10, :cond_1c9

    :cond_1c7
    const/4 v2, 0x1

    goto :goto_1ca

    :cond_1c9
    const/4 v2, 0x0

    :goto_1ca
    if-eqz v1, :cond_1d7

    if-nez v2, :cond_1d7

    .line 206
    const-string v1, "has created-by-organizer-task, skipping"

    const/4 v10, 0x0

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return v10

    :cond_1d7
    const/4 v10, 0x0

    .line 210
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v1

    if-nez v1, :cond_1e6

    .line 211
    const-string v1, "not standard or undefined activity type, skipping"

    new-array v2, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return v10

    .line 215
    :cond_1e6
    sget-object v10, Landroid/window/DesktopExperienceFlags;->IGNORE_CURRENT_PARAMS_IN_DESKTOP_LAUNCH_PARAMS:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v10}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v1

    if-nez v1, :cond_1f7

    .line 217
    invoke-virtual {v9, v5}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 218
    iput-object v4, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v13, :cond_1f7

    .line 220
    iput v13, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    :cond_1f7
    if-eqz v2, :cond_1fd

    if-eqz v17, :cond_1fd

    const/4 v1, 0x1

    goto :goto_1fe

    :cond_1fd
    const/4 v1, 0x0

    :goto_1fe
    if-eqz p4, :cond_27d

    .line 225
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v13

    if-eqz v13, :cond_27d

    .line 226
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 229
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v8

    const/4 v13, 0x1

    if-ne v8, v13, :cond_213

    const/4 v8, 0x1

    goto :goto_214

    :cond_213
    const/4 v8, 0x0

    :goto_214
    or-int v8, v17, v8

    if-eqz v2, :cond_21c

    if-eqz v8, :cond_21c

    const/4 v8, 0x1

    goto :goto_21d

    :cond_21c
    const/4 v8, 0x0

    .line 231
    :goto_21d
    invoke-virtual {v15}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v2

    move-object/from16 v13, p1

    if-eqz v2, :cond_256

    move-object/from16 v2, p4

    move-object v14, v3

    move-object/from16 v3, p5

    .line 232
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isEnteringDesktopMode(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z

    move-result v4

    if-eqz v4, :cond_253

    if-nez v8, :cond_253

    const/4 v4, 0x5

    .line 237
    iput v4, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 238
    const-string v3, "freeform window mode applied to task trampoline"

    move-object/from16 p6, v1

    const/4 v4, 0x0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    invoke-virtual {v0, v2, v6}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->persisitSourceBoundsForTabTearingTrampoline(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_251

    .line 240
    iget-object v0, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p6 .. p6}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_24e
    const/16 v23, 0x1

    return v23

    :cond_251
    const/4 v4, 0x0

    goto :goto_27a

    :cond_253
    move-object/from16 p6, v1

    goto :goto_25b

    :cond_256
    move-object/from16 v2, p4

    move-object/from16 p6, v1

    move-object v14, v3

    .line 249
    :goto_25b
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    iput v1, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inherit-from-source="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_27a
    move v1, v8

    const/4 v8, 0x1

    goto :goto_283

    :cond_27d
    move-object/from16 v13, p1

    move-object/from16 v2, p4

    move-object v14, v3

    const/4 v4, 0x0

    :goto_283
    if-eqz v1, :cond_28e

    .line 258
    const-string v1, "launch-in-fullscreen"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x1

    return v3

    :cond_28e
    const/4 v3, 0x1

    const/16 v17, 0x2

    move/from16 v1, p7

    if-ne v1, v3, :cond_29d

    .line 263
    invoke-virtual {v12}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_29c

    return v3

    :cond_29c
    return v17

    .line 269
    :cond_29d
    iget-object v1, v5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2b6

    if-nez v11, :cond_2b6

    .line 270
    invoke-virtual {v10}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v1

    if-nez v1, :cond_2b6

    .line 272
    const-string v1, "currentParams has bounds set, not overriding"

    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_2b6
    if-eqz p5, :cond_2c1

    .line 276
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_2bf

    goto :goto_2c1

    :cond_2bf
    const/4 v4, 0x0

    goto :goto_2fe

    :cond_2c1
    :goto_2c1
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->hasOverrideBounds()Z

    move-result v1

    if-eqz v1, :cond_2bf

    .line 277
    invoke-virtual {v15}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_2f5

    .line 278
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 279
    sget-object v3, Landroid/window/DesktopExperienceFlags;->IGNORE_OVERRIDE_TASK_BOUNDS_IF_INCOMPATIBLE_WITH_DISPLAY:Landroid/window/DesktopExperienceFlags;

    .line 280
    invoke-virtual {v3}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v3

    if-eqz v3, :cond_2bf

    invoke-virtual {v0, v1, v7}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->areTaskBoundsValidForDisplay(Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;)Z

    move-result v3

    if-eqz v3, :cond_2bf

    .line 283
    invoke-virtual {v12}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v2

    if-eqz v2, :cond_2ea

    .line 284
    iget-object v2, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 286
    :cond_2ea
    const-string v2, "task-has-override-bounds=%s"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_24e

    .line 290
    :cond_2f5
    const-string v1, "current task has bounds set, not overriding"

    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    .line 295
    :goto_2fe
    sget-object v1, Landroid/window/DesktopModeFlags;->INHERIT_TASK_BOUNDS_FOR_TRAMPOLINE_TASK_LAUNCHES:Landroid/window/DesktopModeFlags;

    invoke-virtual {v1}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result v1

    const-string v10, "final desktop mode task bounds set to %s"

    if-eqz v1, :cond_32d

    .line 297
    invoke-virtual {v13}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getTopMostVisibleFreeformActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 298
    invoke-virtual {v0, v2, v1, v14, v13}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->getInheritedExistingTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_32d

    .line 301
    const-string v2, "inheriting bounds from existing closing instance"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    iget-object v2, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 303
    iget-object v1, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_24e

    .line 309
    :cond_32d
    new-instance v6, Lcom/android/server/wm/DesktopModeLaunchParamsModifier$$ExternalSyntheticLambda4;

    invoke-direct {v6, v0}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/DesktopModeLaunchParamsModifier;)V

    move-object/from16 v1, p2

    move-object/from16 v3, p5

    move-object v4, v7

    move-object v5, v9

    move-object v2, v14

    move-object v7, v0

    move-object v0, v13

    invoke-static/range {v0 .. v6}, Lcom/android/server/wm/DesktopModeBoundsCalculator;->updateInitialBounds(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Ljava/util/function/Consumer;)V

    .line 311
    iget-object v0, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v10, v0}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p5, :cond_372

    .line 312
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getFlexibleLaunchSize()Z

    move-result v0

    if-eqz v0, :cond_372

    .line 317
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    iput v0, v9, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inherit-options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v7, v0, v1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_24e

    :cond_372
    const/16 v23, 0x1

    .line 321
    invoke-virtual {v12}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_37d

    if-eqz v8, :cond_37d

    return v23

    :cond_37d
    return v17

    .line 154
    :goto_37e
    const-string v0, "task null, skipping"

    const/4 v4, 0x0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v7, v0, v1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return v4
.end method

.method public final checkSourceWindowModesCompatible(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    .line 451
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isCompatibleDesktopWindowingMode(I)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    move p1, v1

    goto :goto_12

    :cond_11
    :goto_11
    move p1, v0

    :goto_12
    if-eqz p2, :cond_21

    .line 455
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isCompatibleDesktopWindowingMode(I)Z

    move-result p2

    if-eqz p2, :cond_1f

    goto :goto_21

    :cond_1f
    move p2, v1

    goto :goto_22

    :cond_21
    :goto_21
    move p2, v0

    .line 459
    :goto_22
    iget p3, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 460
    invoke-virtual {p0, p3}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isCompatibleDesktopWindowingMode(I)Z

    move-result p0

    if-nez p0, :cond_35

    sget-object p0, Landroid/window/DesktopExperienceFlags;->IGNORE_CURRENT_PARAMS_IN_DESKTOP_LAUNCH_PARAMS:Landroid/window/DesktopExperienceFlags;

    .line 462
    invoke-virtual {p0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result p0

    if-eqz p0, :cond_33

    goto :goto_35

    :cond_33
    move p0, v1

    goto :goto_36

    :cond_35
    :goto_35
    move p0, v0

    :goto_36
    if-eqz p1, :cond_3d

    if-eqz p2, :cond_3d

    if-eqz p0, :cond_3d

    return v0

    :cond_3d
    return v1
.end method

.method public final getInheritedExistingTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Landroid/graphics/Rect;
    .registers 7

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return-object v0

    :cond_4
    if-eqz p1, :cond_11

    .line 501
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->shouldInheritExistingTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 503
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_11
    if-eqz p2, :cond_1e

    .line 505
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->shouldInheritExistingTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 507
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_1e
    return-object v0
.end method

.method public final getWindowingModeForDesktopFirstPolicy(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .registers 14

    .line 390
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_DESKTOP_FIRST_POLICY_IN_LPM:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 394
    :cond_a
    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_11

    return v1

    .line 399
    :cond_11
    invoke-virtual {p0, p1, p3, p5}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->checkSourceWindowModesCompatible(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z

    move-result p5

    if-nez p5, :cond_1f

    .line 401
    const-string p1, "desktop-first-but-incompatible-mode"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1f
    if-eqz p3, :cond_33

    .line 406
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p5

    if-eqz p5, :cond_33

    .line 409
    const-string p1, "desktop-first-but-has-launch-windowing-mode-options"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p0

    return p0

    :cond_33
    const/4 p3, 0x1

    if-eqz p2, :cond_54

    .line 413
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p5

    if-eqz p5, :cond_54

    .line 414
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p5

    if-ne p5, p3, :cond_54

    .line 415
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-ne p2, p1, :cond_54

    .line 418
    const-string p1, "desktop-first-but-fullscreen-relaunch"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return p3

    .line 422
    :cond_54
    sget-object p1, Landroid/window/DesktopExperienceFlags;->ENABLE_DESKTOP_FIRST_TOP_FULLSCREEN_BUGFIX:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {p1}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result p1

    const/4 p2, 0x5

    if-eqz p1, :cond_94

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p4

    .line 423
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_75

    .line 427
    iget-boolean p4, p1, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz p4, :cond_75

    .line 429
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p1

    if-ne p1, p2, :cond_75

    move p1, p3

    goto :goto_76

    :cond_75
    move p1, v1

    .line 430
    :goto_76
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p4

    new-instance p5, Lcom/android/server/wm/DesktopModeLaunchParamsModifier$$ExternalSyntheticLambda5;

    invoke-direct {p5}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier$$ExternalSyntheticLambda5;-><init>()V

    .line 431
    invoke-virtual {p4, p5}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p4

    if-eqz p4, :cond_87

    move p4, p3

    goto :goto_88

    :cond_87
    move p4, v1

    :goto_88
    if-nez p1, :cond_94

    if-nez p4, :cond_94

    .line 433
    const-string p1, "desktop-first-but-fullscreen-visible"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return p3

    .line 438
    :cond_94
    const-string p1, "forced-freeform-in-desktop-first"

    new-array p3, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->appendLog(Ljava/lang/String;[Ljava/lang/Object;)V

    return p2
.end method

.method public final initLogBuilder(ILcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .registers 7

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DesktopModeLaunchParamsModifier: phase= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " task="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " activity="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->mLogBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public final isChromiumDragAndDropAction(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 548
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "org.chromium.chrome.browser.dragdrop.action.VIEW"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isClosingExitingInstance(I)Z
    .registers 2

    .line 0
    const p0, 0x8000

    and-int/2addr p0, p1

    if-nez p0, :cond_e

    const/high16 p0, 0x8000000

    and-int/2addr p0, p1

    if-nez p0, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    return p0

    :cond_e
    :goto_e
    const/4 p0, 0x1

    return p0
.end method

.method public final isCompatibleDesktopWindowingMode(I)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    if-eqz p1, :cond_9

    if-eq p1, p0, :cond_9

    const/4 v0, 0x5

    if-eq p1, v0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return p0
.end method

.method public isEnteringDesktopMode(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z
    .registers 9

    .line 338
    invoke-virtual {p0, p1, p3, p5}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isRequestingFreeformWindowMode(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 343
    :cond_8
    invoke-virtual {p0, p1, p3, p5}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->checkSourceWindowModesCompatible(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_10

    return v2

    .line 348
    :cond_10
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->getWindowingModeForDesktopFirstPolicy(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    move-result p0

    const/4 p2, 0x5

    if-ne p0, p2, :cond_18

    return v1

    .line 354
    :cond_18
    sget-object p0, Landroid/window/DesktopExperienceFlags;->ENABLE_DESKTOP_FIRST_POLICY_IN_LPM:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {p0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result p0

    if-eqz p0, :cond_27

    .line 355
    invoke-virtual {p4}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_27

    return v2

    .line 365
    :cond_27
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    new-instance p1, Lcom/android/server/wm/DesktopModeLaunchParamsModifier$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_37

    return v1

    :cond_37
    return v2
.end method

.method public final isLaunchingNewSingleTask(I)Z
    .registers 2

    .line 0
    const/4 p0, 0x2

    if-eq p1, p0, :cond_c

    const/4 p0, 0x3

    if-eq p1, p0, :cond_c

    const/4 p0, 0x4

    if-ne p1, p0, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    return p0

    :cond_c
    :goto_c
    const/4 p0, 0x1

    return p0
.end method

.method public final isRequestingFreeformWindowMode(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z
    .registers 4

    if-eqz p1, :cond_8

    .line 374
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-nez p0, :cond_1d

    :cond_8
    const/4 p0, 0x5

    if-eqz p2, :cond_11

    .line 375
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p1

    if-eq p1, p0, :cond_1d

    :cond_11
    iget p1, p3, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-ne p1, p0, :cond_1f

    sget-object p0, Landroid/window/DesktopExperienceFlags;->IGNORE_CURRENT_PARAMS_IN_DESKTOP_LAUNCH_PARAMS:Landroid/window/DesktopExperienceFlags;

    .line 377
    invoke-virtual {p0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result p0

    if-nez p0, :cond_1f

    :cond_1d
    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public onCalculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .registers 10

    .line 84
    invoke-virtual {p0, p7, p1, p3}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->initLogBuilder(ILcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 85
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    move-result p1

    .line 87
    invoke-virtual {p0}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->outputLog()V

    return p1
.end method

.method public final outputLog()V
    .registers 5

    .line 580
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TASKS_LAUNCH_PARAMS_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->mLogBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS_LAUNCH_PARAMS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0x3eca67f80418c10bL    # -1415175.9839972828

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method public final persisitSourceBoundsForTabTearingTrampoline(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 537
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_INTERACTION_DEPENDENT_TAB_TEARING_BOUNDS:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_22

    if-eqz p2, :cond_22

    .line 539
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isNoDisplay()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 540
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 541
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isChromiumDragAndDropAction(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldInheritExistingTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z
    .registers 6

    .line 519
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v1, p3, Lcom/android/server/wm/Task;->mUserId:I

    if-ne v0, v1, :cond_38

    .line 521
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    iget v1, p3, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v0, v1, :cond_38

    .line 525
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_36

    iget p1, p2, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    .line 526
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isLaunchingNewSingleTask(I)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 527
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->isClosingExitingInstance(I)Z

    move-result p0

    if-eqz p0, :cond_38

    :cond_36
    const/4 p0, 0x1

    return p0

    :cond_38
    const/4 p0, 0x0

    return p0
.end method
