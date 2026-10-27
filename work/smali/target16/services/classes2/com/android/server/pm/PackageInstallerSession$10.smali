.class public Lcom/android/server/pm/PackageInstallerSession$10;
.super Landroid/content/pm/IPackageLoadingProgressCallback$Stub;
.source "PackageInstallerSession.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 2

    .line 5963
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$10;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Landroid/content/pm/IPackageLoadingProgressCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageLoadingProgressChanged(F)V
    .registers 4

    .line 5966
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$10;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fgetmProgressLock(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5967
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$10;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-static {v1, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$fputmIncrementalProgress(Lcom/android/server/pm/PackageInstallerSession;F)V

    .line 5968
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$10;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->-$$Nest$mcomputeProgressLocked(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 5969
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0
.end method
