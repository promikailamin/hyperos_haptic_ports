.class Lcom/android/server/pm/PackageInstallerSession$5;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageInstallerSession;->makeInstallParams(Ljava/util/concurrent/CompletableFuture;)Lcom/android/server/pm/InstallParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerSession;

.field final synthetic val$future:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/concurrent/CompletableFuture;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/pm/PackageInstallerSession;

    .line 2672
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$5;->val$future:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 2681
    const/4 v0, 0x1

    if-ne p2, v0, :cond_10

    .line 2682
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$5;->val$future:Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$InstallResult;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession$5;->this$0:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {v1, v2, p4}, Lcom/android/server/pm/PackageInstallerSession$InstallResult;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 2684
    :cond_10
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$5;->val$future:Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v1, p2, p3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 2686
    :goto_1a
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2675
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
