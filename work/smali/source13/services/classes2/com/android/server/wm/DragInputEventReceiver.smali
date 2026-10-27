.class Lcom/android/server/wm/DragInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "DragInputEventReceiver.java"


# instance fields
.field private final mDragDropController:Lcom/android/server/wm/DragDropController;

.field private mIsStartEvent:Z

.field private mMuteInput:Z

.field private mStylusButtonDownAtStart:Z


# direct methods
.method constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/server/wm/DragDropController;)V
    .registers 5
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "controller"    # Lcom/android/server/wm/DragDropController;

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    .line 53
    iput-object p3, p0, Lcom/android/server/wm/DragInputEventReceiver;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 54
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 13
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 58
    const-string v0, "WindowManager"

    const/4 v1, 0x0

    .line 60
    .local v1, "handled":Z
    :try_start_3
    instance-of v2, p1, Landroid/view/MotionEvent;

    if-eqz v2, :cond_b8

    .line 61
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_b8

    iget-boolean v2, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    if-eqz v2, :cond_15

    goto/16 :goto_b8

    .line 65
    :cond_15
    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    .line 66
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 67
    .local v3, "newX":F
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 68
    .local v4, "newY":F
    nop

    .line 69
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    and-int/lit8 v5, v5, 0x20

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2d

    move v5, v7

    goto :goto_2e

    :cond_2d
    move v5, v6

    .line 71
    .local v5, "isStylusButtonDown":Z
    :goto_2e
    iget-boolean v8, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    if-eqz v8, :cond_36

    .line 74
    iput-boolean v5, p0, Lcom/android/server/wm/DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    .line 75
    iput-boolean v6, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    .line 78
    :cond_36
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3a} :catch_be
    .catchall {:try_start_3 .. :try_end_3a} :catchall_bc

    const-string v9, ","

    packed-switch v8, :pswitch_data_ce

    .line 110
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 102
    return-void

    .line 98
    :pswitch_43
    :try_start_43
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v8, :cond_4c

    const-string v8, "Drag cancelled!"

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_4c
    iput-boolean v7, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    .line 100
    goto :goto_9f

    .line 83
    :pswitch_4f
    iget-boolean v8, p0, Lcom/android/server/wm/DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    if-eqz v8, :cond_9f

    if-nez v5, :cond_9f

    .line 84
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v8, :cond_77

    .line 85
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Button no longer pressed; dropping at "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_77
    iput-boolean v7, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    goto :goto_9f

    .line 92
    :pswitch_7a
    sget-boolean v8, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v8, :cond_9c

    .line 93
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got UP on move channel; dropping at "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_9c
    iput-boolean v7, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    .line 96
    nop

    .line 105
    :cond_9f
    :goto_9f
    iget-object v8, p0, Lcom/android/server/wm/DragInputEventReceiver;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-boolean v9, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    if-nez v9, :cond_a6

    move v6, v7

    :cond_a6
    invoke-virtual {v8, v6, v3, v4}, Lcom/android/server/wm/DragDropController;->handleMotionEvent(ZFF)V

    .line 106
    const/4 v1, 0x1

    .line 110
    .end local v2    # "motionEvent":Landroid/view/MotionEvent;
    .end local v3    # "newX":F
    .end local v4    # "newY":F
    .end local v5    # "isStylusButtonDown":Z
    goto :goto_c5

    .line 80
    .restart local v2    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v3    # "newX":F
    .restart local v4    # "newY":F
    .restart local v5    # "isStylusButtonDown":Z
    :pswitch_ab
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    if-eqz v6, :cond_b4

    const-string v6, "Unexpected ACTION_DOWN in drag layer"

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_b4} :catch_be
    .catchall {:try_start_43 .. :try_end_b4} :catchall_bc

    .line 110
    :cond_b4
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 81
    return-void

    .line 110
    .end local v2    # "motionEvent":Landroid/view/MotionEvent;
    .end local v3    # "newX":F
    .end local v4    # "newY":F
    .end local v5    # "isStylusButtonDown":Z
    :cond_b8
    :goto_b8
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 63
    return-void

    .line 110
    :catchall_bc
    move-exception v0

    goto :goto_ca

    .line 107
    :catch_be
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/Exception;
    :try_start_bf
    const-string v3, "Exception caught by drag handleMotion"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c4
    .catchall {:try_start_bf .. :try_end_c4} :catchall_bc

    .line 110
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_c5
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 111
    nop

    .line 112
    return-void

    .line 110
    :goto_ca
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 111
    throw v0

    :pswitch_data_ce
    .packed-switch 0x0
        :pswitch_ab
        :pswitch_7a
        :pswitch_4f
        :pswitch_43
    .end packed-switch
.end method
