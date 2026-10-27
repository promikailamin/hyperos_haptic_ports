.class public Lmiui/security/AppRunningControlManager;
.super Ljava/lang/Object;
.source "AppRunningControlManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AppRunningControlManager"

.field private static blacklist sInstance:Lmiui/security/AppRunningControlManager;


# instance fields
.field private blacklist mService:Lmiui/security/IAppRunningControlManager;


# direct methods
.method private constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lmiui/security/IAppRunningControlManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/IAppRunningControlManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/security/AppRunningControlManager;->mService:Lmiui/security/IAppRunningControlManager;

    .line 22
    return-void
.end method

.method public static blacklist getBlockActivityIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/content/Intent;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "fromActivity"    # Z
    .param p4, "requestCode"    # I

    .line 71
    invoke-static {}, Lmiui/security/AppRunningControlManager;->getInstance()Lmiui/security/AppRunningControlManager;

    move-result-object v6

    .line 72
    .local v6, "appRunningControlManager":Lmiui/security/AppRunningControlManager;
    const/4 v7, 0x0

    .line 73
    .local v7, "result":Landroid/content/Intent;
    if-eqz v6, :cond_14

    .line 74
    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lmiui/security/AppRunningControlManager;->getBlockActivityIntentInner(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/content/Intent;

    move-result-object v7

    .line 75
    if-eqz v7, :cond_14

    .line 76
    return-object v7

    .line 79
    :cond_14
    return-object v7
.end method

.method private blacklist getBlockActivityIntentInner(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/content/Intent;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "fromActivity"    # Z
    .param p5, "requestCode"    # I

    .line 52
    iget-object v0, p0, Lmiui/security/AppRunningControlManager;->mService:Lmiui/security/IAppRunningControlManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 54
    :cond_6
    :try_start_6
    invoke-interface {v0, p2, p3, p4, p5}, Lmiui/security/IAppRunningControlManager;->getBlockActivityIntent(Ljava/lang/String;Landroid/content/Intent;ZI)Landroid/content/Intent;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    .line 55
    :catch_b
    move-exception v0

    .line 56
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AppRunningControlManager"

    const-string v3, "Remote service has died"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    return-object v1
.end method

.method public static blacklist getInstance()Lmiui/security/AppRunningControlManager;
    .registers 5

    .line 25
    sget-object v0, Lmiui/security/AppRunningControlManager;->sInstance:Lmiui/security/AppRunningControlManager;

    if-nez v0, :cond_32

    .line 27
    :try_start_4
    const-string v0, "security"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/security/ISecurityManager$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityManager;

    move-result-object v0

    .line 28
    .local v0, "securityManager":Lmiui/security/ISecurityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_13

    move-object v2, v1

    goto :goto_17

    :cond_13
    invoke-interface {v0}, Lmiui/security/ISecurityManager;->getAppRunningControlIBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 29
    .local v2, "greenKidBinder":Landroid/os/IBinder;
    :goto_17
    if-nez v2, :cond_21

    .line 30
    const-string v3, "AppRunningControlManager"

    const-string v4, "AppRunningControlIBinder is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-object v1

    .line 33
    :cond_21
    new-instance v1, Lmiui/security/AppRunningControlManager;

    invoke-direct {v1, v2}, Lmiui/security/AppRunningControlManager;-><init>(Landroid/os/IBinder;)V

    sput-object v1, Lmiui/security/AppRunningControlManager;->sInstance:Lmiui/security/AppRunningControlManager;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_28} :catch_29

    .line 36
    .end local v0    # "securityManager":Lmiui/security/ISecurityManager;
    .end local v2    # "greenKidBinder":Landroid/os/IBinder;
    goto :goto_32

    .line 34
    :catch_29
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "system service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 38
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_32
    :goto_32
    sget-object v0, Lmiui/security/AppRunningControlManager;->sInstance:Lmiui/security/AppRunningControlManager;

    return-object v0
.end method

.method public static blacklist matchRule(Ljava/lang/String;I)Z
    .registers 4
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "wakeType"    # I

    .line 90
    invoke-static {}, Lmiui/security/AppRunningControlManager;->getInstance()Lmiui/security/AppRunningControlManager;

    move-result-object v0

    .line 91
    .local v0, "appRunningControlManager":Lmiui/security/AppRunningControlManager;
    if-eqz v0, :cond_b

    .line 92
    invoke-direct {v0, p0, p1}, Lmiui/security/AppRunningControlManager;->matchRuleInner(Ljava/lang/String;I)Z

    move-result v1

    return v1

    .line 94
    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist matchRuleInner(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "wakeType"    # I

    .line 98
    iget-object v0, p0, Lmiui/security/AppRunningControlManager;->mService:Lmiui/security/IAppRunningControlManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 100
    :cond_6
    :try_start_6
    invoke-interface {v0, p1, p2}, Lmiui/security/IAppRunningControlManager;->matchRule(Ljava/lang/String;I)Z

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return v0

    .line 101
    :catch_b
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AppRunningControlManager"

    const-string v3, "Remote service has died"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .end local v0    # "e":Landroid/os/RemoteException;
    return v1
.end method


# virtual methods
.method public blacklist getNotDisallowList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lmiui/security/AppRunningControlManager;->mService:Lmiui/security/IAppRunningControlManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 113
    :cond_6
    :try_start_6
    invoke-interface {v0}, Lmiui/security/IAppRunningControlManager;->getNotDisallowList()Ljava/util/List;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    .line 114
    :catch_b
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "AppRunningControlManager"

    const-string v3, "Remote service has died"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    return-object v1
.end method

.method public blacklist setBlackListEnable(Z)V
    .registers 5
    .param p1, "isEnable"    # Z

    .line 62
    iget-object v0, p0, Lmiui/security/AppRunningControlManager;->mService:Lmiui/security/IAppRunningControlManager;

    if-nez v0, :cond_5

    return-void

    .line 64
    :cond_5
    :try_start_5
    invoke-interface {v0, p1}, Lmiui/security/IAppRunningControlManager;->setBlackListEnable(Z)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 67
    goto :goto_11

    .line 65
    :catch_9
    move-exception v0

    .line 66
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AppRunningControlManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

.method public blacklist setDisallowRunningList(Ljava/util/List;Landroid/content/Intent;)V
    .registers 6
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 42
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lmiui/security/AppRunningControlManager;->mService:Lmiui/security/IAppRunningControlManager;

    if-nez v0, :cond_5

    return-void

    .line 44
    :cond_5
    :try_start_5
    invoke-interface {v0, p1, p2}, Lmiui/security/IAppRunningControlManager;->setDisallowRunningList(Ljava/util/List;Landroid/content/Intent;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_a

    .line 48
    nop

    .line 49
    return-void

    .line 45
    :catch_a
    move-exception v0

    .line 46
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "AppRunningControlManager"

    const-string v2, "Remote service has died"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    return-void
.end method
