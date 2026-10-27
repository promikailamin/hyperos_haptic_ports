.class Lcom/android/server/wm/LaunchParamsController;
.super Ljava/lang/Object;
.source "LaunchParamsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;,
        Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    }
.end annotation


# instance fields
.field private final mModifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersister:Lcom/android/server/wm/LaunchParamsPersister;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mTmpCurrent:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

.field private final mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

.field private final mTmpResult:Lcom/android/server/wm/LaunchParamsController$LaunchParams;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/LaunchParamsPersister;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "persister"    # Lcom/android/server/wm/LaunchParamsPersister;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mModifiers:Ljava/util/List;

    .line 53
    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 55
    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpCurrent:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 56
    new-instance v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-direct {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpResult:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 59
    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 60
    iput-object p2, p0, Lcom/android/server/wm/LaunchParamsController;->mPersister:Lcom/android/server/wm/LaunchParamsPersister;

    .line 61
    return-void
.end method


# virtual methods
.method calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V
    .registers 25
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p5, "options"    # Landroid/app/ActivityOptions;
    .param p6, "request"    # Lcom/android/server/wm/ActivityStarter$Request;
    .param p7, "phase"    # I
    .param p8, "result"    # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 103
    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p8

    invoke-virtual/range {p8 .. p8}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 105
    if-nez v11, :cond_f

    if-eqz v12, :cond_14

    .line 106
    :cond_f
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController;->mPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v1, v11, v12, v13}, Lcom/android/server/wm/LaunchParamsPersister;->getLaunchParams(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 112
    :cond_14
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController;->mModifiers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v14, v1

    .local v14, "i":I
    :goto_1d
    if-ltz v14, :cond_5d

    .line 113
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController;->mTmpCurrent:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1, v13}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 114
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController;->mTmpResult:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->reset()V

    .line 115
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController;->mModifiers:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;

    .line 117
    .local v15, "modifier":Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;
    iget-object v9, v0, Lcom/android/server/wm/LaunchParamsController;->mTmpCurrent:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v10, v0, Lcom/android/server/wm/LaunchParamsController;->mTmpResult:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v10}, Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;->onCalculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    move-result v1

    packed-switch v1, :pswitch_data_88

    goto :goto_5a

    .line 128
    :pswitch_4d
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController;->mTmpResult:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v13, v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    goto :goto_5a

    .line 124
    :pswitch_53
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController;->mTmpResult:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v13, v1}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->set(Lcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 125
    return-void

    .line 121
    :pswitch_59
    nop

    .line 112
    .end local v15    # "modifier":Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;
    :goto_5a
    add-int/lit8 v14, v14, -0x1

    goto :goto_1d

    .line 133
    .end local v14    # "i":I
    :cond_5d
    if-eqz v12, :cond_6e

    iget-object v1, v12, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_6e

    .line 135
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 136
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    iput-object v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_87

    .line 137
    :cond_6e
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_87

    .line 140
    iget-object v1, v0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    .line 141
    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    iput-object v1, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 143
    :cond_87
    :goto_87
    return-void

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_59
        :pswitch_53
        :pswitch_4d
    .end packed-switch
.end method

.method public getFreeformLastPosition(Lcom/android/server/wm/Task;)Landroid/graphics/Rect;
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 65
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->getFreeformLastPosition(Lcom/android/server/wm/Task;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getFreeformLastScale(Lcom/android/server/wm/Task;)F
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 69
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->getFreeformLastScale(Lcom/android/server/wm/Task;)F

    move-result v0

    return v0
.end method

.method public getFreeformLastTimestamp(Lcom/android/server/wm/Task;)J
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 73
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->getFreeformLastTimestamp(Lcom/android/server/wm/Task;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasFreeformDesktopMemory(Lcom/android/server/wm/Task;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 77
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->hasFreeformDesktopMemory(Lcom/android/server/wm/Task;)Z

    move-result v0

    return v0
.end method

.method layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;)Z
    .registers 9
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 150
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0
.end method

.method layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 16
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "layout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p4, "source"    # Lcom/android/server/wm/ActivityRecord;
    .param p5, "options"    # Landroid/app/ActivityOptions;

    .line 155
    iget-object v8, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    const/4 v6, 0x0

    const/4 v7, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/LaunchParamsController;->calculate(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityStarter$Request;ILcom/android/server/wm/LaunchParamsController$LaunchParams;)V

    .line 159
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    invoke-virtual {v0}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 160
    return v1

    .line 163
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 166
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_98

    if-eqz v0, :cond_2d

    .line 167
    nop

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 167
    return v1

    .line 170
    :cond_2d
    :try_start_2d
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 173
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v2, v2, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 174
    .local v0, "oldBounds":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiDesktopModeActive()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_71

    .line 175
    invoke-static {p5}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getFreeformScale(Landroid/app/ActivityOptions;)F

    move-result v2

    .line 176
    .local v2, "freeformScale":F
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LaunchParamsController;->hasFreeformDesktopMemory(Lcom/android/server/wm/Task;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/server/wm/LaunchParamsController;->getFreeformLastScale(Lcom/android/server/wm/Task;)F

    move-result v4

    move v2, v4

    .line 179
    :cond_56
    new-array v4, v3, [F

    aput v2, v4, v1

    .line 180
    .local v4, "scale":[F
    if-eqz p3, :cond_6a

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 181
    iget-object v5, p0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v5, v0, v4, p1, v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getFreeformRectDesktop(Landroid/graphics/Rect;[FLcom/android/server/wm/Task;Z)V

    goto :goto_71

    .line 183
    :cond_6a
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v1, v0, v4, p1, v3}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getFreeformRectDesktop(Landroid/graphics/Rect;[FLcom/android/server/wm/Task;Z)V

    .line 186
    .end local v2    # "freeformScale":F
    .end local v4    # "scale":[F
    :cond_71
    :goto_71
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 187
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v8, v1, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->showFreeFormTipViewByBounds(IIILandroid/graphics/Rect;I)V
    :try_end_83
    .catchall {:try_start_2d .. :try_end_83} :catchall_98

    .line 189
    nop

    .line 197
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 189
    return v3

    .line 194
    .end local v0    # "oldBounds":Landroid/graphics/Rect;
    :cond_8a
    :try_start_8a
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mTmpParams:Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    iget-object v0, v0, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V
    :try_end_91
    .catchall {:try_start_8a .. :try_end_91} :catchall_98

    .line 195
    nop

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 195
    return v1

    .line 197
    :catchall_98
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 198
    throw v0
.end method

.method registerDefaultModifiers(Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .registers 3
    .param p1, "supervisor"    # Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 87
    new-instance v0, Lcom/android/server/wm/TaskLaunchParamsModifier;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TaskLaunchParamsModifier;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/LaunchParamsController;->registerModifier(Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;)V

    .line 88
    return-void
.end method

.method registerModifier(Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;)V
    .registers 3
    .param p1, "modifier"    # Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;

    .line 206
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mModifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 207
    return-void

    .line 210
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsController;->mModifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method
