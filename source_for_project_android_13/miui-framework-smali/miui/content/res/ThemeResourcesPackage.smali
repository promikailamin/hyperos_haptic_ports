.class public final Lmiui/content/res/ThemeResourcesPackage;
.super Lmiui/content/res/ThemeResources;
.source "ThemeResourcesPackage.java"


# static fields
.field private static final blacklist sPackageResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lmiui/content/res/ThemeResourcesPackage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    return-void
.end method

.method protected constructor blacklist <init>(Lmiui/content/res/ThemeResourcesPackage;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V
    .registers 5
    .param p1, "wrapped"    # Lmiui/content/res/ThemeResourcesPackage;
    .param p2, "resources"    # Landroid/content/res/MiuiResources;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "metaData"    # Lmiui/content/res/ThemeResources$MetaData;

    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/content/res/ThemeResources;-><init>(Lmiui/content/res/ThemeResources;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    .line 80
    return-void
.end method

.method private static blacklist allowDiskReads()Landroid/os/StrictMode$ThreadPolicy;
    .registers 2

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 192
    .local v1, "myUid":I
    if-eqz v1, :cond_e

    .line 193
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 194
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 196
    :cond_e
    return-object v0
.end method

.method public static blacklist getThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;
    .registers 8
    .param p0, "resources"    # Landroid/content/res/MiuiResources;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 30
    invoke-static {}, Lmiui/content/res/ThemeResourcesPackage;->allowDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 32
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    .line 33
    .local v1, "themeResources":Lmiui/content/res/ThemeResourcesPackage;
    sget-object v2, Lmiui/content/res/ThemeResourcesPackage;->sPackageResources:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 34
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 35
    .local v3, "packageResourceRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeResourcesPackage;>;"
    if-eqz v3, :cond_1c

    .line 36
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lmiui/content/res/ThemeResourcesPackage;

    .line 39
    .end local v3    # "packageResourceRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeResourcesPackage;>;"
    :cond_1c
    if-nez v1, :cond_4a

    .line 40
    invoke-static {p0, p1}, Lmiui/content/res/ThemeResourcesPackage;->getTopLevelThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;

    move-result-object v1

    .line 41
    monitor-enter v2

    .line 42
    const/4 v3, 0x0

    .line 43
    .local v3, "currentResources":Lmiui/content/res/ThemeResourcesPackage;
    :try_start_24
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 44
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 45
    .local v4, "packageResourceRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeResourcesPackage;>;"
    if-eqz v4, :cond_39

    .line 46
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/content/res/ThemeResourcesPackage;

    move-object v3, v5

    .line 49
    .end local v4    # "packageResourceRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lmiui/content/res/ThemeResourcesPackage;>;"
    :cond_39
    if-nez v3, :cond_44

    .line 50
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_45

    .line 53
    :cond_44
    move-object v1, v3

    .line 55
    .end local v3    # "currentResources":Lmiui/content/res/ThemeResourcesPackage;
    :goto_45
    monitor-exit v2

    goto :goto_4a

    :catchall_47
    move-exception v3

    monitor-exit v2
    :try_end_49
    .catchall {:try_start_24 .. :try_end_49} :catchall_47

    throw v3

    .line 58
    :cond_4a
    :goto_4a
    invoke-static {v0}, Lmiui/content/res/ThemeResourcesPackage;->resetOldPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 59
    return-object v1
.end method

.method public static blacklist getTopLevelThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;
    .registers 7
    .param p0, "resources"    # Landroid/content/res/MiuiResources;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "themeResources":Lmiui/content/res/ThemeResourcesPackage;
    invoke-static {}, Lmiui/content/res/ThemeResourcesPackage;->needProvisionTheme()Z

    move-result v1

    .line 65
    .local v1, "needProvisionTheme":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    sget-object v3, Lmiui/content/res/ThemeResourcesPackage;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    array-length v3, v3

    if-ge v2, v3, :cond_29

    .line 66
    if-nez v1, :cond_1c

    sget-object v3, Lmiui/content/res/ThemeResourcesPackage;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    aget-object v3, v3, v2

    iget-object v3, v3, Lmiui/content/res/ThemeResources$MetaData;->mThemePath:Ljava/lang/String;

    const-string v4, "/product/media/theme/provision/"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 67
    goto :goto_26

    .line 69
    :cond_1c
    new-instance v3, Lmiui/content/res/ThemeResourcesPackage;

    sget-object v4, Lmiui/content/res/ThemeResourcesPackage;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    aget-object v4, v4, v2

    invoke-direct {v3, v0, p0, p1, v4}, Lmiui/content/res/ThemeResourcesPackage;-><init>(Lmiui/content/res/ThemeResourcesPackage;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    move-object v0, v3

    .line 65
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 71
    .end local v2    # "i":I
    :cond_29
    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_37

    .line 72
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmiui/content/res/ThemeResourcesPackage;->setNightModeEnable(Z)V

    .line 74
    :cond_37
    return-object v0
.end method

.method private blacklist loadAppThemeFileFromMiuiFramework(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;)Z
    .registers 7
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .param p2, "fallback"    # Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    .line 113
    if-eqz p2, :cond_37

    iget-object v0, p2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResType:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    sget-object v1, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    if-ne v0, v1, :cond_37

    iget-object v0, p2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackPkgName:Ljava/lang/String;

    .line 115
    const-string v1, "miui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    iget-object v1, p2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 117
    iget v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    .line 118
    .local v0, "backupCookie":I
    iget-object v1, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 119
    .local v1, "backupPath":Ljava/lang/String;
    sget v2, Lmiui/content/res/ThemeResourcesPackage;->sCookieMiuiFramework:I

    iput v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    .line 120
    iget-object v2, p2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    iget-object v3, p2, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 121
    invoke-direct {p0, p1}, Lmiui/content/res/ThemeResourcesPackage;->loadFrameworkThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v2

    .line 122
    .local v2, "result":Z
    iput-object v1, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 123
    iput v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    .line 124
    return v2

    .line 126
    .end local v0    # "backupCookie":I
    .end local v1    # "backupPath":Ljava/lang/String;
    .end local v2    # "result":Z
    :cond_37
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist loadFrameworkThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z
    .registers 10
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    .line 130
    iget-object v0, p0, Lmiui/content/res/ThemeResourcesPackage;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 131
    iget v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    invoke-static {v0}, Lmiui/content/res/ThemeResourcesPackage;->isMiuiResourceCookie(I)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "miui"

    if-eqz v0, :cond_55

    .line 133
    sget-object v0, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    iget-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lmiui/content/res/ThemeCompatibility;->getMayFilterFallbackList(Ljava/lang/String;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 135
    .local v0, "fList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    if-eqz v0, :cond_55

    .line 136
    iget-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 137
    .local v3, "backup":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    .line 138
    .local v5, "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    iget-object v6, p0, Lmiui/content/res/ThemeResourcesPackage;->mPackageName:Ljava/lang/String;

    iget-object v7, v5, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackPkgName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    iget-object v6, v5, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    .line 139
    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 140
    iget-object v6, v5, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResOriginalName:Ljava/lang/String;

    iget-object v7, v5, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;->mResFallbackName:Ljava/lang/String;

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 141
    invoke-super {p0, p1}, Lmiui/content/res/ThemeResources;->getThemeFileNonFallback(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v6

    .line 142
    .local v6, "result":Z
    iput-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 143
    if-eqz v6, :cond_54

    .line 144
    return v1

    .line 147
    .end local v5    # "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    .end local v6    # "result":Z
    :cond_54
    goto :goto_23

    .line 151
    .end local v0    # "fList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    .end local v3    # "backup":Ljava/lang/String;
    :cond_55
    const/4 v0, 0x0

    .line 152
    .local v0, "result":Z
    iget-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 153
    .local v3, "path":Ljava/lang/String;
    sget v4, Lmiui/content/res/ThemeResourcesPackage;->sCookieFramework:I

    iget v5, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    if-ne v4, v5, :cond_7c

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "framework-res/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 155
    iget-object v2, p0, Lmiui/content/res/ThemeResourcesPackage;->mPackageName:Ljava/lang/String;

    const-string v4, "android"

    invoke-super {p0, p1, v2, v4}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_9f

    .line 156
    :cond_7c
    iget v4, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    invoke-static {v4}, Lmiui/content/res/ThemeResourcesPackage;->isMiuiResourceCookie(I)Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "framework-miui-res/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 158
    iget-object v4, p0, Lmiui/content/res/ThemeResourcesPackage;->mPackageName:Ljava/lang/String;

    invoke-super {p0, p1, v4, v2}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 160
    :cond_9f
    :goto_9f
    iput-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 161
    if-eqz v0, :cond_a8

    .line 162
    const-string v2, "package/only"

    iput-object v2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    .line 163
    return v1

    .line 167
    .end local v0    # "result":Z
    .end local v3    # "path":Ljava/lang/String;
    :cond_a8
    invoke-static {}, Lmiui/content/res/ThemeResourcesPackage;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    iget-object v1, p0, Lmiui/content/res/ThemeResourcesPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lmiui/content/res/ThemeResourcesSystem;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist resetOldPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    .registers 2
    .param p0, "oldPolicy"    # Landroid/os/StrictMode$ThreadPolicy;

    .line 200
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 201
    .local v0, "myUid":I
    if-eqz v0, :cond_9

    .line 202
    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 204
    :cond_9
    return-void
.end method


# virtual methods
.method public whitelist getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z
    .registers 10
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    .line 84
    iget v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    invoke-static {v0}, Lmiui/content/res/ThemeResourcesPackage;->isAppResourceCookie(I)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 85
    invoke-super {p0, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    return v1

    .line 86
    :cond_10
    iget-object v0, p0, Lmiui/content/res/ThemeResourcesPackage;->mPackageZipFile:Lmiui/content/res/ThemeZipFile;

    invoke-virtual {v0}, Lmiui/content/res/ThemeZipFile;->isValid()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    return v2

    .line 89
    :cond_1a
    iget-object v0, p0, Lmiui/content/res/ThemeResourcesPackage;->mPackageName:Ljava/lang/String;

    sget-object v3, Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;->DRAWABLE:Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;

    iget-object v4, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lmiui/content/res/ThemeCompatibility;->getMayFilterFallbackList(Ljava/lang/String;Lcom/miui/internal/content/res/ThemeDefinition$ResourceType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 90
    .local v0, "fList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    if-eqz v0, :cond_3e

    .line 91
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    .line 92
    .local v4, "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    invoke-direct {p0, p1, v4}, Lmiui/content/res/ThemeResourcesPackage;->loadAppThemeFileFromMiuiFramework(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 93
    return v1

    .line 95
    .end local v4    # "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    :cond_3d
    goto :goto_2a

    .line 98
    :cond_3e
    invoke-virtual {p0}, Lmiui/content/res/ThemeResourcesPackage;->getFilterInfos()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/content/res/ThemeResources$FilterInfo;

    .line 99
    .local v4, "filter":Lmiui/content/res/ThemeResources$FilterInfo;
    iget-object v5, p0, Lmiui/content/res/ThemeResourcesPackage;->mPackageName:Ljava/lang/String;

    iget-boolean v6, p0, Lmiui/content/res/ThemeResourcesPackage;->mNightMode:Z

    invoke-virtual {v4, v5, v6}, Lmiui/content/res/ThemeResources$FilterInfo;->match(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_73

    .line 100
    iget-object v5, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-static {v5}, Lcom/miui/internal/content/res/ThemeToolUtils;->getNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, "originName":Ljava/lang/String;
    iget-object v6, v4, Lmiui/content/res/ThemeResources$FilterInfo;->mFallback:Lcom/miui/internal/content/res/ThemeFallback;

    iget-object v6, v6, Lcom/miui/internal/content/res/ThemeFallback;->mFallbackInfoMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;

    .line 102
    .local v6, "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    invoke-direct {p0, p1, v6}, Lmiui/content/res/ThemeResourcesPackage;->loadAppThemeFileFromMiuiFramework(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;)Z

    move-result v7

    if-eqz v7, :cond_73

    .line 103
    return v1

    .line 106
    .end local v4    # "filter":Lmiui/content/res/ThemeResources$FilterInfo;
    .end local v5    # "originName":Ljava/lang/String;
    .end local v6    # "fallback":Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;
    :cond_73
    goto :goto_46

    .line 107
    :cond_74
    return v2

    .line 109
    .end local v0    # "fList":Ljava/util/List;, "Ljava/util/List<Lcom/miui/internal/content/res/ThemeDefinition$FallbackInfo;>;"
    :cond_75
    invoke-direct {p0, p1}, Lmiui/content/res/ThemeResourcesPackage;->loadFrameworkThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v0

    return v0
.end method

.method public blacklist mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V
    .registers 5
    .param p1, "filterKey"    # Ljava/lang/String;
    .param p2, "values"    # Lmiui/content/res/ThemeValues;

    .line 173
    invoke-static {}, Lmiui/content/res/ThemeResourcesPackage;->allowDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 175
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    iget-boolean v1, p0, Lmiui/content/res/ThemeResourcesPackage;->mIsTop:Z

    if-eqz v1, :cond_f

    .line 176
    invoke-static {}, Lmiui/content/res/ThemeResourcesPackage;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lmiui/content/res/ThemeResourcesSystem;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    .line 178
    :cond_f
    invoke-super {p0, p1, p2}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    .line 181
    invoke-static {v0}, Lmiui/content/res/ThemeResourcesPackage;->resetOldPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 182
    return-void
.end method
