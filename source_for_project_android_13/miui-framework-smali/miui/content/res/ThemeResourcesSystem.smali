.class public final Lmiui/content/res/ThemeResourcesSystem;
.super Lmiui/content/res/ThemeResources;
.source "ThemeResourcesSystem.java"


# static fields
.field private static final blacklist ADVANCE_LOCKSCREEN_NAME:Ljava/lang/String; = "advance/"

.field private static final blacklist TAG:Ljava/lang/String; = "ThemeResourcesSystem"

.field private static blacklist sDynamicIconEnable:Z

.field private static blacklist sDynamicIconInited:Z

.field private static blacklist sDynamicIcons:Lmiui/content/res/ThemeResources;

.field private static blacklist sIconEnable:Z

.field private static blacklist sIconInited:Z

.field private static blacklist sIcons:Lmiui/content/res/ThemeResources;

.field private static blacklist sLockscreen:Lmiui/content/res/ThemeResources;

.field private static blacklist sMiui:Lmiui/content/res/ThemeResources;

.field private static blacklist sSuperWallpaperLockscreen:Lmiui/content/res/ThemeResources;

.field private static blacklist sUpdatedTimeDynamicIcon:J

.field private static blacklist sUpdatedTimeIcon:J

.field private static blacklist sUpdatedTimeLockscreen:J


# instance fields
.field private blacklist mThemePath:Ljava/lang/String;


# direct methods
.method protected constructor blacklist <init>(Lmiui/content/res/ThemeResourcesSystem;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V
    .registers 6
    .param p1, "wrapped"    # Lmiui/content/res/ThemeResourcesSystem;
    .param p2, "resources"    # Landroid/content/res/MiuiResources;
    .param p3, "componentName"    # Ljava/lang/String;
    .param p4, "metaData"    # Lmiui/content/res/ThemeResources$MetaData;

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/content/res/ThemeResources;-><init>(Lmiui/content/res/ThemeResources;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    .line 89
    iget-object v0, p4, Lmiui/content/res/ThemeResources$MetaData;->mThemePath:Ljava/lang/String;

    iput-object v0, p0, Lmiui/content/res/ThemeResourcesSystem;->mThemePath:Ljava/lang/String;

    .line 90
    return-void
.end method

.method private blacklist checkDynamicIconUpdate()V
    .registers 5

    .line 119
    sget-boolean v0, Lmiui/content/res/ThemeResourcesSystem;->sDynamicIconEnable:Z

    if-eqz v0, :cond_15

    .line 120
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sDynamicIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v0

    .line 121
    .local v0, "updatedTime":J
    sget-wide v2, Lmiui/content/res/ThemeResourcesSystem;->sUpdatedTimeDynamicIcon:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_15

    .line 122
    sput-wide v0, Lmiui/content/res/ThemeResourcesSystem;->sUpdatedTimeDynamicIcon:J

    .line 123
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    .line 126
    .end local v0    # "updatedTime":J
    :cond_15
    return-void
.end method

.method private blacklist checkIconUpdate()V
    .registers 5

    .line 109
    sget-boolean v0, Lmiui/content/res/ThemeResourcesSystem;->sIconEnable:Z

    if-eqz v0, :cond_15

    .line 110
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v0

    .line 111
    .local v0, "updatedTime":J
    sget-wide v2, Lmiui/content/res/ThemeResourcesSystem;->sUpdatedTimeIcon:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_15

    .line 112
    sput-wide v0, Lmiui/content/res/ThemeResourcesSystem;->sUpdatedTimeIcon:J

    .line 113
    invoke-static {}, Lmiui/content/res/IconCustomizer;->clearCache()V

    .line 116
    .end local v0    # "updatedTime":J
    :cond_15
    return-void
.end method

.method private blacklist checkLockScreenUpdate()V
    .registers 5

    .line 129
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v0

    .line 130
    .local v0, "updatedTime":J
    sget-wide v2, Lmiui/content/res/ThemeResourcesSystem;->sUpdatedTimeLockscreen:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_e

    .line 131
    sput-wide v0, Lmiui/content/res/ThemeResourcesSystem;->sUpdatedTimeLockscreen:J

    .line 133
    :cond_e
    return-void
.end method

.method private blacklist checkSuperLockScreenUpdate()V
    .registers 5

    .line 136
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sSuperWallpaperLockscreen:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v0

    .line 137
    .local v0, "updatedTime":J
    sget-wide v2, Lmiui/content/res/ThemeResourcesSystem;->sUpdatedTimeLockscreen:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_e

    .line 138
    sput-wide v0, Lmiui/content/res/ThemeResourcesSystem;->sUpdatedTimeLockscreen:J

    .line 140
    :cond_e
    return-void
.end method

.method private blacklist getIcon(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .registers 10
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .param p2, "name"    # Ljava/lang/String;

    .line 280
    invoke-static {}, Lmiui/content/res/ThemeCompatibility;->isThemeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 282
    :cond_8
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 283
    .local v0, "density":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 284
    .local v2, "screenWidthDp":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "res/drawable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 285
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->getScreenWidthSuffix(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 286
    invoke-static {v0}, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 287
    iput v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    .line 288
    invoke-direct {p0}, Lmiui/content/res/ThemeResourcesSystem;->initIcon()V

    .line 289
    sget-object v3, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v3, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v3

    const/4 v6, 0x1

    if-nez v3, :cond_af

    sget-object v3, Lmiui/content/res/ThemeResourcesSystem;->sDynamicIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v3, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v3

    if-eqz v3, :cond_66

    goto :goto_af

    .line 292
    :cond_66
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/miui/internal/content/res/ThemeDensityFallbackUtils;->getDensitySuffix(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 293
    sget-object v3, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v3, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v3

    if-nez v3, :cond_ae

    sget-object v3, Lmiui/content/res/ThemeResourcesSystem;->sDynamicIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v3, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v3

    if-eqz v3, :cond_96

    goto :goto_ae

    .line 298
    :cond_96
    iput-object p2, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 299
    const/16 v3, 0xf0

    iput v3, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    .line 300
    sget-object v3, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v3, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v3

    if-nez v3, :cond_ac

    sget-object v3, Lmiui/content/res/ThemeResourcesSystem;->sDynamicIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v3, p1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v3

    if-eqz v3, :cond_ad

    :cond_ac
    move v1, v6

    :cond_ad
    return v1

    .line 294
    :cond_ae
    :goto_ae
    return v6

    .line 290
    :cond_af
    :goto_af
    return v6
.end method

.method private blacklist getThemeFileStreamSystem(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .registers 6
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .param p2, "filterKey"    # Ljava/lang/String;

    .line 165
    invoke-static {}, Lmiui/content/res/ThemeCompatibility;->isThemeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 167
    :cond_8
    iget-object v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    const-string v2, "sym_def_app_icon.png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 168
    invoke-direct {p0, p1, v2}, Lmiui/content/res/ThemeResourcesSystem;->getIcon(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 170
    :cond_17
    iget-object v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    const-string v2, "default_wallpaper.jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 171
    return v1

    .line 174
    :cond_22
    invoke-super {p0, p1, p2}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static blacklist getTopLevelThemeResources(Landroid/content/res/MiuiResources;)Lmiui/content/res/ThemeResourcesSystem;
    .registers 9
    .param p0, "resources"    # Landroid/content/res/MiuiResources;

    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "frameworkResource":Lmiui/content/res/ThemeResourcesSystem;
    const/4 v1, 0x1

    sput-boolean v1, Lmiui/content/res/ThemeResourcesSystem;->sIsZygote:Z

    .line 45
    invoke-static {}, Lmiui/content/res/ThemeCompatibility;->isThemeEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_60

    .line 46
    const-string v2, "icons"

    invoke-static {p0, v2}, Lmiui/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResources;

    move-result-object v2

    sput-object v2, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    .line 47
    const-string v2, "dynamicicons"

    invoke-static {p0, v2}, Lmiui/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResources;

    move-result-object v2

    sput-object v2, Lmiui/content/res/ThemeResourcesSystem;->sDynamicIcons:Lmiui/content/res/ThemeResources;

    .line 48
    const-string v2, "lockscreen"

    invoke-static {p0, v2}, Lmiui/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResources;

    move-result-object v2

    sput-object v2, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    .line 49
    sget-object v2, Lmiui/content/res/ThemeResourcesSystem;->SUPER_WALLPAPER_PATH:Lmiui/content/res/ThemeResources$MetaData;

    const-string v4, "splockscreen"

    invoke-static {p0, v4, v2}, Lmiui/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)Lmiui/content/res/ThemeResources;

    move-result-object v2

    sput-object v2, Lmiui/content/res/ThemeResourcesSystem;->sSuperWallpaperLockscreen:Lmiui/content/res/ThemeResources;

    .line 51
    const-string v2, "framework-miui-res"

    invoke-static {p0, v2}, Lmiui/content/res/ThemeResources;->getTopLevelThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResources;

    move-result-object v2

    sput-object v2, Lmiui/content/res/ThemeResourcesSystem;->sMiui:Lmiui/content/res/ThemeResources;

    .line 53
    invoke-static {}, Lmiui/content/res/ThemeResourcesSystem;->needProvisionTheme()Z

    move-result v2

    .line 54
    .local v2, "needProvisionTheme":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3a
    sget-object v5, Lmiui/content/res/ThemeResourcesSystem;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    array-length v5, v5

    if-ge v4, v5, :cond_5f

    .line 55
    if-nez v2, :cond_50

    sget-object v5, Lmiui/content/res/ThemeResourcesSystem;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    aget-object v5, v5, v4

    iget-object v5, v5, Lmiui/content/res/ThemeResources$MetaData;->mThemePath:Ljava/lang/String;

    const-string v6, "/product/media/theme/provision/"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 56
    goto :goto_5c

    .line 58
    :cond_50
    new-instance v5, Lmiui/content/res/ThemeResourcesSystem;

    sget-object v6, Lmiui/content/res/ThemeResourcesSystem;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    aget-object v6, v6, v4

    const-string v7, "framework-res"

    invoke-direct {v5, v0, p0, v7, v6}, Lmiui/content/res/ThemeResourcesSystem;-><init>(Lmiui/content/res/ThemeResourcesSystem;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    move-object v0, v5

    .line 54
    :goto_5c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 60
    .end local v2    # "needProvisionTheme":Z
    .end local v4    # "i":I
    :cond_5f
    goto :goto_81

    .line 61
    :cond_60
    sget-object v2, Lmiui/content/res/ThemeResourcesEmpty;->sInstance:Lmiui/content/res/ThemeResourcesEmpty;

    sput-object v2, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    .line 62
    sget-object v2, Lmiui/content/res/ThemeResourcesEmpty;->sInstance:Lmiui/content/res/ThemeResourcesEmpty;

    sput-object v2, Lmiui/content/res/ThemeResourcesSystem;->sDynamicIcons:Lmiui/content/res/ThemeResources;

    .line 63
    sget-object v2, Lmiui/content/res/ThemeResourcesEmpty;->sInstance:Lmiui/content/res/ThemeResourcesEmpty;

    sput-object v2, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    .line 64
    sget-object v2, Lmiui/content/res/ThemeResourcesEmpty;->sInstance:Lmiui/content/res/ThemeResourcesEmpty;

    sput-object v2, Lmiui/content/res/ThemeResourcesSystem;->sSuperWallpaperLockscreen:Lmiui/content/res/ThemeResources;

    .line 65
    sget-object v2, Lmiui/content/res/ThemeResourcesEmpty;->sInstance:Lmiui/content/res/ThemeResourcesEmpty;

    sput-object v2, Lmiui/content/res/ThemeResourcesSystem;->sMiui:Lmiui/content/res/ThemeResources;

    .line 66
    new-instance v2, Lmiui/content/res/ThemeResourcesSystem;

    const/4 v4, 0x0

    sget-object v5, Lmiui/content/res/ThemeResourcesSystem;->THEME_PATHS:[Lmiui/content/res/ThemeResources$MetaData;

    aget-object v5, v5, v3

    const-string v6, "FakeForEmpty"

    invoke-direct {v2, v4, p0, v6, v5}, Lmiui/content/res/ThemeResourcesSystem;-><init>(Lmiui/content/res/ThemeResourcesSystem;Landroid/content/res/MiuiResources;Ljava/lang/String;Lmiui/content/res/ThemeResources$MetaData;)V

    move-object v0, v2

    .line 68
    :goto_81
    sput-boolean v3, Lmiui/content/res/ThemeResourcesSystem;->sIsZygote:Z

    .line 69
    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_90

    .line 70
    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeResourcesSystem;->setNightModeEnable(Z)V

    .line 72
    :cond_90
    return-object v0
.end method

.method private blacklist initDynamicIcon()V
    .registers 2

    .line 151
    sget-boolean v0, Lmiui/content/res/ThemeResourcesSystem;->sDynamicIconInited:Z

    if-nez v0, :cond_c

    .line 152
    const/4 v0, 0x1

    sput-boolean v0, Lmiui/content/res/ThemeResourcesSystem;->sDynamicIconEnable:Z

    .line 153
    invoke-direct {p0}, Lmiui/content/res/ThemeResourcesSystem;->checkDynamicIconUpdate()V

    .line 154
    sput-boolean v0, Lmiui/content/res/ThemeResourcesSystem;->sDynamicIconInited:Z

    .line 156
    :cond_c
    return-void
.end method

.method private blacklist initIcon()V
    .registers 2

    .line 143
    sget-boolean v0, Lmiui/content/res/ThemeResourcesSystem;->sIconInited:Z

    if-nez v0, :cond_c

    .line 144
    const/4 v0, 0x1

    sput-boolean v0, Lmiui/content/res/ThemeResourcesSystem;->sIconEnable:Z

    .line 145
    invoke-direct {p0}, Lmiui/content/res/ThemeResourcesSystem;->checkIconUpdate()V

    .line 146
    sput-boolean v0, Lmiui/content/res/ThemeResourcesSystem;->sIconInited:Z

    .line 148
    :cond_c
    return-void
.end method


# virtual methods
.method public whitelist checkUpdate()J
    .registers 5

    .line 93
    sget-boolean v0, Lmiui/content/res/ThemeResourcesSystem;->sIsZygote:Z

    if-nez v0, :cond_2f

    .line 94
    invoke-super {p0}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    .line 96
    iget-boolean v0, p0, Lmiui/content/res/ThemeResourcesSystem;->mIsTop:Z

    if-eqz v0, :cond_2f

    .line 97
    invoke-direct {p0}, Lmiui/content/res/ThemeResourcesSystem;->checkIconUpdate()V

    .line 98
    invoke-direct {p0}, Lmiui/content/res/ThemeResourcesSystem;->checkDynamicIconUpdate()V

    .line 99
    invoke-direct {p0}, Lmiui/content/res/ThemeResourcesSystem;->checkLockScreenUpdate()V

    .line 100
    invoke-direct {p0}, Lmiui/content/res/ThemeResourcesSystem;->checkSuperLockScreenUpdate()V

    .line 101
    iget-wide v0, p0, Lmiui/content/res/ThemeResourcesSystem;->mUpdatedTime:J

    sget-wide v2, Lmiui/content/res/ThemeResourcesSystem;->sUpdatedTimeLockscreen:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/content/res/ThemeResourcesSystem;->mUpdatedTime:J

    .line 102
    iget-wide v0, p0, Lmiui/content/res/ThemeResourcesSystem;->mUpdatedTime:J

    sget-object v2, Lmiui/content/res/ThemeResourcesSystem;->sMiui:Lmiui/content/res/ThemeResources;

    invoke-virtual {v2}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/content/res/ThemeResourcesSystem;->mUpdatedTime:J

    .line 105
    :cond_2f
    iget-wide v0, p0, Lmiui/content/res/ThemeResourcesSystem;->mUpdatedTime:J

    return-wide v0
.end method

.method public whitelist containsAwesomeLockscreenEntry(Ljava/lang/String;)Z
    .registers 5
    .param p1, "entry"    # Ljava/lang/String;

    .line 329
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advance/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeResources;->hasThemeFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist containsSuperWallpaperLockscreenEntry(Ljava/lang/String;)Z
    .registers 5
    .param p1, "entry"    # Ljava/lang/String;

    .line 337
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sSuperWallpaperLockscreen:Lmiui/content/res/ThemeResources;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advance/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeResources;->hasThemeFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist getAwesomeLockscreenFileStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # [J

    .line 333
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advance/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lmiui/content/res/ThemeResources;->getThemeStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 237
    new-instance v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(Z)V

    .line 238
    .local v0, "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    invoke-direct {p0, v0, p1}, Lmiui/content/res/ThemeResourcesSystem;->getIcon(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x0

    return-object v1

    .line 240
    :cond_e
    const/4 v1, 0x0

    .line 242
    .local v1, "icon":Landroid/graphics/Bitmap;
    :try_start_f
    iget-object v2, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v1, v2

    .line 243
    if-eqz v1, :cond_1d

    .line 244
    iget v2, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V
    :try_end_1d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_1d} :catch_1e

    .line 248
    :cond_1d
    goto :goto_22

    .line 246
    :catch_1e
    move-exception v2

    .line 247
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 251
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :goto_22
    :try_start_22
    iget-object v2, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_28

    .line 253
    goto :goto_29

    .line 252
    :catch_28
    move-exception v2

    .line 254
    :goto_29
    return-object v1
.end method

.method public blacklist getIconBitmaps(Ljava/lang/String;)[Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v0, "iconBitmaps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 265
    .local v1, "suffixIndex":I
    if-lez v1, :cond_3f

    .line 266
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "iconFileDirName":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    const/4 v4, 0x5

    if-ge v3, v4, :cond_3f

    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lmiui/content/res/ThemeResourcesSystem;->getIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 269
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_3f

    .line 270
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 276
    .end local v2    # "iconFileDirName":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_3f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_52

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Bitmap;

    goto :goto_53

    :cond_52
    const/4 v2, 0x0

    :goto_53
    return-object v2
.end method

.method public whitelist getIconStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # [J

    .line 216
    invoke-direct {p0}, Lmiui/content/res/ThemeResourcesSystem;->initIcon()V

    .line 217
    invoke-static {}, Lmiui/content/res/IconCustomizer;->isUseDynamicIcon()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lmiui/content/res/ThemeResourcesSystem;->getIconStream(Ljava/lang/String;[JZ)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIconStream(Ljava/lang/String;[JZ)Ljava/io/InputStream;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # [J
    .param p3, "isUseDynamicIcon"    # Z

    .line 224
    invoke-direct {p0}, Lmiui/content/res/ThemeResourcesSystem;->initIcon()V

    .line 225
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1, p2}, Lmiui/content/res/ThemeResources;->getThemeStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    .line 226
    .local v0, "iconsThemeStream":Ljava/io/InputStream;
    if-nez v0, :cond_16

    if-eqz p3, :cond_16

    .line 227
    invoke-direct {p0}, Lmiui/content/res/ThemeResourcesSystem;->initDynamicIcon()V

    .line 228
    sget-object v1, Lmiui/content/res/ThemeResourcesSystem;->sDynamicIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v1, p1, p2}, Lmiui/content/res/ThemeResources;->getThemeStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    .line 230
    :cond_16
    return-object v0
.end method

.method public whitelist getLockscreenWallpaper()Ljava/io/File;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 310
    iget-object v0, p0, Lmiui/content/res/ThemeResourcesSystem;->mThemePath:Ljava/lang/String;

    .line 312
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lock_wallpaper"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    .local v1, "ret":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2c

    iget-object v2, p0, Lmiui/content/res/ThemeResourcesSystem;->mWrapped:Lmiui/content/res/ThemeResources;

    if-eqz v2, :cond_2c

    .line 314
    iget-object v2, p0, Lmiui/content/res/ThemeResourcesSystem;->mWrapped:Lmiui/content/res/ThemeResources;

    check-cast v2, Lmiui/content/res/ThemeResourcesSystem;

    invoke-virtual {v2}, Lmiui/content/res/ThemeResourcesSystem;->getLockscreenWallpaper()Ljava/io/File;

    move-result-object v1

    .line 316
    :cond_2c
    return-object v1
.end method

.method public whitelist getSuperWallpaperLockscreenFileStream(Ljava/lang/String;[J)Ljava/io/InputStream;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # [J

    .line 341
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sSuperWallpaperLockscreen:Lmiui/content/res/ThemeResources;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "advance/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lmiui/content/res/ThemeResources;->getThemeStream(Ljava/lang/String;[J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z
    .registers 4
    .param p1, "info"    # Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .param p2, "filterKey"    # Ljava/lang/String;

    .line 159
    iget v0, p1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    invoke-static {v0}, Lmiui/content/res/ThemeResourcesSystem;->isMiuiResourceCookie(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 160
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sMiui:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1, p2}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    goto :goto_13

    .line 161
    :cond_f
    invoke-direct {p0, p1, p2}, Lmiui/content/res/ThemeResourcesSystem;->getThemeFileStreamSystem(Landroid/content/res/MiuiResources$ThemeFileInfoOption;Ljava/lang/String;)Z

    move-result v0

    .line 159
    :goto_13
    return v0
.end method

.method public whitelist hasAwesomeLockscreen()Z
    .registers 3

    .line 321
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    const-string v1, "advance/manifest.xml"

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeResources;->hasThemeFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist hasIcon(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 206
    invoke-direct {p0}, Lmiui/content/res/ThemeResourcesSystem;->initIcon()V

    .line 207
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1}, Lmiui/content/res/ThemeResources;->hasThemeFile(Ljava/lang/String;)Z

    move-result v0

    .line 208
    .local v0, "hasThemeFile":Z
    if-nez v0, :cond_1a

    invoke-static {}, Lmiui/content/res/IconCustomizer;->isUseDynamicIcon()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 209
    invoke-direct {p0}, Lmiui/content/res/ThemeResourcesSystem;->initDynamicIcon()V

    .line 210
    sget-object v1, Lmiui/content/res/ThemeResourcesSystem;->sDynamicIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v1, p1}, Lmiui/content/res/ThemeResources;->hasThemeFile(Ljava/lang/String;)Z

    move-result v0

    .line 212
    :cond_1a
    return v0
.end method

.method public whitelist hasSuperWallpaperLockscreen()Z
    .registers 3

    .line 325
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sSuperWallpaperLockscreen:Lmiui/content/res/ThemeResources;

    const-string v1, "advance/manifest.xml"

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeResources;->hasThemeFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V
    .registers 4
    .param p1, "filterKey"    # Ljava/lang/String;
    .param p2, "values"    # Lmiui/content/res/ThemeValues;

    .line 182
    invoke-super {p0, p1, p2}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    .line 183
    iget-boolean v0, p0, Lmiui/content/res/ThemeResourcesSystem;->mIsTop:Z

    if-eqz v0, :cond_16

    .line 184
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sMiui:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1, p2}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    .line 185
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1, p2}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    .line 186
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sSuperWallpaperLockscreen:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1, p2}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    .line 188
    :cond_16
    return-void
.end method

.method public whitelist resetIcons()V
    .registers 2

    .line 191
    invoke-direct {p0}, Lmiui/content/res/ThemeResourcesSystem;->initIcon()V

    .line 192
    invoke-direct {p0}, Lmiui/content/res/ThemeResourcesSystem;->initDynamicIcon()V

    .line 193
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    .line 194
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sDynamicIcons:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    .line 195
    return-void
.end method

.method public blacklist resetLockscreen()V
    .registers 2

    .line 201
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sLockscreen:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    .line 202
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sSuperWallpaperLockscreen:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    .line 203
    return-void
.end method

.method public blacklist setNightModeEnable(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 80
    invoke-super {p0, p1}, Lmiui/content/res/ThemeResources;->setNightModeEnable(Z)V

    .line 81
    sget-object v0, Lmiui/content/res/ThemeResourcesSystem;->sMiui:Lmiui/content/res/ThemeResources;

    invoke-virtual {v0, p1}, Lmiui/content/res/ThemeResources;->setNightModeEnable(Z)V

    .line 82
    return-void
.end method
