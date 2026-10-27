.class public Lcom/android/server/wm/TaskTapPointerEventListener;
.super Ljava/lang/Object;
.source "TaskTapPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mPerfObj:Landroid/util/BoostFramework;

.field private mPointerIconType:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTouchExcludeRegion:Landroid/graphics/Region;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 48
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    .line 53
    iput-object p1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 54
    iput-object p2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 55
    nop

    .line 56
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    .line 58
    return-void
.end method

.method private restorePointerIcon(II)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 61
    iget v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1d

    .line 62
    iput v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 65
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 68
    :cond_1d
    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 10
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    sparse-switch v0, :sswitch_data_14a

    goto/16 :goto_fc

    .line 138
    :sswitch_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 139
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 140
    .local v1, "y":I
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/TaskTapPointerEventListener;->restorePointerIcon(II)V

    goto/16 :goto_fc

    .line 96
    .end local v0    # "x":I
    .end local v1    # "y":I
    :sswitch_18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 97
    .restart local v0    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 98
    .restart local v1    # "y":I
    monitor-enter p0

    .line 99
    :try_start_23
    iget-object v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 100
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/TaskTapPointerEventListener;->restorePointerIcon(II)V

    .line 101
    monitor-exit p0

    goto/16 :goto_fc

    .line 103
    :cond_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_c0

    .line 104
    iget-object v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/DisplayContent;->findTaskForResizePoint(II)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 105
    .local v2, "task":Lcom/android/server/wm/Task;
    const/4 v3, 0x1

    .line 106
    .local v3, "iconType":I
    if-eqz v2, :cond_96

    .line 107
    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 108
    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_96

    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-nez v4, :cond_96

    .line 109
    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    const/16 v5, 0x3f6

    const/16 v6, 0x3f8

    const/16 v7, 0x3f9

    if-ge v0, v4, :cond_6f

    .line 111
    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ge v1, v4, :cond_64

    move v5, v7

    goto :goto_6d

    .line 112
    :cond_64
    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v1, v4, :cond_6c

    move v5, v6

    goto :goto_6d

    .line 113
    :cond_6c
    nop

    :goto_6d
    move v3, v5

    goto :goto_96

    .line 114
    :cond_6f
    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-le v0, v4, :cond_88

    .line 116
    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-ge v1, v4, :cond_7d

    move v5, v6

    goto :goto_86

    .line 117
    :cond_7d
    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v1, v4, :cond_85

    move v5, v7

    goto :goto_86

    .line 118
    :cond_85
    nop

    :goto_86
    move v3, v5

    goto :goto_96

    .line 119
    :cond_88
    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt v1, v4, :cond_94

    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-le v1, v4, :cond_96

    .line 120
    :cond_94
    const/16 v3, 0x3f7

    .line 124
    :cond_96
    :goto_96
    iget v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    if-eq v4, v3, :cond_bf

    .line 125
    iput v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 126
    const/4 v4, 0x1

    if-ne v3, v4, :cond_b6

    .line 128
    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v5, 0x37

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 129
    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, v5, v0, v1, v6}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 130
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_bf

    .line 132
    :cond_b6
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    invoke-virtual {v4, v5}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 136
    .end local v0    # "x":I
    .end local v1    # "y":I
    .end local v2    # "task":Lcom/android/server/wm/Task;
    .end local v3    # "iconType":I
    :cond_bf
    :goto_bf
    goto :goto_fc

    .line 103
    .restart local v0    # "x":I
    .restart local v1    # "y":I
    :catchall_c0
    move-exception v2

    :try_start_c1
    monitor-exit p0
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c0

    throw v2

    .line 75
    .end local v0    # "x":I
    .end local v1    # "y":I
    :sswitch_c3
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->updateUserActivityDimTimeIfNeed()V

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x2002

    if-ne v0, v1, :cond_db

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getXCursorPosition()F

    move-result v0

    float-to-int v0, v0

    .line 80
    .restart local v0    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getYCursorPosition()F

    move-result v1

    float-to-int v1, v1

    .restart local v1    # "y":I
    goto :goto_e5

    .line 82
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_db
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 83
    .restart local v0    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 86
    .restart local v1    # "y":I
    :goto_e5
    monitor-enter p0

    .line 87
    :try_start_e6
    iget-object v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    if-nez v2, :cond_f7

    .line 88
    iget-object v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    iget-object v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/wm/TaskPositioningController;->handleTapOutsideTask(Lcom/android/server/wm/DisplayContent;II)V

    .line 91
    :cond_f7
    monitor-exit p0

    .line 93
    .end local v0    # "x":I
    .end local v1    # "y":I
    goto :goto_fc

    .line 91
    .restart local v0    # "x":I
    .restart local v1    # "y":I
    :catchall_f9
    move-exception v2

    monitor-exit p0
    :try_end_fb
    .catchall {:try_start_e6 .. :try_end_fb} :catchall_f9

    throw v2

    .line 144
    .end local v0    # "x":I
    .end local v1    # "y":I
    :goto_fc
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mIsPerfBoostAcquired:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_115

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    if-eqz v0, :cond_115

    .line 145
    sget v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfHandle:I

    if-lez v0, :cond_113

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    sget v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfHandle:I

    invoke-virtual {v0, v3}, Landroid/util/BoostFramework;->perfLockReleaseHandler(I)I

    .line 147
    sput v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfHandle:I

    .line 149
    :cond_113
    sput-boolean v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mIsPerfBoostAcquired:Z

    .line 151
    :cond_115
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfSendTapHint:Z

    const/4 v3, 0x0

    const/16 v4, 0x1043

    if-eqz v0, :cond_125

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    if-eqz v0, :cond_125

    .line 152
    invoke-virtual {v0, v4, v3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    .line 153
    sput-boolean v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfSendTapHint:Z

    .line 155
    :cond_125
    sget-boolean v0, Lcom/android/server/wm/RootWindowContainer;->mIsPerfBoostAcquired:Z

    if-eqz v0, :cond_13c

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    if-eqz v0, :cond_13c

    .line 156
    sget v0, Lcom/android/server/wm/RootWindowContainer;->mPerfHandle:I

    if-lez v0, :cond_13a

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    sget v5, Lcom/android/server/wm/RootWindowContainer;->mPerfHandle:I

    invoke-virtual {v0, v5}, Landroid/util/BoostFramework;->perfLockReleaseHandler(I)I

    .line 159
    sput v1, Lcom/android/server/wm/RootWindowContainer;->mPerfHandle:I

    .line 161
    :cond_13a
    sput-boolean v2, Lcom/android/server/wm/RootWindowContainer;->mIsPerfBoostAcquired:Z

    .line 163
    :cond_13c
    sget-boolean v0, Lcom/android/server/wm/RootWindowContainer;->mPerfSendTapHint:Z

    if-eqz v0, :cond_149

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPerfObj:Landroid/util/BoostFramework;

    if-eqz v0, :cond_149

    .line 164
    invoke-virtual {v0, v4, v3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;)I

    .line 165
    sput-boolean v2, Lcom/android/server/wm/RootWindowContainer;->mPerfSendTapHint:Z

    .line 167
    :cond_149
    return-void

    :sswitch_data_14a
    .sparse-switch
        0x0 -> :sswitch_c3
        0x7 -> :sswitch_18
        0x9 -> :sswitch_18
        0xa -> :sswitch_9
    .end sparse-switch
.end method

.method setTouchExcludeRegion(Landroid/graphics/Region;)V
    .registers 3
    .param p1, "newRegion"    # Landroid/graphics/Region;

    .line 170
    monitor-enter p0

    .line 171
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 172
    monitor-exit p0

    .line 173
    return-void

    .line 172
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method
