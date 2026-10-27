.class public final Lcom/android/commands/pm/PmInjector;
.super Ljava/lang/Object;
.source "PmInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/pm/PmInjector$InstallObserver;
    }
.end annotation


# static fields
.field private static final blacklist PM:Ljava/lang/String; = "Pm"

.field public static final blacklist STATUS_INVALID_APK:I = 0x3

.field public static final blacklist STATUS_REJECT:I = -0x1

.field public static final blacklist STATUS_SUCESS:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDefaultUserId()I
    .registers 4

    .line 126
    :try_start_0
    const-string v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v0

    .line 127
    .local v0, "um":Landroid/os/IUserManager;
    const/4 v1, 0x0

    invoke-interface {v0, v1, v1, v1}, Landroid/os/IUserManager;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 128
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-static {v2}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/content/pm/UserInfo;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 129
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_29} :catch_2c

    return v1

    .line 131
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_2a
    goto :goto_13

    .line 134
    .end local v0    # "um":Landroid/os/IUserManager;
    :cond_2b
    goto :goto_2d

    .line 132
    :catch_2c
    move-exception v0

    .line 135
    :goto_2d
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist installVerify(I)I
    .registers 16
    .param p0, "sessionId"    # I

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.securitycenter"

    const-string v2, "com.miui.permcenter.install.AdbInstallActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    new-instance v1, Lcom/android/commands/pm/PmInjector$InstallObserver;

    invoke-direct {v1}, Lcom/android/commands/pm/PmInjector$InstallObserver;-><init>()V

    .line 59
    .local v1, "activityObs":Lcom/android/commands/pm/PmInjector$InstallObserver;
    const-string v2, "observer"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 60
    const-string v2, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    const/high16 v2, 0x18000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 63
    const/4 v13, -0x1

    const/4 v14, 0x2

    :try_start_24
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    .line 64
    .local v2, "am":Landroid/app/IActivityManager;
    const/4 v3, 0x0

    const-string v4, "pm"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v0

    invoke-interface/range {v2 .. v12}, Landroid/app/IActivityManager;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v3

    .line 66
    .local v3, "res":I
    if-eqz v3, :cond_5f

    .line 67
    const-string v4, "Pm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start PackageInstallerActivity failed ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Lcom/android/commands/pm/PmInjector;->isSecurityCenterExist()Z

    move-result v4
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_5b} :catch_b6

    if-nez v4, :cond_5e

    return v14

    .line 69
    :cond_5e
    return v13

    .line 76
    .end local v2    # "am":Landroid/app/IActivityManager;
    .end local v3    # "res":I
    :cond_5f
    nop

    .line 79
    monitor-enter v1

    .line 80
    :goto_61
    :try_start_61
    iget-boolean v2, v1, Lcom/android/commands/pm/PmInjector$InstallObserver;->finished:Z
    :try_end_63
    .catchall {:try_start_61 .. :try_end_63} :catchall_b3

    if-nez v2, :cond_71

    .line 82
    const-wide/32 v2, 0xea60

    :try_start_68
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 83
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/commands/pm/PmInjector$InstallObserver;->finished:Z
    :try_end_6e
    .catch Ljava/lang/InterruptedException; {:try_start_68 .. :try_end_6e} :catch_6f
    .catchall {:try_start_68 .. :try_end_6e} :catchall_b3

    goto :goto_70

    .line 84
    :catch_6f
    move-exception v2

    .line 85
    :goto_70
    goto :goto_61

    .line 87
    :cond_71
    :try_start_71
    iget v2, v1, Lcom/android/commands/pm/PmInjector$InstallObserver;->result:I

    if-ne v2, v13, :cond_77

    .line 88
    monitor-exit v1

    return v14

    .line 90
    :cond_77
    iget-object v2, v1, Lcom/android/commands/pm/PmInjector$InstallObserver;->msg:Ljava/lang/String;

    .line 91
    .local v2, "msg":Ljava/lang/String;
    if-nez v2, :cond_7e

    .line 92
    const-string v3, "Failure [INSTALL_CANCELED_BY_USER]"

    move-object v2, v3

    .line 94
    :cond_7e
    const-string v3, "Pm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "install msg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v3, "Invalid apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a9

    .line 96
    invoke-static {}, Lcom/android/commands/pm/PmInjector;->isSecurityCenterExist()Z

    move-result v3

    if-nez v3, :cond_a6

    monitor-exit v1

    return v14

    .line 97
    :cond_a6
    const/4 v3, 0x3

    monitor-exit v1

    return v3

    .line 99
    :cond_a9
    invoke-static {}, Lcom/android/commands/pm/PmInjector;->isSecurityCenterExist()Z

    move-result v3

    if-nez v3, :cond_b1

    monitor-exit v1

    return v14

    .line 100
    :cond_b1
    monitor-exit v1

    return v13

    .line 102
    .end local v2    # "msg":Ljava/lang/String;
    :catchall_b3
    move-exception v2

    monitor-exit v1
    :try_end_b5
    .catchall {:try_start_71 .. :try_end_b5} :catchall_b3

    throw v2

    .line 71
    :catch_b6
    move-exception v2

    .line 72
    .local v2, "e1":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 73
    const-string v3, "Pm"

    const-string v4, "start PackageInstallerActivity RemoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Lcom/android/commands/pm/PmInjector;->isSecurityCenterExist()Z

    move-result v3

    if-nez v3, :cond_c8

    return v14

    .line 75
    :cond_c8
    return v13
.end method

.method public static blacklist isSecurityCenterExist()Z
    .registers 7

    .line 139
    const-string v0, "Pm"

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_a

    .line 140
    return v2

    .line 143
    :cond_a
    :try_start_a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v3, "com.miui.securitycenter"

    const-wide/16 v4, 0x1

    .line 144
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 143
    invoke-interface {v1, v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 145
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    const-string v3, "checkSecurityCenterInstalled:getPackageInfo:true"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_1f} :catch_23

    .line 146
    if-eqz v1, :cond_22

    .line 147
    return v2

    .line 151
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_22
    goto :goto_3e

    .line 149
    :catch_23
    move-exception v1

    .line 150
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackageInfo error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3e
    const-string v1, "checkSecurityCenterInstalled:Exception:false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist statusToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "status"    # I

    .line 36
    const-string v0, ""

    .line 37
    .local v0, "msg":Ljava/lang/String;
    packed-switch p0, :pswitch_data_10

    :pswitch_5
    goto :goto_f

    .line 45
    :pswitch_6
    const-string v0, "Invalid apk"

    .line 46
    goto :goto_f

    .line 42
    :pswitch_9
    const-string v0, "Sucess"

    .line 43
    goto :goto_f

    .line 39
    :pswitch_c
    const-string v0, "Install canceled by user"

    .line 40
    nop

    .line 51
    :goto_f
    return-object v0

    :pswitch_data_10
    .packed-switch -0x1
        :pswitch_c
        :pswitch_5
        :pswitch_5
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
