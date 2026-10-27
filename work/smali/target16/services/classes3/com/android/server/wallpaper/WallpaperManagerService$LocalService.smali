.class public final Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;
.super Lcom/android/server/wallpaper/WallpaperManagerInternal;
.source "WallpaperManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .registers 2

    .line 1594
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    return-void
.end method


# virtual methods
.method public onDisplayAddSystemDecorations(I)V
    .registers 2

    .line 1597
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$monDisplayAddSystemDecorationsInternal(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    return-void
.end method

.method public onDisplayRemoveSystemDecorations(I)V
    .registers 2

    .line 1604
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$monDisplayRemovedInternal(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    return-void
.end method

.method public onScreenTurnedOn(I)V
    .registers 2

    .line 1609
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mnotifyScreenTurnedOn(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    return-void
.end method

.method public onScreenTurningOn(I)V
    .registers 2

    .line 1614
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mnotifyScreenTurningOn(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    return-void
.end method
