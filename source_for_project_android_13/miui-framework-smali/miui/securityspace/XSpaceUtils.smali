.class public Lmiui/securityspace/XSpaceUtils;
.super Ljava/lang/Object;
.source "XSpaceUtils.java"


# static fields
.field public static final blacklist EXTRA_XSPACE_ACTUAL_USERID:Ljava/lang/String; = "userId"

.field public static final blacklist EXTRA_XSPACE_CACHED_CALLING_RELATION:Ljava/lang/String; = "calling_relation"

.field public static final blacklist GMS_META_NAME:Ljava/lang/String; = "com.google.android.gms.version"

.field private static final blacklist SYSTEM_PROP_XSPACE_CREATED:Ljava/lang/String; = "persist.sys.xspace_created"

.field private static final blacklist TAG:Ljava/lang/String; = "XSpaceUtils"

.field private static final blacklist USER_XSPACE_EXTERNAL_PATH:Ljava/lang/String; = "/storage/emulated/999"

.field private static final blacklist XSPACE_BLACK_APPS_KEY:Ljava/lang/String; = "pkgName"

.field private static final blacklist XSPACE_CLOUD_CONTROL_MODULE_NAME:Ljava/lang/String; = "XSpace"

.field private static final blacklist XSPACE_WHITE_APPS_KEY:Ljava/lang/String; = "whiteList"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getXSpaceBlackApps(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    const-string v0, "XSpaceUtils"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v1, "XSpaceBlackApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 49
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "XSpace"

    const-string v4, "pkgName"

    const/4 v5, 0x0

    .line 48
    invoke-static {v2, v3, v4, v5}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "data":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 51
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 52
    .local v3, "apps":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_21
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_31

    .line 53
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .end local v4    # "i":I
    :cond_31
    goto :goto_35

    .line 56
    .end local v3    # "apps":Lorg/json/JSONArray;
    :cond_32
    sget-object v0, Lmiui/securityspace/XSpaceConstant;->XSPACE_DEFAULT_BLACK_LIST:Ljava/util/ArrayList;
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_34} :catch_3d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_34} :catch_36

    move-object v1, v0

    .line 62
    .end local v2    # "data":Ljava/lang/String;
    :goto_35
    goto :goto_44

    .line 60
    :catch_36
    move-exception v2

    .line 61
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Exception when get XSpaceBlackApps :"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44

    .line 58
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3d
    move-exception v2

    .line 59
    .local v2, "e":Lorg/json/JSONException;
    const-string v3, "JSONException when get XSpaceBlackApps :"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Lorg/json/JSONException;
    goto :goto_35

    .line 63
    :goto_44
    return-object v1
.end method

.method public static blacklist getXSpaceSupportPackages(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v0, "XSpaceSupportApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lmiui/securityspace/XSpaceUtils;->getXSpaceBlackApps(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 75
    .local v1, "XSpaceBlackApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 77
    .local v2, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    :try_start_a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v3
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_17

    move-object v2, v3

    .line 80
    goto :goto_1b

    .line 78
    :catch_17
    move-exception v3

    .line 79
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 81
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1b
    if-eqz v2, :cond_52

    .line 82
    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    .line 83
    .local v3, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 84
    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_3c

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3c

    .line 85
    goto :goto_25

    .line 87
    :cond_3c
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v6}, Lmiui/securityspace/XSpaceUtils;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-nez v6, :cond_51

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v6}, Lmiui/securityspace/XSpaceUtils;->pkgHasIcon(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 88
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_51
    goto :goto_25

    .line 92
    .end local v3    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_52
    return-object v0
.end method

.method public static blacklist isAppInXSpaceSupportList(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    if-eqz p0, :cond_12

    if-nez p1, :cond_6

    goto :goto_12

    .line 111
    :cond_6
    invoke-static {p0}, Lmiui/securityspace/XSpaceUtils;->getXSpaceSupportPackages(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 112
    .local v1, "xSpaceSupportPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_11

    .line 113
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 115
    :cond_11
    return v0

    .line 109
    .end local v1    # "xSpaceSupportPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_12
    :goto_12
    return v0
.end method

.method public static blacklist isGMSRequired(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 131
    const-string v0, "com.google.android.gms.version"

    const-string v1, "XSpaceUtils"

    const/4 v2, 0x0

    :try_start_5
    sget-object v3, Lmiui/securityspace/XSpaceConstant;->GMS_RELATED_APPS:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    sget-object v3, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_64

    .line 135
    :cond_16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 137
    .local v3, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_63

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_63

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 138
    const/4 v5, -0x1

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v5, :cond_63

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GMS_VERSION: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v6, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " required GMS"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_61} :catch_65

    .line 141
    const/4 v0, 0x1

    return v0

    .line 145
    .end local v3    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_63
    goto :goto_6b

    .line 133
    :cond_64
    :goto_64
    return v2

    .line 143
    :catch_65
    move-exception v0

    .line 144
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "Package not found : "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_6b
    return v2
.end method

.method public static blacklist isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 4
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 96
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-gtz v0, :cond_e

    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :cond_e
    :goto_e
    return v1
.end method

.method public static blacklist isXSpaceExternalPath(Ljava/lang/String;)Z
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .line 119
    const-string v0, "persist.sys.xspace_created"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 120
    return v1

    .line 122
    :cond_12
    const-string v0, "/storage/emulated/999"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 123
    const-string v0, "XSpaceUtils"

    const-string v1, "isXSpaceExternalPath: user 0 access xspace path : PASS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v0, 0x1

    return v0

    .line 126
    :cond_23
    return v1
.end method

.method public static blacklist pkgHasIcon(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 100
    const-string v0, "launcherapps"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 101
    .local v0, "launcherApps":Landroid/content/pm/LauncherApps;
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 103
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method
