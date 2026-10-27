.class public Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;
.super Lcom/android/server/accessibility/BaseEventStreamTransformation;
.source "MagnificationKeyHandler.java"


# instance fields
.field public final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field public final mCallback:Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;

.field public mIsKeyboardInteracting:Z


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 4

    .line 92
    invoke-direct {p0}, Lcom/android/server/accessibility/BaseEventStreamTransformation;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mIsKeyboardInteracting:Z

    .line 93
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;

    .line 94
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    return-void
.end method


# virtual methods
.method public final getDisplayId(Landroid/view/KeyEvent;)I
    .registers 4

    .line 164
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 165
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result p0

    return p0

    .line 167
    :cond_c
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->getTopFocusedDisplayId()I

    move-result p0

    if-eq p0, v1, :cond_15

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 13

    .line 100
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_90

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_90

    .line 101
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_90

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-nez v0, :cond_90

    .line 112
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x13

    const/16 v3, 0x16

    const/16 v4, 0x15

    const/4 v5, 0x1

    if-eq v0, v4, :cond_31

    if-eq v0, v3, :cond_31

    if-eq v0, v2, :cond_31

    const/16 v6, 0x14

    if-ne v0, v6, :cond_2f

    goto :goto_31

    :cond_2f
    move v6, v1

    goto :goto_32

    :cond_31
    :goto_31
    move v6, v5

    :goto_32
    const/16 v7, 0x46

    if-eq v0, v7, :cond_3d

    const/16 v8, 0x45

    if-ne v0, v8, :cond_3b

    goto :goto_3d

    :cond_3b
    move v8, v1

    goto :goto_3e

    :cond_3d
    :goto_3d
    move v8, v5

    :goto_3e
    if-nez v6, :cond_46

    if-nez v8, :cond_46

    .line 121
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    return-void

    .line 124
    :cond_46
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->getDisplayId(Landroid/view/KeyEvent;)I

    move-result v8

    .line 127
    iget-object v9, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;

    invoke-interface {v9, v8}, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;->isMagnificationActivated(I)Z

    move-result v9

    if-nez v9, :cond_56

    .line 129
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    return-void

    .line 132
    :cond_56
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_5e

    move p1, v5

    goto :goto_5f

    :cond_5e
    move p1, v1

    :goto_5f
    if-eqz v6, :cond_7c

    if-eq v0, v2, :cond_6b

    if-eq v0, v4, :cond_6c

    if-eq v0, v3, :cond_69

    const/4 v1, 0x3

    goto :goto_6c

    :cond_69
    move v1, v5

    goto :goto_6c

    :cond_6b
    const/4 v1, 0x2

    :cond_6c
    :goto_6c
    if-eqz p1, :cond_76

    .line 141
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;

    invoke-interface {p1, v8, v1}, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;->onPanMagnificationStart(II)V

    .line 142
    iput-boolean v5, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mIsKeyboardInteracting:Z

    return-void

    .line 144
    :cond_76
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;

    invoke-interface {p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;->onPanMagnificationStop(I)V

    return-void

    :cond_7c
    if-ne v0, v7, :cond_7f

    goto :goto_80

    :cond_7f
    move v1, v5

    :goto_80
    if-eqz p1, :cond_8a

    .line 154
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;

    invoke-interface {p1, v8, v1}, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;->onScaleMagnificationStart(II)V

    .line 155
    iput-boolean v5, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mIsKeyboardInteracting:Z

    return-void

    .line 157
    :cond_8a
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;

    invoke-interface {p0, v1}, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;->onScaleMagnificationStop(I)V

    return-void

    .line 103
    :cond_90
    invoke-super {p0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 104
    iget-boolean p1, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mIsKeyboardInteracting:Z

    if-eqz p1, :cond_9e

    .line 107
    iget-object p1, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mCallback:Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;

    invoke-interface {p1}, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler$Callback;->onKeyboardInteractionStop()V

    .line 108
    iput-boolean v1, p0, Lcom/android/server/accessibility/magnification/MagnificationKeyHandler;->mIsKeyboardInteracting:Z

    :cond_9e
    return-void
.end method
