.class Lcom/android/server/am/ActivityManagerService$6;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$appInfo:Landroid/content/pm/ApplicationInfo;

.field final synthetic val$isInstantApp:Z

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$pid:I

.field final synthetic val$resolvedUserId:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;IZIILandroid/content/pm/IPackageDataObserver;)V
    .registers 8
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 3962
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$6;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$6;->val$resolvedUserId:I

    iput-boolean p4, p0, Lcom/android/server/am/ActivityManagerService$6;->val$isInstantApp:Z

    iput p5, p0, Lcom/android/server/am/ActivityManagerService$6;->val$uid:I

    iput p6, p0, Lcom/android/server/am/ActivityManagerService$6;->val$pid:I

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$6;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .registers 30
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3966
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$6;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_24

    .line 3967
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3968
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService$6;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, v2, v5}, Lcom/android/server/am/ActivityManagerService;->-$$Nest$mfinishForceStopPackageLocked(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;I)V

    .line 3969
    monitor-exit v4
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_24

    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit v4
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 3972
    :cond_24
    :goto_24
    if-eqz v3, :cond_90

    .line 3973
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.PACKAGE_DATA_CLEARED"

    const-string/jumbo v5, "package"

    .line 3974
    const/4 v6, 0x0

    invoke-static {v5, v2, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3975
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v4, 0x1000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3976
    const-string v4, "android.intent.extra.UID"

    .line 3977
    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService$6;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_43

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_44

    :cond_43
    const/4 v5, -0x1

    .line 3976
    :goto_44
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3978
    const-string v4, "android.intent.extra.user_handle"

    iget v5, v1, Lcom/android/server/am/ActivityManagerService$6;->val$resolvedUserId:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3979
    iget-boolean v4, v1, Lcom/android/server/am/ActivityManagerService$6;->val$isInstantApp:Z

    if-eqz v4, :cond_57

    .line 3980
    const-string v4, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3982
    :cond_57
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget v5, v1, Lcom/android/server/am/ActivityManagerService$6;->val$resolvedUserId:I

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManagerInternal;->getVisibilityAllowList(Ljava/lang/String;I)[I

    move-result-object v4

    .line 3985
    .local v4, "visibilityAllowList":[I
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string v8, "android"

    const/4 v9, 0x0

    const/16 v10, 0x3e8

    iget v11, v1, Lcom/android/server/am/ActivityManagerService$6;->val$uid:I

    iget v12, v1, Lcom/android/server/am/ActivityManagerService$6;->val$pid:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 3988
    iget-boolean v5, v1, Lcom/android/server/am/ActivityManagerService$6;->val$isInstantApp:Z

    if-eqz v5, :cond_7a

    const-string v6, "android.permission.ACCESS_INSTANT_APPS"

    :cond_7a
    move-object/from16 v19, v6

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    iget v5, v1, Lcom/android/server/am/ActivityManagerService$6;->val$resolvedUserId:I

    move/from16 v23, v5

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 3985
    move-object v13, v0

    move-object/from16 v26, v4

    invoke-virtual/range {v7 .. v26}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZLandroid/os/IBinder;[I)I

    .line 3994
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v4    # "visibilityAllowList":[I
    :cond_90
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$6;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v0, :cond_97

    .line 3995
    invoke-interface {v0, v2, v3}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V

    .line 3997
    :cond_97
    return-void
.end method
