.class final Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;
.super Ljava/lang/Object;
.source "WallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WallpaperController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FindWallpaperTargetResult"
.end annotation


# instance fields
.field isWallpaperTargetForLetterbox:Z

.field resetTopWallpaper:Z

.field topWallpaper:Lcom/android/server/wm/WindowState;

.field useTopWallpaperAsTarget:Z

.field wallpaperTarget:Lcom/android/server/wm/WindowState;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 968
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    .line 969
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    .line 970
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 971
    iput-boolean v1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    .line 972
    iput-boolean v1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .registers 2

    .line 991
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    .line 992
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 993
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    .line 994
    iput-boolean v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    .line 995
    iput-boolean v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    .line 996
    return-void
.end method

.method setIsWallpaperTargetForLetterbox(Z)V
    .registers 2
    .param p1, "isWallpaperTargetForLetterbox"    # Z

    .line 987
    iput-boolean p1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->isWallpaperTargetForLetterbox:Z

    .line 988
    return-void
.end method

.method setTopWallpaper(Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 975
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    .line 976
    return-void
.end method

.method setUseTopWallpaperAsTarget(Z)V
    .registers 2
    .param p1, "topWallpaperAsTarget"    # Z

    .line 983
    iput-boolean p1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    .line 984
    return-void
.end method

.method setWallpaperTarget(Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 979
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 980
    return-void
.end method
