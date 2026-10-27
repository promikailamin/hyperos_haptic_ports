.class public Landroid/app/WallpaperManagerImpl;
.super Ljava/lang/Object;
.source "WallpaperManagerImpl.java"

# interfaces
.implements Landroid/app/WallpaperManagerStub;


# static fields
.field private static final blacklist ACTION_WALLPAPER_CONTROLLER:Ljava/lang/String; = "android.service.wallpaper.WallPaperControllerService"

.field private static final blacklist COMMAND_CLEAR_WALLPAPER:Ljava/lang/String; = "clear_wallpaper"

.field private static final blacklist COMMAND_UPDATE_WALLPAPER:Ljava/lang/String; = "update_wallpaper"

.field private static final blacklist EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final blacklist EXTRA_COMMAND:Ljava/lang/String; = "command"

.field private static final blacklist EXTRA_WHICH_WALLPAPER:Ljava/lang/String; = "which_wallpaper"

.field private static final blacklist PACKAGE_MI_WALLPAPER:Ljava/lang/String; = "com.miui.miwallpaper"

.field private static final blacklist PACKAGE_THEME_MANAGER:Ljava/lang/String; = "com.android.thememanager"

.field private static final blacklist TAG:Ljava/lang/String; = "WallpaperManagerImpl"

.field private static final blacklist WALLPAPER_SET_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/app/WallpaperManagerImpl;->WALLPAPER_SET_PACKAGES:Ljava/util/List;

    .line 33
    const-string v1, "com.miui.miwallpaper"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    const-string v1, "com.android.thememanager"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist notifyWallpaperChanged(Landroid/content/Context;ILjava/lang/String;IZ)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "which"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "isClear"    # Z

    .line 41
    sget-object v0, Landroid/app/WallpaperManagerImpl;->WALLPAPER_SET_PACKAGES:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 42
    return-void

    .line 45
    :cond_9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.service.wallpaper.WallPaperControllerService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v1, "com.miui.miwallpaper"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    if-eqz p5, :cond_1d

    const-string v1, "clear_wallpaper"

    goto :goto_1f

    :cond_1d
    const-string v1, "update_wallpaper"

    :goto_1f
    const-string v2, "command"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v1, "calling_package"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v1, "which_wallpaper"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyWallpaperChanged, which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callingPackage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WallpaperManagerImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 56
    return-void
.end method
