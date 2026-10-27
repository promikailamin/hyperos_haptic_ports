.class final Lcom/android/server/wm/ImeInsetsSourceProvider;
.super Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
.source "ImeInsetsSourceProvider.java"


# static fields
.field static final TAG:Ljava/lang/String; = "ImeInsetsSourceProvider"


# instance fields
.field private mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

.field private mImeShowing:Z

.field private mIsImeLayoutDrawn:Z

.field private final mLastSource:Landroid/view/InsetsSource;

.field private mShowImeRunner:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .registers 6
    .param p1, "source"    # Landroid/view/InsetsSource;
    .param p2, "stateController"    # Lcom/android/server/wm/InsetsStateController;
    .param p3, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;-><init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V

    .line 59
    new-instance v0, Landroid/view/InsetsSource;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Landroid/view/InsetsSource;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastSource:Landroid/view/InsetsSource;

    .line 64
    return-void
.end method

.method private static isAboveImeLayeringTarget(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)Z
    .registers 4
    .param p0, "target"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p1, "dcTarget"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 253
    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 254
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-ne v0, p0, :cond_20

    .line 255
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-le v0, v1, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 253
    :goto_21
    return v0
.end method

.method private isImeFallbackTarget(Lcom/android/server/wm/InsetsControlTarget;)Z
    .registers 3
    .param p1, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 259
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getImeFallback()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private isImeInputTarget(Lcom/android/server/wm/InsetsControlTarget;)Z
    .registers 3
    .param p1, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 263
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object v0

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static isImeLayeringTarget(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)Z
    .registers 3
    .param p0, "target"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p1, "dcTarget"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 248
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isClosing()Z

    move-result v0

    if-nez v0, :cond_e

    if-ne p0, p1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private isTargetChangedWithinActivity(Lcom/android/server/wm/InsetsControlTarget;)Z
    .registers 5
    .param p1, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 275
    const/4 v0, 0x0

    if-eqz p1, :cond_2e

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_2e

    .line 278
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-eq v1, p1, :cond_2c

    if-eqz v1, :cond_2c

    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mShowImeRunner:Ljava/lang/Runnable;

    if-eqz v2, :cond_2c

    .line 280
    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 281
    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 282
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v1, v2, :cond_2c

    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    nop

    .line 278
    :goto_2d
    return v0

    .line 276
    :cond_2e
    :goto_2e
    return v0
.end method

.method private onSourceChanged()V
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastSource:Landroid/view/InsetsSource;

    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 128
    return-void

    .line 130
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mLastSource:Landroid/view/InsetsSource;

    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->set(Landroid/view/InsetsSource;)V

    .line 131
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x29

    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 133
    return-void
.end method

.method private reportImeDrawnForOrganizer(Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 4
    .param p1, "caller"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 118
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 119
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 121
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskOrganizerController;->reportImeDrawnOnTask(Lcom/android/server/wm/Task;)V

    .line 124
    :cond_31
    return-void
.end method

.method private sameAsImeControlTarget()Z
    .registers 3

    .line 267
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    .line 268
    .local v0, "target":Lcom/android/server/wm/InsetsControlTarget;
    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-ne v0, v1, :cond_1f

    .line 269
    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 270
    invoke-interface {v1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isClosing()Z

    move-result v1

    if-nez v1, :cond_1f

    :cond_1d
    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    .line 268
    :goto_20
    return v1
.end method


# virtual methods
.method abortShowImePostLayout()V
    .registers 6

    .line 211
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x51d654b9

    move-object v4, v2

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v1, v2, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 212
    :cond_11
    iput-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 213
    iput-boolean v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mIsImeLayoutDrawn:Z

    .line 214
    iput-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mShowImeRunner:Ljava/lang/Runnable;

    .line 215
    return-void
.end method

.method checkShowImePostLayout()V
    .registers 4

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_5

    .line 188
    return-void

    .line 190
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mWindowContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 191
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_2c

    .line 195
    iget-boolean v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mIsImeLayoutDrawn:Z

    if-nez v1, :cond_21

    .line 196
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isReadyToShowIme()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 197
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-nez v1, :cond_2b

    .line 199
    :cond_21
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mIsImeLayoutDrawn:Z

    .line 201
    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mShowImeRunner:Ljava/lang/Runnable;

    if-eqz v1, :cond_2b

    .line 202
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 205
    :cond_2b
    return-void

    .line 192
    :cond_2c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "IME insets must be provided by a window."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 288
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 290
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    const-string v0, "mImeShowing="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeShowing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v0, :cond_38

    .line 294
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 295
    const-string/jumbo v0, "showImePostLayout pending for mImeRequester="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 297
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 299
    :cond_38
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 300
    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 11
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "logLevel"    # I

    .line 304
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 305
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 307
    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-eqz v2, :cond_15

    invoke-interface {v2}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    .line 308
    .local v2, "imeRequesterWindow":Lcom/android/server/wm/WindowState;
    :goto_16
    if-eqz v2, :cond_20

    .line 309
    const-wide v3, 0x10b00000002L

    invoke-virtual {v2, p1, v3, v4, p4}, Lcom/android/server/wm/WindowState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 311
    :cond_20
    const-wide v3, 0x10800000003L

    iget-boolean v5, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mIsImeLayoutDrawn:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 312
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 313
    return-void
.end method

.method getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;
    .registers 7
    .param p1, "target"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 68
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->getControl(Lcom/android/server/wm/InsetsControlTarget;)Landroid/view/InsetsSourceControl;

    move-result-object v0

    .line 69
    .local v0, "control":Landroid/view/InsetsSourceControl;
    if-eqz v0, :cond_42

    if-eqz p1, :cond_42

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 70
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 75
    .local v1, "targetWin":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_26

    .line 76
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v4, v3, v3, v3}, Lcom/android/server/wm/WindowManagerService;->getTaskSnapshot(IIZZ)Landroid/window/TaskSnapshot;

    move-result-object v2

    goto :goto_27

    .line 78
    :cond_26
    const/4 v2, 0x0

    :goto_27
    nop

    .line 79
    .local v2, "snapshot":Landroid/window/TaskSnapshot;
    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_3e

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 80
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->hasStartingWindow()Z

    move-result v4

    if-eqz v4, :cond_3e

    if-eqz v2, :cond_3e

    .line 81
    invoke-virtual {v2}, Landroid/window/TaskSnapshot;->hasImeSurface()Z

    move-result v4

    if-eqz v4, :cond_3e

    const/4 v3, 0x1

    goto :goto_3f

    :cond_3e
    nop

    .line 79
    :goto_3f
    invoke-virtual {v0, v3}, Landroid/view/InsetsSourceControl;->setSkipAnimationOnce(Z)V

    .line 83
    .end local v1    # "targetWin":Lcom/android/server/wm/WindowState;
    .end local v2    # "snapshot":Landroid/window/TaskSnapshot;
    :cond_42
    return-object v0
.end method

.method public isImeShowing()Z
    .registers 2

    .line 328
    iget-boolean v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeShowing:Z

    return v0
.end method

.method isReadyToShowIme()Z
    .registers 10

    .line 228
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    .line 229
    .local v0, "dcTarget":Lcom/android/server/wm/InsetsControlTarget;
    if-eqz v0, :cond_70

    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-nez v2, :cond_e

    goto :goto_70

    .line 232
    :cond_e
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_48

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-nez v4, :cond_2a

    iget-object v4, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    goto :goto_34

    :cond_2a
    iget-object v4, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v4}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_34
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam1":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x330e8a89

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v1

    aput-object v4, v8, v3

    invoke-static {v5, v6, v1, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 236
    .end local v2    # "protoLogParam0":Ljava/lang/String;
    .end local v4    # "protoLogParam1":Ljava/lang/String;
    :cond_48
    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-static {v2, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeLayeringTarget(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v2

    if-nez v2, :cond_6e

    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 237
    invoke-static {v2, v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isAboveImeLayeringTarget(Lcom/android/server/wm/InsetsControlTarget;Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v2

    if-nez v2, :cond_6e

    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 238
    invoke-direct {p0, v2}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeFallbackTarget(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v2

    if-nez v2, :cond_6e

    iget-object v2, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 239
    invoke-direct {p0, v2}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeInputTarget(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v2

    if-nez v2, :cond_6e

    .line 240
    invoke-direct {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->sameAsImeControlTarget()Z

    move-result v2

    if-eqz v2, :cond_6f

    :cond_6e
    move v1, v3

    .line 236
    :cond_6f
    return v1

    .line 230
    :cond_70
    :goto_70
    return v1
.end method

.method synthetic lambda$scheduleShowImePostLayout$0$com-android-server-wm-ImeInsetsSourceProvider()V
    .registers 10

    .line 159
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x72efe808

    move-object v4, v1

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v2, v1, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 161
    :cond_11
    const-string v0, "ImeInsetsSourceProvider"

    const-string v3, "ImeInsetsSourceProvider.scheduleShowImePostLayout() Run showImeRunner."

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isReadyToShowIme()Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 166
    const-string v3, "ImeInsetsSourceProvider.scheduleShowImePostLayout() isReadyToShowIme."

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v0

    .line 169
    .local v0, "target":Lcom/android/server/wm/InsetsControlTarget;
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    const-string v4, ""

    const/4 v5, 0x1

    if-eqz v3, :cond_51

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_40

    invoke-interface {v0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_41

    :cond_40
    move-object v3, v4

    :goto_41
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x22eb33ec

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v3, v8, v2

    invoke-static {v6, v7, v2, v1, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 171
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_51
    invoke-virtual {p0, v5}, Lcom/android/server/wm/ImeInsetsSourceProvider;->setImeShowing(Z)V

    .line 172
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    invoke-interface {v0, v3, v5}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    .line 173
    const-wide/16 v6, 0x20

    const-string v3, "WMS.showImePostLayout"

    invoke-static {v6, v7, v3, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 174
    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    if-eq v0, v3, :cond_8e

    if-eqz v3, :cond_8e

    .line 175
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    if-eqz v3, :cond_8e

    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_7e

    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_7e
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x5ca81f2e

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v2

    invoke-static {v4, v6, v2, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 181
    .end local v0    # "target":Lcom/android/server/wm/InsetsControlTarget;
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_8e
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->abortShowImePostLayout()V

    .line 182
    return-void
.end method

.method scheduleShowImePostLayout(Lcom/android/server/wm/InsetsControlTarget;)V
    .registers 9
    .param p1, "imeTarget"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isTargetChangedWithinActivity(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v0

    .line 143
    .local v0, "targetChanged":Z
    iput-object p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    .line 144
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_24

    .line 146
    const-string v3, "ImeInsetsSourceProvider"

    const-string v4, "ImeInsetsSourceProvider.scheduleShowImePostLayout() targetChanged"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    if-eqz v3, :cond_20

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x85d1a3e

    move-object v5, v1

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v1, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 149
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->checkShowImePostLayout()V

    .line 153
    return-void

    .line 156
    :cond_24
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-nez v3, :cond_33

    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    goto :goto_3d

    :cond_33
    iget-object v3, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeRequester:Lcom/android/server/wm/InsetsControlTarget;

    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v3

    :goto_3d
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x540edc89

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v2

    invoke-static {v4, v5, v2, v1, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 158
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    :cond_4e
    new-instance v1, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ImeInsetsSourceProvider$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/ImeInsetsSourceProvider;)V

    iput-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mShowImeRunner:Ljava/lang/Runnable;

    .line 183
    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 184
    return-void
.end method

.method public setImeShowing(Z)V
    .registers 2
    .param p1, "imeShowing"    # Z

    .line 320
    iput-boolean p1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mImeShowing:Z

    .line 321
    return-void
.end method

.method protected updateClientVisibility(Lcom/android/server/wm/InsetsControlTarget;)Z
    .registers 4
    .param p1, "caller"    # Lcom/android/server/wm/InsetsControlTarget;

    .line 110
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->updateClientVisibility(Lcom/android/server/wm/InsetsControlTarget;)Z

    move-result v0

    .line 111
    .local v0, "changed":Z
    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/android/server/wm/ImeInsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {v1}, Landroid/view/InsetsSource;->getType()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/server/wm/InsetsControlTarget;->getRequestedVisibility(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/wm/ImeInsetsSourceProvider;->reportImeDrawnForOrganizer(Lcom/android/server/wm/InsetsControlTarget;)V

    .line 114
    :cond_15
    return v0
.end method

.method updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;Z)V
    .registers 4
    .param p1, "target"    # Lcom/android/server/wm/InsetsControlTarget;
    .param p2, "force"    # Z

    .line 100
    if-eqz p1, :cond_10

    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 103
    invoke-interface {p1}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getImeControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p1

    .line 105
    :cond_10
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->updateControlForTarget(Lcom/android/server/wm/InsetsControlTarget;Z)V

    .line 106
    return-void
.end method

.method updateSourceFrame(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 88
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->updateSourceFrame(Landroid/graphics/Rect;)V

    .line 89
    invoke-direct {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->onSourceChanged()V

    .line 90
    return-void
.end method

.method protected updateVisibility()V
    .registers 1

    .line 94
    invoke-super {p0}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->updateVisibility()V

    .line 95
    invoke-direct {p0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->onSourceChanged()V

    .line 96
    return-void
.end method
