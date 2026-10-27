.class Lcom/android/server/am/AppNotRespondingDialog$1;
.super Landroid/os/Handler;
.source "AppNotRespondingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppNotRespondingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppNotRespondingDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppNotRespondingDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/am/AppNotRespondingDialog;

    .line 153
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, "appErrorIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-virtual {v1}, Lcom/android/server/am/AppNotRespondingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x13d

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 160
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_b0

    goto/16 :goto_96

    .line 168
    :pswitch_15
    iget-object v1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {v1}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmService(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    monitor-enter v1

    :try_start_1c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 169
    iget-object v2, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {v2}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmProc(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 170
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 172
    .local v3, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3e

    .line 173
    iget-object v4, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {v4}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmService(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    .line 173
    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/android/server/am/AppErrors;->createAppErrorIntentLOSP(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v4

    move-object v0, v4

    .line 177
    :cond_3e
    iget-object v4, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {v4}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmService(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v4
    :try_end_47
    .catchall {:try_start_1c .. :try_end_47} :catchall_80

    :try_start_47
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 178
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/am/ProcessErrorStateRecord;->setNotResponding(Z)V

    .line 182
    invoke-virtual {v3}, Lcom/android/server/am/ProcessErrorStateRecord;->getDialogController()Lcom/android/server/am/ErrorDialogController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ErrorDialogController;->clearAnrDialogs()V

    .line 183
    monitor-exit v4
    :try_end_56
    .catchall {:try_start_47 .. :try_end_56} :catchall_7a

    :try_start_56
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 184
    iget-object v4, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {v4}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmService(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 186
    iget-object v4, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {v4}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmService(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    iget-object v5, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {v5}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmData(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/AppNotRespondingDialog$Data;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ActivityManagerInternal;->rescheduleAnrDialog(Ljava/lang/Object;)V

    .line 187
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_56 .. :try_end_76} :catchall_80

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_96

    .line 183
    .restart local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v3    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    :catchall_7a
    move-exception v5

    :try_start_7b
    monitor-exit v4
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    :try_start_7c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .end local v0    # "appErrorIntent":Landroid/content/Intent;
    .end local p0    # "this":Lcom/android/server/am/AppNotRespondingDialog$1;
    .end local p1    # "msg":Landroid/os/Message;
    throw v5

    .line 187
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .restart local v0    # "appErrorIntent":Landroid/content/Intent;
    .restart local p0    # "this":Lcom/android/server/am/AppNotRespondingDialog$1;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_80
    move-exception v2

    monitor-exit v1
    :try_end_82
    .catchall {:try_start_7c .. :try_end_82} :catchall_80

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 163
    :pswitch_86
    iget-object v1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {v1}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmService(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {v2}, Lcom/android/server/am/AppNotRespondingDialog;->-$$Nest$fgetmProc(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;)V

    .line 164
    nop

    .line 191
    :goto_96
    if-eqz v0, :cond_aa

    .line 193
    :try_start_98
    iget-object v1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-virtual {v1}, Lcom/android/server/am/AppNotRespondingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_98 .. :try_end_a1} :catch_a2

    .line 196
    goto :goto_aa

    .line 194
    :catch_a2
    move-exception v1

    .line 195
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "AppNotRespondingDialog"

    const-string v3, "bug report receiver dissappeared"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_aa
    :goto_aa
    iget-object v1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-virtual {v1}, Lcom/android/server/am/AppNotRespondingDialog;->dismiss()V

    .line 200
    return-void

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_86
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method
