.class public Lcom/android/server/wallpaper/WallpaperManagerService$6;
.super Landroid/app/UserSwitchObserver;
.source "WallpaperManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .registers 2

    .line 1716
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$6;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .registers 4

    .line 1719
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$6;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$merrorCheck(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 1720
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$6;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchUser(ILandroid/os/IRemoteCallback;)V

    return-void
.end method
