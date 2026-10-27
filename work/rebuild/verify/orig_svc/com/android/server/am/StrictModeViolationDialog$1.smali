.class public Lcom/android/server/am/StrictModeViolationDialog$1;
.super Landroid/os/Handler;
.source "StrictModeViolationDialog.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/StrictModeViolationDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/am/StrictModeViolationDialog;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 96
    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    invoke-static {v0}, Lcom/android/server/am/StrictModeViolationDialog;->-$$Nest$fgetmService(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter v0

    .line 97
    :try_start_c
    iget-object v1, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    invoke-static {v1}, Lcom/android/server/am/StrictModeViolationDialog;->-$$Nest$fgetmProc(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 98
    iget-object v1, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    invoke-static {v1}, Lcom/android/server/am/StrictModeViolationDialog;->-$$Nest$fgetmProc(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ErrorDialogController;->clearViolationDialogs()V

    goto :goto_26

    :catchall_24
    move-exception p0

    goto :goto_3b

    .line 100
    :cond_26
    :goto_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_24

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 101
    iget-object v0, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    invoke-static {v0}, Lcom/android/server/am/StrictModeViolationDialog;->-$$Nest$fgetmResult(Lcom/android/server/am/StrictModeViolationDialog;)Lcom/android/server/am/AppErrorResult;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 105
    iget-object p0, p0, Lcom/android/server/am/StrictModeViolationDialog$1;->this$0:Lcom/android/server/am/StrictModeViolationDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    .line 100
    :goto_3b
    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_24

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p0
.end method
