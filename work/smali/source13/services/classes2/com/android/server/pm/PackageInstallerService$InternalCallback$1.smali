.class Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;
.super Ljava/lang/Object;
.source "PackageInstallerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

.field final synthetic val$session:Lcom/android/server/pm/PackageInstallerSession;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Lcom/android/server/pm/PackageInstallerSession;Z)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    .line 2007
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    iput-boolean p3, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 2010
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$success:Z

    if-nez v0, :cond_1b

    .line 2011
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->-$$Nest$fgetmStagingManager(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/StagingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/StagingManager;->abortSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 2013
    :cond_1b
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->-$$Nest$fgetmSessions(Lcom/android/server/pm/PackageInstallerService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 2015
    :try_start_24
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v1

    if-nez v1, :cond_53

    .line 2020
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v1

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_47

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    .line 2021
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_45

    goto :goto_47

    :cond_45
    const/4 v1, 0x0

    goto :goto_48

    :cond_47
    :goto_47
    const/4 v1, 0x1

    .line 2022
    .local v1, "shouldRemove":Z
    :goto_48
    if-eqz v1, :cond_53

    .line 2023
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v2, v2, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v2, v3}, Lcom/android/server/pm/PackageInstallerService;->-$$Nest$mremoveActiveSession(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/PackageInstallerSession;)V

    .line 2027
    .end local v1    # "shouldRemove":Z
    :cond_53
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    iget v2, v2, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageInstallerService;->-$$Nest$mbuildAppIconFile(Lcom/android/server/pm/PackageInstallerService;I)Ljava/io/File;

    move-result-object v1

    .line 2028
    .local v1, "appIconFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 2029
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2032
    :cond_68
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v2, v2, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerService;->-$$Nest$fgetmSettingsWriteRequest(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/utils/RequestThrottle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/utils/RequestThrottle;->runNow()Z

    .line 2033
    nop

    .end local v1    # "appIconFile":Ljava/io/File;
    monitor-exit v0

    .line 2034
    return-void

    .line 2033
    :catchall_76
    move-exception v1

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_24 .. :try_end_78} :catchall_76

    throw v1
.end method
