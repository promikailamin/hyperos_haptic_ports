.class public Lcom/android/server/wallpaper/WallpaperManagerService$3;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"

# interfaces
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .registers 2

    .line 1575
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$3;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardGoingAway()V
    .registers 1

    .line 1590
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$3;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mnotifyKeyguardGoingAway(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    return-void
.end method

.method public onKeyguardStateChanged(Z)V
    .registers 2

    if-eqz p1, :cond_8

    .line 1582
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$3;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mnotifyKeyguardAppearing(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    return-void

    .line 1584
    :cond_8
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$3;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mnotifyKeyguardGoingAway(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    return-void
.end method
