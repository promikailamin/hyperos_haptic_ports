.class public Lcom/miui/base/MiuiStubRegistry;
.super Ljava/lang/Object;
.source "MiuiStubRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/base/MiuiStubRegistry$ImplProviderManifest;,
        Lcom/miui/base/MiuiStubRegistry$ImplProvider;
    }
.end annotation


# static fields
.field private static blacklist DEBUG_UNKNOWN_IMPL:Z = false

.field private static final blacklist MANIFEST:Ljava/lang/String; = "com.miui.base.MiuiStubImplManifest$$"

.field private static final blacklist TAG:Ljava/lang/String; = "MiuiStubRegistry"

.field private static blacklist sExtClassLoaderCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/ClassLoader;",
            "Ldalvik/system/PathClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist sExtManifestStubs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static volatile blacklist sManifestStubs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final blacklist sRegisteredStubs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final blacklist sStubHeadLoaded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/base/MiuiStubRegistry;->DEBUG_UNKNOWN_IMPL:Z

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/base/MiuiStubRegistry;->sManifestStubs:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/base/MiuiStubRegistry;->sExtManifestStubs:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/base/MiuiStubRegistry;->sExtClassLoaderCache:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/base/MiuiStubRegistry;->sStubHeadLoaded:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/miui/base/MiuiStubRegistry;->sRegisteredStubs:Landroid/util/ArrayMap;

    .line 53
    const-class v0, Lcom/miui/base/MiuiStubRegistry;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "com.miui.base.MiuiStubImplManifest$$"

    invoke-static {v0, v1}, Lcom/miui/base/MiuiStubRegistry;->collectStubProviders(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist clearRegisteredImpls()V
    .registers 3

    .line 196
    const-string v0, "MiuiStubRegistry"

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "clearRegisteredImpls"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    sget-object v0, Lcom/miui/base/MiuiStubRegistry;->sRegisteredStubs:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 198
    :try_start_f
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 199
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_14

    throw v1
.end method

.method private static declared-synchronized blacklist collectStubProviders(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 6
    .param p0, "classloader"    # Ljava/lang/ClassLoader;
    .param p1, "manifest"    # Ljava/lang/String;

    const-class v0, Lcom/miui/base/MiuiStubRegistry;

    monitor-enter v0

    .line 110
    const/4 v1, 0x1

    .line 111
    :try_start_4
    invoke-static {p1, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 112
    .local v1, "manifestClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/miui/base/MiuiStubRegistry$ImplProviderManifest;>;"
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 113
    .local v2, "newProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/miui/base/MiuiStubRegistry$ImplProvider<*>;>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/base/MiuiStubRegistry$ImplProviderManifest;

    invoke-interface {v3, v2}, Lcom/miui/base/MiuiStubRegistry$ImplProviderManifest;->collectImplProviders(Ljava/util/Map;)V

    .line 114
    sget-object v3, Lcom/miui/base/MiuiStubRegistry;->sManifestStubs:Ljava/util/HashMap;

    invoke-static {v3, v2}, Lcom/miui/base/MiuiStubRegistry;->updateManifest(Ljava/util/HashMap;Landroid/util/ArrayMap;)Ljava/util/HashMap;

    move-result-object v3

    sput-object v3, Lcom/miui/base/MiuiStubRegistry;->sManifestStubs:Ljava/util/HashMap;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1e} :catch_21
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1f

    .line 117
    .end local v1    # "manifestClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/miui/base/MiuiStubRegistry$ImplProviderManifest;>;"
    .end local v2    # "newProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/miui/base/MiuiStubRegistry$ImplProvider<*>;>;"
    goto :goto_29

    .line 109
    .end local p0    # "classloader":Ljava/lang/ClassLoader;
    .end local p1    # "manifest":Ljava/lang/String;
    :catchall_1f
    move-exception p0

    goto :goto_2b

    .line 115
    .restart local p0    # "classloader":Ljava/lang/ClassLoader;
    .restart local p1    # "manifest":Ljava/lang/String;
    :catch_21
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    :try_start_22
    const-string v2, "MiuiStubRegistry"

    const-string v3, "Failed to collect stub providers"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_1f

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_29
    monitor-exit v0

    return-void

    .line 109
    .end local p0    # "classloader":Ljava/lang/ClassLoader;
    .end local p1    # "manifest":Ljava/lang/String;
    :goto_2b
    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized blacklist collectStubProviders(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .registers 16
    .param p0, "classloader"    # Ljava/lang/ClassLoader;
    .param p1, "classPath"    # Ljava/lang/String;
    .param p2, "manifest"    # Ljava/lang/String;
    .param p3, "extClass"    # Ljava/lang/Boolean;
    .param p4, "internal"    # Ljava/lang/Boolean;

    const-class v0, Lcom/miui/base/MiuiStubRegistry;

    monitor-enter v0

    .line 123
    :try_start_3
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_e

    .line 124
    invoke-static {p0, p2}, Lcom/miui/base/MiuiStubRegistry;->collectStubProviders(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_8b
    .catchall {:try_start_3 .. :try_end_c} :catchall_89

    .line 125
    monitor-exit v0

    return-void

    .line 130
    :cond_e
    :try_start_e
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1f

    instance-of v1, p0, Ldalvik/system/BaseDexClassLoader;

    if-eqz v1, :cond_1f

    .line 131
    move-object v1, p0

    check-cast v1, Ldalvik/system/PathClassLoader;

    .line 132
    .local v1, "implClassLoader":Ldalvik/system/PathClassLoader;
    invoke-virtual {v1, p1}, Ldalvik/system/PathClassLoader;->addDexPath(Ljava/lang/String;)V

    goto :goto_3d

    .line 133
    .end local v1    # "implClassLoader":Ldalvik/system/PathClassLoader;
    :cond_1f
    sget-object v1, Lcom/miui/base/MiuiStubRegistry;->sExtClassLoaderCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 134
    sget-object v1, Lcom/miui/base/MiuiStubRegistry;->sExtClassLoaderCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldalvik/system/PathClassLoader;

    .line 135
    .restart local v1    # "implClassLoader":Ldalvik/system/PathClassLoader;
    invoke-virtual {v1, p1}, Ldalvik/system/PathClassLoader;->addDexPath(Ljava/lang/String;)V

    goto :goto_3d

    .line 137
    .end local v1    # "implClassLoader":Ldalvik/system/PathClassLoader;
    :cond_33
    new-instance v1, Ldalvik/system/PathClassLoader;

    invoke-direct {v1, p1, p0}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 138
    .restart local v1    # "implClassLoader":Ldalvik/system/PathClassLoader;
    sget-object v2, Lcom/miui/base/MiuiStubRegistry;->sExtClassLoaderCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :goto_3d
    const/4 v2, 0x1

    .line 141
    invoke-static {p2, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 142
    .local v2, "manifestClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/miui/base/MiuiStubRegistry$ImplProviderManifest;>;"
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/base/MiuiStubRegistry$ImplProviderManifest;

    .line 143
    .local v3, "implProviderManifest":Lcom/miui/base/MiuiStubRegistry$ImplProviderManifest;
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 144
    .local v4, "classes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-interface {v3, v4, v1}, Lcom/miui/base/MiuiStubRegistry$ImplProviderManifest;->collectImplProvidersClass(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 146
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 147
    .local v5, "newProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/miui/base/MiuiStubRegistry$ImplProvider<*>;>;"
    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_80

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 148
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 149
    .local v8, "baseClazz":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    .line 150
    .local v9, "providerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/base/MiuiStubRegistry$ImplProvider;

    .line 151
    .local v10, "holder":Lcom/miui/base/MiuiStubRegistry$ImplProvider;, "Lcom/miui/base/MiuiStubRegistry$ImplProvider<*>;"
    invoke-virtual {v5, v8, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    nop

    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v8    # "baseClazz":Ljava/lang/String;
    .end local v9    # "providerClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "holder":Lcom/miui/base/MiuiStubRegistry$ImplProvider;, "Lcom/miui/base/MiuiStubRegistry$ImplProvider<*>;"
    goto :goto_5d

    .line 153
    :cond_80
    sget-object v6, Lcom/miui/base/MiuiStubRegistry;->sExtManifestStubs:Ljava/util/HashMap;

    invoke-static {v6, v5}, Lcom/miui/base/MiuiStubRegistry;->updateManifest(Ljava/util/HashMap;Landroid/util/ArrayMap;)Ljava/util/HashMap;

    move-result-object v6

    sput-object v6, Lcom/miui/base/MiuiStubRegistry;->sExtManifestStubs:Ljava/util/HashMap;
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_88} :catch_8b
    .catchall {:try_start_e .. :try_end_88} :catchall_89

    .line 156
    .end local v1    # "implClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "manifestClazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/miui/base/MiuiStubRegistry$ImplProviderManifest;>;"
    .end local v3    # "implProviderManifest":Lcom/miui/base/MiuiStubRegistry$ImplProviderManifest;
    .end local v4    # "classes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v5    # "newProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/miui/base/MiuiStubRegistry$ImplProvider<*>;>;"
    goto :goto_93

    .line 122
    .end local p0    # "classloader":Ljava/lang/ClassLoader;
    .end local p1    # "classPath":Ljava/lang/String;
    .end local p2    # "manifest":Ljava/lang/String;
    .end local p3    # "extClass":Ljava/lang/Boolean;
    .end local p4    # "internal":Ljava/lang/Boolean;
    :catchall_89
    move-exception p0

    goto :goto_95

    .line 154
    .restart local p0    # "classloader":Ljava/lang/ClassLoader;
    .restart local p1    # "classPath":Ljava/lang/String;
    .restart local p2    # "manifest":Ljava/lang/String;
    .restart local p3    # "extClass":Ljava/lang/Boolean;
    .restart local p4    # "internal":Ljava/lang/Boolean;
    :catch_8b
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/Exception;
    :try_start_8c
    const-string v2, "MiuiStubRegistry"

    const-string v3, "Failed to collect stub providers"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_93
    .catchall {:try_start_8c .. :try_end_93} :catchall_89

    .line 157
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_93
    monitor-exit v0

    return-void

    .line 122
    .end local p0    # "classloader":Ljava/lang/ClassLoader;
    .end local p1    # "classPath":Ljava/lang/String;
    .end local p2    # "manifest":Ljava/lang/String;
    .end local p3    # "extClass":Ljava/lang/Boolean;
    .end local p4    # "internal":Ljava/lang/Boolean;
    :goto_95
    monitor-exit v0

    throw p0
.end method

.method public static blacklist get(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 213
    .local p0, "stubClazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/miui/base/MiuiStubRegistry;->get(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist get(Ljava/lang/Class;Z)Ljava/lang/Object;
    .registers 6
    .param p1, "singleton"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 218
    .local p0, "stubClazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/miui/base/MiuiStubRegistry;->sManifestStubs:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/base/MiuiStubRegistry$ImplProvider;

    .line 219
    .local v0, "holder":Lcom/miui/base/MiuiStubRegistry$ImplProvider;, "Lcom/miui/base/MiuiStubRegistry$ImplProvider<*>;"
    if-eqz v0, :cond_1a

    .line 220
    if-eqz p1, :cond_15

    invoke-interface {v0}, Lcom/miui/base/MiuiStubRegistry$ImplProvider;->provideSingleton()Ljava/lang/Object;

    move-result-object v1

    goto :goto_19

    :cond_15
    invoke-interface {v0}, Lcom/miui/base/MiuiStubRegistry$ImplProvider;->provideNewInstance()Ljava/lang/Object;

    move-result-object v1

    :goto_19
    return-object v1

    .line 222
    :cond_1a
    sget-object v1, Lcom/miui/base/MiuiStubRegistry;->sExtManifestStubs:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/miui/base/MiuiStubRegistry$ImplProvider;

    .line 223
    if-eqz v0, :cond_35

    .line 224
    if-eqz p1, :cond_30

    invoke-interface {v0}, Lcom/miui/base/MiuiStubRegistry$ImplProvider;->provideSingleton()Ljava/lang/Object;

    move-result-object v1

    goto :goto_34

    :cond_30
    invoke-interface {v0}, Lcom/miui/base/MiuiStubRegistry$ImplProvider;->provideNewInstance()Ljava/lang/Object;

    move-result-object v1

    :goto_34
    return-object v1

    .line 226
    :cond_35
    sget-boolean v1, Lcom/miui/base/MiuiStubRegistry;->DEBUG_UNKNOWN_IMPL:Z

    if-eqz v1, :cond_5b

    .line 227
    const-string v1, "MiuiStubRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find implementation for base class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in manifest stubs, try registered stubs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_5b
    sget-object v1, Lcom/miui/base/MiuiStubRegistry;->sRegisteredStubs:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 231
    :try_start_5e
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/base/MiuiStubRegistry$ImplProvider;

    move-object v0, v2

    .line 232
    if-nez v0, :cond_6e

    .line 233
    const/4 v2, 0x0

    monitor-exit v1

    return-object v2

    .line 235
    :cond_6e
    monitor-exit v1
    :try_end_6f
    .catchall {:try_start_5e .. :try_end_6f} :catchall_7b

    .line 236
    if-eqz p1, :cond_76

    invoke-interface {v0}, Lcom/miui/base/MiuiStubRegistry$ImplProvider;->provideSingleton()Ljava/lang/Object;

    move-result-object v1

    goto :goto_7a

    :cond_76
    invoke-interface {v0}, Lcom/miui/base/MiuiStubRegistry$ImplProvider;->provideNewInstance()Ljava/lang/Object;

    move-result-object v1

    :goto_7a
    return-object v1

    .line 235
    :catchall_7b
    move-exception v2

    :try_start_7c
    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v2
.end method

.method private static blacklist getClassPath(Ljava/lang/Class;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 100
    .local p0, "stubHead":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/miui/base/annotations/MiuiStubHead;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/miui/base/annotations/MiuiStubHead;

    .line 101
    .local v0, "annotation":Lcom/miui/base/annotations/MiuiStubHead;
    if-eqz v0, :cond_f

    .line 102
    invoke-interface {v0}, Lcom/miui/base/annotations/MiuiStubHead;->classPath()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 104
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isn\'t annotated with @MiuiStubHead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist getExtManifestStubNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 209
    new-instance v0, Landroid/util/ArraySet;

    sget-object v1, Lcom/miui/base/MiuiStubRegistry;->sExtManifestStubs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static blacklist getInternalFlag(Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 91
    .local p0, "stubHead":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/miui/base/annotations/MiuiStubHead;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/miui/base/annotations/MiuiStubHead;

    .line 92
    .local v0, "annotation":Lcom/miui/base/annotations/MiuiStubHead;
    if-eqz v0, :cond_f

    .line 93
    invoke-interface {v0}, Lcom/miui/base/annotations/MiuiStubHead;->internal()Z

    move-result v1

    return v1

    .line 95
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isn\'t annotated with @MiuiStubHead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist getManifest(Ljava/lang/Class;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 82
    .local p0, "stubHead":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/miui/base/annotations/MiuiStubHead;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/miui/base/annotations/MiuiStubHead;

    .line 83
    .local v0, "annotation":Lcom/miui/base/annotations/MiuiStubHead;
    if-eqz v0, :cond_f

    .line 84
    invoke-interface {v0}, Lcom/miui/base/annotations/MiuiStubHead;->manifestName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 86
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isn\'t annotated with @MiuiStubHead"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist getManifestStubNames()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Landroid/util/ArraySet;

    sget-object v1, Lcom/miui/base/MiuiStubRegistry;->sManifestStubs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static declared-synchronized blacklist init(Ljava/lang/Class;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .local p0, "stubHead":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/miui/base/MiuiStubRegistry;

    monitor-enter v0

    .line 61
    :try_start_3
    sget-object v1, Lcom/miui/base/MiuiStubRegistry;->sStubHeadLoaded:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 62
    const-string v1, "MiuiStubRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already collected"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_76

    .line 63
    monitor-exit v0

    return-void

    .line 65
    :cond_29
    :try_start_29
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 68
    .local v1, "userClassloader":Ljava/lang/ClassLoader;
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_47

    const-string/jumbo v2, "ro.miui.ui.version.code"

    const-string v5, ""

    .line 69
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_47

    move v2, v3

    goto :goto_48

    :cond_47
    move v2, v4

    :goto_48
    sput-boolean v2, Lcom/miui/base/MiuiStubRegistry;->DEBUG_UNKNOWN_IMPL:Z

    .line 70
    invoke-static {p0}, Lcom/miui/base/MiuiStubRegistry;->getClassPath(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "classPath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_55

    goto :goto_56

    :cond_55
    move v3, v4

    :goto_56
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 72
    .local v3, "extClass":Ljava/lang/Boolean;
    invoke-static {p0}, Lcom/miui/base/MiuiStubRegistry;->getManifest(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    .line 73
    .local v4, "manifestName":Ljava/lang/String;
    invoke-static {p0}, Lcom/miui/base/MiuiStubRegistry;->getInternalFlag(Ljava/lang/Class;)Z

    move-result v5

    .line 74
    .local v5, "internal":Z
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_6d

    .line 75
    invoke-static {v1, v4}, Lcom/miui/base/MiuiStubRegistry;->collectStubProviders(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    :try_end_6b
    .catchall {:try_start_29 .. :try_end_6b} :catchall_76

    .line 76
    monitor-exit v0

    return-void

    .line 78
    :cond_6d
    :try_start_6d
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v1, v2, v4, v3, v6}, Lcom/miui/base/MiuiStubRegistry;->collectStubProviders(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    :try_end_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_76

    .line 79
    monitor-exit v0

    return-void

    .line 60
    .end local v1    # "userClassloader":Ljava/lang/ClassLoader;
    .end local v2    # "classPath":Ljava/lang/String;
    .end local v3    # "extClass":Ljava/lang/Boolean;
    .end local v4    # "manifestName":Ljava/lang/String;
    .end local v5    # "internal":Z
    .end local p0    # "stubHead":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_76
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static blacklist registerSingleton(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            "Q:TP;>(",
            "Ljava/lang/Class<",
            "TP;>;TQ;)V"
        }
    .end annotation

    .line 178
    .local p0, "baseClazz":Ljava/lang/Class;, "Ljava/lang/Class<TP;>;"
    .local p1, "impl":Ljava/lang/Object;, "TQ;"
    sget-object v0, Lcom/miui/base/MiuiStubRegistry;->sRegisteredStubs:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 179
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/base/MiuiStubRegistry$1;

    invoke-direct {v2, p0, p1}, Lcom/miui/base/MiuiStubRegistry$1;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/base/MiuiStubRegistry$ImplProvider;

    .line 188
    .local v1, "oldProvider":Lcom/miui/base/MiuiStubRegistry$ImplProvider;, "Lcom/miui/base/MiuiStubRegistry$ImplProvider<*>;"
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_32

    .line 189
    if-eqz v1, :cond_31

    .line 190
    const-string v0, "MiuiStubRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was previously registered with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_31
    return-void

    .line 188
    .end local v1    # "oldProvider":Lcom/miui/base/MiuiStubRegistry$ImplProvider;, "Lcom/miui/base/MiuiStubRegistry$ImplProvider<*>;"
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v1
.end method

.method private static blacklist updateManifest(Ljava/util/HashMap;Landroid/util/ArrayMap;)Ljava/util/HashMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
            "*>;>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
            "*>;>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/miui/base/MiuiStubRegistry$ImplProvider<",
            "*>;>;"
        }
    .end annotation

    .line 162
    .local p0, "manifestStubs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/base/MiuiStubRegistry$ImplProvider<*>;>;"
    .local p1, "newProviders":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/miui/base/MiuiStubRegistry$ImplProvider<*>;>;"
    new-instance v0, Ljava/util/HashMap;

    .line 163
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 164
    .local v0, "currProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/miui/base/MiuiStubRegistry$ImplProvider<*>;>;"
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 165
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "idx":I
    :goto_17
    if-ltz v1, :cond_4c

    .line 166
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 167
    .local v2, "baseClazz":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/base/MiuiStubRegistry$ImplProvider;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/base/MiuiStubRegistry$ImplProvider;

    .line 168
    .local v3, "oldProvider":Lcom/miui/base/MiuiStubRegistry$ImplProvider;, "Lcom/miui/base/MiuiStubRegistry$ImplProvider<*>;"
    if-eqz v3, :cond_49

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was previously registered with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MiuiStubRegistry"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .end local v2    # "baseClazz":Ljava/lang/String;
    .end local v3    # "oldProvider":Lcom/miui/base/MiuiStubRegistry$ImplProvider;, "Lcom/miui/base/MiuiStubRegistry$ImplProvider<*>;"
    :cond_49
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    .line 172
    .end local v1    # "idx":I
    :cond_4c
    return-object v0
.end method
