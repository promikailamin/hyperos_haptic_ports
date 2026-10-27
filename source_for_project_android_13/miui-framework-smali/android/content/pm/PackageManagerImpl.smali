.class public Landroid/content/pm/PackageManagerImpl;
.super Landroid/content/pm/PackageManagerStub;
.source "PackageManagerImpl.java"


# static fields
.field private static final blacklist PKG_AUTH_MANAGER:Ljava/lang/String; = "com.lbe.security.miui"

.field private static blacklist sCtsPackage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/content/pm/PackageManagerImpl;->sCtsPackage:Ljava/util/Set;

    .line 26
    const-string v1, "com.android.cts.usepermission"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Landroid/content/pm/PackageManagerImpl;->sCtsPackage:Ljava/util/Set;

    const-string v1, "com.android.cts.permissionapp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Landroid/content/pm/PackageManagerImpl;->sCtsPackage:Ljava/util/Set;

    const-string v1, "android.permission.cts.appthatrequestpermission"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Landroid/content/pm/PackageManagerImpl;->sCtsPackage:Ljava/util/Set;

    const-string v1, "android.permission3.cts.usepermission"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Landroid/content/pm/PackageManagerImpl;->sCtsPackage:Ljava/util/Set;

    const-string v1, "android.os.cts.autorevokedummyapp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Landroid/content/pm/PackageManagerImpl;->sCtsPackage:Ljava/util/Set;

    const-string v1, "android.os.cts.autorevokeprerapp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Landroid/content/pm/PackageManagerImpl;->sCtsPackage:Ljava/util/Set;

    const-string v1, "android.os.cts.autorevokeqapp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Landroid/content/pm/PackageManagerImpl;->sCtsPackage:Ljava/util/Set;

    const-string v1, "android.os.cts.autorevokerapp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Landroid/content/pm/PackageManagerStub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getOneTimeManagerPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    :try_start_0
    invoke-virtual {p0}, Landroid/content/pm/PackageManagerImpl;->isOptimizationMode()Z

    move-result v0

    if-nez v0, :cond_f

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_10

    return-object v0

    .line 63
    :cond_f
    goto :goto_14

    .line 61
    :catch_10
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_14
    const-string v0, "com.lbe.security.miui"

    return-object v0
.end method

.method public blacklist getPermissionControllerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "defaultName"    # Ljava/lang/String;

    .line 44
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "currentPackageName":Ljava/lang/String;
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_1e

    sget-object v1, Landroid/content/pm/PackageManagerImpl;->sCtsPackage:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Landroid/content/pm/PackageManagerImpl;->isOptimizationMode()Z

    move-result v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1f

    if-nez v1, :cond_1d

    goto :goto_1e

    .line 51
    .end local v0    # "currentPackageName":Ljava/lang/String;
    :cond_1d
    goto :goto_23

    .line 47
    .restart local v0    # "currentPackageName":Ljava/lang/String;
    :cond_1e
    :goto_1e
    return-object p1

    .line 49
    .end local v0    # "currentPackageName":Ljava/lang/String;
    :catch_1f
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_23
    const-string v0, "com.lbe.security.miui"

    return-object v0
.end method

.method public blacklist isOptimizationMode()Z
    .registers 2

    .line 69
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_c

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
