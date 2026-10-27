.class public Landroid/content/res/ThemeManagerStub;
.super Ljava/lang/Object;
.source "ThemeManagerStub.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ThemeManagerStub"

.field private static final blacklist sIMiuiConfiguration:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final blacklist sMiuiThemeHelper:Landroid/content/res/IMiuiThemeHelper;

.field private static final blacklist sResource:Landroid/content/res/IMiuiResource;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "tmpRes":Landroid/content/res/IMiuiResource;
    const/4 v1, 0x0

    .line 34
    .local v1, "tmpHelper":Landroid/content/res/IMiuiThemeHelper;
    const/4 v2, 0x0

    .line 36
    .local v2, "tmpMiuiConfig":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_3
    const-string v3, "android.content.res.IMiuiResourceImpl"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 37
    .local v3, "resource":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/IMiuiResource;

    move-object v0, v4

    .line 39
    const-string v4, "android.content.res.IMiuiThemeHelperImpl"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 40
    .local v4, "help":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/res/IMiuiThemeHelper;

    move-object v1, v5

    .line 42
    const-string v5, "android.content.res.MiuiConfiguration"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_25

    move-object v2, v5

    .line 45
    .end local v3    # "resource":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "help":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_3e

    .line 43
    :catch_25
    move-exception v3

    .line 44
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " init ThemeManagerStub: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ThemeManagerStub"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3e
    sput-object v0, Landroid/content/res/ThemeManagerStub;->sResource:Landroid/content/res/IMiuiResource;

    .line 48
    sput-object v1, Landroid/content/res/ThemeManagerStub;->sMiuiThemeHelper:Landroid/content/res/IMiuiThemeHelper;

    .line 49
    sput-object v2, Landroid/content/res/ThemeManagerStub;->sIMiuiConfiguration:Ljava/lang/Class;

    .line 50
    .end local v0    # "tmpRes":Landroid/content/res/IMiuiResource;
    .end local v1    # "tmpHelper":Landroid/content/res/IMiuiThemeHelper;
    .end local v2    # "tmpMiuiConfig":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static blacklist appendZygoteGid()Ljava/lang/String;
    .registers 3

    .line 114
    sget-object v0, Landroid/content/res/ThemeManagerStub;->sMiuiThemeHelper:Landroid/content/res/IMiuiThemeHelper;

    if-eqz v0, :cond_1e

    .line 115
    invoke-interface {v0}, Landroid/content/res/IMiuiThemeHelper;->getUid()I

    move-result v0

    .line 116
    .local v0, "uid":I
    if-lez v0, :cond_1e

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 120
    .end local v0    # "uid":I
    :cond_1e
    const-string v0, ""

    return-object v0
.end method

.method public static blacklist clearThemeRelunchFlag(Ljava/lang/String;)I
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 179
    sget-object v0, Landroid/content/res/ThemeManagerStub;->sMiuiThemeHelper:Landroid/content/res/IMiuiThemeHelper;

    if-eqz v0, :cond_9

    .line 180
    invoke-interface {v0, p0}, Landroid/content/res/IMiuiThemeHelper;->relunchFlag(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 182
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist createMiuiConfiguration()Landroid/content/res/IMiuiConfiguration;
    .registers 3

    .line 144
    sget-object v0, Landroid/content/res/ThemeManagerStub;->sIMiuiConfiguration:Ljava/lang/Class;

    if-eqz v0, :cond_24

    .line 146
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/IMiuiConfiguration;
    :try_end_a
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_a} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_a} :catch_b

    return-object v0

    .line 147
    :catch_b
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create MiuiConfiguration fail,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ThemeManagerStub"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_24
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist createMiuiResources()Landroid/content/res/Resources;
    .registers 1

    .line 55
    sget-object v0, Landroid/content/res/ThemeManagerStub;->sResource:Landroid/content/res/IMiuiResource;

    if-eqz v0, :cond_9

    .line 56
    invoke-interface {v0}, Landroid/content/res/IMiuiResource;->createResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    .line 58
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist createPathFromPathData(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/Path;
    .registers 3
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "path"    # Ljava/lang/String;

    .line 165
    sget-object v0, Landroid/content/res/ThemeManagerStub;->sMiuiThemeHelper:Landroid/content/res/IMiuiThemeHelper;

    if-eqz v0, :cond_9

    .line 166
    invoke-interface {v0, p0}, Landroid/content/res/IMiuiThemeHelper;->createPathForMiui(Landroid/content/res/Resources;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0

    .line 168
    :cond_9
    invoke-static {p1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist createResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)Landroid/content/res/Resources;
    .registers 4
    .param p0, "assets"    # Landroid/content/res/AssetManager;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 75
    sget-object v0, Landroid/content/res/ThemeManagerStub;->sResource:Landroid/content/res/IMiuiResource;

    if-eqz v0, :cond_9

    .line 76
    invoke-interface {v0, p0, p1, p2}, Landroid/content/res/IMiuiResource;->createResources(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    .line 78
    :cond_9
    new-instance v0, Landroid/content/res/Resources;

    invoke-direct {v0, p0, p1, p2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public static blacklist createResources(Ljava/lang/ClassLoader;)Landroid/content/res/Resources;
    .registers 2
    .param p0, "cl"    # Ljava/lang/ClassLoader;

    .line 64
    sget-object v0, Landroid/content/res/ThemeManagerStub;->sResource:Landroid/content/res/IMiuiResource;

    if-eqz v0, :cond_9

    .line 65
    invoke-interface {v0, p0}, Landroid/content/res/IMiuiResource;->createResources(Ljava/lang/ClassLoader;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    .line 67
    :cond_9
    new-instance v0, Landroid/content/res/Resources;

    invoke-direct {v0, p0}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public static blacklist createResourcesImpl(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)Landroid/content/res/ResourcesImpl;
    .registers 5
    .param p0, "assets"    # Landroid/content/res/AssetManager;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "config"    # Landroid/content/res/Configuration;
    .param p3, "daj"    # Landroid/view/DisplayAdjustments;

    .line 91
    sget-object v0, Landroid/content/res/ThemeManagerStub;->sResource:Landroid/content/res/IMiuiResource;

    if-eqz v0, :cond_9

    .line 92
    invoke-interface {v0, p0, p1, p2, p3}, Landroid/content/res/IMiuiResource;->createResourcesImpl(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)Landroid/content/res/ResourcesImpl;

    move-result-object v0

    return-object v0

    .line 94
    :cond_9
    new-instance v0, Landroid/content/res/ResourcesImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    return-object v0
.end method

.method public static blacklist createTypedArray(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .registers 2
    .param p0, "res"    # Landroid/content/res/Resources;

    .line 106
    sget-object v0, Landroid/content/res/ThemeManagerStub;->sResource:Landroid/content/res/IMiuiResource;

    if-eqz v0, :cond_9

    .line 107
    invoke-interface {v0, p0}, Landroid/content/res/IMiuiResource;->createTypedArray(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0

    .line 109
    :cond_9
    new-instance v0, Landroid/content/res/TypedArray;

    invoke-direct {v0, p0}, Landroid/content/res/TypedArray;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public static blacklist drawMiuiStroke(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .registers 3
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "path"    # Landroid/graphics/Path;

    .line 173
    sget-object v0, Landroid/content/res/ThemeManagerStub;->sMiuiThemeHelper:Landroid/content/res/IMiuiThemeHelper;

    if-eqz v0, :cond_7

    .line 174
    invoke-interface {v0, p0, p1}, Landroid/content/res/IMiuiThemeHelper;->drawMiuiStroke(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    .line 176
    :cond_7
    return-void
.end method

.method public static blacklist getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 11
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageItemName"    # Ljava/lang/String;
    .param p3, "resId"    # I
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 158
    sget-object v0, Landroid/content/res/ThemeManagerStub;->sMiuiThemeHelper:Landroid/content/res/IMiuiThemeHelper;

    if-eqz v0, :cond_e

    .line 159
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/res/IMiuiThemeHelper;->getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 161
    :cond_e
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist handleExtraConfigurationChanges(ILandroid/content/res/Configuration;)V
    .registers 3
    .param p0, "changes"    # I
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 99
    sget-object v0, Landroid/content/res/ThemeManagerStub;->sMiuiThemeHelper:Landroid/content/res/IMiuiThemeHelper;

    if-eqz v0, :cond_7

    .line 100
    invoke-interface {v0, p0, p1}, Landroid/content/res/IMiuiThemeHelper;->handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V

    .line 102
    :cond_7
    return-void
.end method

.method public static blacklist handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V
    .registers 3
    .param p0, "changes"    # I
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 130
    sget-object v0, Landroid/content/res/ThemeManagerStub;->sMiuiThemeHelper:Landroid/content/res/IMiuiThemeHelper;

    if-eqz v0, :cond_7

    .line 131
    invoke-interface {v0, p0, p1}, Landroid/content/res/IMiuiThemeHelper;->handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V

    .line 133
    :cond_7
    return-void
.end method

.method public static blacklist initActivityManagerServiceInjector(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 124
    sget-object v0, Landroid/content/res/ThemeManagerStub;->sMiuiThemeHelper:Landroid/content/res/IMiuiThemeHelper;

    if-eqz v0, :cond_7

    .line 125
    invoke-interface {v0, p0}, Landroid/content/res/IMiuiThemeHelper;->initActivityManagerServiceInjector(Landroid/content/Context;)V

    .line 127
    :cond_7
    return-void
.end method

.method public static blacklist initMiuiResource(Landroid/content/res/Resources;Ljava/lang/String;)V
    .registers 3
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 83
    sget-object v0, Landroid/content/res/ThemeManagerStub;->sResource:Landroid/content/res/IMiuiResource;

    if-eqz v0, :cond_7

    .line 84
    invoke-interface {v0, p0, p1}, Landroid/content/res/IMiuiResource;->initMiuiResource(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 86
    :cond_7
    return-void
.end method

.method public static blacklist needNewResources(I)Z
    .registers 2
    .param p0, "changes"    # I

    .line 136
    sget-object v0, Landroid/content/res/ThemeManagerStub;->sMiuiThemeHelper:Landroid/content/res/IMiuiThemeHelper;

    if-eqz v0, :cond_9

    .line 137
    invoke-interface {v0, p0}, Landroid/content/res/IMiuiThemeHelper;->needNewResources(I)Z

    move-result v0

    return v0

    .line 139
    :cond_9
    const/4 v0, 0x0

    return v0
.end method
