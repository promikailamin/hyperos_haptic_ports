.class public Lcom/android/server/wallpaper/WallpaperManagerService$2;
.super Landroid/app/UidObserver;
.source "WallpaperManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .registers 2

    .line 1546
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidStateChanged(IIJI)V
    .registers 6

    .line 1550
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$2;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 p1, 0x2

    if-ne p2, p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mpauseOrResumeRenderingImmediately(Lcom/android/server/wallpaper/WallpaperManagerService;Z)V

    return-void
.end method
