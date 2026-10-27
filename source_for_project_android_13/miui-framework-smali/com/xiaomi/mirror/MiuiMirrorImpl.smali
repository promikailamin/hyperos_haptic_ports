.class public Lcom/xiaomi/mirror/MiuiMirrorImpl;
.super Ljava/lang/Object;
.source "MiuiMirrorImpl.java"

# interfaces
.implements Lcom/xiaomi/mirror/MiuiMirrorStub;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist cancelDragAndDrop(Ljava/lang/Object;)V
    .registers 4
    .param p1, "attachInfo"    # Ljava/lang/Object;

    .line 90
    invoke-static {}, Lcom/xiaomi/mirror/MirrorManager;->get()Lcom/xiaomi/mirror/MirrorManager;

    move-result-object v0

    invoke-static {p1}, Landroid/view/ViewVisitor;->getDragToken(Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/mirror/MirrorManager;->cancelDragAndDrop(Landroid/os/IBinder;)V

    .line 91
    invoke-static {p1}, Landroid/view/ViewVisitor;->cleanDragToken(Ljava/lang/Object;)V

    .line 92
    return-void
.end method

.method public blacklist cleanDragToken(Ljava/lang/Object;)V
    .registers 2
    .param p1, "attachInfo"    # Ljava/lang/Object;

    .line 106
    invoke-static {p1}, Landroid/view/ViewVisitor;->cleanDragToken(Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public blacklist delegateMirrorDrag(Ljava/lang/Object;Landroid/view/ViewRootImpl;IILandroid/view/View$DragShadowBuilder;Landroid/graphics/Point;Landroid/content/ClipData;Ljava/lang/Object;)Z
    .registers 17
    .param p1, "attachInfo"    # Ljava/lang/Object;
    .param p2, "root"    # Landroid/view/ViewRootImpl;
    .param p3, "lastTouchDeviceId"    # I
    .param p4, "flags"    # I
    .param p5, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;
    .param p6, "shadowSize"    # Landroid/graphics/Point;
    .param p7, "data"    # Landroid/content/ClipData;
    .param p8, "myLocalState"    # Ljava/lang/Object;

    .line 78
    invoke-static {}, Lcom/xiaomi/mirror/MirrorManager;->get()Lcom/xiaomi/mirror/MirrorManager;

    move-result-object v0

    .line 79
    invoke-static {p1}, Landroid/view/ViewVisitor;->getWindow(Ljava/lang/Object;)Landroid/view/IWindow;

    move-result-object v1

    .line 78
    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/xiaomi/mirror/MirrorManager;->delegateMirrorDrag(Landroid/view/IWindow;Landroid/view/ViewRootImpl;IILandroid/view/View$DragShadowBuilder;Landroid/graphics/Point;Landroid/content/ClipData;)Landroid/os/IBinder;

    move-result-object v0

    .line 81
    .local v0, "mirrorDragToken":Landroid/os/IBinder;
    if-eqz v0, :cond_1d

    .line 82
    move-object v1, p1

    move-object v2, p6

    move-object/from16 v3, p8

    invoke-static {p1, v0, v3, p6}, Landroid/view/ViewVisitor;->setMirrorDragState(Ljava/lang/Object;Landroid/os/IBinder;Ljava/lang/Object;Landroid/graphics/Point;)V

    .line 83
    const/4 v4, 0x1

    return v4

    .line 85
    :cond_1d
    move-object v1, p1

    move-object v2, p6

    move-object/from16 v3, p8

    const/4 v4, 0x0

    return v4
.end method

.method public blacklist dispatchPointerEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 34
    invoke-static {}, Lcom/xiaomi/mirror/MirrorManager;->get()Lcom/xiaomi/mirror/MirrorManager;

    move-result-object v0

    .line 35
    .local v0, "mirrorManager":Lcom/xiaomi/mirror/MirrorManager;
    invoke-virtual {v0, p2}, Lcom/xiaomi/mirror/MirrorManager;->isEventFromMirror(Landroid/view/InputEvent;)Z

    move-result v1

    .line 36
    .local v1, "fromMirror":Z
    if-eqz v1, :cond_d

    .line 37
    invoke-virtual {v0, p2}, Lcom/xiaomi/mirror/MirrorManager;->beginTrackingClickEvent(Landroid/view/MotionEvent;)V

    .line 40
    :cond_d
    :try_start_d
    invoke-virtual {p1, p2}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v2
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_17

    .line 42
    if-eqz v1, :cond_16

    .line 43
    invoke-virtual {v0}, Lcom/xiaomi/mirror/MirrorManager;->endTrackingEvent()V

    .line 40
    :cond_16
    return v2

    .line 42
    :catchall_17
    move-exception v2

    if-eqz v1, :cond_1d

    .line 43
    invoke-virtual {v0}, Lcom/xiaomi/mirror/MirrorManager;->endTrackingEvent()V

    .line 45
    :cond_1d
    throw v2
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 24
    invoke-static {}, Lcom/xiaomi/mirror/MirrorManager;->get()Lcom/xiaomi/mirror/MirrorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mirror/MirrorManager;->isMirrorDelegating()Z

    move-result v0

    return v0
.end method

.method public blacklist isModelSupport()Z
    .registers 2

    .line 29
    invoke-static {}, Lcom/xiaomi/mirror/MirrorManager;->get()Lcom/xiaomi/mirror/MirrorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mirror/MirrorManager;->isModelSupport()Z

    move-result v0

    return v0
.end method

.method public blacklist notifyInputTypeAndPos(III)V
    .registers 5
    .param p1, "inputType"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .line 121
    invoke-static {}, Lcom/xiaomi/mirror/MirrorManager;->get()Lcom/xiaomi/mirror/MirrorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/mirror/MirrorManager;->notifyInputTypeAndPos(III)V

    .line 122
    return-void
.end method

.method public blacklist notifyMoveTaskToBack(Landroid/os/IBinder;Z)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "nonRoot"    # Z

    .line 111
    invoke-static {}, Lcom/xiaomi/mirror/MirrorManager;->get()Lcom/xiaomi/mirror/MirrorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mirror/MirrorManager;->notifyMoveTaskToBack(Landroid/os/IBinder;Z)V

    .line 112
    return-void
.end method

.method public blacklist performMirrorMenuQuery(Landroid/view/View;Landroid/view/MotionEvent;ZZI)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "inContextButtonPress"    # Z
    .param p4, "hasPerformedLongPress"    # Z
    .param p5, "actionButton"    # I

    .line 65
    if-nez p3, :cond_14

    if-nez p4, :cond_14

    const/16 v0, 0x20

    if-eq p5, v0, :cond_b

    const/4 v0, 0x2

    if-ne p5, v0, :cond_14

    .line 68
    :cond_b
    invoke-static {}, Lcom/xiaomi/mirror/MirrorManager;->get()Lcom/xiaomi/mirror/MirrorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mirror/MirrorManager;->performMirrorMenuQuery(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 70
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reportDragResult(ILandroid/view/IWindow;Z)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "window"    # Landroid/view/IWindow;
    .param p3, "result"    # Z

    .line 50
    invoke-static {}, Lcom/xiaomi/mirror/MirrorManager;->get()Lcom/xiaomi/mirror/MirrorManager;

    move-result-object v0

    .line 51
    .local v0, "mirrorManager":Lcom/xiaomi/mirror/MirrorManager;
    invoke-virtual {v0}, Lcom/xiaomi/mirror/MirrorManager;->isMirrorDelegating()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 52
    const/4 v1, 0x2

    if-ne p1, v1, :cond_11

    .line 53
    invoke-virtual {v0, p3}, Lcom/xiaomi/mirror/MirrorManager;->setDragAcceptable(Z)V

    goto :goto_17

    .line 54
    :cond_11
    const/4 v1, 0x3

    if-ne p1, v1, :cond_17

    .line 55
    invoke-virtual {v0, p2, p3}, Lcom/xiaomi/mirror/MirrorManager;->reportDropResult(Landroid/view/IWindow;Z)V

    .line 58
    :cond_17
    :goto_17
    return-void
.end method

.method public blacklist tryToTriggerSend(Landroid/content/Context;Landroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 116
    invoke-static {}, Lcom/xiaomi/mirror/MirrorManager;->get()Lcom/xiaomi/mirror/MirrorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mirror/MirrorManager;->tryToTriggerSend(Landroid/content/Context;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public blacklist updateShadow(Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;)V
    .registers 6
    .param p1, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;
    .param p2, "attachInfo"    # Ljava/lang/Object;

    .line 96
    invoke-static {p2}, Landroid/view/ViewVisitor;->getDragToken(Ljava/lang/Object;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_7

    .line 97
    return-void

    .line 99
    :cond_7
    invoke-static {}, Lcom/xiaomi/mirror/MirrorManager;->get()Lcom/xiaomi/mirror/MirrorManager;

    move-result-object v0

    .line 100
    invoke-static {p2}, Landroid/view/ViewVisitor;->getLastMirrorShadowX(Ljava/lang/Object;)I

    move-result v1

    .line 101
    invoke-static {p2}, Landroid/view/ViewVisitor;->getLastMirrorShadowY(Ljava/lang/Object;)I

    move-result v2

    .line 99
    invoke-virtual {v0, p1, v1, v2}, Lcom/xiaomi/mirror/MirrorManager;->updateShadow(Landroid/view/View$DragShadowBuilder;II)V

    .line 102
    return-void
.end method
