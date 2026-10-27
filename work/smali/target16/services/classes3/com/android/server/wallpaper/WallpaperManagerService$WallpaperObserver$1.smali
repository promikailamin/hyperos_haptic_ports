.class public Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "WallpaperManagerService.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

.field public final synthetic val$wallpaper:Lcom/android/server/wallpaper/WallpaperData;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;Lcom/android/server/wallpaper/WallpaperData;)V
    .registers 3

    .line 357
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->val$wallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .registers 3

    .line 363
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->val$wallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-static {p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mnotifyWallpaperComplete(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V

    .line 364
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->this$1:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver$1;->val$wallpaper:Lcom/android/server/wallpaper/WallpaperData;

    invoke-static {p1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mnotifyWallpaperChanged(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperData;)V

    return-void
.end method
