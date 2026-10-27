.class public Lcom/android/server/am/ActiveServices$4;
.super Ljava/lang/Object;
.source "ActiveServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActiveServices;

.field public final synthetic val$backgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

.field public final synthetic val$callerFg:Z

.field public final synthetic val$callingFeatureId:Ljava/lang/String;

.field public final synthetic val$callingPackage:Ljava/lang/String;

.field public final synthetic val$callingPid:I

.field public final synthetic val$callingProcessName:Ljava/lang/String;

.field public final synthetic val$callingProcessState:I

.field public final synthetic val$callingUid:I

.field public final synthetic val$connection:Landroid/app/IServiceConnection;

.field public final synthetic val$fgRequired:Z

.field public final synthetic val$isBinding:Z

.field public final synthetic val$s:Lcom/android/server/am/ServiceRecord;

.field public final synthetic val$serviceIntent:Landroid/content/Intent;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;ILjava/lang/String;IZLandroid/app/BackgroundStartPrivileges;)V
    .registers 16

    .line 1456
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iput-object p2, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    iput-object p3, p0, Lcom/android/server/am/ActiveServices$4;->val$callingPackage:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActiveServices$4;->val$callingFeatureId:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/am/ActiveServices$4;->val$callingUid:I

    iput-object p6, p0, Lcom/android/server/am/ActiveServices$4;->val$serviceIntent:Landroid/content/Intent;

    iput-boolean p7, p0, Lcom/android/server/am/ActiveServices$4;->val$callerFg:Z

    iput p8, p0, Lcom/android/server/am/ActiveServices$4;->val$userId:I

    iput-boolean p9, p0, Lcom/android/server/am/ActiveServices$4;->val$isBinding:Z

    iput-object p10, p0, Lcom/android/server/am/ActiveServices$4;->val$connection:Landroid/app/IServiceConnection;

    iput p11, p0, Lcom/android/server/am/ActiveServices$4;->val$callingPid:I

    iput-object p12, p0, Lcom/android/server/am/ActiveServices$4;->val$callingProcessName:Ljava/lang/String;

    iput p13, p0, Lcom/android/server/am/ActiveServices$4;->val$callingProcessState:I

    iput-boolean p14, p0, Lcom/android/server/am/ActiveServices$4;->val$fgRequired:Z

    iput-object p15, p0, Lcom/android/server/am/ActiveServices$4;->val$backgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 1459
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 1460
    :try_start_8
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-static {v0}, Lcom/android/server/am/ActiveServices;->-$$Nest$fgetmPendingBringups(Lcom/android/server/am/ActiveServices;)Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1461
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1b
    move-exception v0

    move-object p0, v0

    goto/16 :goto_a8

    .line 1465
    :cond_1f
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$4;->val$callingPackage:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/ActiveServices$4;->val$callingFeatureId:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/am/ActiveServices$4;->val$callingUid:I

    iget-object v7, p0, Lcom/android/server/am/ActiveServices$4;->val$serviceIntent:Landroid/content/Intent;

    iget-boolean v8, p0, Lcom/android/server/am/ActiveServices$4;->val$callerFg:Z

    iget v9, p0, Lcom/android/server/am/ActiveServices$4;->val$userId:I

    iget-boolean v10, p0, Lcom/android/server/am/ActiveServices$4;->val$isBinding:Z

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$4;->val$connection:Landroid/app/IServiceConnection;

    invoke-static/range {v2 .. v11}, Lcom/android/server/am/ActiveServices;->-$$Nest$mrequestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 1469
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_1f .. :try_end_3a} :catchall_1b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1471
    :cond_3e
    :try_start_3e
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$4;->val$isBinding:Z
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_1b

    if-eqz v0, :cond_8a

    const/4 v2, 0x6

    .line 1472
    :try_start_43
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStateController:Lcom/android/server/am/ProcessStateController;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessStateController;->startServiceBatchSession(I)Lcom/android/server/am/psc/SyncBatchSession;

    move-result-object v3
    :try_end_4d
    .catch Landroid/os/TransactionTooLargeException; {:try_start_43 .. :try_end_4d} :catch_83
    .catchall {:try_start_43 .. :try_end_4d} :catchall_67

    .line 1474
    :try_start_4d
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v5, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$4;->val$serviceIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v6

    iget-boolean v7, p0, Lcom/android/server/am/ActiveServices$4;->val$callerFg:Z

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v12}, Lcom/android/server/am/ActiveServices;->-$$Nest$mbringUpServiceLocked(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;IZZZZZI)Ljava/lang/String;
    :try_end_61
    .catchall {:try_start_4d .. :try_end_61} :catchall_6e

    if-eqz v3, :cond_69

    .line 1480
    :try_start_63
    invoke-virtual {v3}, Lcom/android/server/am/psc/BatchSession;->close()V
    :try_end_66
    .catch Landroid/os/TransactionTooLargeException; {:try_start_63 .. :try_end_66} :catch_83
    .catchall {:try_start_63 .. :try_end_66} :catchall_67

    goto :goto_69

    :catchall_67
    move-exception v0

    goto :goto_7b

    .line 1488
    :cond_69
    :goto_69
    :try_start_69
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    :goto_6b
    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_1b

    goto :goto_86

    :catchall_6e
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_7a

    .line 1472
    :try_start_72
    invoke-virtual {v3}, Lcom/android/server/am/psc/BatchSession;->close()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_76

    goto :goto_7a

    :catchall_76
    move-exception v0

    :try_start_77
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7a
    :goto_7a
    throw v4
    :try_end_7b
    .catch Landroid/os/TransactionTooLargeException; {:try_start_77 .. :try_end_7b} :catch_83
    .catchall {:try_start_77 .. :try_end_7b} :catchall_67

    .line 1488
    :goto_7b
    :try_start_7b
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V

    .line 1490
    throw v0

    .line 1488
    :catch_83
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    goto :goto_6b

    :goto_86
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(I)V
    :try_end_89
    .catchall {:try_start_7b .. :try_end_89} :catchall_1b

    goto :goto_a3

    .line 1493
    :cond_8a
    :try_start_8a
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$4;->val$serviceIntent:Landroid/content/Intent;

    iget v5, p0, Lcom/android/server/am/ActiveServices$4;->val$callingUid:I

    iget v6, p0, Lcom/android/server/am/ActiveServices$4;->val$callingPid:I

    iget-object v7, p0, Lcom/android/server/am/ActiveServices$4;->val$callingProcessName:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/am/ActiveServices$4;->val$callingProcessState:I

    iget-boolean v9, p0, Lcom/android/server/am/ActiveServices$4;->val$fgRequired:Z

    iget-boolean v10, p0, Lcom/android/server/am/ActiveServices$4;->val$callerFg:Z

    iget-object v11, p0, Lcom/android/server/am/ActiveServices$4;->val$backgroundStartPrivileges:Landroid/app/BackgroundStartPrivileges;

    iget-object v12, p0, Lcom/android/server/am/ActiveServices$4;->val$callingPackage:Ljava/lang/String;

    invoke-static/range {v2 .. v12}, Lcom/android/server/am/ActiveServices;->-$$Nest$mstartServiceInnerLocked(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;IILjava/lang/String;IZZLandroid/app/BackgroundStartPrivileges;Ljava/lang/String;)Landroid/content/ComponentName;
    :try_end_a3
    .catch Landroid/os/TransactionTooLargeException; {:try_start_8a .. :try_end_a3} :catch_a3
    .catchall {:try_start_8a .. :try_end_a3} :catchall_1b

    .line 1500
    :catch_a3
    :goto_a3
    :try_start_a3
    monitor-exit v1
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_1b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_a8
    :try_start_a8
    monitor-exit v1
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_1b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
