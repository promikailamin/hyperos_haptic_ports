.class public Landroid/inputmethodservice/InputMethodModuleManager;
.super Ljava/lang/Object;
.source "InputMethodModuleManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InputMethodModuleManager"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static blacklist getApkPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "apkPath":Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/inputmethodservice/InputMethodModuleManager;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 42
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_b

    .line 43
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 45
    :cond_b
    return-object v0
.end method

.method private static blacklist getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 52
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    :try_start_7
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_b} :catch_d

    move-object v0, v2

    .line 55
    goto :goto_26

    .line 53
    :catch_d
    move-exception v2

    .line 54
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackageInfo error. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "InputMethodModuleManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_26
    return-object v0
.end method

.method public static blacklist loadDex(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 8
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "dexPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 25
    instance-of v0, p0, Ldalvik/system/BaseDexClassLoader;

    if-eqz v0, :cond_31

    .line 27
    const/4 v0, 0x1

    :try_start_5
    const-string v1, "com.miui.inputmethod.InputMethodBottomManager"

    invoke-static {v1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_2f

    .line 28
    :catch_b
    move-exception v1

    .line 29
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 30
    .local v2, "loaderClass":Ljava/lang/Class;
    new-array v3, v0, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "addDexPath"

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 31
    .local v3, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 32
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v5

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    .end local v2    # "loaderClass":Ljava/lang/Class;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_2f
    nop

    .line 37
    return-void

    .line 35
    :cond_31
    new-instance v0, Ljava/lang/NoSuchMethodException;

    const-string v1, "addDexPath method not found."

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
