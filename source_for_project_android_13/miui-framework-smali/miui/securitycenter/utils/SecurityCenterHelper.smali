.class public Lmiui/securitycenter/utils/SecurityCenterHelper;
.super Ljava/lang/Object;
.source "SecurityCenterHelper.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static whitelist collapseStatusPanels(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 67
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 68
    .local v0, "sbm":Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 69
    return-void
.end method

.method public static whitelist forceStopPackage(Landroid/app/ActivityManager;Ljava/lang/String;)V
    .registers 6
    .param p0, "am"    # Landroid/app/ActivityManager;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 47
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 49
    :try_start_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_a

    .line 50
    return-void

    .line 52
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_11

    .line 53
    return-void

    .line 55
    :cond_11
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 56
    .local v0, "packageManager":Landroid/content/pm/IPackageManager;
    const-wide/16 v1, 0x0

    const/16 v3, 0x3e7

    invoke-interface {v0, p1, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 57
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_26

    .line 58
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 59
    .local v2, "mgr":Landroid/app/IActivityManager;
    invoke-interface {v2, p1, v3}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_26} :catch_27

    .line 63
    .end local v0    # "packageManager":Landroid/content/pm/IPackageManager;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "mgr":Landroid/app/IActivityManager;
    :cond_26
    goto :goto_2b

    .line 61
    :catch_27
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2b
    return-void
.end method

.method public static whitelist getApnsXml(Landroid/content/Context;)Landroid/content/res/XmlResourceParser;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 39
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x1170000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 40
    :catch_b
    move-exception v0

    .line 41
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 43
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist getBrightnessDimInt(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 111
    const v1, 0x110b0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 110
    return v0
.end method

.method public static whitelist getLabel(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    .local v0, "pRes":Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 83
    .local v1, "assmgr":Landroid/content/res/AssetManager;
    const/4 v2, 0x0

    .line 85
    .local v2, "label":Ljava/lang/CharSequence;
    :try_start_6
    new-instance v3, Landroid/content/res/AssetManager;

    invoke-direct {v3}, Landroid/content/res/AssetManager;-><init>()V

    move-object v1, v3

    .line 86
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 87
    new-instance v3, Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-direct {v3, v1, v4, v5}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 89
    .local v3, "res":Landroid/content/res/Resources;
    iget v4, p2, Landroid/content/pm/ApplicationInfo;->labelRes:I
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1e} :catch_40
    .catchall {:try_start_6 .. :try_end_1e} :catchall_3e

    if-eqz v4, :cond_29

    .line 91
    :try_start_20
    iget v4, p2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4
    :try_end_26
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_20 .. :try_end_26} :catch_28
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_26} :catch_40
    .catchall {:try_start_20 .. :try_end_26} :catchall_3e

    move-object v2, v4

    .line 93
    goto :goto_29

    .line 92
    :catch_28
    move-exception v4

    .line 95
    :cond_29
    :goto_29
    if-nez v2, :cond_35

    .line 96
    :try_start_2b
    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v4, :cond_32

    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    goto :goto_34

    :cond_32
    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_34
    move-object v2, v4

    .line 98
    :cond_35
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_39} :catch_40
    .catchall {:try_start_2b .. :try_end_39} :catchall_3e

    .line 102
    nop

    .line 103
    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    .line 98
    return-object v4

    .line 102
    .end local v3    # "res":Landroid/content/res/Resources;
    :catchall_3e
    move-exception v3

    goto :goto_51

    .line 99
    :catch_40
    move-exception v3

    .line 100
    .local v3, "e":Ljava/lang/Exception;
    :try_start_41
    const-string v4, "getLabel"

    const-string v5, "getLabel error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_3e

    .line 102
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_4e

    .line 103
    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    .line 106
    :cond_4e
    const-string v3, ""

    return-object v3

    .line 102
    :goto_51
    if-eqz v1, :cond_56

    .line 103
    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    .line 105
    :cond_56
    throw v3
.end method

.method public static whitelist getProcessPss([I)[J
    .registers 2
    .param p0, "pids"    # [I

    .line 73
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getProcessPss([I)[J

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 74
    :catch_9
    move-exception v0

    .line 75
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 77
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static whitelist getUserAll()Landroid/os/UserHandle;
    .registers 1

    .line 26
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    return-object v0
.end method

.method public static whitelist getUserId(I)I
    .registers 2
    .param p0, "uid"    # I

    .line 30
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static whitelist isAutomaticBrightnessAvailable(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 116
    const v1, 0x11050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 115
    return v0
.end method

.method public static whitelist packageHasActiveAdmins(Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z
    .registers 3
    .param p0, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 34
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
