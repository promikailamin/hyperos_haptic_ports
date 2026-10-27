.class public Lcom/android/server/display/plugin/PluginManager$Injector;
.super Ljava/lang/Object;
.source "PluginManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnabledPluginTypes(Lcom/android/server/display/feature/DisplayManagerFlags;)Ljava/util/Set;
    .registers 2

    .line 112
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 113
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isHdrOverrideEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 114
    sget-object p1, Lcom/android/server/display/plugin/PluginType;->HDR_BOOST_OVERRIDE:Lcom/android/server/display/plugin/PluginType;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_10
    return-object p0
.end method

.method public getPluginStorage(Ljava/util/Set;)Lcom/android/server/display/plugin/PluginStorage;
    .registers 2

    .line 120
    new-instance p0, Lcom/android/server/display/plugin/PluginStorage;

    invoke-direct {p0, p1}, Lcom/android/server/display/plugin/PluginStorage;-><init>(Ljava/util/Set;)V

    return-object p0
.end method

.method public loadPlugins(Landroid/content/Context;Lcom/android/server/display/plugin/PluginStorage;Ljava/util/Set;)Ljava/util/List;
    .registers 8

    const v0, 0x10402d6

    .line 126
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loading plugins from:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 129
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    .line 134
    :cond_27
    :try_start_27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const/4 v1, 0x0

    .line 133
    invoke-static {v0, p0, v1}, Lcom/android/internal/os/SystemServerClassLoaderFactory;->getOrCreateClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ldalvik/system/PathClassLoader;

    move-result-object p0

    .line 136
    const-string v3, "com.android.server.display.plugin.PluginsProviderImpl"

    invoke-virtual {p0, v3}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-class v3, Lcom/android/server/display/plugin/PluginsProvider;

    .line 137
    invoke-virtual {p0, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    .line 138
    new-array v1, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/plugin/PluginsProvider;

    .line 139
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/display/plugin/PluginsProvider;->getPlugins(Landroid/content/Context;Lcom/android/server/display/plugin/PluginStorage;Ljava/util/Set;)Ljava/util/List;

    move-result-object p0
    :try_end_51
    .catch Ljava/lang/ClassNotFoundException; {:try_start_27 .. :try_end_51} :catch_54
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_27 .. :try_end_51} :catch_52
    .catch Ljava/lang/InstantiationException; {:try_start_27 .. :try_end_51} :catch_52
    .catch Ljava/lang/IllegalAccessException; {:try_start_27 .. :try_end_51} :catch_52
    .catch Ljava/lang/NoSuchMethodException; {:try_start_27 .. :try_end_51} :catch_52

    return-object p0

    :catch_52
    move-exception p0

    goto :goto_56

    :catch_54
    move-exception p0

    goto :goto_5c

    .line 145
    :goto_56
    const-string p1, "Class instantiation failed"

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_71

    .line 141
    :goto_5c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "loading failed: com.android.server.display.plugin.PluginsProviderImpl is not found in"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    :goto_71
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method
