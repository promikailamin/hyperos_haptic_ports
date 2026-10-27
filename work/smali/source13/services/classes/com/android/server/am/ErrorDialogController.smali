.class final Lcom/android/server/am/ErrorDialogController;
.super Ljava/lang/Object;
.source "ErrorDialogController.java"


# instance fields
.field private mAnrController:Landroid/app/AnrController;

.field private mAnrDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/AppNotRespondingDialog;",
            ">;"
        }
    .end annotation
.end field

.field private final mApp:Lcom/android/server/am/ProcessRecord;

.field private mCrashDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/AppErrorDialog;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mViolationDialogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/StrictModeViolationDialog;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;


# direct methods
.method public static synthetic $r8$lambda$EzKFSHSVa6qVMkA_S3N9ySIr1PU(Lcom/android/server/am/BaseErrorDialog;)V
    .registers 1

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static synthetic $r8$lambda$VttFStarnIaFRwGAVxBLtl3cMZc(Lcom/android/server/am/BaseErrorDialog;)V
    .registers 1

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static synthetic $r8$lambda$wCv4wiNjBflM3ipc49qB7tV_3EY(Lcom/android/server/am/BaseErrorDialog;)V
    .registers 1

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .registers 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 264
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 265
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 266
    return-void
.end method

.method private getDisplayContexts(Z)Ljava/util/List;
    .registers 4
    .param p1, "lastUsedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 250
    .local v0, "displayContexts":Ljava/util/List;, "Ljava/util/List<Landroid/content/Context;>;"
    if-nez p1, :cond_10

    .line 251
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowProcessController;->getDisplayContextsWithErrorDialogs(Ljava/util/List;)V

    .line 254
    :cond_10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    if-eqz p1, :cond_2e

    .line 255
    :cond_18
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    if-eqz v1, :cond_27

    .line 256
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWmInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->getTopFocusedDisplayUiContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_2b

    .line 257
    :cond_27
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiContext:Landroid/content/Context;

    .line 255
    :goto_2b
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    :cond_2e
    return-object v0
.end method


# virtual methods
.method clearAllErrorDialogs()V
    .registers 1

    .line 101
    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->clearCrashDialogs()V

    .line 102
    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->clearAnrDialogs()V

    .line 103
    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->clearViolationDialogs()V

    .line 104
    invoke-virtual {p0}, Lcom/android/server/am/ErrorDialogController;->clearWaitingDialog()V

    .line 105
    return-void
.end method

.method clearAnrDialogs()V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    if-nez v0, :cond_5

    .line 126
    return-void

    .line 128
    :cond_5
    new-instance v1, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    .line 130
    iput-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mAnrController:Landroid/app/AnrController;

    .line 131
    return-void
.end method

.method clearCrashDialogs()V
    .registers 2

    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ErrorDialogController;->clearCrashDialogs(Z)V

    .line 110
    return-void
.end method

.method clearCrashDialogs(Z)V
    .registers 4
    .param p1, "needDismiss"    # Z

    .line 114
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    if-nez v0, :cond_5

    .line 115
    return-void

    .line 117
    :cond_5
    if-eqz p1, :cond_f

    .line 118
    new-instance v1, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 120
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    .line 121
    return-void
.end method

.method clearViolationDialogs()V
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    if-nez v0, :cond_5

    .line 136
    return-void

    .line 138
    :cond_5
    new-instance v1, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    .line 140
    return-void
.end method

.method clearWaitingDialog()V
    .registers 4

    .line 144
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    if-nez v0, :cond_5

    .line 145
    return-void

    .line 147
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 148
    .local v0, "dialog":Lcom/android/server/am/BaseErrorDialog;
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/BaseErrorDialog;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 150
    return-void
.end method

.method forAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/server/am/BaseErrorDialog;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/am/BaseErrorDialog;",
            ">;)V"
        }
    .end annotation

    .line 163
    .local p1, "dialogs":Ljava/util/List;, "Ljava/util/List<+Lcom/android/server/am/BaseErrorDialog;>;"
    .local p2, "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/am/BaseErrorDialog;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_14

    .line 164
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseErrorDialog;

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 163
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 166
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method getAnrController()Landroid/app/AnrController;
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mAnrController:Landroid/app/AnrController;

    return-object v0
.end method

.method getAnrDialogs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/am/AppNotRespondingDialog;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    return-object v0
.end method

.method getCrashDialogs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/am/AppErrorDialog;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    return-object v0
.end method

.method hasAnrDialogs()Z
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method hasCrashDialogs()Z
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method hasDebugWaitingDialog()Z
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method hasViolationDialogs()Z
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method synthetic lambda$scheduleForAllDialogs$0$com-android-server-am-ErrorDialogController(Ljava/util/List;Ljava/util/function/Consumer;)V
    .registers 3
    .param p1, "dialogs"    # Ljava/util/List;
    .param p2, "c"    # Ljava/util/function/Consumer;

    .line 156
    if-eqz p1, :cond_5

    .line 157
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ErrorDialogController;->forAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 159
    :cond_5
    return-void
.end method

.method synthetic lambda$showCrashDialogs$1$com-android-server-am-ErrorDialogController()V
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 179
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    .line 180
    .local v1, "dialogs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/AppErrorDialog;>;"
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 181
    if-eqz v1, :cond_16

    .line 182
    new-instance v0, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ErrorDialogController;->forAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 184
    :cond_16
    return-void

    .line 180
    .end local v1    # "dialogs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/AppErrorDialog;>;"
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method synthetic lambda$showDebugWaitingDialogs$2$com-android-server-am-ErrorDialogController()V
    .registers 3

    .line 219
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 220
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 221
    .local v1, "dialog":Landroid/app/Dialog;
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 222
    if-eqz v1, :cond_11

    .line 223
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 225
    :cond_11
    return-void

    .line 221
    .end local v1    # "dialog":Landroid/app/Dialog;
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/server/am/BaseErrorDialog;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/am/BaseErrorDialog;",
            ">;)V"
        }
    .end annotation

    .line 155
    .local p1, "dialogs":Ljava/util/List;, "Ljava/util/List<+Lcom/android/server/am/BaseErrorDialog;>;"
    .local p2, "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/am/BaseErrorDialog;>;"
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/ErrorDialogController;Ljava/util/List;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    return-void
.end method

.method setAnrController(Landroid/app/AnrController;)V
    .registers 2
    .param p1, "controller"    # Landroid/app/AnrController;

    .line 236
    iput-object p1, p0, Lcom/android/server/am/ErrorDialogController;->mAnrController:Landroid/app/AnrController;

    .line 237
    return-void
.end method

.method showAnrDialogs(Lcom/android/server/am/AppNotRespondingDialog$Data;)V
    .registers 8
    .param p1, "data"    # Lcom/android/server/am/AppNotRespondingDialog$Data;

    .line 189
    iget-object v0, p0, Lcom/android/server/am/ErrorDialogController;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 190
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isSilentAnr()Z

    move-result v0

    .line 189
    invoke-direct {p0, v0}, Lcom/android/server/am/ErrorDialogController;->getDisplayContexts(Z)Ljava/util/List;

    move-result-object v0

    .line 191
    .local v0, "contexts":Ljava/util/List;, "Ljava/util/List<Landroid/content/Context;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    .line 192
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_19
    if-ltz v1, :cond_30

    .line 193
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 194
    .local v2, "c":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    new-instance v4, Lcom/android/server/am/AppNotRespondingDialog;

    iget-object v5, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v4, v5, v2, p1}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/AppNotRespondingDialog$Data;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .end local v2    # "c":Landroid/content/Context;
    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    .line 196
    .end local v1    # "i":I
    :cond_30
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mAnrDialogs:Ljava/util/List;

    new-instance v2, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 197
    return-void
.end method

.method showCrashDialogs(Lcom/android/server/am/AppErrorDialog$Data;)V
    .registers 8
    .param p1, "data"    # Lcom/android/server/am/AppErrorDialog$Data;

    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ErrorDialogController;->getDisplayContexts(Z)Ljava/util/List;

    move-result-object v0

    .line 171
    .local v0, "contexts":Ljava/util/List;, "Ljava/util/List<Landroid/content/Context;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    .line 172
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_12
    if-ltz v1, :cond_29

    .line 173
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 174
    .local v2, "c":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/server/am/ErrorDialogController;->mCrashDialogs:Ljava/util/List;

    new-instance v4, Lcom/android/server/am/AppErrorDialog;

    iget-object v5, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v4, v2, v5, p1}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorDialog$Data;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v2    # "c":Landroid/content/Context;
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 176
    .end local v1    # "i":I
    :cond_29
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ErrorDialogController;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 185
    return-void
.end method

.method showDebugWaitingDialogs()V
    .registers 6

    .line 213
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/ErrorDialogController;->getDisplayContexts(Z)Ljava/util/List;

    move-result-object v0

    .line 214
    .local v0, "contexts":Ljava/util/List;, "Ljava/util/List<Landroid/content/Context;>;"
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 215
    .local v1, "c":Landroid/content/Context;
    new-instance v2, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    iget-object v3, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/ErrorDialogController;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v2, v3, v1, v4}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    iput-object v2, p0, Lcom/android/server/am/ErrorDialogController;->mWaitDialog:Lcom/android/server/am/AppWaitingForDebuggerDialog;

    .line 217
    iget-object v2, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ErrorDialogController;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 226
    return-void
.end method

.method showViolationDialogs(Lcom/android/server/am/AppErrorResult;)V
    .registers 9
    .param p1, "res"    # Lcom/android/server/am/AppErrorResult;

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ErrorDialogController;->getDisplayContexts(Z)Ljava/util/List;

    move-result-object v0

    .line 202
    .local v0, "contexts":Ljava/util/List;, "Ljava/util/List<Landroid/content/Context;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    .line 203
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_12
    if-ltz v1, :cond_2b

    .line 204
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 205
    .local v2, "c":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    new-instance v4, Lcom/android/server/am/StrictModeViolationDialog;

    iget-object v5, p0, Lcom/android/server/am/ErrorDialogController;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p0, Lcom/android/server/am/ErrorDialogController;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-direct {v4, v2, v5, p1, v6}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v2    # "c":Landroid/content/Context;
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 208
    .end local v1    # "i":I
    :cond_2b
    iget-object v1, p0, Lcom/android/server/am/ErrorDialogController;->mViolationDialogs:Ljava/util/List;

    new-instance v2, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/am/ErrorDialogController$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ErrorDialogController;->scheduleForAllDialogs(Ljava/util/List;Ljava/util/function/Consumer;)V

    .line 209
    return-void
.end method
