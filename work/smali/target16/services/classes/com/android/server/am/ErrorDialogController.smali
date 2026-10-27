.class public final Lcom/android/server/am/ErrorDialogController;
.super Ljava/lang/Object;
.source "ErrorDialogController.java"


# instance fields
.field public mAnrController:Landroid/app/AnrController;

.field public mAnrDialogs:Ljava/util/List;

.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public mCrashDialogs:Ljava/util/List;

.field public final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field public final mService:Lcom/android/server/am/ActivityManagerService;

.field public mViolationDialogs:Ljava/util/List;

.field public mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;


# direct methods
.method public static synthetic $r8$lambda$PGTeWgvsb4oQ3F3N9FtHOh5cjQA(Lcom/android/server/am/ErrorDialogController;Ljava/util/List;Ljava/util/function/Consumer;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ErrorDialogController;->lambda$scheduleForAllDialogs$0(Ljava/util/List;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aGlBSBYSScon6h9jcR60ItwHWYU(Lcom/android/server/am/ErrorDialogController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->lambda$showCrashDialogs$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$wG8Rs_jBa23FnPy-dZG8oQbwrMs(Lcom/android/server/am/ErrorDialogController;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->lambda$showDebugWaitingDialogs$2()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    iput-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 428
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 429
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    return-void
.end method


# virtual methods
.method public clearAllErrorDialogs()V
    .registers 1

    .line 103
    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->clearCrashDialogs()V

    .line 104
    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->clearAnrDialogs()V

    .line 105
    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->clearViolationDialogs()V

    .line 106
    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->clearWaitingDialog()V

    return-void
.end method

.method public clearAnrDialogs()V
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    .line 146
    :cond_5
    new-instance v1, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    .line 148
    iput-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mAnrController:Landroid/app/AnrController;

    return-void
.end method

.method public clearCrashDialogs()V
    .registers 2

    const/4 v0, 0x1

    .line 127
    invoke-virtual {p0, v0}, Lcom/android/server/am/ErrorDialogController;->clearCrashDialogs(Z)V

    return-void
.end method

.method public clearCrashDialogs(Z)V
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_f

    .line 136
    new-instance p1, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    :cond_f
    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    return-void
.end method

.method public clearViolationDialogs()V
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    if-nez v0, :cond_5

    return-void

    .line 156
    :cond_5
    new-instance v1, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    return-void
.end method

.method public clearWaitingDialog()V
    .registers 4

    .line 162
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    if-nez v0, :cond_5

    return-void

    .line 166
    :cond_5
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/BaseErrorDialog;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    return-void
.end method

.method public final findDialogOnDisplay(Ljava/util/List;I)Lcom/android/server/am/BaseErrorDialog;
    .registers 5

    .line 261
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_6
    if-ltz p0, :cond_25

    .line 262
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BaseErrorDialog;

    if-nez v0, :cond_11

    goto :goto_22

    .line 267
    :cond_11
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    if-ne v1, p2, :cond_22

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_22

    return-object v0

    :cond_22
    :goto_22
    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public forAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V
    .registers 4

    .line 181
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_6
    if-ltz p0, :cond_14

    .line 182
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/BaseErrorDialog;

    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    :cond_14
    return-void
.end method

.method public getAnrController()Landroid/app/AnrController;
    .registers 1

    .line 249
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mAnrController:Landroid/app/AnrController;

    return-object p0
.end method

.method public getAnrDialogs()Ljava/util/List;
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    return-object p0
.end method

.method public getCrashDialogs()Ljava/util/List;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    return-object p0
.end method

.method public final getDisplayContexts(Z)Ljava/util/List;
    .registers 4

    .line 413
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_10

    .line 415
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowProcessController;->getDisplayContextsWithErrorDialogs(Ljava/util/List;)V

    .line 418
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    if-eqz p1, :cond_19

    goto :goto_1a

    :cond_19
    return-object v0

    .line 419
    :cond_1a
    :goto_1a
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    if-eqz p1, :cond_25

    .line 420
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayUiContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_27

    .line 421
    :cond_25
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiContext:Landroid/content/Context;

    .line 419
    :goto_27
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public hasAnrDialogs()Z
    .registers 1

    .line 83
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public hasCrashDialogs()Z
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public hasDebugWaitingDialog()Z
    .registers 1

    .line 98
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public hasViolationDialogs()Z
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$scheduleForAllDialogs$0(Ljava/util/List;Ljava/util/function/Consumer;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 175
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ErrorDialogController;->forAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    :cond_5
    return-void
.end method

.method public final synthetic lambda$showCrashDialogs$1()V
    .registers 3

    .line 196
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 197
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    .line 198
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    if-eqz v1, :cond_16

    .line 200
    new-instance v0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ErrorDialogController;->forAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    :cond_16
    return-void

    :catchall_17
    move-exception p0

    .line 198
    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$showDebugWaitingDialogs$2()V
    .registers 2

    .line 237
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 238
    :try_start_6
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 239
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    if-eqz p0, :cond_11

    .line 241
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_11
    return-void

    :catchall_12
    move-exception p0

    .line 239
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method

.method public moveAllErrorDialogsToDefaultDisplay(I)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 119
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/ErrorDialogController;->moveCrashDialogToDefaultDisplay(I)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/server/am/ErrorDialogController;->moveAnrDialogToDefaultDisplay(I)V

    .line 121
    invoke-virtual {p0, p1}, Lcom/android/server/am/ErrorDialogController;->moveViolationDialogToDefaultDisplay(I)V

    .line 122
    invoke-virtual {p0, p1}, Lcom/android/server/am/ErrorDialogController;->moveWaitingDialogToDefaultDisplay(I)V

    return-void
.end method

.method public final moveAnrDialogToDefaultDisplay(I)V
    .registers 5

    .line 318
    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->hasAnrDialogs()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_33

    .line 322
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ErrorDialogController;->findDialogOnDisplay(Ljava/util/List;I)Lcom/android/server/am/BaseErrorDialog;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/AppNotRespondingDialog;

    if-nez p1, :cond_12

    goto :goto_33

    .line 326
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/am/AppNotRespondingDialog;->getData()Lcom/android/server/am/AppNotRespondingDialog$Data;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 328
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda10;

    invoke-direct {v2, p1}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/am/AppNotRespondingDialog;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 330
    iget-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    const/4 v1, 0x0

    .line 331
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ErrorDialogController;->findDialogOnDisplay(Ljava/util/List;I)Lcom/android/server/am/BaseErrorDialog;

    move-result-object p1

    if-eqz p1, :cond_31

    return-void

    :cond_31
    if-nez v0, :cond_34

    :goto_33
    return-void

    .line 338
    :cond_34
    iget-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayUiContext(I)Landroid/content/Context;

    move-result-object p1

    .line 339
    new-instance v1, Lcom/android/server/am/AppNotRespondingDialog;

    iget-object v2, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v1, v2, p1, v0}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    .line 340
    iget-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda11;

    invoke-direct {p1, v1}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/am/AppNotRespondingDialog;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final moveCrashDialogToDefaultDisplay(I)V
    .registers 5

    .line 283
    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->hasCrashDialogs()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_33

    .line 287
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ErrorDialogController;->findDialogOnDisplay(Ljava/util/List;I)Lcom/android/server/am/BaseErrorDialog;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/AppErrorDialog;

    if-nez p1, :cond_12

    goto :goto_33

    .line 291
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/am/AppErrorDialog;->getData()Lcom/android/server/am/AppErrorDialog$Data;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 293
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda8;

    invoke-direct {v2, p1}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 295
    iget-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    const/4 v1, 0x0

    .line 296
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ErrorDialogController;->findDialogOnDisplay(Ljava/util/List;I)Lcom/android/server/am/BaseErrorDialog;

    move-result-object p1

    if-eqz p1, :cond_31

    return-void

    :cond_31
    if-nez v0, :cond_34

    :goto_33
    return-void

    .line 303
    :cond_34
    iget-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayUiContext(I)Landroid/content/Context;

    move-result-object p1

    .line 304
    new-instance v1, Lcom/android/server/am/AppErrorDialog;

    iget-object v2, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v1, p1, v2, v0}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V

    .line 305
    iget-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda9;

    invoke-direct {p1, v1}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/am/AppErrorDialog;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final moveViolationDialogToDefaultDisplay(I)V
    .registers 6

    .line 353
    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->hasViolationDialogs()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_33

    .line 357
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    .line 358
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/ErrorDialogController;->findDialogOnDisplay(Ljava/util/List;I)Lcom/android/server/am/BaseErrorDialog;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/StrictModeViolationDialog;

    if-nez p1, :cond_12

    goto :goto_33

    .line 362
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/am/StrictModeViolationDialog;->getResult()Lcom/android/server/am/AppErrorResult;

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 364
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/StrictModeViolationDialog;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    iget-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    const/4 v1, 0x0

    .line 367
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ErrorDialogController;->findDialogOnDisplay(Ljava/util/List;I)Lcom/android/server/am/BaseErrorDialog;

    move-result-object p1

    if-eqz p1, :cond_31

    return-void

    :cond_31
    if-nez v0, :cond_34

    :goto_33
    return-void

    .line 374
    :cond_34
    iget-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayUiContext(I)Landroid/content/Context;

    move-result-object p1

    .line 375
    new-instance v1, Lcom/android/server/am/StrictModeViolationDialog;

    iget-object v2, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/ErrorDialogController;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, p1, v2, v0, v3}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 377
    iget-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda7;

    invoke-direct {p1, v1}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/am/StrictModeViolationDialog;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final moveWaitingDialogToDefaultDisplay(I)V
    .registers 5

    .line 390
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-eq v0, p1, :cond_f

    goto :goto_37

    .line 396
    :cond_f
    iget-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 397
    iget-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerInternal;->getDisplayUiContext(I)Landroid/content/Context;

    move-result-object p1

    .line 398
    new-instance v0, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ErrorDialogController;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    iput-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 399
    iget-object p0, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda4;

    invoke-direct {p1, v0}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/AppWaitingForDebuggerDialog;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_37
    :goto_37
    return-void
.end method

.method public scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V
    .registers 5

    .line 173
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/ErrorDialogController;Ljava/util/List;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAnrController(Landroid/app/AnrController;)V
    .registers 2

    .line 254
    iput-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mAnrController:Landroid/app/AnrController;

    return-void
.end method

.method public showAnrDialogs(Lcom/android/server/am/AppNotRespondingDialog$Data;)V
    .registers 8

    .line 207
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 208
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isSilentAnr()Z

    move-result v0

    .line 207
    invoke-virtual {p0, v0}, Lcom/android/server/am/ErrorDialogController;->getDisplayContexts(Z)Ljava/util/List;

    move-result-object v0

    .line 209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    .line 210
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_19
    if-ltz v1, :cond_30

    .line 211
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 212
    iget-object v3, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    new-instance v4, Lcom/android/server/am/AppNotRespondingDialog;

    iget-object v5, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v4, v5, v2, p1}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    .line 214
    :cond_30
    iget-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    new-instance v0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public showCrashDialogs(Lcom/android/server/am/AppErrorDialog$Data;)V
    .registers 8

    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0, v0}, Lcom/android/server/am/ErrorDialogController;->getDisplayContexts(Z)Ljava/util/List;

    move-result-object v0

    .line 189
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    .line 190
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_12
    if-ltz v1, :cond_29

    .line 191
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 192
    iget-object v3, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    new-instance v4, Lcom/android/server/am/AppErrorDialog;

    iget-object v5, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v4, v2, v5, p1}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 194
    :cond_29
    iget-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/am/ErrorDialogController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showDebugWaitingDialogs()V
    .registers 5

    const/4 v0, 0x1

    .line 231
    invoke-virtual {p0, v0}, Lcom/android/server/am/ErrorDialogController;->getDisplayContexts(Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 232
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 233
    new-instance v1, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    iget-object v2, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/ErrorDialogController;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    iput-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 235
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ErrorDialogController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showViolationDialogs(Lcom/android/server/am/AppErrorResult;)V
    .registers 9

    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/server/am/ErrorDialogController;->getDisplayContexts(Z)Ljava/util/List;

    move-result-object v0

    .line 220
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    .line 221
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_12
    if-ltz v1, :cond_2b

    .line 222
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 223
    iget-object v3, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    new-instance v4, Lcom/android/server/am/StrictModeViolationDialog;

    iget-object v5, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p0, Lcom/android/server/am/ErrorDialogController;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v4, v2, v5, p1, v6}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 226
    :cond_2b
    iget-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    new-instance v0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    return-void
.end method
