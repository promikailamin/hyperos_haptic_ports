.class public Landroid/content/pm/HyperPackageManager;
.super Ljava/lang/Object;
.source "HyperPackageManager.java"


# static fields
.field public static final blacklist FLAG_PARENT_CONTROL_ENABLED:I = 0x1

.field public static final blacklist FLAG_PARENT_CONTROL_PACKAGE_CANCELED:I = 0x8

.field public static final blacklist FLAG_PARENT_CONTROL_PACKAGE_ENABLED:I = 0x2

.field public static final blacklist FLAG_PARENT_CONTROL_PACKAGE_PASSED:I = 0x4

.field public static final blacklist SERVICE_NAME:Ljava/lang/String; = "HyperPackageManager"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sActivityFinishMethod:Ljava/lang/reflect/Method;


# instance fields
.field private blacklist mService:Landroid/content/pm/IHyperPackageManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 30
    const-class v0, Landroid/content/pm/HyperPackageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/HyperPackageManager;->TAG:Ljava/lang/String;

    .line 35
    :try_start_8
    const-class v0, Landroid/app/Activity;

    const-string v1, "finish"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/content/pm/HyperPackageManager;->sActivityFinishMethod:Ljava/lang/reflect/Method;

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1d} :catch_1e

    .line 39
    goto :goto_26

    .line 37
    :catch_1e
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/content/pm/HyperPackageManager;->TAG:Ljava/lang/String;

    const-string v2, " HyperPackageManager static init error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_26
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/IHyperPackageManager;)V
    .registers 2
    .param p1, "service"    # Landroid/content/pm/IHyperPackageManager;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/content/pm/HyperPackageManager;->mService:Landroid/content/pm/IHyperPackageManager;

    .line 45
    return-void
.end method

.method private blacklist activityFinish(Landroid/app/Activity;)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;

    .line 157
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 158
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 159
    return-void

    .line 162
    :cond_a
    :try_start_a
    sget-object v0, Landroid/content/pm/HyperPackageManager;->sActivityFinishMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1c

    .line 163
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_25

    .line 164
    :cond_1c
    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_25

    .line 165
    invoke-virtual {p1}, Landroid/app/Activity;->finishAffinity()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_25} :catch_26

    .line 169
    :cond_25
    :goto_25
    goto :goto_2e

    .line 167
    :catch_26
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/content/pm/HyperPackageManager;->TAG:Ljava/lang/String;

    const-string v2, " FinishMethod.invoke error "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2e
    return-void
.end method

.method private blacklist activityResume(Landroid/content/Intent;)I
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 118
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/HyperPackageManager;->mService:Landroid/content/pm/IHyperPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IHyperPackageManager;->activityResume(Landroid/content/Intent;)I

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    return v0

    .line 119
    :catch_7
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist addParentalControlPass(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 126
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/HyperPackageManager;->addParentalControlPass(Ljava/lang/String;I)V

    .line 127
    return-void
.end method

.method public blacklist addParentalControlPass(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 131
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/HyperPackageManager;->mService:Landroid/content/pm/IHyperPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IHyperPackageManager;->addParentalControlPassForUser(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 135
    goto :goto_e

    .line 132
    :catch_6
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/content/pm/HyperPackageManager;->TAG:Ljava/lang/String;

    const-string v2, "Occur RemoteException when add parental control pass for user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public blacklist checkParentalControl(Landroid/app/Activity;I)V
    .registers 13
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userId"    # I

    .line 76
    if-eqz p1, :cond_78

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_78

    .line 77
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 79
    return-void

    .line 82
    :cond_1a
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "packageName":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 84
    .local v1, "targetIntent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 87
    invoke-direct {p0, v1}, Landroid/content/pm/HyperPackageManager;->activityResume(Landroid/content/Intent;)I

    move-result v9

    .line 88
    .local v9, "flag":I
    and-int/lit8 v2, v9, 0x1

    if-eqz v2, :cond_77

    and-int/lit8 v2, v9, 0x2

    if-nez v2, :cond_40

    goto :goto_77

    .line 93
    :cond_40
    and-int/lit8 v2, v9, 0x8

    if-eqz v2, :cond_4c

    .line 94
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 95
    invoke-direct {p0, p1}, Landroid/content/pm/HyperPackageManager;->activityFinish(Landroid/app/Activity;)V

    .line 96
    return-void

    .line 99
    :cond_4c
    and-int/lit8 v2, v9, 0x4

    if-eqz v2, :cond_51

    .line 100
    return-void

    .line 103
    :cond_51
    :try_start_51
    iget-object v2, p0, Landroid/content/pm/HyperPackageManager;->mService:Landroid/content/pm/IHyperPackageManager;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v3, v0

    move v7, p2

    invoke-interface/range {v2 .. v8}, Landroid/content/pm/IHyperPackageManager;->getCheckParentalIntent(Ljava/lang/String;Landroid/content/Intent;IZILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 105
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_6d

    .line 106
    const-string v3, "android.app.extra.PROTECTED_APP_TOKEN"

    .line 107
    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    .line 106
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 108
    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_6d} :catch_6e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_51 .. :try_end_6d} :catch_6e

    .line 112
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_6d
    goto :goto_78

    .line 110
    :catch_6e
    move-exception v2

    .line 111
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Landroid/content/pm/HyperPackageManager;->TAG:Ljava/lang/String;

    const-string v4, "Occur RemoteException when check parental control"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_78

    .line 90
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_77
    :goto_77
    return-void

    .line 114
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "targetIntent":Landroid/content/Intent;
    .end local v9    # "flag":I
    :cond_78
    :goto_78
    return-void
.end method

.method public blacklist clearParentalControlApps()V
    .registers 4

    .line 58
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/HyperPackageManager;->mService:Landroid/content/pm/IHyperPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IHyperPackageManager;->clearParentalControlApps()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 62
    goto :goto_e

    .line 59
    :catch_6
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/content/pm/HyperPackageManager;->TAG:Ljava/lang/String;

    const-string v2, "Occur RemoteException when clear parental control apps"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public blacklist finishParentalControl(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 140
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/HyperPackageManager;->finishParentalControl(Ljava/lang/String;I)V

    .line 141
    return-void
.end method

.method public blacklist finishParentalControl(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 146
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/HyperPackageManager;->mService:Landroid/content/pm/IHyperPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IHyperPackageManager;->finishParentalControl(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 150
    goto :goto_e

    .line 147
    :catch_6
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/content/pm/HyperPackageManager;->TAG:Ljava/lang/String;

    const-string v2, "Occur RemoteException when finish parental control by user"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method

.method public blacklist getParentControlAppList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/HyperPackageManager;->mService:Landroid/content/pm/IHyperPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IHyperPackageManager;->getParentControlAppList()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 68
    :catch_7
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/content/pm/HyperPackageManager;->TAG:Ljava/lang/String;

    const-string v2, "Occur RemoteException when get parent control app list"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist updateParentalControlApps(Ljava/util/List;Z)V
    .registers 6
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 49
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/HyperPackageManager;->mService:Landroid/content/pm/IHyperPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IHyperPackageManager;->updateParentalControlApps(Ljava/util/List;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 53
    goto :goto_e

    .line 50
    :catch_6
    move-exception v0

    .line 51
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/content/pm/HyperPackageManager;->TAG:Ljava/lang/String;

    const-string v2, "Occur RemoteException when update parental control apps"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_e
    return-void
.end method
