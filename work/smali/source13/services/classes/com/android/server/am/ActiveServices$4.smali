.class Lcom/android/server/am/ActiveServices$4;
.super Ljava/lang/Object;
.source "ActiveServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActiveServices;->deferServiceBringupIfFrozenLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIZZIZLandroid/os/IBinder;ZLandroid/app/IServiceConnection;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActiveServices;

.field final synthetic val$allowBackgroundActivityStarts:Z

.field final synthetic val$backgroundActivityStartsToken:Landroid/os/IBinder;

.field final synthetic val$callerFg:Z

.field final synthetic val$callingFeatureId:Ljava/lang/String;

.field final synthetic val$callingPackage:Ljava/lang/String;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$connection:Landroid/app/IServiceConnection;

.field final synthetic val$fgRequired:Z

.field final synthetic val$isBinding:Z

.field final synthetic val$s:Lcom/android/server/am/ServiceRecord;

.field final synthetic val$serviceIntent:Landroid/content/Intent;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;IZZLandroid/os/IBinder;)V
    .registers 15
    .param p1, "this$0"    # Lcom/android/server/am/ActiveServices;

    .line 1137
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

    iput-boolean p12, p0, Lcom/android/server/am/ActiveServices$4;->val$fgRequired:Z

    iput-boolean p13, p0, Lcom/android/server/am/ActiveServices$4;->val$allowBackgroundActivityStarts:Z

    iput-object p14, p0, Lcom/android/server/am/ActiveServices$4;->val$backgroundActivityStartsToken:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 1140
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1141
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-static {v1}, Lcom/android/server/am/ActiveServices;->-$$Nest$fgetmPendingBringups(Lcom/android/server/am/ActiveServices;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1142
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_8e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1146
    :cond_1b
    :try_start_1b
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

    move-result v1

    if-nez v1, :cond_3a

    .line 1150
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_1b .. :try_end_36} :catchall_8e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1152
    :cond_3a
    :try_start_3a
    iget-boolean v1, p0, Lcom/android/server/am/ActiveServices$4;->val$isBinding:Z
    :try_end_3c
    .catchall {:try_start_3a .. :try_end_3c} :catchall_8e

    if-eqz v1, :cond_72

    .line 1154
    :try_start_3e
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices$4;->val$serviceIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$4;->val$callerFg:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static/range {v2 .. v9}, Lcom/android/server/am/ActiveServices;->-$$Nest$mbringUpServiceLocked(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;IZZZZZ)Ljava/lang/String;
    :try_end_51
    .catch Landroid/os/TransactionTooLargeException; {:try_start_3e .. :try_end_51} :catch_66
    .catchall {:try_start_3e .. :try_end_51} :catchall_59

    .line 1163
    :try_start_51
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "updateOomAdj_startService"

    goto :goto_6e

    :catchall_59
    move-exception v1

    iget-object v2, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v2, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "updateOomAdj_startService"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 1165
    nop

    .end local p0    # "this":Lcom/android/server/am/ActiveServices$4;
    throw v1

    .line 1159
    .restart local p0    # "this":Lcom/android/server/am/ActiveServices$4;
    :catch_66
    move-exception v1

    .line 1163
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "updateOomAdj_startService"

    :goto_6e
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_51 .. :try_end_71} :catchall_8e

    .line 1165
    goto :goto_89

    .line 1168
    :cond_72
    :try_start_72
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$4;->val$serviceIntent:Landroid/content/Intent;

    iget v5, p0, Lcom/android/server/am/ActiveServices$4;->val$callingUid:I

    iget v6, p0, Lcom/android/server/am/ActiveServices$4;->val$callingPid:I

    iget-boolean v7, p0, Lcom/android/server/am/ActiveServices$4;->val$fgRequired:Z

    iget-boolean v8, p0, Lcom/android/server/am/ActiveServices$4;->val$callerFg:Z

    iget-boolean v9, p0, Lcom/android/server/am/ActiveServices$4;->val$allowBackgroundActivityStarts:Z

    iget-object v10, p0, Lcom/android/server/am/ActiveServices$4;->val$backgroundActivityStartsToken:Landroid/os/IBinder;

    invoke-static/range {v2 .. v10}, Lcom/android/server/am/ActiveServices;->-$$Nest$mstartServiceInnerLocked(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;IIZZZLandroid/os/IBinder;)Landroid/content/ComponentName;
    :try_end_87
    .catch Landroid/os/TransactionTooLargeException; {:try_start_72 .. :try_end_87} :catch_88
    .catchall {:try_start_72 .. :try_end_87} :catchall_8e

    .line 1173
    goto :goto_89

    .line 1171
    :catch_88
    move-exception v1

    .line 1175
    :goto_89
    :try_start_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_8e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1176
    return-void

    .line 1175
    :catchall_8e
    move-exception v1

    :try_start_8f
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
