.class public final Landroid/view/ImeFocusController;
.super Ljava/lang/Object;
.source "ImeFocusController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ImeFocusController$InputMethodManagerDelegate;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "ImeFocusController"


# instance fields
.field private blacklist mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

.field private blacklist mHasImeFocus:Z

.field private blacklist mNextServedView:Landroid/view/View;

.field private blacklist mServedView:Landroid/view/View;

.field private final blacklist mViewRootImpl:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 3
    .param p1, "viewRootImpl"    # Landroid/view/ViewRootImpl;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    .line 52
    iput-object p1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 53
    return-void
.end method

.method private blacklist getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;
    .registers 3

    .line 57
    iget-object v0, p0, Landroid/view/ImeFocusController;->mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    if-nez v0, :cond_16

    .line 58
    iget-object v0, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 59
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getDelegate()Landroid/view/inputmethod/InputMethodManager$DelegateImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ImeFocusController;->mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    .line 61
    :cond_16
    iget-object v0, p0, Landroid/view/ImeFocusController;->mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    return-object v0
.end method

.method private static blacklist isInLocalFocusMode(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 3
    .param p0, "windowAttribute"    # Landroid/view/WindowManager$LayoutParams;

    .line 262
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method


# virtual methods
.method public blacklist checkFocus(ZZ)Z
    .registers 10
    .param p1, "forceNewFocus"    # Z
    .param p2, "startInput"    # Z

    .line 146
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v6

    .line 152
    .local v6, "immDelegate":Landroid/view/ImeFocusController$InputMethodManagerDelegate;
    iget-object v0, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-interface {v6, v0}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->isCurrentRootView(Landroid/view/ViewRootImpl;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/ImeFocusController;->mNextServedView:Landroid/view/View;

    if-ne v0, v2, :cond_1e

    iget-object v0, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    .line 153
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->isHandWritingKeyboardTypeChanged()Z

    move-result v0

    if-nez v0, :cond_1e

    if-nez p1, :cond_1e

    goto :goto_40

    .line 156
    :cond_1e
    iget-object v0, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->refreshHandWritingLastKeyboardType()V

    .line 165
    iget-object v0, p0, Landroid/view/ImeFocusController;->mNextServedView:Landroid/view/View;

    if-nez v0, :cond_2e

    .line 166
    invoke-interface {v6}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->finishInput()V

    .line 167
    invoke-interface {v6}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->closeCurrentIme()V

    .line 168
    return v1

    .line 170
    :cond_2e
    iput-object v0, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    .line 171
    invoke-interface {v6}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->finishComposingText()V

    .line 173
    if-eqz p2, :cond_3e

    .line 174
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-interface/range {v0 .. v5}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->startInput(ILandroid/view/View;III)Z

    .line 177
    :cond_3e
    const/4 v0, 0x1

    return v0

    .line 154
    :cond_40
    :goto_40
    return v1
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 325
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 326
    .local v0, "token":J
    iget-boolean v2, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 327
    iget-object v2, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 328
    iget-object v2, p0, Landroid/view/ImeFocusController;->mNextServedView:Landroid/view/View;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 329
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 330
    return-void
.end method

.method public blacklist getNextServedView()Landroid/view/View;
    .registers 2

    .line 305
    iget-object v0, p0, Landroid/view/ImeFocusController;->mNextServedView:Landroid/view/View;

    return-object v0
.end method

.method public blacklist getServedView()Landroid/view/View;
    .registers 2

    .line 301
    iget-object v0, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    return-object v0
.end method

.method blacklist hasImeFocus()Z
    .registers 2

    .line 321
    iget-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    return v0
.end method

.method public blacklist onInteractiveChanged(Z)V
    .registers 5
    .param p1, "interactive"    # Z

    .line 239
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v0

    .line 240
    .local v0, "immDelegate":Landroid/view/ImeFocusController$InputMethodManagerDelegate;
    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-interface {v0, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->isCurrentRootView(Landroid/view/ViewRootImpl;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 241
    return-void

    .line 243
    :cond_d
    if-eqz p1, :cond_2a

    .line 245
    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_29

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v1, :cond_18

    goto :goto_29

    .line 249
    :cond_18
    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 250
    .local v1, "focusedView":Landroid/view/View;
    if-eqz v1, :cond_24

    const/4 v2, 0x1

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    :goto_25
    invoke-virtual {p0, v1, v2}, Landroid/view/ImeFocusController;->onViewFocusChanged(Landroid/view/View;Z)V

    .line 251
    .end local v1    # "focusedView":Landroid/view/View;
    goto :goto_2f

    .line 246
    :cond_29
    :goto_29
    return-void

    .line 252
    :cond_2a
    iget-object v1, p0, Landroid/view/ImeFocusController;->mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    invoke-interface {v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->finishInputAndReportToIme()V

    .line 254
    :goto_2f
    return-void
.end method

.method blacklist onMovedToDisplay()V
    .registers 2

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ImeFocusController;->mDelegate:Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    .line 72
    return-void
.end method

.method blacklist onPostWindowFocus(Landroid/view/View;ZLandroid/view/WindowManager$LayoutParams;)V
    .registers 10
    .param p1, "focusedView"    # Landroid/view/View;
    .param p2, "hasWindowFocus"    # Z
    .param p3, "windowAttribute"    # Landroid/view/WindowManager$LayoutParams;

    .line 114
    if-eqz p2, :cond_3c

    iget-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    if-eqz v0, :cond_3c

    invoke-static {p3}, Landroid/view/ImeFocusController;->isInLocalFocusMode(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_3c

    .line 117
    :cond_d
    if-eqz p1, :cond_11

    move-object v0, p1

    goto :goto_15

    :cond_11
    iget-object v0, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 124
    .local v0, "viewForWindowFocus":Landroid/view/View;
    :goto_15
    const/4 v1, 0x0

    .line 125
    .local v1, "forceFocus":Z
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v2

    .line 126
    .local v2, "immDelegate":Landroid/view/ImeFocusController$InputMethodManagerDelegate;
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->isRestartOnNextWindowFocus(Z)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 128
    const/4 v1, 0x1

    .line 132
    :cond_22
    invoke-virtual {p0, v0, v3}, Landroid/view/ImeFocusController;->onViewFocusChanged(Landroid/view/View;Z)V

    .line 136
    iget-object v4, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    if-ne v4, v0, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v3, 0x0

    .line 137
    .local v3, "nextFocusIsServedView":Z
    :goto_2b
    if-eqz v3, :cond_34

    invoke-interface {v2, v0}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->hasActiveConnection(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 138
    const/4 v1, 0x1

    .line 141
    :cond_34
    iget v4, p3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget v5, p3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-interface {v2, v0, v4, v5, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->startInputAsyncOnWindowFocusGain(Landroid/view/View;IIZ)V

    .line 143
    return-void

    .line 115
    .end local v0    # "viewForWindowFocus":Landroid/view/View;
    .end local v1    # "forceFocus":Z
    .end local v2    # "immDelegate":Landroid/view/ImeFocusController$InputMethodManagerDelegate;
    .end local v3    # "nextFocusIsServedView":Z
    :cond_3c
    :goto_3c
    return-void
.end method

.method blacklist onPreWindowFocus(ZLandroid/view/WindowManager$LayoutParams;)V
    .registers 5
    .param p1, "hasWindowFocus"    # Z
    .param p2, "windowAttribute"    # Landroid/view/WindowManager$LayoutParams;

    .line 93
    iget-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    if-eqz v0, :cond_17

    invoke-static {p2}, Landroid/view/ImeFocusController;->isInLocalFocusMode(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_17

    .line 96
    :cond_b
    if-eqz p1, :cond_16

    .line 97
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-interface {v0, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->setCurrentRootView(Landroid/view/ViewRootImpl;)V

    .line 99
    :cond_16
    return-void

    .line 94
    :cond_17
    :goto_17
    return-void
.end method

.method blacklist onProcessImeInputStage(Ljava/lang/Object;Landroid/view/InputEvent;Landroid/view/WindowManager$LayoutParams;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;)I
    .registers 8
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "event"    # Landroid/view/InputEvent;
    .param p3, "windowAttribute"    # Landroid/view/WindowManager$LayoutParams;
    .param p4, "callback"    # Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

    .line 268
    iget-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    invoke-static {p3}, Landroid/view/ImeFocusController;->isInLocalFocusMode(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_24

    .line 271
    :cond_c
    iget-object v0, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    .line 272
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 273
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-nez v0, :cond_1b

    .line 274
    return v1

    .line 276
    :cond_1b
    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, p2, p1, p4, v1}, Landroid/view/inputmethod/InputMethodManager;->dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)I

    move-result v1

    return v1

    .line 269
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_24
    :goto_24
    return v1
.end method

.method blacklist onTraversal(ZLandroid/view/WindowManager$LayoutParams;)V
    .registers 6
    .param p1, "hasWindowFocus"    # Z
    .param p2, "windowAttribute"    # Landroid/view/WindowManager$LayoutParams;

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/view/ImeFocusController;->updateImeFocusable(Landroid/view/WindowManager$LayoutParams;Z)Z

    move-result v0

    .line 77
    .local v0, "hasImeFocus":Z
    if-eqz p1, :cond_27

    invoke-static {p2}, Landroid/view/ImeFocusController;->isInLocalFocusMode(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_27

    .line 80
    :cond_e
    iget-boolean v1, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    if-ne v0, v1, :cond_13

    .line 81
    return-void

    .line 83
    :cond_13
    iput-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    .line 84
    if-eqz v0, :cond_26

    .line 85
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p2}, Landroid/view/ImeFocusController;->onPreWindowFocus(ZLandroid/view/WindowManager$LayoutParams;)V

    .line 86
    iget-object v2, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v1, p2}, Landroid/view/ImeFocusController;->onPostWindowFocus(Landroid/view/View;ZLandroid/view/WindowManager$LayoutParams;)V

    .line 89
    :cond_26
    return-void

    .line 78
    :cond_27
    :goto_27
    return-void
.end method

.method blacklist onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 208
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->isCurrentRootView(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 209
    return-void

    .line 211
    :cond_f
    iget-object v0, p0, Landroid/view/ImeFocusController;->mNextServedView:Landroid/view/View;

    if-ne v0, p1, :cond_16

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ImeFocusController;->mNextServedView:Landroid/view/View;

    .line 214
    :cond_16
    iget-object v0, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    if-ne v0, p1, :cond_1f

    .line 215
    iget-object v0, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchCheckFocus()V

    .line 217
    :cond_1f
    return-void
.end method

.method blacklist onViewFocusChanged(Landroid/view/View;Z)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 182
    if-eqz p1, :cond_30

    invoke-virtual {p1}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_30

    .line 185
    :cond_9
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->isCurrentRootView(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 186
    return-void

    .line 188
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->hasImeFocus()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_2f

    .line 200
    :cond_25
    if-eqz p2, :cond_29

    .line 201
    iput-object p1, p0, Landroid/view/ImeFocusController;->mNextServedView:Landroid/view/View;

    .line 203
    :cond_29
    iget-object v0, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchCheckFocus()V

    .line 204
    return-void

    .line 189
    :cond_2f
    :goto_2f
    return-void

    .line 183
    :cond_30
    :goto_30
    return-void
.end method

.method blacklist onWindowDismissed()V
    .registers 3

    .line 221
    invoke-direct {p0}, Landroid/view/ImeFocusController;->getImmDelegate()Landroid/view/ImeFocusController$InputMethodManagerDelegate;

    move-result-object v0

    .line 222
    .local v0, "immDelegate":Landroid/view/ImeFocusController$InputMethodManagerDelegate;
    iget-object v1, p0, Landroid/view/ImeFocusController;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-interface {v0, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->isCurrentRootView(Landroid/view/ViewRootImpl;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 223
    return-void

    .line 225
    :cond_d
    iget-object v1, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_14

    .line 226
    invoke-interface {v0}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->finishInput()V

    .line 228
    :cond_14
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ImeFocusController$InputMethodManagerDelegate;->setCurrentRootView(Landroid/view/ViewRootImpl;)V

    .line 229
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    .line 230
    return-void
.end method

.method public blacklist setNextServedView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 313
    iput-object p1, p0, Landroid/view/ImeFocusController;->mNextServedView:Landroid/view/View;

    .line 314
    return-void
.end method

.method public blacklist setServedView(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 309
    iput-object p1, p0, Landroid/view/ImeFocusController;->mServedView:Landroid/view/View;

    .line 310
    return-void
.end method

.method blacklist updateImeFocusable(Landroid/view/WindowManager$LayoutParams;Z)Z
    .registers 4
    .param p1, "windowAttribute"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "force"    # Z

    .line 103
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v0

    .line 105
    .local v0, "hasImeFocus":Z
    if-eqz p2, :cond_a

    .line 106
    iput-boolean v0, p0, Landroid/view/ImeFocusController;->mHasImeFocus:Z

    .line 108
    :cond_a
    return v0
.end method
