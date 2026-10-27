.class final Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;
.super Lcom/android/server/wallpaper/WallpaperManagerInternal;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .registers 2

    .line 1810
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    return-void
.end method


# virtual methods
.method public getBlurWallpaper(Landroid/app/IWallpaperManagerCallback;)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;

    .line 1817
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mgetBlurWallpaperInternal(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/IWallpaperManagerCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public onDisplayReady(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 1813
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$monDisplayReadyInternal(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 1814
    return-void
.end method
