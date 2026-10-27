.class public abstract Landroid/service/wallpaper/WallpaperService;
.super Landroid/app/Service;
.source "WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;,
        Landroid/service/wallpaper/WallpaperService$IWallpaperEngineWrapper;,
        Landroid/service/wallpaper/WallpaperService$Engine;,
        Landroid/service/wallpaper/WallpaperService$WallpaperCommand;
    }
.end annotation


# static fields
.field static final greylist-max-o DEBUG:Z = false

.field private static final blacklist DEFAULT_UPDATE_SCREENSHOT_DURATION:J = 0xea60L

.field private static final blacklist DIMMING_ANIMATION_DURATION_MS:J = 0x12cL

.field private static final greylist-max-o DO_ATTACH:I = 0xa

.field private static final greylist-max-o DO_DETACH:I = 0x14

.field private static final greylist-max-o DO_IN_AMBIENT_MODE:I = 0x32

.field private static final greylist-max-o DO_SET_DESIRED_SIZE:I = 0x1e

.field private static final greylist-max-o DO_SET_DISPLAY_PADDING:I = 0x28

.field private static final blacklist ENABLE_WALLPAPER_DIMMING:Z

.field private static final blacklist LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

.field private static final blacklist MIN_BITMAP_SCREENSHOT_WIDTH:I = 0x40

.field static final blacklist MIN_PAGE_ALLOWED_MARGIN:F = 0.05f

.field private static final blacklist MSG_REPORT_SHOWN:I = 0x27a6

.field private static final greylist-max-o MSG_REQUEST_WALLPAPER_COLORS:I = 0x2742

.field private static final blacklist MSG_SCALE_PREVIEW:I = 0x277e

.field private static final greylist-max-o MSG_TOUCH_EVENT:I = 0x2738

.field private static final blacklist MSG_UPDATE_DIMMING:I = 0x27d8

.field private static final greylist-max-o MSG_UPDATE_SURFACE:I = 0x2710

.field private static final greylist-max-o MSG_VISIBILITY_CHANGED:I = 0x271a

.field private static final greylist-max-o MSG_WALLPAPER_COMMAND:I = 0x2729

.field private static final greylist-max-o MSG_WALLPAPER_OFFSETS:I = 0x2724

.field private static final greylist-max-o MSG_WINDOW_MOVED:I = 0x2733

.field private static final greylist-max-r MSG_WINDOW_RESIZED:I = 0x272e

.field private static final blacklist MSG_ZOOM:I = 0x2774

.field private static final greylist-max-o NOTIFY_COLORS_RATE_LIMIT_MS:I = 0x3e8

.field private static final blacklist PROHIBITED_STEPS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.wallpaper.WallpaperService"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.service.wallpaper"

.field static final greylist-max-o TAG:Ljava/lang/String; = "WallpaperService"


# instance fields
.field private final greylist-max-o mActiveEngines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/wallpaper/WallpaperService$Engine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActiveEngines(Landroid/service/wallpaper/WallpaperService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misValid(Landroid/service/wallpaper/WallpaperService;Landroid/graphics/RectF;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService;->isValid(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetENABLE_WALLPAPER_DIMMING()Z
    .registers 1

    sget-boolean v0, Landroid/service/wallpaper/WallpaperService;->ENABLE_WALLPAPER_DIMMING:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetPROHIBITED_STEPS()Ljava/util/List;
    .registers 1

    sget-object v0, Landroid/service/wallpaper/WallpaperService;->PROHIBITED_STEPS:Ljava/util/List;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 148
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Landroid/service/wallpaper/WallpaperService;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    .line 170
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Float;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 171
    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 170
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/service/wallpaper/WallpaperService;->PROHIBITED_STEPS:Ljava/util/List;

    .line 175
    nop

    .line 176
    const-string/jumbo v0, "persist.debug.enable_wallpaper_dimming"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/service/wallpaper/WallpaperService;->ENABLE_WALLPAPER_DIMMING:Z

    .line 175
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 124
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist inRectFRange(F)Z
    .registers 3
    .param p1, "number"    # F

    .line 2165
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_d

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private blacklist isValid(Landroid/graphics/RectF;)Z
    .registers 5
    .param p1, "area"    # Landroid/graphics/RectF;

    .line 2158
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2159
    :cond_4
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1e

    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1e

    sget-object v1, Landroid/service/wallpaper/WallpaperService;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    .line 2160
    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    nop

    .line 2161
    .local v0, "valid":Z
    :goto_1f
    return v0
.end method


# virtual methods
.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2498
    const-string v0, "State of wallpaper "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2499
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_31

    .line 2500
    iget-object v2, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/wallpaper/WallpaperService$Engine;

    .line 2501
    .local v2, "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    const-string v3, "  Engine "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2502
    const-string v3, "    "

    invoke-virtual {v2, v3, p1, p2, p3}, Landroid/service/wallpaper/WallpaperService$Engine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2499
    .end local v2    # "engine":Landroid/service/wallpaper/WallpaperService$Engine;
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 2504
    .end local v1    # "i":I
    :cond_31
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 2485
    new-instance v0, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;

    invoke-direct {v0, p0, p0}, Landroid/service/wallpaper/WallpaperService$IWallpaperServiceWrapper;-><init>(Landroid/service/wallpaper/WallpaperService;Landroid/service/wallpaper/WallpaperService;)V

    return-object v0
.end method

.method public whitelist onCreate()V
    .registers 1

    .line 2467
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2468
    return-void
.end method

.method public abstract whitelist onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
.end method

.method public whitelist onDestroy()V
    .registers 3

    .line 2472
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2473
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 2474
    iget-object v1, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/wallpaper/WallpaperService$Engine;

    invoke-virtual {v1}, Landroid/service/wallpaper/WallpaperService$Engine;->detach()V

    .line 2473
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2476
    .end local v0    # "i":I
    :cond_1a
    iget-object v0, p0, Landroid/service/wallpaper/WallpaperService;->mActiveEngines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2477
    return-void
.end method
