.class public Lcom/android/server/appfunctions/AppFunctionManagerService;
.super Lcom/android/server/SystemService;
.source "AppFunctionManagerService.java"


# instance fields
.field public final mServiceImpl:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 13

    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 45
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    const-class v1, Landroid/app/appfunctions/AppFunctionAccessServiceInterface;

    .line 46
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/app/appfunctions/AppFunctionAccessServiceInterface;

    .line 47
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v4

    const-class v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 48
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/server/uri/UriGrantsManagerInternal;

    new-instance v6, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;

    invoke-direct {v6, p1}, Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/android/server/appfunctions/AppFunctionAgentAllowlistStorage;

    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/io/File;

    .line 53
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "appfunctions"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v9, "agent_allowlist.txt"

    invoke-direct {v1, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v1}, Lcom/android/server/appfunctions/AppFunctionAgentAllowlistStorage;-><init>(Ljava/io/File;)V

    .line 56
    invoke-static {p1}, Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;->getInstance(Landroid/content/Context;)Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;

    move-result-object v8

    .line 57
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v9

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Landroid/app/appfunctions/AppFunctionAccessServiceInterface;Landroid/app/IUriGrantsManager;Lcom/android/server/uri/UriGrantsManagerInternal;Lcom/android/server/appfunctions/AppFunctionsLoggerWrapper;Lcom/android/server/appfunctions/AppFunctionAgentAllowlistStorage;Lcom/android/server/appfunctions/MultiUserAppFunctionAccessHistory;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/server/appfunctions/AppFunctionManagerService;->mServiceImpl:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 2

    .line 69
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerService;->mServiceImpl:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->onBootPhase(I)V

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 62
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/appfunctions/AppFunctionManagerConfiguration;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 63
    const-string v0, "app_function"

    iget-object v1, p0, Lcom/android/server/appfunctions/AppFunctionManagerService;->mServiceImpl:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_11
    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 84
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerService;->mServiceImpl:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->onUserStarting(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 79
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerService;->mServiceImpl:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->onUserStopping(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method

.method public onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .registers 2

    .line 74
    iget-object p0, p0, Lcom/android/server/appfunctions/AppFunctionManagerService;->mServiceImpl:Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/appfunctions/AppFunctionManagerServiceImpl;->onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method
