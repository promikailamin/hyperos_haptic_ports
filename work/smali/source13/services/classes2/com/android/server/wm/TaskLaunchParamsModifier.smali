.class Lcom/android/server/wm/TaskLaunchParamsModifier;
.super Ljava/lang/Object;
.source "TaskLaunchParamsModifier.java"

# interfaces
.implements Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;


# static fields
.field private static final BOUNDS_CONFLICT_THRESHOLD:I = 0x4

.field private static final CASCADING_OFFSET_DP:I = 0x4b

.field private static final DEBUG:Z = false

.field private static final DEFAULT_PORTRAIT_PHONE_HEIGHT_DP:I = 0x2dc

.field private static final DEFAULT_PORTRAIT_PHONE_WIDTH_DP:I = 0x19c

.field private static final EPSILON:I = 0x2

.field private static final MINIMAL_STEP:I = 0x1

.field private static final STEP_DENOMINATOR:I = 0x10

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private mLogBuilder:Ljava/lang/StringBuilder;

.field private final mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpDirections:[I

.field private mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field private final mTmpStableBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .registers 3
    .param p1, "supervisor"    # Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 93
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    .line 101
    iput-object p1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 102
    return-void
.end method

.method private adjustBoundsToAvoidConflictInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p2, "inOutBounds"    # Landroid/graphics/Rect;

    .line 985
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 986
    .local v0, "taskBoundsToCheck":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    new-instance v1, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->forAllRootTasks(Ljava/util/function/Consumer;Z)V

    .line 995
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p2}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;)V

    .line 996
    return-void
.end method

.method private adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p2, "inOutBounds"    # Landroid/graphics/Rect;

    .line 929
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 930
    .local v0, "stableBounds":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 932
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lt v1, v2, :cond_50

    .line 933
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v1, v2, :cond_1a

    goto :goto_50

    .line 946
    :cond_1a
    iget v1, p2, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_26

    .line 948
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .local v1, "dx":I
    goto :goto_33

    .line 949
    .end local v1    # "dx":I
    :cond_26
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_32

    .line 951
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .restart local v1    # "dx":I
    goto :goto_33

    .line 954
    .end local v1    # "dx":I
    :cond_32
    const/4 v1, 0x0

    .line 958
    .restart local v1    # "dx":I
    :goto_33
    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-ge v2, v3, :cond_3f

    .line 960
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .local v2, "dy":I
    goto :goto_4c

    .line 961
    .end local v2    # "dy":I
    :cond_3f
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_4b

    .line 963
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .restart local v2    # "dy":I
    goto :goto_4c

    .line 966
    .end local v2    # "dy":I
    :cond_4b
    const/4 v2, 0x0

    .line 968
    .restart local v2    # "dy":I
    :goto_4c
    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 969
    return-void

    .line 936
    .end local v1    # "dx":I
    .end local v2    # "dy":I
    :cond_50
    :goto_50
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 937
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    .line 938
    .local v1, "layoutDirection":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_68

    .line 939
    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    goto :goto_6a

    .line 940
    :cond_68
    iget v2, v0, Landroid/graphics/Rect;->left:I

    :goto_6a
    nop

    .line 941
    .local v2, "left":I
    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 942
    return-void
.end method

.method private appendLog(Ljava/lang/String;)V
    .registers 2
    .param p1, "log"    # Ljava/lang/String;

    .line 1155
    return-void
.end method

.method private boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z
    .registers 13
    .param p2, "candidateBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Rect;",
            ")Z"
        }
    .end annotation

    .line 1097
    .local p1, "taskBoundsToCheck":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1098
    .local v1, "taskBounds":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_20

    move v3, v5

    goto :goto_21

    :cond_20
    move v3, v2

    .line 1100
    .local v3, "leftClose":Z
    :goto_21
    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v4, :cond_2e

    move v6, v5

    goto :goto_2f

    :cond_2e
    move v6, v2

    .line 1102
    .local v6, "topClose":Z
    :goto_2f
    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v4, :cond_3c

    move v7, v5

    goto :goto_3d

    :cond_3c
    move v7, v2

    .line 1104
    .local v7, "rightClose":Z
    :goto_3d
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    iget v9, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v8, v4, :cond_49

    move v2, v5

    .line 1107
    .local v2, "bottomClose":Z
    :cond_49
    if-eqz v3, :cond_4d

    if-nez v6, :cond_59

    :cond_4d
    if-eqz v3, :cond_51

    if-nez v2, :cond_59

    :cond_51
    if-eqz v7, :cond_55

    if-nez v6, :cond_59

    :cond_55
    if-eqz v7, :cond_5a

    if-eqz v2, :cond_5a

    .line 1109
    :cond_59
    return v5

    .line 1111
    .end local v1    # "taskBounds":Landroid/graphics/Rect;
    .end local v2    # "bottomClose":Z
    .end local v3    # "leftClose":Z
    .end local v6    # "topClose":Z
    .end local v7    # "rightClose":Z
    :cond_5a
    goto :goto_4

    .line 1113
    :cond_5b
    return v2
.end method

.method private calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .registers 39
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "request"    # Lcom/android/server/wm/ActivityStarter$Request;
    .param p7, "phase"    # I
    .param p8, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p9, "outParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 121
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    if-eqz v8, :cond_21

    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_1b

    move-object/from16 v0, p3

    goto :goto_1f

    :cond_1b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_1f
    move-object v15, v0

    .local v0, "root":Lcom/android/server/wm/ActivityRecord;
    goto :goto_24

    .line 124
    .end local v0    # "root":Lcom/android/server/wm/ActivityRecord;
    :cond_21
    move-object/from16 v0, p3

    move-object v15, v0

    .line 127
    .local v15, "root":Lcom/android/server/wm/ActivityRecord;
    :goto_24
    const/4 v6, 0x0

    if-nez v15, :cond_28

    .line 133
    return v6

    .line 136
    :cond_28
    const/4 v5, 0x1

    const/4 v4, 0x5

    if-eqz v8, :cond_7d

    if-eqz v11, :cond_7d

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    if-ne v0, v4, :cond_7d

    .line 137
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getMiuiConfigFlag()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7d

    .line 138
    iget-object v0, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v1, v8, Lcom/android/server/wm/Task;->mTaskId:I

    iget v2, v8, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1, v2, v6, v5}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/window/TaskSnapshot;

    move-result-object v0

    .line 140
    .local v0, "snapshot":Landroid/window/TaskSnapshot;
    if-eqz v0, :cond_7d

    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getWindowingMode()I

    move-result v1

    if-ne v1, v4, :cond_7d

    .line 141
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 142
    .local v1, "launchBounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getFreeformTaskBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 143
    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getFreeformScale()F

    move-result v3

    iget-object v6, v8, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 145
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 144
    invoke-static {v6, v5}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getFreeFormAccessibleArea(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;)Landroid/graphics/Rect;

    move-result-object v5

    .line 142
    invoke-static {v2, v1, v3, v5}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->reviewFreeFormBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)F

    move-result v2

    .line 146
    .local v2, "scale":F
    invoke-static {v2, v11}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->setFreeformScale(FLandroid/app/ActivityOptions;)Z

    .line 147
    iput v4, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 148
    iget-object v3, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 149
    const/4 v5, 0x1

    return v5

    .line 155
    .end local v0    # "snapshot":Landroid/window/TaskSnapshot;
    .end local v1    # "launchBounds":Landroid/graphics/Rect;
    .end local v2    # "scale":F
    :cond_7d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p4

    move-object/from16 v4, p8

    move-object/from16 v16, v15

    move v15, v5

    .end local v15    # "root":Lcom/android/server/wm/ActivityRecord;
    .local v16, "root":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v5, p3

    move/from16 v18, v6

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getPreferredLaunchTaskDisplayArea(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    .line 157
    .local v6, "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    iput-object v6, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 158
    iget-object v5, v6, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 165
    .local v5, "display":Lcom/android/server/wm/DisplayContent;
    const/4 v4, 0x2

    if-nez v12, :cond_9c

    .line 166
    return v4

    .line 174
    :cond_9c
    if-eqz v11, :cond_a3

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v0

    goto :goto_a5

    .line 175
    :cond_a3
    move/from16 v0, v18

    :goto_a5
    nop

    .line 179
    .local v0, "launchMode":I
    if-nez v0, :cond_b6

    .line 180
    invoke-direct {v7, v5, v10}, Lcom/android/server/wm/TaskLaunchParamsModifier;->canInheritWindowingModeFromSource(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 184
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 193
    :cond_b6
    if-nez v0, :cond_c4

    if-eqz v8, :cond_c4

    .line 194
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-ne v1, v6, :cond_c4

    .line 195
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 203
    :cond_c4
    const/4 v1, 0x0

    .line 207
    .local v1, "hasInitialBounds":Z
    const/4 v2, 0x0

    .line 208
    .local v2, "hasInitialBoundsForSuggestedDisplayAreaInFreeformWindow":Z
    invoke-direct {v7, v5, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->canApplyFreeformWindowPolicy(Lcom/android/server/wm/DisplayContent;I)Z

    move-result v19

    .line 209
    .local v19, "canApplyFreeformPolicy":Z
    iget-object v3, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3, v11}, Lcom/android/server/wm/ActivityTaskSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v3

    if-eqz v3, :cond_f7

    if-nez v19, :cond_da

    .line 210
    invoke-direct {v7, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->canApplyPipWindowPolicy(I)Z

    move-result v3

    if-eqz v3, :cond_f7

    .line 212
    :cond_da
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v3

    if-nez v3, :cond_f7

    .line 215
    const/4 v1, 0x1

    .line 216
    if-nez v0, :cond_e5

    .line 217
    const/4 v3, 0x5

    goto :goto_e6

    .line 218
    :cond_e5
    move v3, v0

    :goto_e6
    move v0, v3

    .line 219
    iget-object v3, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v3, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v21, v1

    move/from16 v22, v2

    move-object/from16 v15, v16

    goto :goto_14b

    .line 221
    :cond_f7
    if-ne v0, v4, :cond_fc

    move-object/from16 v15, v16

    goto :goto_147

    .line 224
    :cond_fc
    const/4 v3, 0x1

    if-ne v0, v3, :cond_102

    move-object/from16 v15, v16

    goto :goto_147

    .line 226
    :cond_102
    if-eqz v9, :cond_12b

    if-eqz v19, :cond_12b

    .line 227
    iget-object v3, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v15, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 228
    iget-object v3, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    move-object/from16 v15, v16

    .end local v16    # "root":Lcom/android/server/wm/ActivityRecord;
    .restart local v15    # "root":Lcom/android/server/wm/ActivityRecord;
    invoke-direct {v7, v6, v15, v9, v3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 229
    iget-object v3, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_147

    .line 230
    const/4 v0, 0x5

    .line 231
    iget-object v3, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v4, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 232
    const/4 v1, 0x1

    .line 233
    const/4 v2, 0x1

    move/from16 v21, v1

    move/from16 v22, v2

    goto :goto_14b

    .line 226
    .end local v15    # "root":Lcom/android/server/wm/ActivityRecord;
    .restart local v16    # "root":Lcom/android/server/wm/ActivityRecord;
    :cond_12b
    move-object/from16 v15, v16

    .line 238
    .end local v16    # "root":Lcom/android/server/wm/ActivityRecord;
    .restart local v15    # "root":Lcom/android/server/wm/ActivityRecord;
    const/4 v3, 0x6

    if-ne v0, v3, :cond_147

    if-eqz v11, :cond_147

    .line 239
    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_147

    .line 240
    iget-object v3, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 241
    const/4 v1, 0x1

    move/from16 v21, v1

    move/from16 v22, v2

    goto :goto_14b

    .line 256
    .end local v15    # "root":Lcom/android/server/wm/ActivityRecord;
    .restart local v16    # "root":Lcom/android/server/wm/ActivityRecord;
    :cond_147
    :goto_147
    move/from16 v21, v1

    move/from16 v22, v2

    .end local v1    # "hasInitialBounds":Z
    .end local v2    # "hasInitialBoundsForSuggestedDisplayAreaInFreeformWindow":Z
    .end local v16    # "root":Lcom/android/server/wm/ActivityRecord;
    .restart local v15    # "root":Lcom/android/server/wm/ActivityRecord;
    .local v21, "hasInitialBounds":Z
    .local v22, "hasInitialBoundsForSuggestedDisplayAreaInFreeformWindow":Z
    :goto_14b
    const/4 v1, 0x0

    .line 261
    .local v1, "fullyResolvedCurrentParam":Z
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_195

    if-nez v21, :cond_195

    iget-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v2, :cond_167

    iget-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 263
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v2

    .line 264
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    if-ne v2, v3, :cond_165

    goto :goto_167

    :cond_165
    const/4 v4, 0x5

    goto :goto_196

    .line 267
    :cond_167
    :goto_167
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_17e

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_17e

    .line 268
    iget v0, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 269
    const/4 v4, 0x5

    if-eq v0, v4, :cond_17a

    const/4 v2, 0x1

    goto :goto_17c

    :cond_17a
    move/from16 v2, v18

    :goto_17c
    move v1, v2

    goto :goto_17f

    .line 267
    :cond_17e
    const/4 v4, 0x5

    .line 275
    :goto_17f
    iget-object v2, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_192

    .line 280
    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    iget-object v3, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 282
    const/4 v1, 0x1

    .line 284
    move/from16 v17, v1

    goto :goto_198

    .line 275
    :cond_192
    move/from16 v17, v1

    goto :goto_198

    .line 261
    :cond_195
    const/4 v4, 0x5

    .line 303
    :goto_196
    move/from16 v17, v1

    .end local v1    # "fullyResolvedCurrentParam":Z
    .local v17, "fullyResolvedCurrentParam":Z
    :goto_198
    const/16 v23, 0x0

    .line 304
    .local v23, "hasInitialBoundsForSuggestedDisplayAreaInFreeformDisplay":Z
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_1fb

    .line 305
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1aa

    move v10, v3

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    goto/16 :goto_200

    .line 307
    :cond_1aa
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v1

    if-nez v1, :cond_1f5

    .line 308
    invoke-direct {v7, v15, v6, v11}, Lcom/android/server/wm/TaskLaunchParamsModifier;->shouldLaunchUnresizableAppInFreeform(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/app/ActivityOptions;)Z

    move-result v1

    if-eqz v1, :cond_1e8

    .line 309
    const/16 v16, 0x5

    .line 310
    .end local v0    # "launchMode":I
    .local v16, "launchMode":I
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e0

    .line 311
    iget-object v2, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v24, v2

    move-object v2, v6

    move/from16 v25, v3

    move-object/from16 v3, p2

    move/from16 v10, v25

    move/from16 v4, v16

    move-object/from16 v26, v5

    .end local v5    # "display":Lcom/android/server/wm/DisplayContent;
    .local v26, "display":Lcom/android/server/wm/DisplayContent;
    move/from16 v5, v21

    move-object/from16 v27, v6

    .end local v6    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v27, "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    move-object/from16 v6, v24

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    .line 313
    const/16 v23, 0x1

    move/from16 v6, v16

    goto :goto_201

    .line 310
    .end local v26    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v27    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v5    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v6    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_1e0
    move v10, v3

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    .end local v5    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v26    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v27    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    move/from16 v6, v16

    goto :goto_201

    .line 317
    .end local v16    # "launchMode":I
    .end local v26    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v27    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v0    # "launchMode":I
    .restart local v5    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v6    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_1e8
    move v10, v3

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    .end local v5    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v26    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v27    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v0, 0x1

    .line 318
    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    move v6, v0

    goto :goto_201

    .line 307
    .end local v26    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v27    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v5    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v6    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_1f5
    move v10, v3

    move-object/from16 v26, v5

    move-object/from16 v27, v6

    .end local v5    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v26    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v27    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    goto :goto_200

    .line 304
    .end local v26    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v27    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v5    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v6    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_1fb
    move-object/from16 v26, v5

    move-object/from16 v27, v6

    const/4 v10, 0x2

    .line 326
    .end local v5    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v6    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v26    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v27    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :goto_200
    move v6, v0

    .end local v0    # "launchMode":I
    .local v6, "launchMode":I
    :goto_201
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v0

    if-ne v6, v0, :cond_20a

    .line 327
    move/from16 v0, v18

    goto :goto_20b

    :cond_20a
    move v0, v6

    :goto_20b
    iput v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 329
    const/4 v0, 0x1

    if-ne v12, v0, :cond_211

    .line 330
    return v10

    .line 335
    :cond_211
    if-eqz v6, :cond_215

    move v0, v6

    goto :goto_219

    .line 336
    :cond_215
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v0

    :goto_219
    move v5, v0

    .line 337
    .local v5, "resolvedMode":I
    move-object/from16 v16, v27

    .line 340
    .local v16, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v11, :cond_231

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v0

    if-nez v0, :cond_225

    goto :goto_231

    :cond_225
    move/from16 v28, v6

    move-object/from16 v6, v16

    move-object/from16 v20, v26

    move-object/from16 v24, v27

    move/from16 v27, v5

    goto/16 :goto_2fb

    .line 341
    :cond_231
    :goto_231
    iget-object v0, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 342
    invoke-virtual {v0, v15, v11, v8}, Lcom/android/server/wm/RootWindowContainer;->resolveActivityType(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;)I

    move-result v4

    .line 343
    .local v4, "activityType":I
    new-instance v0, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda0;

    invoke-direct {v0, v7, v5, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TaskLaunchParamsModifier;II)V

    move-object/from16 v3, v26

    .end local v26    # "display":Lcom/android/server/wm/DisplayContent;
    .local v3, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3, v0}, Lcom/android/server/wm/DisplayContent;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;)Z

    .line 355
    iget-object v0, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v0, :cond_2ad

    move-object/from16 v2, v27

    .end local v27    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v2, "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eq v0, v2, :cond_2a2

    .line 356
    if-eqz v22, :cond_26e

    .line 357
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 358
    iget-object v0, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v0, v15, v9, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V

    .line 359
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    move/from16 v21, v0

    move-object/from16 v24, v2

    move-object/from16 v20, v3

    move/from16 v26, v4

    move/from16 v27, v5

    move/from16 v28, v6

    .end local v21    # "hasInitialBounds":Z
    .local v0, "hasInitialBounds":Z
    goto :goto_2b7

    .line 360
    .end local v0    # "hasInitialBounds":Z
    .restart local v21    # "hasInitialBounds":Z
    :cond_26e
    if-eqz v23, :cond_297

    .line 361
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 362
    iget-object v1, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v20, v1

    move-object v1, v15

    move-object/from16 v24, v2

    .end local v2    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v24, "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    move-object/from16 v2, v20

    move-object/from16 v20, v3

    .end local v3    # "display":Lcom/android/server/wm/DisplayContent;
    .local v20, "display":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v3, p2

    move/from16 v26, v4

    .end local v4    # "activityType":I
    .local v26, "activityType":I
    move v4, v6

    move/from16 v27, v5

    .end local v5    # "resolvedMode":I
    .local v27, "resolvedMode":I
    move/from16 v5, v21

    move/from16 v28, v6

    .end local v6    # "launchMode":I
    .local v28, "launchMode":I
    move-object/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    goto :goto_2b7

    .line 360
    .end local v20    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v24    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v26    # "activityType":I
    .end local v27    # "resolvedMode":I
    .end local v28    # "launchMode":I
    .restart local v2    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v3    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v4    # "activityType":I
    .restart local v5    # "resolvedMode":I
    .restart local v6    # "launchMode":I
    :cond_297
    move-object/from16 v24, v2

    move-object/from16 v20, v3

    move/from16 v26, v4

    move/from16 v27, v5

    move/from16 v28, v6

    .end local v2    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v3    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "activityType":I
    .end local v5    # "resolvedMode":I
    .end local v6    # "launchMode":I
    .restart local v20    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v24    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v26    # "activityType":I
    .restart local v27    # "resolvedMode":I
    .restart local v28    # "launchMode":I
    goto :goto_2b7

    .line 355
    .end local v20    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v24    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v26    # "activityType":I
    .end local v27    # "resolvedMode":I
    .end local v28    # "launchMode":I
    .restart local v2    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v3    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v4    # "activityType":I
    .restart local v5    # "resolvedMode":I
    .restart local v6    # "launchMode":I
    :cond_2a2
    move-object/from16 v24, v2

    move-object/from16 v20, v3

    move/from16 v26, v4

    move/from16 v27, v5

    move/from16 v28, v6

    .end local v2    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v3    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "activityType":I
    .end local v5    # "resolvedMode":I
    .end local v6    # "launchMode":I
    .restart local v20    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v24    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v26    # "activityType":I
    .restart local v27    # "resolvedMode":I
    .restart local v28    # "launchMode":I
    goto :goto_2b7

    .end local v20    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v24    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v26    # "activityType":I
    .end local v28    # "launchMode":I
    .restart local v3    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v4    # "activityType":I
    .restart local v5    # "resolvedMode":I
    .restart local v6    # "launchMode":I
    .local v27, "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_2ad
    move-object/from16 v20, v3

    move/from16 v26, v4

    move/from16 v28, v6

    move-object/from16 v24, v27

    move/from16 v27, v5

    .line 367
    .end local v3    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "activityType":I
    .end local v5    # "resolvedMode":I
    .end local v6    # "launchMode":I
    .restart local v20    # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v24    # "suggestedDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v26    # "activityType":I
    .local v27, "resolvedMode":I
    .restart local v28    # "launchMode":I
    :goto_2b7
    iget-object v0, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v0, :cond_2f9

    .line 368
    iget-object v0, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 369
    .end local v16    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v1, 0x0

    iput-object v1, v7, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "overridden-display-area=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 371
    invoke-static/range {v26 .. v26}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 372
    invoke-static/range {v27 .. v27}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-direct {v7, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    move-object v6, v0

    goto :goto_2fb

    .line 367
    .end local v0    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v16    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_2f9
    move-object/from16 v6, v16

    .line 376
    .end local v16    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v26    # "activityType":I
    .local v6, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :goto_2fb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "display-area="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->appendLog(Ljava/lang/String;)V

    .line 377
    iput-object v6, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 379
    if-ne v12, v10, :cond_316

    .line 380
    return v10

    .line 389
    :cond_316
    if-eqz v17, :cond_335

    .line 390
    move/from16 v5, v27

    const/4 v0, 0x5

    .end local v27    # "resolvedMode":I
    .restart local v5    # "resolvedMode":I
    if-ne v5, v0, :cond_330

    .line 392
    iget-object v0, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    if-eq v0, v6, :cond_326

    .line 393
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v6, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    .line 397
    :cond_326
    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v6, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    move/from16 v18, v5

    move-object/from16 v25, v6

    goto :goto_380

    .line 390
    :cond_330
    move/from16 v18, v5

    move-object/from16 v25, v6

    goto :goto_380

    .line 399
    .end local v5    # "resolvedMode":I
    .restart local v27    # "resolvedMode":I
    :cond_335
    move/from16 v5, v27

    const/4 v0, 0x5

    .end local v27    # "resolvedMode":I
    .restart local v5    # "resolvedMode":I
    invoke-virtual {v6}, Lcom/android/server/wm/TaskDisplayArea;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_37c

    .line 400
    if-eqz p4, :cond_365

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_365

    if-ne v5, v0, :cond_365

    iget-object v0, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    .line 402
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_365

    .line 403
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-ne v0, v6, :cond_365

    .line 405
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v7, v0, v6, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->cascadeBounds(Landroid/graphics/Rect;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    .line 408
    :cond_365
    iget-object v4, v14, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v6

    move-object/from16 v3, p2

    move-object/from16 v16, v4

    move v4, v5

    move/from16 v18, v5

    .end local v5    # "resolvedMode":I
    .local v18, "resolvedMode":I
    move/from16 v5, v21

    move-object/from16 v25, v6

    .end local v6    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v25, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    goto :goto_380

    .line 399
    .end local v18    # "resolvedMode":I
    .end local v25    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v5    # "resolvedMode":I
    .restart local v6    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_37c
    move/from16 v18, v5

    move-object/from16 v25, v6

    .line 411
    .end local v5    # "resolvedMode":I
    .end local v6    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v18    # "resolvedMode":I
    .restart local v25    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :goto_380
    return v10
.end method

.method private calculateCandidateShiftDirections(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 14
    .param p1, "availableBounds"    # Landroid/graphics/Rect;
    .param p2, "initialBounds"    # Landroid/graphics/Rect;

    .line 1061
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v0, v2, :cond_c

    .line 1062
    aput v3, v1, v0

    .line 1061
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1065
    .end local v0    # "i":I
    :cond_c
    iget v0, p1, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    const/4 v1, 0x3

    div-int/2addr v0, v1

    .line 1066
    .local v0, "oneThirdWidth":I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    div-int/2addr v2, v1

    .line 1067
    .local v2, "twoThirdWidth":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 1068
    .local v4, "centerX":I
    const/4 v5, 0x5

    if-ge v4, v0, :cond_29

    .line 1070
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v5, v1, v3

    .line 1071
    return-void

    .line 1072
    :cond_29
    if-le v4, v2, :cond_30

    .line 1074
    iget-object v5, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v1, v5, v3

    .line 1075
    return-void

    .line 1078
    :cond_30
    iget v6, p1, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v6, v6, 0x2

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    div-int/2addr v6, v1

    .line 1079
    .local v6, "oneThirdHeight":I
    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    div-int/2addr v7, v1

    .line 1080
    .local v7, "twoThirdHeight":I
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    .line 1081
    .local v8, "centerY":I
    const/4 v9, 0x1

    if-lt v8, v6, :cond_55

    if-le v8, v7, :cond_4a

    goto :goto_55

    .line 1091
    :cond_4a
    iget-object v1, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    const/16 v5, 0x55

    aput v5, v1, v3

    .line 1092
    const/16 v3, 0x33

    aput v3, v1, v9

    .line 1093
    return-void

    .line 1084
    :cond_55
    :goto_55
    iget-object v10, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    aput v5, v10, v3

    .line 1085
    aput v1, v10, v9

    .line 1086
    return-void
.end method

.method private canApplyFreeformWindowPolicy(Lcom/android/server/wm/DisplayContent;I)Z
    .registers 4
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "launchMode"    # I

    .line 591
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v0, :cond_13

    .line 592
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x5

    if-ne p2, v0, :cond_13

    :cond_11
    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 591
    :goto_14
    return v0
.end method

.method private canApplyPipWindowPolicy(I)Z
    .registers 3
    .param p1, "launchMode"    # I

    .line 596
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private canInheritWindowingModeFromSource(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 8
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "source"    # Lcom/android/server/wm/ActivityRecord;

    .line 561
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 562
    return v0

    .line 568
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 569
    return v0

    .line 572
    :cond_b
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v1

    .line 573
    .local v1, "sourceWindowingMode":I
    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_16

    if-eq v1, v2, :cond_16

    .line 575
    return v0

    .line 579
    :cond_16
    if-ne v1, v2, :cond_19

    .line 580
    return v0

    .line 587
    :cond_19
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v4

    if-ne v2, v4, :cond_24

    move v0, v3

    :cond_24
    return v0
.end method

.method private cascadeBounds(Landroid/graphics/Rect;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V
    .registers 10
    .param p1, "srcBounds"    # Landroid/graphics/Rect;
    .param p2, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p3, "outBounds"    # Landroid/graphics/Rect;

    .line 740
    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 741
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 742
    .local v0, "density":F
    const/high16 v1, 0x42960000    # 75.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 744
    .local v1, "defaultOffset":I
    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v2}, Lcom/android/server/wm/TaskDisplayArea;->getBounds(Landroid/graphics/Rect;)V

    .line 745
    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 746
    .local v2, "dx":I
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 747
    .local v3, "dy":I
    invoke-virtual {p3, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 748
    return-void
.end method

.method private centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V
    .registers 9
    .param p1, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "inOutBounds"    # Landroid/graphics/Rect;

    .line 919
    invoke-virtual {p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 920
    invoke-virtual {p1, p4}, Lcom/android/server/wm/TaskDisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 922
    :cond_9
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    div-int/lit8 v1, p2, 0x2

    sub-int/2addr v0, v1

    .line 923
    .local v0, "left":I
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    div-int/lit8 v2, p3, 0x2

    sub-int/2addr v1, v2

    .line 924
    .local v1, "top":I
    add-int v2, v0, p2

    add-int v3, v1, p3

    invoke-virtual {p4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 925
    return-void
.end method

.method private convertOrientationToScreenOrientation(I)I
    .registers 3
    .param p1, "orientation"    # I

    .line 809
    packed-switch p1, :pswitch_data_a

    .line 815
    const/4 v0, -0x1

    return v0

    .line 811
    :pswitch_5
    const/4 v0, 0x0

    return v0

    .line 813
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private getDefaultFreeformSize(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;ILandroid/graphics/Rect;)V
    .registers 31
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p3, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p4, "orientation"    # I
    .param p5, "bounds"    # Landroid/graphics/Rect;

    .line 854
    move-object/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 855
    .local v4, "stableBounds":Landroid/graphics/Rect;
    move-object/from16 v5, p2

    invoke-virtual {v5, v4}, Lcom/android/server/wm/TaskDisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 856
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 857
    .local v6, "portraitHeight":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 858
    .local v7, "otherDimension":I
    mul-int v8, v6, v6

    div-int/2addr v8, v7

    .line 859
    .local v8, "portraitWidth":I
    if-nez v1, :cond_2e

    move v9, v6

    goto :goto_2f

    .line 860
    :cond_2e
    move v9, v8

    :goto_2f
    nop

    .line 861
    .local v9, "defaultWidth":I
    if-nez v1, :cond_34

    move v10, v8

    goto :goto_35

    .line 862
    :cond_34
    move v10, v6

    :goto_35
    nop

    .line 866
    .local v10, "defaultHeight":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/TaskDisplayArea;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v11, v11

    const/high16 v12, 0x43200000    # 160.0f

    div-float/2addr v11, v12

    .line 867
    .local v11, "density":F
    const/high16 v12, 0x43ce0000    # 412.0f

    mul-float/2addr v12, v11

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    .line 868
    .local v12, "phonePortraitWidth":I
    const/high16 v14, 0x44370000    # 732.0f

    mul-float/2addr v14, v11

    add-float/2addr v14, v13

    float-to-int v14, v14

    .line 869
    .local v14, "phonePortraitHeight":I
    if-nez v1, :cond_50

    move v15, v14

    goto :goto_51

    .line 870
    :cond_50
    move v15, v12

    :goto_51
    nop

    .line 871
    .local v15, "phoneWidth":I
    if-nez v1, :cond_57

    move/from16 v16, v12

    goto :goto_59

    .line 872
    :cond_57
    move/from16 v16, v14

    :goto_59
    move/from16 v17, v16

    .line 875
    .local v17, "phoneHeight":I
    const/16 v16, -0x1

    if-nez v0, :cond_62

    move/from16 v13, v16

    goto :goto_64

    :cond_62
    iget v13, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    .line 876
    .local v13, "layoutMinWidth":I
    :goto_64
    if-nez v0, :cond_67

    goto :goto_6b

    :cond_67
    iget v3, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    move/from16 v16, v3

    :goto_6b
    move/from16 v3, v16

    .line 879
    .local v3, "layoutMinHeight":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio(I)F

    move-result v16

    .line 880
    .local v16, "minAspectRatio":F
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v19

    .line 882
    .local v19, "maxAspectRatio":F
    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 883
    .local v0, "width":I
    move/from16 v5, v17

    move/from16 v17, v6

    .end local v6    # "portraitHeight":I
    .local v5, "phoneHeight":I
    .local v17, "portraitHeight":I
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 884
    .local v6, "height":I
    move/from16 v20, v3

    .end local v3    # "layoutMinHeight":I
    .local v20, "layoutMinHeight":I
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    move/from16 v21, v5

    .end local v5    # "phoneHeight":I
    .local v21, "phoneHeight":I
    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 887
    .local v3, "aspectRatio":F
    move v5, v0

    .line 888
    .local v5, "adjWidth":I
    move/from16 v22, v6

    .line 889
    .local v22, "adjHeight":I
    const/high16 v23, 0x3f800000    # 1.0f

    cmpl-float v24, v16, v23

    if-ltz v24, :cond_c5

    cmpg-float v24, v3, v16

    if-gez v24, :cond_c5

    .line 891
    if-nez v1, :cond_b6

    .line 893
    move/from16 v24, v0

    .end local v0    # "width":I
    .local v24, "width":I
    int-to-float v0, v5

    div-float v0, v0, v16

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v0, v0, v18

    float-to-int v0, v0

    move/from16 v22, v6

    .end local v22    # "adjHeight":I
    .local v0, "adjHeight":I
    goto :goto_e6

    .line 896
    .end local v24    # "width":I
    .local v0, "width":I
    .restart local v22    # "adjHeight":I
    :cond_b6
    move/from16 v24, v0

    const/high16 v18, 0x3f000000    # 0.5f

    .end local v0    # "width":I
    .restart local v24    # "width":I
    move/from16 v0, v22

    move/from16 v22, v6

    .end local v6    # "height":I
    .local v0, "adjHeight":I
    .local v22, "height":I
    int-to-float v6, v0

    div-float v6, v6, v16

    add-float v6, v6, v18

    float-to-int v5, v6

    goto :goto_e6

    .line 889
    .end local v24    # "width":I
    .local v0, "width":I
    .restart local v6    # "height":I
    .local v22, "adjHeight":I
    :cond_c5
    move/from16 v24, v0

    move/from16 v0, v22

    move/from16 v22, v6

    .line 898
    .end local v6    # "height":I
    .local v0, "adjHeight":I
    .local v22, "height":I
    .restart local v24    # "width":I
    cmpl-float v6, v19, v23

    if-ltz v6, :cond_e6

    cmpl-float v6, v3, v19

    if-lez v6, :cond_e6

    .line 900
    if-nez v1, :cond_de

    .line 902
    int-to-float v6, v5

    div-float v6, v6, v19

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v6, v6, v18

    float-to-int v0, v6

    goto :goto_e6

    .line 905
    :cond_de
    const/high16 v18, 0x3f000000    # 0.5f

    int-to-float v6, v0

    div-float v6, v6, v19

    add-float v6, v6, v18

    float-to-int v5, v6

    .line 909
    :cond_e6
    :goto_e6
    const/4 v6, 0x0

    invoke-virtual {v2, v6, v6, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 910
    iget v6, v4, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    .end local v0    # "adjHeight":I
    .local v18, "adjHeight":I
    iget v0, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v6, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 911
    return-void
.end method

.method private getFallbackDisplayAreaForActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;)Lcom/android/server/wm/TaskDisplayArea;
    .registers 11
    .param p1, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "request"    # Lcom/android/server/wm/ActivityStarter$Request;

    .line 531
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPid:I

    iget v2, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 532
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 534
    .local v0, "controllerFromLaunchingRecord":Lcom/android/server/wm/WindowProcessController;
    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 535
    move-object v2, v1

    goto :goto_15

    :cond_11
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 536
    .local v2, "displayAreaForLaunchingRecord":Lcom/android/server/wm/TaskDisplayArea;
    :goto_15
    if-eqz v2, :cond_18

    .line 537
    return-object v2

    .line 540
    :cond_18
    iget-object v3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 541
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v5

    .line 540
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    .line 542
    .local v3, "controllerFromProcess":Lcom/android/server/wm/WindowProcessController;
    if-nez v3, :cond_2c

    move-object v4, v1

    goto :goto_30

    .line 543
    :cond_2c
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    :goto_30
    nop

    .line 544
    .local v4, "displayAreaForRecord":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v4, :cond_34

    .line 545
    return-object v4

    .line 548
    :cond_34
    if-nez p2, :cond_38

    move-object v5, v1

    goto :goto_44

    .line 549
    :cond_38
    iget-object v5, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v6, p2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingPid:I

    iget v7, p2, Lcom/android/server/wm/ActivityStarter$Request;->realCallingUid:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v5

    :goto_44
    nop

    .line 550
    .local v5, "controllerFromRequest":Lcom/android/server/wm/WindowProcessController;
    if-nez v5, :cond_48

    goto :goto_4c

    .line 551
    :cond_48
    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    :goto_4c
    nop

    .line 552
    .local v1, "displayAreaFromSourceProcess":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v1, :cond_50

    .line 553
    return-object v1

    .line 556
    :cond_50
    iget-object v6, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v6

    return-object v6
.end method

.method private getLayoutBounds(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/ActivityRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Landroid/graphics/Rect;)V
    .registers 21
    .param p1, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p2, "root"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "windowLayout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p4, "inOutBounds"    # Landroid/graphics/Rect;

    .line 602
    move-object/from16 v7, p3

    move-object/from16 v8, p4

    iget v0, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v9, v0, 0x70

    .line 603
    .local v9, "verticalGravity":I
    iget v0, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    and-int/lit8 v10, v0, 0x7

    .line 604
    .local v10, "horizontalGravity":I
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v0

    if-nez v0, :cond_1a

    if-nez v9, :cond_1a

    if-nez v10, :cond_1a

    .line 605
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 606
    return-void

    .line 611
    :cond_1a
    move-object/from16 v11, p0

    iget-object v12, v11, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 612
    .local v12, "stableBounds":Landroid/graphics/Rect;
    move-object/from16 v13, p1

    invoke-virtual {v13, v12}, Lcom/android/server/wm/TaskDisplayArea;->getStableRect(Landroid/graphics/Rect;)V

    .line 613
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v14

    .line 614
    .local v14, "defaultWidth":I
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 618
    .local v15, "defaultHeight":I
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo$WindowLayout;->hasSpecifiedSize()Z

    move-result v0

    if-nez v0, :cond_58

    .line 619
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    .line 622
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 623
    .local v0, "width":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    .local v1, "height":I
    goto :goto_95

    .line 625
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_40
    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V

    .line 627
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 628
    .restart local v0    # "width":I
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    .restart local v1    # "height":I
    goto :goto_95

    .line 631
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_58
    move v0, v14

    .line 632
    .restart local v0    # "width":I
    iget v1, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-lez v1, :cond_67

    iget v1, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    if-ge v1, v14, :cond_67

    .line 633
    iget v0, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    goto :goto_78

    .line 634
    :cond_67
    iget v1, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_78

    iget v1, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_78

    .line 635
    int-to-float v1, v0

    iget v4, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    mul-float/2addr v1, v4

    float-to-int v0, v1

    .line 638
    :cond_78
    :goto_78
    move v1, v15

    .line 639
    .restart local v1    # "height":I
    iget v4, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-lez v4, :cond_84

    iget v4, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    if-ge v4, v15, :cond_84

    .line 640
    iget v1, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    goto :goto_95

    .line 641
    :cond_84
    iget v4, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    cmpl-float v3, v4, v3

    if-lez v3, :cond_95

    iget v3, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    cmpg-float v2, v3, v2

    if-gez v2, :cond_95

    .line 642
    int-to-float v2, v1

    iget v3, v7, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 647
    :cond_95
    :goto_95
    packed-switch v10, :pswitch_data_c4

    .line 655
    :pswitch_98
    const/high16 v2, 0x3f000000    # 0.5f

    .local v2, "fractionOfHorizontalOffset":F
    goto :goto_a0

    .line 652
    .end local v2    # "fractionOfHorizontalOffset":F
    :pswitch_9b
    const/high16 v2, 0x3f800000    # 1.0f

    .line 653
    .restart local v2    # "fractionOfHorizontalOffset":F
    goto :goto_a0

    .line 649
    .end local v2    # "fractionOfHorizontalOffset":F
    :pswitch_9e
    const/4 v2, 0x0

    .line 650
    .restart local v2    # "fractionOfHorizontalOffset":F
    nop

    .line 659
    :goto_a0
    sparse-switch v9, :sswitch_data_ce

    .line 667
    const/high16 v3, 0x3f000000    # 0.5f

    .local v3, "fractionOfVerticalOffset":F
    goto :goto_ab

    .line 664
    .end local v3    # "fractionOfVerticalOffset":F
    :sswitch_a6
    const/high16 v3, 0x3f800000    # 1.0f

    .line 665
    .restart local v3    # "fractionOfVerticalOffset":F
    goto :goto_ab

    .line 661
    .end local v3    # "fractionOfVerticalOffset":F
    :sswitch_a9
    const/4 v3, 0x0

    .line 662
    .restart local v3    # "fractionOfVerticalOffset":F
    nop

    .line 670
    :goto_ab
    const/4 v4, 0x0

    invoke-virtual {v8, v4, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 671
    iget v4, v12, Landroid/graphics/Rect;->left:I

    iget v5, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 672
    sub-int v4, v14, v0

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    .line 673
    .local v4, "xOffset":I
    sub-int v5, v15, v1

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    .line 674
    .local v5, "yOffset":I
    invoke-virtual {v8, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 675
    return-void

    :pswitch_data_c4
    .packed-switch 0x3
        :pswitch_9e
        :pswitch_98
        :pswitch_9b
    .end packed-switch

    :sswitch_data_ce
    .sparse-switch
        0x30 -> :sswitch_a9
        0x50 -> :sswitch_a6
    .end sparse-switch
.end method

.method private getPreferredLaunchTaskDisplayArea(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;)Lcom/android/server/wm/TaskDisplayArea;
    .registers 13
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "options"    # Landroid/app/ActivityOptions;
    .param p3, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p5, "activityRecord"    # Lcom/android/server/wm/ActivityRecord;
    .param p6, "request"    # Lcom/android/server/wm/ActivityStarter$Request;

    .line 417
    const/4 v0, 0x0

    .line 419
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v1, 0x0

    if-eqz p2, :cond_9

    .line 420
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v2

    goto :goto_a

    :cond_9
    move-object v2, v1

    .line 421
    .local v2, "optionLaunchTaskDisplayAreaToken":Landroid/window/WindowContainerToken;
    :goto_a
    if-eqz v2, :cond_18

    .line 422
    nop

    .line 423
    invoke-virtual {v2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 422
    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    .line 428
    :cond_18
    if-nez v0, :cond_33

    .line 430
    const/4 v3, -0x1

    if-eqz p2, :cond_22

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v4

    goto :goto_23

    :cond_22
    move v4, v3

    .line 431
    .local v4, "optionLaunchId":I
    :goto_23
    if-eq v4, v3, :cond_33

    .line 432
    iget-object v3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 433
    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 434
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_33

    .line 435
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 443
    .end local v3    # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v4    # "optionLaunchId":I
    :cond_33
    if-nez v0, :cond_50

    if-eqz p3, :cond_50

    iget-boolean v3, p3, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-eqz v3, :cond_50

    .line 445
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->mHandoverTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 446
    if-eqz v0, :cond_40

    goto :goto_50

    .line 450
    :cond_40
    iget v3, p3, Lcom/android/server/wm/ActivityRecord;->mHandoverLaunchDisplayId:I

    .line 451
    .local v3, "displayId":I
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 452
    invoke-virtual {v4, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 453
    .local v4, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v4, :cond_50

    .line 454
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 460
    .end local v3    # "displayId":I
    .end local v4    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_50
    :goto_50
    if-nez v0, :cond_59

    if-eqz p3, :cond_59

    .line 461
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 463
    .local v3, "sourceDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    move-object v0, v3

    .line 466
    .end local v3    # "sourceDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_59
    if-nez v0, :cond_62

    if-eqz p1, :cond_62

    .line 467
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_63

    :cond_62
    nop

    .line 468
    .local v1, "rootTask":Lcom/android/server/wm/Task;
    :goto_63
    if-eqz v1, :cond_69

    .line 470
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 473
    :cond_69
    if-nez v0, :cond_7f

    if-eqz p2, :cond_7f

    .line 474
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getCallerDisplayId()I

    move-result v3

    .line 475
    .local v3, "callerDisplayId":I
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 476
    invoke-virtual {v4, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 477
    .restart local v4    # "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v4, :cond_7f

    .line 478
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 483
    .end local v3    # "callerDisplayId":I
    .end local v4    # "dc":Lcom/android/server/wm/DisplayContent;
    :cond_7f
    if-nez v0, :cond_83

    .line 484
    iget-object v0, p4, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 488
    :cond_83
    if-eqz v0, :cond_9b

    iget-object v3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-nez v3, :cond_9b

    .line 489
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v3

    if-eqz v3, :cond_9b

    .line 490
    iget-object v3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 494
    :cond_9b
    if-eqz v0, :cond_b8

    invoke-virtual {p5}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_b8

    iget-object v3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, p5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    .line 495
    invoke-virtual {v3, v4, v0, v5}, Lcom/android/server/wm/RootWindowContainer;->canStartHomeOnDisplayArea(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result v3

    if-nez v3, :cond_b8

    .line 497
    iget-object v3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 502
    :cond_b8
    if-eqz p2, :cond_db

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_db

    if-eqz p1, :cond_db

    if-ne p1, v1, :cond_db

    .line 503
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    if-eq v3, v4, :cond_db

    .line 504
    iget-object v3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 508
    :cond_db
    if-eqz v0, :cond_df

    .line 509
    move-object v3, v0

    goto :goto_e3

    .line 510
    :cond_df
    invoke-direct {p0, p5, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getFallbackDisplayAreaForActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityStarter$Request;)Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 508
    :goto_e3
    return-object v3
.end method

.method private getTaskBounds(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;IZLandroid/graphics/Rect;)V
    .registers 15
    .param p1, "root"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p3, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p4, "resolvedMode"    # I
    .param p5, "hasInitialBounds"    # Z
    .param p6, "inOutBounds"    # Landroid/graphics/Rect;

    .line 753
    const/4 v0, 0x1

    if-ne p4, v0, :cond_7

    .line 756
    invoke-virtual {p6}, Landroid/graphics/Rect;->setEmpty()V

    .line 758
    return-void

    .line 761
    :cond_7
    const/4 v1, 0x5

    if-eq p4, v1, :cond_b

    .line 766
    return-void

    .line 769
    :cond_b
    invoke-direct {p0, p1, p2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)I

    move-result v1

    .line 770
    .local v1, "orientation":I
    if-eq v1, v0, :cond_31

    if-nez v1, :cond_14

    goto :goto_31

    .line 772
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Orientation must be one of portrait or landscape, but it\'s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 774
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :cond_31
    :goto_31
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/TaskLaunchParamsModifier;->getDefaultFreeformSize(Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo$WindowLayout;ILandroid/graphics/Rect;)V

    .line 779
    if-nez p5, :cond_5a

    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-static {p6, v0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_47

    goto :goto_5a

    .line 798
    :cond_47
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {p0, p2, v0, v2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V

    .line 800
    invoke-direct {p0, p2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToFitInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    goto :goto_6c

    .line 784
    :cond_5a
    :goto_5a
    invoke-static {p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result v0

    if-ne v1, v0, :cond_61

    goto :goto_6c

    .line 788
    :cond_61
    invoke-virtual {p6}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p6}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-direct {p0, p2, v0, v2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->centerBounds(Lcom/android/server/wm/TaskDisplayArea;IILandroid/graphics/Rect;)V

    .line 805
    :goto_6c
    invoke-direct {p0, p2, p6}, Lcom/android/server/wm/TaskLaunchParamsModifier;->adjustBoundsToAvoidConflictInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)V

    .line 806
    return-void
.end method

.method private initLogBuilder(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 1151
    return-void
.end method

.method static synthetic lambda$adjustBoundsToAvoidConflictInDisplayArea$1(Ljava/util/List;Lcom/android/server/wm/Task;)V
    .registers 4
    .param p0, "taskBoundsToCheck"    # Ljava/util/List;
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 987
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 988
    return-void

    .line 991
    :cond_7
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_8
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 992
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 991
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 994
    .end local v0    # "j":I
    :cond_1c
    return-void
.end method

.method private static orientationFromBounds(Landroid/graphics/Rect;)I
    .registers 3
    .param p0, "bounds"    # Landroid/graphics/Rect;

    .line 1162
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_c

    const/4 v0, 0x0

    goto :goto_d

    .line 1163
    :cond_c
    const/4 v0, 0x1

    .line 1162
    :goto_d
    return v0
.end method

.method private outputLog()V
    .registers 1

    .line 1159
    return-void
.end method

.method private resolveOrientation(Lcom/android/server/wm/ActivityRecord;)I
    .registers 3
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 711
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 712
    .local v0, "orientation":I
    packed-switch v0, :pswitch_data_12

    .line 732
    :pswitch_7
    const/4 v0, -0x1

    goto :goto_10

    .line 715
    :pswitch_9
    const/16 v0, 0xe

    .line 716
    goto :goto_10

    .line 729
    :pswitch_c
    const/4 v0, 0x1

    .line 730
    goto :goto_10

    .line 722
    :pswitch_e
    const/4 v0, 0x0

    .line 723
    nop

    .line 735
    :goto_10
    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_c
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_9
        :pswitch_e
        :pswitch_c
        :pswitch_e
        :pswitch_c
        :pswitch_7
        :pswitch_e
        :pswitch_c
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method private resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)I
    .registers 6
    .param p1, "root"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 821
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 823
    .local v0, "orientation":I
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1f

    .line 824
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 825
    nop

    .line 826
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 825
    invoke-direct {p0, v1}, Lcom/android/server/wm/TaskLaunchParamsModifier;->convertOrientationToScreenOrientation(I)I

    move-result v1

    goto :goto_1e

    .line 827
    :cond_1a
    invoke-static {p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result v1

    :goto_1e
    move v0, v1

    .line 834
    :cond_1f
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2f

    .line 835
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2a

    const/4 v1, 0x1

    goto :goto_2e

    .line 836
    :cond_2a
    invoke-static {p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result v1

    :goto_2e
    move v0, v1

    .line 843
    :cond_2f
    return v0
.end method

.method private shiftBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "direction"    # I
    .param p2, "availableRect"    # Landroid/graphics/Rect;
    .param p3, "inOutBounds"    # Landroid/graphics/Rect;

    .line 1119
    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_42

    .line 1128
    :pswitch_6
    const/4 v0, 0x0

    .local v0, "horizontalOffset":I
    goto :goto_20

    .line 1125
    .end local v0    # "horizontalOffset":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1126
    .restart local v0    # "horizontalOffset":I
    goto :goto_20

    .line 1121
    .end local v0    # "horizontalOffset":I
    :pswitch_13
    nop

    .line 1122
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x10

    .line 1121
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    neg-int v0, v0

    .line 1123
    .restart local v0    # "horizontalOffset":I
    nop

    .line 1132
    :goto_20
    and-int/lit8 v2, p1, 0x70

    sparse-switch v2, :sswitch_data_4c

    .line 1140
    const/4 v1, 0x0

    .local v1, "verticalOffset":I
    goto :goto_3e

    .line 1137
    .end local v1    # "verticalOffset":I
    :sswitch_27
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1138
    .restart local v1    # "verticalOffset":I
    goto :goto_3e

    .line 1134
    .end local v1    # "verticalOffset":I
    :sswitch_32
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    neg-int v1, v1

    .line 1135
    .restart local v1    # "verticalOffset":I
    nop

    .line 1143
    :goto_3e
    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1144
    return-void

    :pswitch_data_42
    .packed-switch 0x3
        :pswitch_13
        :pswitch_6
        :pswitch_8
    .end packed-switch

    :sswitch_data_4c
    .sparse-switch
        0x30 -> :sswitch_32
        0x50 -> :sswitch_27
    .end sparse-switch
.end method

.method private shouldLaunchUnresizableAppInFreeform(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/app/ActivityOptions;)Z
    .registers 10
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;
    .param p3, "options"    # Landroid/app/ActivityOptions;

    .line 679
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_b

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v2

    if-ne v2, v0, :cond_b

    .line 681
    return v1

    .line 683
    :cond_b
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_34

    .line 687
    :cond_18
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/TaskLaunchParamsModifier;->orientationFromBounds(Landroid/graphics/Rect;)I

    move-result v2

    .line 688
    .local v2, "displayOrientation":I
    nop

    .line 689
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 688
    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->resolveOrientation(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;Landroid/graphics/Rect;)I

    move-result v3

    .line 690
    .local v3, "activityOrientation":I
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_33

    if-eq v2, v3, :cond_33

    .line 692
    return v0

    .line 695
    :cond_33
    return v1

    .line 684
    .end local v2    # "displayOrientation":I
    .end local v3    # "activityOrientation":I
    :cond_34
    :goto_34
    return v1
.end method

.method private static sizeMatches(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 5
    .param p0, "left"    # Landroid/graphics/Rect;
    .param p1, "right"    # Landroid/graphics/Rect;

    .line 1167
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_21

    .line 1168
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v1, :cond_21

    const/4 v0, 0x1

    goto :goto_22

    :cond_21
    const/4 v0, 0x0

    .line 1167
    :goto_22
    return v0
.end method


# virtual methods
.method adjustBoundsToAvoidConflict(Landroid/graphics/Rect;Ljava/util/List;Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "displayAreaBounds"    # Landroid/graphics/Rect;
    .param p3, "inOutBounds"    # Landroid/graphics/Rect;
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

    .line 1014
    .local p2, "taskBoundsToCheck":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1017
    return-void

    .line 1020
    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1023
    return-void

    .line 1026
    :cond_e
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->calculateCandidateShiftDirections(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1027
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDirections:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_50

    aget v3, v0, v2

    .line 1028
    .local v3, "direction":I
    if-nez v3, :cond_1c

    .line 1030
    goto :goto_50

    .line 1033
    :cond_1c
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1034
    :goto_21
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 1035
    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 1036
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v3, p1, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->shiftBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_21

    .line 1039
    :cond_37
    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v4}, Lcom/android/server/wm/TaskLaunchParamsModifier;->boundsConflict(Ljava/util/List;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_4d

    iget-object v4, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    .line 1040
    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 1042
    iget-object v0, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1044
    return-void

    .line 1027
    .end local v3    # "direction":I
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 1051
    :cond_50
    :goto_50
    return-void
.end method

.method synthetic lambda$calculate$0$com-android-server-wm-TaskLaunchParamsModifier(IILcom/android/server/wm/TaskDisplayArea;)Z
    .registers 10
    .param p1, "resolvedMode"    # I
    .param p2, "activityType"    # I
    .param p3, "displayArea"    # Lcom/android/server/wm/TaskDisplayArea;

    .line 344
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskDisplayArea;->getLaunchRootTask(IILandroid/app/ActivityOptions;Lcom/android/server/wm/Task;I)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 347
    .local v0, "launchRoot":Lcom/android/server/wm/Task;
    if-nez v0, :cond_e

    .line 348
    const/4 v1, 0x0

    return v1

    .line 350
    :cond_e
    iput-object p3, p0, Lcom/android/server/wm/TaskLaunchParamsModifier;->mTmpDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 351
    const/4 v1, 0x1

    return v1
.end method

.method public onCalculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .registers 11
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "request"    # Lcom/android/server/wm/ActivityStarter$Request;
    .param p7, "phase"    # I
    .param p8, "currentParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p9, "outParams"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 109
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/TaskLaunchParamsModifier;->initLogBuilder(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 110
    invoke-direct/range {p0 .. p9}, Lcom/android/server/wm/TaskLaunchParamsModifier;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    move-result v0

    .line 112
    .local v0, "result":I
    invoke-direct {p0}, Lcom/android/server/wm/TaskLaunchParamsModifier;->outputLog()V

    .line 113
    return v0
.end method
