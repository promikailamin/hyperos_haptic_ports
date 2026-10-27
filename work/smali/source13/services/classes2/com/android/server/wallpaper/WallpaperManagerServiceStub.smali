.class public interface abstract Lcom/android/server/wallpaper/WallpaperManagerServiceStub;
.super Ljava/lang/Object;
.source "WallpaperManagerServiceStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/wallpaper/WallpaperManagerServiceStub;
    .registers 1

    .line 16
    const-class v0, Lcom/android/server/wallpaper/WallpaperManagerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerServiceStub;

    return-object v0
.end method


# virtual methods
.method public checkAndConfigFrameworkVersionToWallpaper(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    return-void
.end method

.method public getBlurWallpaper(Landroid/app/IWallpaperManagerCallback;)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleWallpaperObserverEvent(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2
    .param p1, "mWallpaperData"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 28
    return-void
.end method

.method public initBlurWallpaperThread()V
    .registers 1

    .line 37
    return-void
.end method

.method public abstract isMiuiWallpaperComponent(Landroid/content/ComponentName;)Z
.end method

.method public isSuperWallpaper(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public setWallpaperManagerService(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/content/Context;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/wallpaper/WallpaperManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .line 26
    return-void
.end method

.method public wallpaperManagerServiceReady()V
    .registers 1

    .line 34
    return-void
.end method
