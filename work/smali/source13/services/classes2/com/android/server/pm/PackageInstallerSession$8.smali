.class Lcom/android/server/pm/PackageInstallerSession$8;
.super Landroid/content/pm/IPackageLoadingProgressCallback$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageInstallerSession;->prepareDataLoaderLocked()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 4100
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Landroid/content/pm/IPackageLoadingProgressCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageLoadingProgressChanged(F)V
    .registers 5
    .param p1, "progress"    # F

    .line 4103
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmProgressLock(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4104
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fputmIncrementalProgress(Lcom/android/server/pm/PackageInstallerSession;F)V

    .line 4105
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$8;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mcomputeProgressLocked(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 4106
    monitor-exit v0

    .line 4107
    return-void

    .line 4106
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1
.end method
