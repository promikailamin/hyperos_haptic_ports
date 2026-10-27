.class public Landroid/content/res/IMiuiThemeHelperImpl;
.super Ljava/lang/Object;
.source "IMiuiThemeHelperImpl.java"

# interfaces
.implements Landroid/content/res/IMiuiThemeHelper;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createPathForMiui(Landroid/content/res/Resources;)Landroid/graphics/Path;
    .registers 3
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 44
    invoke-static {p1}, Landroid/graphics/drawable/AdaptiveIconDrawableInjector;->createPathFromMiui(Landroid/content/res/Resources;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public blacklist drawMiuiFullStroke(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 52
    invoke-static {p1, p2, p3}, Landroid/graphics/drawable/AdaptiveIconDrawableInjector;->drawMiuiFullStroke(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Rect;)V

    .line 53
    return-void
.end method

.method public blacklist drawMiuiStroke(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "path"    # Landroid/graphics/Path;

    .line 48
    invoke-static {p1, p2}, Landroid/graphics/drawable/AdaptiveIconDrawableInjector;->drawMiuiStroke(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    .line 49
    return-void
.end method

.method public blacklist getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "packageItemName"    # Ljava/lang/String;
    .param p4, "resid"    # I
    .param p5, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 40
    invoke-static {p1, p2, p3, p4, p5}, Landroid/app/MiuiThemeHelper;->getDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUid()I
    .registers 2

    .line 24
    const/16 v0, 0x17d5

    return v0
.end method

.method public blacklist handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V
    .registers 3
    .param p1, "changes"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 32
    invoke-static {p1, p2}, Landroid/app/MiuiThemeHelper;->handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V

    .line 33
    return-void
.end method

.method public blacklist initActivityManagerServiceInjector(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-static {}, Lmiui/content/res/IconCustomizer;->checkModIconsTimestamp()V

    .line 29
    return-void
.end method

.method public blacklist needNewResources(I)Z
    .registers 3
    .param p1, "changes"    # I

    .line 36
    invoke-static {p1}, Landroid/content/res/MiuiConfiguration;->needNewResources(I)Z

    move-result v0

    return v0
.end method

.method public blacklist relunchFlag(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 56
    invoke-static {p1}, Landroid/content/res/MiuiConfiguration;->relunchFlag(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
