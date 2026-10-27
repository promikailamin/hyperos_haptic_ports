.class public abstract Landroid/content/pm/dependencyinstaller/DependencyInstallerService;
.super Landroid/app/Service;
.source "DependencyInstallerService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private blacklist mBinder:Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 61
    iget-object p1, p0, Landroid/content/pm/dependencyinstaller/DependencyInstallerService;->mBinder:Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;

    if-nez p1, :cond_b

    .line 62
    new-instance p1, Landroid/content/pm/dependencyinstaller/DependencyInstallerService$1;

    invoke-direct {p1, p0}, Landroid/content/pm/dependencyinstaller/DependencyInstallerService$1;-><init>(Landroid/content/pm/dependencyinstaller/DependencyInstallerService;)V

    iput-object p1, p0, Landroid/content/pm/dependencyinstaller/DependencyInstallerService;->mBinder:Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;

    .line 71
    :cond_b
    iget-object p1, p0, Landroid/content/pm/dependencyinstaller/DependencyInstallerService;->mBinder:Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;

    invoke-interface {p1}, Landroid/content/pm/dependencyinstaller/IDependencyInstallerService;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist onDependenciesRequired(Ljava/util/List;Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;",
            "Landroid/content/pm/dependencyinstaller/DependencyInstallerCallback;",
            ")V"
        }
    .end annotation
.end method
