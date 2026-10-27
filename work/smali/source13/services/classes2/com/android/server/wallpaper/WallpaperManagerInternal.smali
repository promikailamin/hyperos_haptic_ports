.class public abstract Lcom/android/server/wallpaper/WallpaperManagerInternal;
.super Ljava/lang/Object;
.source "WallpaperManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlurWallpaper(Landroid/app/IWallpaperManagerCallback;)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onDisplayReady(I)V
.end method
