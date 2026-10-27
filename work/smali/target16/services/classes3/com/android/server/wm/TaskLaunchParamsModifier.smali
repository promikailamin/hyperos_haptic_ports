.class public Lcom/android/server/wm/TaskLaunchParamsModifier;
.super Ljava/lang/Object;
.source "TaskLaunchParamsModifier.java"

# interfaces
.implements Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLogBuilder:Ljava/lang/StringBuilder;

.field public final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mTmpDirections:[I

.field public mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public final mTmpStableBounds:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$LLV8U_IX81E4e158xgHaa7EjW3Q(Lcom/android/server/wm/TaskLaunchParamsModifier;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cOwEsqAlVxZJC8Bgaj_hUt2vkL8(Lcom/android/server/wm/TaskLaunchParamsModifier;IILcom/android/server/wm/TaskDisplayArea;)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->lambda$calculate$0(IILcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$eoxQ1PuSQ6dUnwuMT8E9GQxsEfk(Ljava/util/List;Lcom/android/server/wm/Task;)V
    .registers 3

    .line 690
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_14

    .line 693
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    :goto_14
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/content/Context;)V
    .registers 4

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    const/4 v0, 0x2

    .line 85
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    .line 92
    iput-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 93
    iput-object p2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mContext:Landroid/content/Context;

    return-void
.end method

.method private calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move/from16 v10, p7

    move-object/from16 v11, p9

    if-eqz p1, :cond_19

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_13

    move-object/from16 v1, p3

    goto :goto_17

    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    :goto_17
    move-object v12, v1

    goto :goto_1b

    :cond_19
    move-object/from16 v12, p3

    :goto_1b
    const/4 v13, 0x0

    if-nez v12, :cond_21

    if-eqz v10, :cond_21

    return v13

    .line 133
    :cond_21
    iget-object v1, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    new-instance v8, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TaskLaunchParamsModifier;)V

    move-object/from16 v2, p1

    move-object/from16 v6, p3

    move-object/from16 v4, p4

    move-object/from16 v3, p5

    move-object/from16 v7, p6

    move-object/from16 v5, p8

    invoke-static/range {v1 .. v8}, Lcom/android/server/wm/LaunchParamsUtil;->getPreferredLaunchTaskDisplayArea(Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;Ljava/util/function/Consumer;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    move-object v7, v2

    move-object v14, v3

    move-object v8, v4

    move-object v15, v5

    .line 135
    iput-object v1, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 136
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "display-id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " task-display-area-windowing-mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " suggested-display-area="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    const/4 v3, 0x2

    if-nez v10, :cond_70

    return v3

    :cond_70
    if-eqz v14, :cond_77

    .line 150
    invoke-virtual {v14}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v4

    goto :goto_78

    :cond_77
    move v4, v13

    :goto_78
    if-nez v4, :cond_a0

    .line 156
    invoke-virtual {v0, v2, v1, v8, v7}, Lcom/android/server/wm/TaskLaunchParamsModifier;->canInheritWindowingModeFromSource(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 160
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inherit-from-source="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-static {v4}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 161
    invoke-virtual {v0, v5}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_a0
    if-nez v4, :cond_ce

    if-eqz v7, :cond_ce

    .line 169
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    if-ne v5, v1, :cond_ce

    .line 170
    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/wm/Task;->mReparentLeafTaskIfRelaunch:Z

    if-nez v5, :cond_ce

    .line 171
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    .line 172
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inherit-from-task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 184
    :cond_ce
    invoke-virtual {v0, v1, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->canCalculateBoundsForFullscreenTask(Lcom/android/server/wm/TaskDisplayArea;I)Z

    move-result v5

    .line 186
    invoke-virtual {v0, v1, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->canApplyFreeformWindowPolicy(Lcom/android/server/wm/TaskDisplayArea;I)Z

    move-result v6

    if-eqz v9, :cond_df

    if-nez v6, :cond_dc

    if-eqz v5, :cond_df

    :cond_dc
    const/16 v16, 0x1

    goto :goto_e1

    :cond_df
    const/16 v16, 0x0

    .line 189
    :goto_e1
    iget-object v3, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 190
    invoke-virtual {v3, v14}, Lcom/android/server/wm/ActivityTaskSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v3

    const/4 v13, 0x5

    if-eqz v3, :cond_11d

    if-nez v6, :cond_f4

    .line 192
    invoke-virtual {v0, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->canApplyPipWindowPolicy(I)Z

    move-result v3

    if-nez v3, :cond_f4

    if-eqz v5, :cond_11d

    :cond_f4
    if-nez v4, :cond_f9

    if-eqz v6, :cond_f9

    move v4, v13

    .line 202
    :cond_f9
    iget-object v3, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activity-options-bounds="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :goto_118
    const/4 v5, 0x1

    :goto_119
    const/16 v16, 0x0

    goto/16 :goto_18d

    :cond_11d
    if-eqz v16, :cond_15d

    .line 205
    iget-object v3, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v5, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 206
    iget-object v3, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v12, v9, v3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 207
    iget-object v3, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_157

    if-eqz v6, :cond_136

    move v4, v13

    .line 209
    :cond_136
    iget-object v3, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bounds-from-layout="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    const/4 v5, 0x1

    const/16 v16, 0x1

    goto :goto_18d

    .line 214
    :cond_157
    const-string v3, "empty-window-layout"

    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_18b

    :cond_15d
    const/4 v3, 0x6

    if-ne v4, v3, :cond_18b

    if-eqz v14, :cond_18b

    .line 217
    invoke-virtual {v14}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_18b

    .line 220
    iget-object v3, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v3, 0x1

    .line 221
    iput-boolean v3, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBoundsSet:Z

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "multiwindow-activity-options-bounds="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_118

    :cond_18b
    :goto_18b
    const/4 v5, 0x0

    goto :goto_119

    .line 242
    :goto_18d
    invoke-virtual {v15}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1fc

    if-nez v5, :cond_1fc

    iget-object v3, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v3, :cond_1a3

    .line 244
    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v3

    .line 245
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    if-ne v3, v6, :cond_1fc

    .line 248
    :cond_1a3
    invoke-virtual {v15}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_1cf

    .line 249
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_1cf

    .line 250
    iget v4, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eq v4, v13, :cond_1b5

    const/4 v3, 0x1

    goto :goto_1b6

    :cond_1b5
    const/4 v3, 0x0

    .line 252
    :goto_1b6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "inherit-"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_1d0

    :cond_1cf
    const/4 v3, 0x0

    .line 255
    :goto_1d0
    iget-object v6, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1fa

    .line 258
    iget-object v3, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v6, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v3, 0x5

    if-ne v4, v3, :cond_1f8

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inherit-bounds="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_1f8
    const/4 v13, 0x1

    goto :goto_1fd

    :cond_1fa
    move v13, v3

    goto :goto_1fd

    :cond_1fc
    const/4 v13, 0x0

    .line 277
    :goto_1fd
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_271

    const/4 v3, 0x2

    if-ne v4, v3, :cond_219

    .line 279
    const-string v6, "picture-in-picture"

    invoke-virtual {v0, v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_20b
    move-object/from16 v19, v1

    move-object v1, v0

    move-object/from16 v0, v19

    move-object/from16 v19, v9

    move-object v9, v2

    move-object v2, v12

    move v12, v3

    move-object/from16 v3, v19

    goto/16 :goto_26f

    .line 280
    :cond_219
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v6

    if-nez v6, :cond_20b

    .line 281
    invoke-virtual {v0, v12, v1, v14}, Lcom/android/server/wm/TaskLaunchParamsModifier;->shouldLaunchUnresizableAppInFreeform(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/app/ActivityOptions;)Z

    move-result v4

    if-eqz v4, :cond_258

    .line 283
    iget-object v4, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    move v6, v4

    const/4 v4, 0x5

    if-eqz v6, :cond_244

    .line 284
    iget-object v6, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v2

    move-object v2, v1

    move-object v1, v12

    move v12, v3

    move-object v3, v9

    move-object/from16 v9, v19

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    move-object/from16 v19, v1

    move-object v1, v0

    move-object v0, v2

    move-object/from16 v2, v19

    const/4 v6, 0x1

    goto :goto_251

    :cond_244
    move-object/from16 v19, v1

    move-object v1, v0

    move-object/from16 v0, v19

    move-object/from16 v19, v9

    move-object v9, v2

    move-object v2, v12

    move v12, v3

    move-object/from16 v3, v19

    const/4 v6, 0x0

    .line 288
    :goto_251
    const-string v4, "unresizable-freeform"

    invoke-virtual {v1, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    const/4 v4, 0x5

    goto :goto_27e

    :cond_258
    move-object/from16 v19, v1

    move-object v1, v0

    move-object/from16 v0, v19

    move-object/from16 v19, v9

    move-object v9, v2

    move-object v2, v12

    move v12, v3

    move-object/from16 v3, v19

    .line 291
    iget-object v4, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 292
    const-string v4, "unresizable-forced-maximize"

    invoke-virtual {v1, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    const/4 v4, 0x1

    :goto_26f
    const/4 v6, 0x0

    goto :goto_27e

    :cond_271
    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    move-object v3, v9

    move-object v9, v2

    move-object v2, v12

    const/4 v12, 0x2

    .line 296
    const-string v6, "non-freeform-task-display-area"

    invoke-virtual {v1, v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_26f

    :goto_27e
    if-eqz v7, :cond_28c

    .line 298
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v17

    if-nez v17, :cond_28c

    const/16 v17, 0x1

    :goto_288
    move/from16 v18, v12

    const/4 v12, 0x1

    goto :goto_28f

    :cond_28c
    const/16 v17, 0x0

    goto :goto_288

    :goto_28f
    if-ne v4, v12, :cond_2a3

    if-eqz v17, :cond_2a3

    .line 300
    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v12

    if-eqz v12, :cond_2a3

    .line 304
    const-string v4, "inherit-rootTask"

    invoke-virtual {v1, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 308
    :cond_2a3
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v12

    if-ne v4, v12, :cond_2b1

    .line 309
    invoke-virtual {v1, v7, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->shouldUpdateExistingTaskWindowingMode(Lcom/android/server/wm/Task;I)Z

    move-result v12

    if-nez v12, :cond_2b1

    const/4 v12, 0x0

    goto :goto_2b2

    :cond_2b1
    move v12, v4

    .line 310
    :goto_2b2
    iput v12, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    const/4 v12, 0x1

    if-ne v10, v12, :cond_2b8

    return v18

    :cond_2b8
    if-nez v4, :cond_2ca

    if-eqz v17, :cond_2c5

    .line 320
    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v12

    goto :goto_2cb

    .line 321
    :cond_2c5
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v12

    goto :goto_2cb

    :cond_2ca
    move v12, v4

    :goto_2cb
    if-eqz v14, :cond_2e6

    .line 329
    invoke-virtual {v14}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v17

    move/from16 p3, v5

    if-nez v17, :cond_2df

    .line 330
    invoke-virtual {v14}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayAreaFeatureId()I

    move-result v5

    move/from16 v17, v6

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2df

    goto :goto_2ea

    :cond_2df
    move/from16 v5, p3

    move-object v9, v0

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_374

    :cond_2e6
    move/from16 p3, v5

    move/from16 v17, v6

    .line 331
    :goto_2ea
    iget-object v5, v1, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 332
    invoke-virtual {v5, v2, v14, v7}, Lcom/android/server/wm/RootWindowContainer;->resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)I

    move-result v14

    .line 333
    new-instance v5, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1, v12, v14}, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/TaskLaunchParamsModifier;II)V

    invoke-virtual {v9, v5}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;)Z

    .line 346
    iget-object v5, v1, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v5, :cond_33a

    if-eq v5, v0, :cond_33a

    .line 347
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v5

    if-ne v4, v5, :cond_308

    const/4 v5, 0x0

    goto :goto_309

    :cond_308
    move v5, v4

    .line 348
    :goto_309
    iput v5, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eqz v16, :cond_325

    .line 350
    iget-object v4, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 351
    iget-object v4, v1, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v5, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v2, v3, v5}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 352
    iget-object v4, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v5, v4

    :goto_321
    move-object v9, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_33d

    :cond_325
    if-eqz v17, :cond_33a

    .line 354
    iget-object v5, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    move-object v5, v2

    .line 355
    iget-object v2, v1, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v6, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object v9, v0

    move-object v0, v1

    move-object v1, v5

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    goto :goto_33d

    :cond_33a
    move/from16 v5, p3

    goto :goto_321

    .line 360
    :goto_33d
    iget-object v2, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v2, :cond_374

    const/4 v4, 0x0

    .line 362
    iput-object v4, v0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 363
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "overridden-display-area=["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-static {v14}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-static {v12}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 363
    invoke-virtual {v0, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move-object v9, v2

    .line 369
    :cond_374
    :goto_374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "display-area="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 370
    iput-object v9, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    move/from16 v2, v18

    if-ne v10, v2, :cond_38f

    return v2

    :cond_38f
    if-eqz v13, :cond_3a5

    const/4 v2, 0x5

    if-ne v12, v2, :cond_3a2

    .line 385
    iget-object v1, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eq v1, v9, :cond_39d

    .line 386
    iget-object v1, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v9, v3, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 390
    :cond_39d
    iget-object v1, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v9, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    :cond_3a2
    :goto_3a2
    const/16 v18, 0x2

    goto :goto_3e9

    :cond_3a5
    if-eqz v7, :cond_3ad

    .line 392
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->hasOverrideBounds()Z

    move-result v2

    if-nez v2, :cond_3a2

    :cond_3ad
    if-eqz v8, :cond_3d5

    .line 393
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_3d5

    const/4 v2, 0x5

    if-ne v12, v2, :cond_3d5

    iget-object v2, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 395
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3d5

    .line 396
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-ne v2, v9, :cond_3d5

    .line 398
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v4, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2, v9, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->cascadeBounds(Landroid/graphics/Rect;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    .line 401
    :cond_3d5
    iget-object v2, v11, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 p3, v0

    move-object/from16 p4, v1

    move-object/from16 p9, v2

    move-object/from16 p6, v3

    move/from16 p8, v5

    move-object/from16 p5, v9

    move/from16 p7, v12

    invoke-virtual/range {p3 .. p9}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    goto :goto_3a2

    :goto_3e9
    return v18
.end method

.method private initLogBuilder(ILcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .registers 7

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskLaunchParamsModifier:phase="

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

    iput-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mLogBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static orientationFromBounds(Landroid/graphics/Rect;)I
    .registers 2

    .line 861
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-le v0, p0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    const/4 p0, 0x1

    return p0
.end method

.method private outputLog()V
    .registers 5

    .line 857
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TASKS_LAUNCH_PARAMS_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mLogBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS_LAUNCH_PARAMS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0x21751084cbe7356dL    # 1.647380157842252E-147

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method public static sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 4

    .line 866
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_21

    .line 867
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, v1, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 715
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_64

    .line 721
    :cond_7
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_64

    .line 727
    :cond_e
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->calculateCandidateShiftDirections(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 728
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_64

    aget v3, v0, v2

    if-nez v3, :cond_1c

    goto :goto_64

    .line 734
    :cond_1c
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 735
    :goto_21
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 736
    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 737
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, p1, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->shiftBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_21

    .line 740
    :cond_37
    iget-object v3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_61

    iget-object v3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 741
    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 743
    iget-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 744
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "avoid-bounds-conflict="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    return-void

    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_64
    :goto_64
    return-void
.end method

.method public final adjustBoundsToAvoidConflictInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V
    .registers 6

    .line 688
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 689
    new-instance v1, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/DisplayArea;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 696
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V
    .registers 4

    .line 668
    iget-object p0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 669
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p0

    .line 670
    invoke-static {p1, p0, p2, p3}, Lcom/android/server/wm/LaunchParamsUtil;->adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;ILandroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final appendLog(Ljava/lang/String;)V
    .registers 3

    .line 853
    iget-object p0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mLogBuilder:Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z
    .registers 10

    .line 798
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 799
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ge v1, v2, :cond_20

    move v1, v3

    goto :goto_21

    :cond_20
    move v1, v0

    .line 801
    :goto_21
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v2, :cond_2e

    move v4, v3

    goto :goto_2f

    :cond_2e
    move v4, v0

    .line 803
    :goto_2f
    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v2, :cond_3c

    move v5, v3

    goto :goto_3d

    :cond_3c
    move v5, v0

    .line 805
    :goto_3d
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p1, v2, :cond_49

    move v0, v3

    :cond_49
    if-eqz v1, :cond_4d

    if-nez v4, :cond_59

    :cond_4d
    if-eqz v1, :cond_51

    if-nez v0, :cond_59

    :cond_51
    if-eqz v5, :cond_55

    if-nez v4, :cond_59

    :cond_55
    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    :cond_59
    return v3

    :cond_5a
    return v0
.end method

.method public final calculateCandidateShiftDirections(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    .line 762
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    array-length v3, v2

    if-ge v1, v3, :cond_c

    .line 763
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 766
    :cond_c
    iget v1, p1, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v2, v1, 0x2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    const/4 v4, 0x3

    div-int/2addr v2, v4

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    .line 767
    div-int/2addr v1, v4

    .line 768
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    const/4 v5, 0x5

    if-ge v3, v2, :cond_25

    .line 771
    iget-object p0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v5, p0, v0

    return-void

    :cond_25
    if-le v3, v1, :cond_2c

    .line 775
    iget-object p0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v4, p0, v0

    return-void

    .line 779
    :cond_2c
    iget v1, p1, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v2, v1, 0x2

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, p1

    div-int/2addr v2, v4

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    .line 780
    div-int/2addr v1, v4

    .line 781
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    const/4 p2, 0x1

    if-lt p1, v2, :cond_4d

    if-le p1, v1, :cond_42

    goto :goto_4d

    .line 792
    :cond_42
    iget-object p0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    const/16 p1, 0x55

    aput p1, p0, v0

    const/16 p1, 0x33

    .line 793
    aput p1, p0, p2

    return-void

    .line 785
    :cond_4d
    :goto_4d
    iget-object p0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v5, p0, v0

    .line 786
    aput v4, p0, p2

    return-void
.end method

.method public final canApplyFreeformWindowPolicy(Lcom/android/server/wm/TaskDisplayArea;I)Z
    .registers 3

    .line 467
    iget-object p0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz p0, :cond_15

    .line 468
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_10

    if-eqz p2, :cond_13

    :cond_10
    const/4 p0, 0x5

    if-ne p2, p0, :cond_15

    :cond_13
    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public final canApplyPipWindowPolicy(I)Z
    .registers 2

    .line 474
    iget-object p0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz p0, :cond_d

    const/4 p0, 0x2

    if-ne p1, p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public final canCalculateBoundsForFullscreenTask(Lcom/android/server/wm/TaskDisplayArea;I)Z
    .registers 3

    .line 459
    iget-object p0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz p0, :cond_14

    .line 460
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_11

    if-eqz p2, :cond_13

    :cond_11
    if-ne p2, p1, :cond_14

    :cond_13
    return p1

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public final canInheritWindowingModeFromSource(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z
    .registers 7

    const/4 p0, 0x0

    if-eqz p3, :cond_34

    .line 426
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_34

    .line 433
    :cond_a
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p2

    if-eqz p2, :cond_11

    return p0

    .line 438
    :cond_11
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p2

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eq p2, v1, :cond_20

    if-eq p2, v0, :cond_20

    return p0

    :cond_20
    if-ne p2, v0, :cond_29

    if-eqz p4, :cond_29

    .line 446
    iget-boolean p2, p4, Lcom/android/server/wm/Task;->mLaunchNextToBubble:Z

    if-eqz p2, :cond_29

    return p0

    .line 454
    :cond_29
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result p2

    if-ne p1, p2, :cond_34

    return v1

    :cond_34
    :goto_34
    return p0
.end method

.method public final cascadeBounds(Landroid/graphics/Rect;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V
    .registers 6

    .line 566
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 567
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42960000    # 75.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 570
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 571
    iget-object p2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p2, v1

    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 572
    iget-object p0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 573
    invoke-virtual {p3, p2, p0}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public final convertOrientationToScreenOrientation(I)I
    .registers 2

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_9

    const/4 p0, 0x2

    if-eq p1, p0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    :cond_9
    return p0
.end method

.method public final getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V
    .registers 16

    .line 480
    iget v0, p3, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v1, v0, 0x70

    and-int/lit8 v0, v0, 0x7

    .line 482
    invoke-virtual {p3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v2

    if-nez v2, :cond_14

    if-nez v1, :cond_14

    if-nez v0, :cond_14

    .line 483
    invoke-virtual {p4}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    .line 489
    :cond_14
    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 490
    invoke-virtual {p1, v2}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 492
    invoke-virtual {p3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 p0, 0x0

    .line 493
    invoke-static {v2, p3, p4, p0}, Lcom/android/server/wm/LaunchParamsUtil;->calculateLayoutBounds(Landroid/graphics/Rect;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;Landroid/util/Size;)V

    :cond_23
    move-object v10, p4

    goto :goto_35

    .line 495
    :cond_25
    invoke-virtual {p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v8, 0x5

    const/4 v9, 0x0

    move-object v4, p0

    move-object v6, p1

    move-object v5, p2

    move-object v7, p3

    move-object v10, p4

    .line 496
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    .line 499
    :goto_35
    invoke-static {v1, v0, v10, v2}, Lcom/android/server/wm/LaunchParamsUtil;->applyLayoutGravity(IILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V
    .registers 10

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eq p4, v0, :cond_27

    if-ne p4, v1, :cond_e

    .line 579
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mContext:Landroid/content/Context;

    .line 580
    invoke-static {v0}, Lcom/android/server/wm/DesktopModeHelper;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 585
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "skip-bounds-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    return-void

    .line 589
    :cond_27
    invoke-virtual {p0, p1, p2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)I

    move-result p4

    if-eq p4, v1, :cond_4b

    if-nez p4, :cond_30

    goto :goto_4b

    .line 592
    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Orientation must be one of portrait or landscape, but it\'s "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-static {p4}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 598
    :cond_4b
    :goto_4b
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Lcom/android/server/wm/DisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 599
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-static {p1, p2, p3, p4, v0}, Lcom/android/server/wm/LaunchParamsUtil;->getDefaultFreeformSize(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;ILandroid/graphics/Rect;)Landroid/util/Size;

    move-result-object p1

    .line 601
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    if-nez p5, :cond_9b

    .line 602
    iget-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {p6, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_6f

    goto :goto_9b

    .line 621
    :cond_6f
    iget-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 622
    invoke-virtual {p6}, Landroid/graphics/Rect;->setEmpty()V

    .line 623
    iget-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object p3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-static {p2, p1, p3, p6}, Lcom/android/server/wm/LaunchParamsUtil;->centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V

    .line 625
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "freeform-size-mismatch="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_d5

    .line 607
    :cond_9b
    :goto_9b
    invoke-static {p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result p1

    if-ne p4, p1, :cond_b6

    .line 608
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "freeform-size-orientation-match="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    goto :goto_d5

    .line 611
    :cond_b6
    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 612
    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result p3

    .line 611
    invoke-static {p2, p1, p3, p6}, Lcom/android/server/wm/LaunchParamsUtil;->centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V

    .line 613
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "freeform-orientation-mismatch="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 629
    :goto_d5
    invoke-virtual {p0, p2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final synthetic lambda$calculate$0(IILcom/android/server/wm/TaskDisplayArea;)Z
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move v1, p1

    move v2, p2

    move-object v0, p3

    .line 334
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_e

    const/4 p0, 0x0

    return p0

    .line 340
    :cond_e
    iput-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    const/4 p0, 0x1

    return p0
.end method

.method public onCalculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .registers 10

    .line 102
    invoke-direct {p0, p7, p1, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->initLogBuilder(ILcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 103
    invoke-direct/range {p0 .. p9}, Lcom/android/server/wm/TaskLaunchParamsModifier;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    move-result p1

    .line 105
    invoke-direct {p0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->outputLog()V

    return p1
.end method

.method public final resolveOrientation(Lcom/android/server/wm/ActivityRecord;)I
    .registers 4

    .line 537
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p1, p1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eqz p1, :cond_21

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1b

    const/16 v1, 0xb

    if-eq p1, v1, :cond_21

    const/16 v1, 0xc

    if-eq p1, v1, :cond_1b

    const/16 v1, 0xe

    if-eq p1, v1, :cond_1a

    packed-switch p1, :pswitch_data_28

    const/4 p0, -0x1

    return p0

    :cond_1a
    :pswitch_1a
    return v1

    .line 554
    :cond_1b
    :pswitch_1b
    const-string p1, "activity-requested-portrait"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    return v0

    .line 547
    :cond_21
    :pswitch_21
    const-string p1, "activity-requested-landscape"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :pswitch_data_28
    .packed-switch 0x5
        :pswitch_1a
        :pswitch_21
        :pswitch_1b
        :pswitch_21
        :pswitch_1b
    .end packed-switch
.end method

.method public final resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)I
    .registers 5

    .line 645
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result p1

    const/16 v0, 0xe

    if-ne p1, v0, :cond_49

    .line 648
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 650
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 649
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->convertOrientationToScreenOrientation(I)I

    move-result p1

    goto :goto_1d

    .line 651
    :cond_19
    invoke-static {p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result p1

    .line 652
    :goto_1d
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_35

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "locked-orientation-from-display="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_46

    .line 653
    :cond_35
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "locked-orientation-from-bounds="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 652
    :goto_46
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_49
    const/4 p2, -0x1

    if-ne p1, p2, :cond_75

    .line 657
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_54

    const/4 p1, 0x1

    goto :goto_58

    .line 658
    :cond_54
    invoke-static {p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result p1

    .line 659
    :goto_58
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_61

    const-string p2, "default-portrait"

    goto :goto_72

    :cond_61
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "orientation-from-bounds="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_72
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    :cond_75
    return p1
.end method

.method public final shiftBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7

    and-int/lit8 p0, p1, 0x7

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_17

    const/4 v0, 0x5

    if-eq p0, v0, :cond_c

    move p0, v1

    goto :goto_22

    .line 826
    :cond_c
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    div-int/lit8 p0, p0, 0x10

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_22

    .line 823
    :cond_17
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    div-int/lit8 p0, p0, 0x10

    .line 822
    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    neg-int p0, p0

    :goto_22
    and-int/lit8 p1, p1, 0x70

    const/16 v0, 0x30

    if-eq p1, v0, :cond_38

    const/16 v0, 0x50

    if-eq p1, v0, :cond_2d

    goto :goto_43

    .line 838
    :cond_2d
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x10

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_43

    .line 835
    :cond_38
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x10

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    neg-int v1, p1

    .line 844
    :goto_43
    invoke-virtual {p3, p0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public final shouldLaunchUnresizableAppInFreeform(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/app/ActivityOptions;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_b

    .line 505
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result p3

    if-ne p3, v0, :cond_b

    return v1

    .line 509
    :cond_b
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p3

    if-eqz p3, :cond_32

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result p3

    if-eqz p3, :cond_18

    goto :goto_32

    .line 513
    :cond_18
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result p3

    .line 515
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 514
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/wm/TaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)I

    move-result p0

    .line 516
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_32

    if-eq p3, p0, :cond_32

    return v0

    :cond_32
    :goto_32
    return v1
.end method

.method public final shouldUpdateExistingTaskWindowingMode(Lcom/android/server/wm/Task;I)Z
    .registers 4

    if-eqz p1, :cond_17

    .line 409
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result p0

    if-eqz p0, :cond_17

    .line 410
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_17

    .line 411
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result p0

    if-eq p2, p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method
