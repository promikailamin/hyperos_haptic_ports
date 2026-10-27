.class public Lcom/android/server/wm/DragInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "DragInputEventReceiver.java"


# instance fields
.field public final mDragDropController:Lcom/android/server/wm/DragDropController;

.field public mIsStartEvent:Z

.field public mMuteInput:Z

.field public mStylusButtonDownAtStart:Z


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;Lcom/android/server/wm/DragDropController;)V
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    const/4 p1, 0x1

    .line 45
    iput-boolean p1, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    .line 53
    iput-object p3, p0, Lcom/android/server/wm/DragInputEventReceiver;->mDragDropController:Lcom/android/server/wm/DragDropController;

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 12

    .line 58
    const-string v0, "WindowManager"

    const/4 v1, 0x0

    .line 60
    :try_start_3
    instance-of v2, p1, Landroid/view/MotionEvent;

    if-eqz v2, :cond_ae

    .line 61
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v2

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-eqz v2, :cond_ae

    iget-boolean v2, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    if-eqz v2, :cond_15

    goto/16 :goto_ae

    .line 65
    :cond_15
    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    .line 66
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v4

    .line 67
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    .line 68
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    .line 70
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v7

    and-int/lit8 v7, v7, 0x20

    const/4 v8, 0x1

    if-eqz v7, :cond_2f

    move v7, v8

    goto :goto_30

    :cond_2f
    move v7, v1

    .line 72
    :goto_30
    iget-boolean v9, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    if-eqz v9, :cond_3f

    .line 75
    iput-boolean v7, p0, Lcom/android/server/wm/DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/server/wm/DragInputEventReceiver;->mIsStartEvent:Z

    goto :goto_3f

    :catchall_39
    move-exception v0

    goto/16 :goto_bb

    :catch_3c
    move-exception v2

    goto/16 :goto_b2

    .line 79
    :cond_3f
    :goto_3f
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_43} :catch_3c
    .catchall {:try_start_3 .. :try_end_43} :catchall_39

    if-eqz v2, :cond_a5

    const-string v9, ","

    if-eq v2, v8, :cond_7d

    if-eq v2, v3, :cond_5a

    const/4 v3, 0x3

    if-eq v2, v3, :cond_52

    .line 112
    invoke-virtual {p0, p1, v1}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    .line 99
    :cond_52
    :try_start_52
    const-string v2, "Drag cancelled!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iput-boolean v8, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    goto :goto_99

    .line 84
    :cond_5a
    iget-boolean v2, p0, Lcom/android/server/wm/DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    if-eqz v2, :cond_99

    if-nez v7, :cond_99

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Button no longer pressed; dropping at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput-boolean v8, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    goto :goto_99

    .line 94
    :cond_7d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got UP on move channel; dropping at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput-boolean v8, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    .line 106
    :cond_99
    :goto_99
    iget-object v2, p0, Lcom/android/server/wm/DragInputEventReceiver;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-boolean v3, p0, Lcom/android/server/wm/DragInputEventReceiver;->mMuteInput:Z

    xor-int/2addr v3, v8

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/wm/DragDropController;->handleMotionEvent(ZIFF)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_a1} :catch_3c
    .catchall {:try_start_52 .. :try_end_a1} :catchall_39

    .line 112
    invoke-virtual {p0, p1, v8}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    .line 81
    :cond_a5
    :try_start_a5
    const-string v2, "Unexpected ACTION_DOWN in drag layer"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_aa} :catch_3c
    .catchall {:try_start_a5 .. :try_end_aa} :catchall_39

    .line 112
    invoke-virtual {p0, p1, v1}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_ae
    :goto_ae
    invoke-virtual {p0, p1, v1}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    .line 110
    :goto_b2
    :try_start_b2
    const-string v3, "Exception caught by drag handleMotion"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b7
    .catchall {:try_start_b2 .. :try_end_b7} :catchall_39

    .line 112
    invoke-virtual {p0, p1, v1}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :goto_bb
    invoke-virtual {p0, p1, v1}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 113
    throw v0
.end method
