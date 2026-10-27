.class public Landroid/app/ApplicationImpl;
.super Landroid/app/ApplicationStub;
.source "ApplicationImpl.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Landroid/app/ApplicationStub;-><init>()V

    return-void
.end method

.method private blacklist loadMiuiHookTest(Landroid/app/Application;)V
    .registers 17
    .param p1, "application"    # Landroid/app/Application;

    .line 47
    const-string v1, ""

    :try_start_2
    sget-boolean v0, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_93

    const-string v0, "test"

    const-string v2, "persist.sys.miui_hook_test"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 48
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/framework/miui_hook_test.dex"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "dex":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1f} :catch_94

    const-string v3, "onCreateCallBack"

    const-string v4, "android.app.ApplicationHook"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_4c

    .line 50
    :try_start_28
    new-instance v2, Ldalvik/system/DexClassLoader;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v2, v8, v7, v7, v9}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 51
    .local v2, "loader":Ldalvik/system/DexClassLoader;
    invoke-virtual {v2, v4}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 52
    .local v4, "clz":Ljava/lang/Class;
    new-array v8, v5, [Ljava/lang/Class;

    const-class v9, Landroid/app/Application;

    aput-object v9, v8, v6

    invoke-virtual {v4, v3, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v3, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    nop

    .end local v2    # "loader":Ldalvik/system/DexClassLoader;
    .end local v4    # "clz":Ljava/lang/Class;
    goto :goto_93

    .line 54
    :cond_4c
    const-string v2, "persist.sys.miui_hook_pkg"

    const-string v8, "miui.hook.test"

    invoke-static {v2, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v2, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 56
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .local v9, "zipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v10, "libPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v7, v5, v8, v9, v10}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;ZLandroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;)V

    .line 59
    new-instance v11, Ldalvik/system/PathClassLoader;

    sget-object v12, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 60
    invoke-static {v12, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 61
    invoke-static {v13, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    .line 62
    invoke-virtual/range {p1 .. p1}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    invoke-direct {v11, v12, v13, v14}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 63
    .local v11, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {v11, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 64
    .restart local v4    # "clz":Ljava/lang/Class;
    new-array v12, v5, [Ljava/lang/Class;

    const-class v13, Landroid/app/Application;

    aput-object v13, v12, v6

    invoke-virtual {v4, v3, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v3, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_93} :catch_94

    .line 69
    .end local v0    # "dex":Ljava/io/File;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "clz":Ljava/lang/Class;
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "zipPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "libPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "classLoader":Ljava/lang/ClassLoader;
    :cond_93
    :goto_93
    goto :goto_9a

    .line 67
    :catch_94
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ApplicationImpl"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_9a
    return-void
.end method


# virtual methods
.method blacklist onCreate(Landroid/app/Application;)V
    .registers 4
    .param p1, "application"    # Landroid/app/Application;

    .line 35
    invoke-static {p1}, Lmiui/util/TypefaceUtils;->recordApplication(Landroid/app/Application;)V

    .line 37
    :try_start_3
    invoke-static {}, Lmiui/mqsas/sdk/ApplicationInfoStorage;->getInstance()Lmiui/mqsas/sdk/ApplicationInfoStorage;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/mqsas/sdk/ApplicationInfoStorage;->init(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/mqsas/sdk/HighMemoryManager;->init(Landroid/content/Context;)V

    .line 39
    invoke-static {p1}, Lcom/miui/leakcanary/AppWatcher;->init(Landroid/app/Application;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_19

    .line 41
    goto :goto_1a

    .line 40
    :catch_19
    move-exception v0

    .line 42
    :goto_1a
    invoke-direct {p0, p1}, Landroid/app/ApplicationImpl;->loadMiuiHookTest(Landroid/app/Application;)V

    .line 43
    return-void
.end method
