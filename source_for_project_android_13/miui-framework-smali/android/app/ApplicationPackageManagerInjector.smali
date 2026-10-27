.class public Landroid/app/ApplicationPackageManagerInjector;
.super Ljava/lang/Object;
.source "ApplicationPackageManagerInjector.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ApplicationPackageManagerInjector"

.field private static final blacklist sNetflixPackage:Ljava/lang/String; = "com.netflix.mediaclient"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist hookGetBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Z
    .registers 4
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "badgeDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "badgeLocation"    # Landroid/graphics/Rect;

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist hookGetPackageInfo(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Landroid/content/pm/PackageInfo;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;
    .param p2, "flags"    # I

    .line 42
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_5

    .line 43
    return-object p1

    .line 46
    :cond_5
    if-eqz p1, :cond_79

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.netflix.mediaclient"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_79

    .line 51
    :cond_12
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/os/MiuiInit;->isPreinstalledPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 52
    return-object p1

    .line 56
    :cond_1b
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 57
    .local v0, "appId":I
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-eq v0, v1, :cond_2e

    .line 58
    return-object p1

    .line 60
    :cond_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HookPackageInfo for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from appId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApplicationPackageManagerInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 64
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lmiui/os/MiuiInit;->getPreinstalledAppVersion(Ljava/lang/String;)I

    move-result v1

    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v1, v2, :cond_78

    .line 65
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 68
    :cond_78
    return-object p1

    .line 47
    .end local v0    # "appId":I
    :cond_79
    :goto_79
    return-object p1
.end method
