.class public interface abstract Lcom/android/server/wallpaper/IMiuiWallpaperManagerServiceEx;
.super Ljava/lang/Object;
.source "IMiuiWallpaperManagerServiceEx.java"


# virtual methods
.method public abstract getBlurWallpaper(Landroid/app/IWallpaperManagerCallback;)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract getCurrOffsets()[I
.end method

.method public abstract getWallpaperUserId()I
.end method

.method public abstract handleWallpaperObserverEvent(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
.end method

.method public abstract miuiSystemReady()V
.end method

.method public abstract reportWallpaper(Landroid/content/ComponentName;)V
.end method

.method public abstract scaleWallpaperBitmapToScreenSize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.end method

.method public abstract setCurrOffsets([I)V
.end method

.method public abstract setNextOffsets([I)V
.end method

.method public abstract updateWallpaperOffsets(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
.end method

.method public abstract wallpaperManagerServiceReady()V
.end method
