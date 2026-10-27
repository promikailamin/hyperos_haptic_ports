.class public final Lcom/android/server/wm/ImeInsetsSourceProvider;
.super Lcom/android/server/wm/InsetsSourceProvider;
.source "ImeInsetsSourceProvider.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ImeInsetsSourceProvider"


# instance fields
.field public mFrozen:Z

.field public mGivenInsetsReady:Z

.field public mImeShowing:Z

.field public mLastDrawn:Z

.field public final mLastSource:Landroid/view/InsetsSource;

.field public mServerVisible:Z

.field public mServerVisiblePreLayout:Z

.field public mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;


# direct methods
.method public static synthetic $r8$lambda$0bLR65BJCQP9gy7MdQKZ14IPtuU(Landroid/view/inputmethod/ImeTracker$Token;Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;Landroid/os/IBinder;Z)V
    .registers 6

    .line 523
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/16 v1, 0x40

    invoke-interface {v0, p0, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 525
    invoke-interface {p1, p2, p3, p0}, Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;->onImeRequestedChanged(Landroid/os/IBinder;ZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/InsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    .line 60
    new-instance p1, Landroid/view/InsetsSource;

    sget p2, Landroid/view/InsetsSource;->ID_IME:I

    .line 61
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p3

    invoke-direct {p1, p2, p3}, Landroid/view/InsetsSource;-><init>(II)V

    iput-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastSource:Landroid/view/InsetsSource;

    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mGivenInsetsReady:Z

    .line 92
    iput-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastDrawn:Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 655
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/InsetsSourceProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 657
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 658
    const-string p2, "mImeShowing="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 659
    iget-boolean p2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeShowing:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 660
    const-string p2, " mLastDrawn="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 661
    iget-boolean p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastDrawn:Z

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Z)V

    .line 662
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 7

    .line 668
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10b00000001L

    .line 669
    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/InsetsSourceProvider;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 670
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getAndClearStatsToken()Landroid/view/inputmethod/ImeTracker$Token;
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    const/4 v1, 0x0

    .line 174
    iput-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return-object v0
.end method

.method public getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;
    .registers 8

    .line 256
    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;

    move-result-object v0

    .line 257
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_33

    if-eqz p1, :cond_33

    .line 260
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_24

    .line 266
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez p1, :cond_25

    .line 268
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->topStartingWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_25

    .line 270
    iget-object p1, v4, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    goto :goto_25

    :cond_24
    move-object p1, v2

    :cond_25
    :goto_25
    if-eqz p1, :cond_2f

    .line 274
    invoke-virtual {p1}, Lcom/android/server/wm/StartingData;->hasImeSurface()Z

    move-result p1

    if-eqz p1, :cond_2f

    move p1, v1

    goto :goto_30

    :cond_2f
    move p1, v3

    :goto_30
    invoke-virtual {v0, p1}, Landroid/view/InsetsSourceControl;->setSkipAnimationOnce(Z)V

    :cond_33
    if-eqz v0, :cond_69

    .line 276
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    if-eqz p1, :cond_69

    .line 277
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->getAndClearStatsToken()Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p0

    if-nez p0, :cond_5d

    .line 279
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 p1, 0x3

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_52

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x60d73407f00dc92fL    # -1.4110003621359615E-158

    invoke-static {p0, v4, v5, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 284
    :cond_52
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    const/4 p1, 0x6

    const/16 v2, 0x2e

    invoke-interface {p0, v1, p1, v2, v3}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p0

    .line 288
    :cond_5d
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    const/16 v1, 0x37

    invoke-interface {p1, p0, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 290
    invoke-virtual {v0, p0}, Landroid/view/InsetsSourceControl;->setImeStatsToken(Landroid/view/inputmethod/ImeTracker$Token;)V

    :cond_69
    return-object v0
.end method

.method public final invokeOnImeRequestedChangedListener(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 9

    .line 497
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mOnImeRequestedChangedListener:Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;

    if-eqz v0, :cond_71

    .line 500
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getAnimatingTypes()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_17

    move v1, v3

    goto :goto_18

    :cond_17
    move v1, v2

    .line 502
    :goto_18
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/server/wm/InsetsControlTarget;->isRequestedVisible(I)Z

    move-result v4

    if-nez v4, :cond_27

    if-eqz v1, :cond_25

    goto :goto_27

    :cond_25
    move v1, v2

    goto :goto_28

    :cond_27
    :goto_27
    move v1, v3

    :goto_28
    if-eqz p2, :cond_2b

    goto :goto_3a

    .line 504
    :cond_2b
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p2

    if-eqz v1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v3, 0x2

    :goto_33
    const/4 v4, 0x6

    const/16 v5, 0x3b

    invoke-interface {p2, v3, v4, v5, v2}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object p2

    .line 513
    :goto_3a
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 514
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_59

    .line 515
    :cond_45
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object p1

    if-eqz p1, :cond_58

    .line 516
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/wm/InsetsTarget;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_59

    :cond_58
    const/4 p1, 0x0

    .line 520
    :goto_59
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    const/16 v3, 0x3f

    invoke-interface {v2, p2, v3}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 522
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v2, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, v0, p1, v1}, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;-><init>(Landroid/view/inputmethod/ImeTracker$Token;Lcom/android/server/wm/WindowManagerInternal$OnImeRequestedChangedListener;Landroid/os/IBinder;Z)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 528
    :cond_71
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    const/16 p1, 0x3c

    invoke-interface {p0, p2, p1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return-void
.end method

.method public isImeShowing()Z
    .registers 1

    .line 686
    iget-boolean p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeShowing:Z

    return p0
.end method

.method public isInitiallyVisible(Lcom/android/server/wm/InsetsControlTarget;)Z
    .registers 3

    .line 216
    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->isInitiallyVisible(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    .line 218
    iget-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mServerVisible:Z

    if-eqz p1, :cond_26

    .line 219
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getImeParentWindow()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 223
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result p1

    if-nez p1, :cond_26

    .line 224
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 225
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 v0, 0x1

    :cond_26
    return v0
.end method

.method public isLeashReadyForDispatching()Z
    .registers 5

    .line 184
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 185
    :goto_f
    invoke-super {p0}, Lcom/android/server/wm/InsetsSourceProvider;->isLeashReadyForDispatching()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 186
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->isServerVisible()Z

    move-result v3

    if-eqz v3, :cond_22

    if-eqz v0, :cond_22

    iget-boolean p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mGivenInsetsReady:Z

    if-eqz p0, :cond_22

    return v2

    :cond_22
    return v1
.end method

.method public isSurfaceVisible()Z
    .registers 6

    .line 195
    invoke-super {p0}, Lcom/android/server/wm/InsetsSourceProvider;->isSurfaceVisible()Z

    move-result v0

    .line 196
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    if-eqz v1, :cond_30

    .line 197
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v2

    goto :goto_17

    :cond_16
    move v1, v3

    .line 198
    :goto_17
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->isServerVisible()Z

    move-result v4

    if-nez v4, :cond_29

    if-eqz v0, :cond_29

    if-eqz v1, :cond_28

    .line 202
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-nez p0, :cond_28

    return v2

    :cond_28
    return v3

    .line 203
    :cond_29
    iget-boolean p0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastDrawn:Z

    if-eqz p0, :cond_30

    if-nez v1, :cond_30

    return v3

    :cond_30
    return v0
.end method

.method public final logIsScheduledAndReadyToShowIme(Z)V
    .registers 8

    .line 624
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getImeLayeringTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 625
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v1

    .line 626
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 627
    const-string v3, "showImePostLayout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_19

    const-string p1, "aborted"

    goto :goto_1b

    :cond_19
    const-string p1, "cancelled"

    :goto_1b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    const-string p1, ", serverVisible: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mServerVisible:Z

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 629
    const-string p1, ", frozen: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mFrozen:Z

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 630
    const-string p1, ", mWin is: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    const-string v3, "null"

    const-string v4, "non-null"

    if-eqz p1, :cond_41

    move-object p1, v4

    goto :goto_42

    :cond_41
    move-object p1, v3

    :goto_42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_63

    .line 632
    const-string p1, ", isDrawn: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 633
    const-string p1, ", mGivenInsetsPending: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 635
    :cond_63
    const-string p1, ", imeLayeringTarget: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 636
    const-string p1, ", controlTarget: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_cc

    if-eqz v1, :cond_cc

    .line 638
    const-string p1, "\n"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    const-string p1, "controlTarget == DisplayContent.imeControlTarget: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v5, 0x1

    if-ne v1, p1, :cond_8d

    move p1, v5

    goto :goto_8e

    :cond_8d
    move p1, v0

    :goto_8e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 641
    const-string p1, ", hasPendingControls: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/InsetsStateController;->hasPendingControls(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual {p0, v1}, Lcom/android/server/wm/InsetsSourceProvider;->getLeash(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/SurfaceControl;

    move-result-object p1

    if-eqz p1, :cond_a6

    move v0, v5

    .line 644
    :cond_a6
    const-string p1, ", leash is: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_af

    move-object p1, v4

    goto :goto_b0

    :cond_af
    move-object p1, v3

    :goto_b0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_cc

    .line 646
    const-string p1, ", control is: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    if-eqz p1, :cond_bf

    move-object v3, v4

    :cond_bf
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    const-string p1, ", mIsLeashInitialized: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mIsLeashInitialized:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 650
    :cond_cc
    sget-object p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAnimatingTypesChanged(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 6

    .line 537
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    const/16 v1, 0x4a

    if-ne p1, v0, :cond_28

    .line 540
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/server/wm/InsetsControlTarget;->isRequestedVisible(I)Z

    move-result v0

    if-nez v0, :cond_28

    .line 541
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getAnimatingTypes()I

    move-result v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    and-int/2addr v0, v2

    if-nez v0, :cond_28

    .line 542
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    invoke-interface {v0, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 544
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ImeInsetsSourceProvider;->invokeOnImeRequestedChangedListener(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    .line 546
    :cond_28
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return-void
.end method

.method public onImeInputTargetChanged(Lcom/android/server/wm/InputTarget;)V
    .registers 10

    if-eqz p1, :cond_40

    .line 436
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    if-eq p1, v0, :cond_40

    .line 439
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/server/wm/InsetsTarget;->isRequestedVisible(I)Z

    move-result v1

    .line 440
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v1, :cond_19

    move v4, v3

    goto :goto_1a

    :cond_19
    const/4 v4, 0x2

    :goto_1a
    if-eqz v1, :cond_1f

    const/16 v5, 0x38

    goto :goto_21

    :cond_1f
    const/16 v5, 0x39

    :goto_21
    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-interface {v2, v4, v6, v5, v7}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v2

    if-eqz v0, :cond_34

    .line 447
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/android/server/wm/InsetsControlTarget;->isRequestedVisible(I)Z

    move-result v4

    if-eqz v4, :cond_34

    goto :goto_35

    :cond_34
    move v3, v7

    :goto_35
    if-ne v1, v3, :cond_3d

    if-eqz v0, :cond_3d

    .line 450
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ImeInsetsSourceProvider;->invokeOnImeRequestedChangedListener(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    .line 452
    :cond_3d
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/wm/ImeInsetsSourceProvider;->reportImeInputTargetStateToControlTarget(Lcom/android/server/wm/InsetsTarget;Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V

    :cond_40
    return-void
.end method

.method public onPostLayout()Z
    .registers 10

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v0

    .line 114
    invoke-super {p0}, Lcom/android/server/wm/InsetsSourceProvider;->onPostLayout()Z

    move-result v1

    .line 115
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 116
    invoke-virtual {v2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    if-eq v0, v2, :cond_17

    .line 119
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 122
    :cond_17
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_23

    iget-boolean v5, v2, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-eqz v5, :cond_23

    move v5, v4

    goto :goto_24

    :cond_23
    move v5, v3

    :goto_24
    if-eqz v2, :cond_2e

    .line 124
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v2

    if-eqz v2, :cond_2e

    move v2, v4

    goto :goto_2f

    :cond_2e
    move v2, v3

    :goto_2f
    iput-boolean v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastDrawn:Z

    .line 129
    iget-boolean v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mGivenInsetsReady:Z

    const/16 v6, 0x32

    if-nez v2, :cond_73

    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->isServerVisible()Z

    move-result v2

    if-eqz v2, :cond_73

    if-nez v5, :cond_73

    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v2, :cond_73

    .line 131
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_5b

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v7, 0x4ae62e73b9b83516L    # 6.639253577910478E52

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v7, v8, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 134
    :cond_5b
    iput-boolean v4, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mGivenInsetsReady:Z

    .line 135
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-interface {v0, v2, v6}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    if-nez v1, :cond_6f

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/InsetsStateController;->notifyControlChanged(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsSourceProvider;)V

    .line 140
    :cond_6f
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ImeInsetsSourceProvider;->setImeShowing(Z)V

    return v4

    :cond_73
    if-nez v0, :cond_79

    .line 142
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mServerVisiblePreLayout:Z

    if-eqz v0, :cond_ad

    .line 143
    :cond_79
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->isServerVisible()Z

    move-result v0

    if-eqz v0, :cond_ad

    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mGivenInsetsReady:Z

    if-eqz v0, :cond_ad

    if-eqz v5, :cond_ad

    .line 148
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 v2, 0x3

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x7cfd90b104eacc05L

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v4, v5, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 150
    :cond_a0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-interface {v0, v2, v6}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return v1

    .line 153
    :cond_ad
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->isServerVisible()Z

    move-result v0

    if-nez v0, :cond_d6

    .line 154
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeShowing()Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 155
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_d3

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x4700b8cbf68ac51fL    # -3.7649688835869442E-34

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v4, v5, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 158
    :cond_d3
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ImeInsetsSourceProvider;->setImeShowing(Z)V

    :cond_d6
    return v1
.end method

.method public final onSourceChanged()V
    .registers 3

    .line 588
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastSource:Landroid/view/InsetsSource;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 591
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastSource:Landroid/view/InsetsSource;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->set(Landroid/view/InsetsSource;)V

    .line 592
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x29

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 593
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public receiveImeStatsToken(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 8

    .line 603
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    if-eqz v0, :cond_9

    xor-int/lit8 v0, p1, 0x1

    .line 606
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->logIsScheduledAndReadyToShowIme(Z)V

    .line 608
    :cond_9
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_23

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v2, 0x0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, -0x32422c4c521ecab5L    # -3.141145557157463E66

    invoke-static {v1, v3, v4, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_23
    const/16 v0, 0x2b

    if-eqz p1, :cond_33

    .line 610
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-interface {p1, v1, v0}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 612
    iput-object p2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return-void

    .line 614
    :cond_33
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    invoke-interface {p1, p2, v0}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    const/4 p1, 0x0

    .line 616
    iput-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mStatsToken:Landroid/view/inputmethod/ImeTracker$Token;

    return-void
.end method

.method public reportImeDrawnForOrganizer()V
    .registers 2

    .line 581
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 583
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->reportImeDrawnForOrganizer(Lcom/android/server/wm/InsetsControlTarget;)V

    :cond_9
    return-void
.end method

.method public final reportImeDrawnForOrganizer(Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 3

    .line 570
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    if-nez p1, :cond_13

    goto :goto_24

    .line 574
    :cond_13
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 575
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskOrganizerController;->reportImeDrawnOnTask(Lcom/android/server/wm/Task;)V

    :cond_24
    :goto_24
    return-void
.end method

.method public final reportImeDrawnForOrganizerIfNeeded(Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 5

    .line 553
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_28

    .line 557
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_e

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 558
    :goto_f
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 559
    invoke-virtual {v1, v0}, Lcom/android/server/wm/AsyncRotationController;->isTargetToken(Lcom/android/server/wm/WindowToken;)Z

    move-result v1

    if-nez v1, :cond_28

    :cond_1d
    if-eqz v0, :cond_29

    const/4 v1, 0x0

    const/16 v2, 0x40

    .line 560
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowContainer;->isSelfAnimating(II)Z

    move-result v0

    if-eqz v0, :cond_29

    :cond_28
    :goto_28
    return-void

    .line 566
    :cond_29
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->reportImeDrawnForOrganizer(Lcom/android/server/wm/InsetsControlTarget;)V

    return-void
.end method

.method public final reportImeInputTargetStateToControlTarget(Lcom/android/server/wm/InsetsTarget;Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V
    .registers 8

    .line 465
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/server/wm/InsetsTarget;->isRequestedVisible(I)Z

    move-result v0

    const/16 v1, 0x31

    if-eqz p2, :cond_17

    .line 467
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p3, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 469
    invoke-interface {p2, v0, p3}, Lcom/android/server/wm/InsetsControlTarget;->setImeInputTargetRequestedVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    .line 470
    :cond_17
    instance-of p2, p1, Lcom/android/server/wm/InsetsControlTarget;

    if-eqz p2, :cond_41

    .line 475
    iget-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object v2, p1

    check-cast v2, Lcom/android/server/wm/InsetsControlTarget;

    .line 476
    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 475
    invoke-virtual {p2, v3}, Lcom/android/server/wm/DisplayContent;->getImeHost(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p2

    if-eqz p2, :cond_3a

    if-eq p2, p1, :cond_3a

    .line 479
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p1

    invoke-interface {p1, p3, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 481
    invoke-interface {p2, v0, p3}, Lcom/android/server/wm/InsetsControlTarget;->setImeInputTargetRequestedVisibility(ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 485
    invoke-virtual {p0, v2, p3}, Lcom/android/server/wm/ImeInsetsSourceProvider;->invokeOnImeRequestedChangedListener(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    .line 488
    :cond_3a
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p3, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :cond_41
    return-void
.end method

.method public setClientVisible(Z)V
    .registers 3

    .line 297
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->isClientVisible()Z

    move-result v0

    .line 298
    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->setClientVisible(Z)V

    if-nez v0, :cond_29

    .line 301
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->isClientVisible()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 302
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p1

    if-eqz p1, :cond_29

    .line 303
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 304
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez p1, :cond_29

    .line 305
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    :cond_29
    return-void
.end method

.method public setFrozen(Z)V
    .registers 3

    .line 333
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mFrozen:Z

    if-ne v0, p1, :cond_5

    goto :goto_e

    .line 336
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mFrozen:Z

    if-nez p1, :cond_e

    .line 339
    iget-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mServerVisible:Z

    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->setServerVisible(Z)V

    :cond_e
    :goto_e
    return-void
.end method

.method public setImeShowing(Z)V
    .registers 2

    .line 678
    iput-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeShowing:Z

    return-void
.end method

.method public setServerVisible(Z)V
    .registers 5

    .line 312
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mServerVisible:Z

    if-eq v0, p1, :cond_16

    .line 313
    iput-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mServerVisible:Z

    if-nez p1, :cond_16

    .line 315
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mFrozen:Z

    if-nez v0, :cond_16

    const/4 v0, 0x0

    .line 316
    iput-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mGivenInsetsReady:Z

    .line 317
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/ImeInsetsSourceProvider;->updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;ZLandroid/view/inputmethod/ImeTracker$Token;)V

    .line 320
    :cond_16
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mFrozen:Z

    if-nez v0, :cond_1d

    .line 321
    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->setServerVisible(Z)V

    :cond_1d
    return-void
.end method

.method public updateClientVisibility(Lcom/android/server/wm/InsetsTarget;Landroid/view/inputmethod/ImeTracker$Token;)Z
    .registers 9

    .line 400
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    const/16 v1, 0x43

    if-eq p1, v0, :cond_46

    .line 402
    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object v2

    const/4 v3, 0x0

    if-ne p1, v2, :cond_15

    .line 404
    invoke-virtual {p0, v2, v0, p2}, Lcom/android/server/wm/ImeInsetsSourceProvider;->reportImeInputTargetStateToControlTarget(Lcom/android/server/wm/InsetsTarget;Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_45

    .line 407
    :cond_15
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 v0, 0x3

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_3e

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/server/wm/InsetsTarget;->isRequestedVisible(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x39db2d8160933509L    # 5.359867179729214E-30

    filled-new-array {p0, v0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v4, v5, v3, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 411
    :cond_3e
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :goto_45
    return v3

    .line 416
    :cond_46
    invoke-super {p0, v0, p2}, Lcom/android/server/wm/InsetsSourceProvider;->updateClientVisibility(Lcom/android/server/wm/InsetsTarget;Landroid/view/inputmethod/ImeTracker$Token;)Z

    move-result p1

    if-eqz p1, :cond_57

    .line 418
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    .line 420
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/ImeInsetsSourceProvider;->invokeOnImeRequestedChangedListener(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V

    return p1

    .line 423
    :cond_57
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object p0

    invoke-interface {p0, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onCancelled(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return p1
.end method

.method public updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .registers 6

    if-eqz p1, :cond_10

    .line 362
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 365
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p1

    .line 369
    :cond_10
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/InsetsSourceProvider;->updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;ZLandroid/view/inputmethod/ImeTracker$Token;)V

    if-eqz p1, :cond_3d

    .line 372
    iget-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-ne p1, p2, :cond_3d

    .line 376
    iget-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object p2

    if-eq p2, p1, :cond_39

    if-eqz p2, :cond_39

    .line 378
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/android/server/wm/InsetsTarget;->isRequestedVisible(I)Z

    move-result v0

    .line 379
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/server/wm/InsetsControlTarget;->isRequestedVisible(I)Z

    move-result v1

    if-eq v0, v1, :cond_39

    .line 383
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wm/ImeInsetsSourceProvider;->reportImeInputTargetStateToControlTarget(Lcom/android/server/wm/InsetsTarget;Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    .line 386
    :cond_39
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/ImeInsetsSourceProvider;->invokeOnImeRequestedChangedListener(Lcom/android/server/wm/InsetsControlTarget;Landroid/view/inputmethod/ImeTracker$Token;)V

    return-void

    .line 389
    :cond_3d
    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 p3, 0x3

    aget-boolean p2, p2, p3

    if-eqz p2, :cond_5d

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 p3, 0x0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v0, 0x3e82738122d23a38L    # 1.3747207231293894E-7

    invoke-static {p2, v0, v1, p3, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_5d
    return-void
.end method

.method public updateSourceFrame(Landroid/graphics/Rect;)V
    .registers 2

    .line 345
    invoke-super {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->updateSourceFrame(Landroid/graphics/Rect;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->onSourceChanged()V

    return-void
.end method

.method public updateVisibility()V
    .registers 3

    .line 351
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v0

    .line 352
    invoke-super {p0}, Lcom/android/server/wm/InsetsSourceProvider;->updateVisibility()V

    .line 353
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1a

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControlTarget:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_1a

    .line 354
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->reportImeDrawnForOrganizerIfNeeded(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 356
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->onSourceChanged()V

    return-void
.end method
