.class public Landroid/app/WallpaperManager;
.super Ljava/lang/Object;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;,
        Landroid/app/WallpaperManager$OnColorsChangedListener;,
        Landroid/app/WallpaperManager$WallpaperSetCompletion;,
        Landroid/app/WallpaperManager$ColorManagementProxy;,
        Landroid/app/WallpaperManager$Globals;,
        Landroid/app/WallpaperManager$FastBitmapDrawable;,
        Landroid/app/WallpaperManager$SetWallpaperFlags;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CHANGE_LIVE_WALLPAPER:Ljava/lang/String; = "android.service.wallpaper.CHANGE_LIVE_WALLPAPER"

.field public static final whitelist ACTION_CROP_AND_SET_WALLPAPER:Ljava/lang/String; = "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

.field public static final whitelist ACTION_LIVE_WALLPAPER_CHOOSER:Ljava/lang/String; = "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER"

.field public static final whitelist COMMAND_DROP:Ljava/lang/String; = "android.home.drop"

.field public static final blacklist COMMAND_FREEZE:Ljava/lang/String; = "android.wallpaper.freeze"

.field public static final blacklist COMMAND_GOING_TO_SLEEP:Ljava/lang/String; = "android.wallpaper.goingtosleep"

.field public static final blacklist COMMAND_REAPPLY:Ljava/lang/String; = "android.wallpaper.reapply"

.field public static final whitelist COMMAND_SECONDARY_TAP:Ljava/lang/String; = "android.wallpaper.secondaryTap"

.field public static final whitelist COMMAND_TAP:Ljava/lang/String; = "android.wallpaper.tap"

.field public static final blacklist COMMAND_UNFREEZE:Ljava/lang/String; = "android.wallpaper.unfreeze"

.field public static final blacklist COMMAND_WAKING_UP:Ljava/lang/String; = "android.wallpaper.wakingup"

.field private static final greylist-max-o DEBUG:Z = false

.field public static final blacklist EXTRA_FROM_FOREGROUND_APP:Ljava/lang/String; = "android.service.wallpaper.extra.FROM_FOREGROUND_APP"

.field public static final whitelist EXTRA_LIVE_WALLPAPER_COMPONENT:Ljava/lang/String; = "android.service.wallpaper.extra.LIVE_WALLPAPER_COMPONENT"

.field public static final greylist-max-o EXTRA_NEW_WALLPAPER_ID:Ljava/lang/String; = "android.service.wallpaper.extra.ID"

.field public static final whitelist FLAG_LOCK:I = 0x2

.field public static final whitelist FLAG_SYSTEM:I = 0x1

.field private static final blacklist LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

.field private static final greylist-max-o PROP_LOCK_WALLPAPER:Ljava/lang/String; = "ro.config.lock_wallpaper"

.field private static final greylist-max-o PROP_WALLPAPER:Ljava/lang/String; = "ro.config.wallpaper"

.field private static final greylist-max-o PROP_WALLPAPER_COMPONENT:Ljava/lang/String; = "ro.config.wallpaper_component"

.field private static greylist-max-o TAG:Ljava/lang/String; = null

.field private static final blacklist VALUE_CMF_COLOR:Ljava/lang/String;

.field private static final blacklist WALLPAPER_CMF_PATH:Ljava/lang/String; = "/wallpaper/image/"

.field public static final whitelist WALLPAPER_PREVIEW_META_DATA:Ljava/lang/String; = "android.wallpaper.preview"

.field private static greylist sGlobals:Landroid/app/WallpaperManager$Globals;

.field private static final greylist-max-o sSync:Ljava/lang/Object;


# instance fields
.field private final blacklist mCmProxy:Landroid/app/WallpaperManager$ColorManagementProxy;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mWallpaperXStep:F

.field private greylist-max-o mWallpaperYStep:F

.field private final blacklist mWcgEnabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsGlobals()Landroid/app/WallpaperManager$Globals;
    .registers 1

    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 118
    const-string v0, "WallpaperManager"

    sput-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    .line 122
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Landroid/app/WallpaperManager;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    .line 132
    nop

    .line 133
    const-string/jumbo v0, "ro.boot.hardware.color"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/WallpaperManager;->VALUE_CMF_COLOR:Ljava/lang/String;

    .line 280
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 121
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 771
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 772
    iput-object v0, p0, Landroid/app/WallpaperManager;->mCmProxy:Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 773
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/WallpaperManager;->mWcgEnabled:Z

    .line 774
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/app/IWallpaperManager;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 6
    .param p1, "service"    # Landroid/app/IWallpaperManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 121
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 759
    iput-object p2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 760
    if-eqz p1, :cond_14

    .line 761
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/app/WallpaperManager;->initGlobals(Landroid/app/IWallpaperManager;Landroid/os/Looper;)V

    .line 764
    :cond_14
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 765
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    iput-boolean v0, p0, Landroid/app/WallpaperManager;->mWcgEnabled:Z

    .line 766
    new-instance v0, Landroid/app/WallpaperManager$ColorManagementProxy;

    invoke-direct {v0, p2}, Landroid/app/WallpaperManager$ColorManagementProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/WallpaperManager;->mCmProxy:Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 767
    return-void
.end method

.method private greylist-max-o copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .registers 3
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1742
    invoke-static {p1, p2}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 1743
    return-void
.end method

.method private static blacklist getCmfWallpaperPath()Ljava/lang/String;
    .registers 2

    .line 2399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/wallpaper/image/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "default_wallpaper_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/app/WallpaperManager;->VALUE_CMF_COLOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 2410
    const/4 v0, 0x0

    .line 2412
    .local v0, "cn":Landroid/content/ComponentName;
    const-string/jumbo v1, "ro.config.wallpaper_component"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2413
    .local v1, "flat":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 2414
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 2417
    :cond_12
    if-nez v0, :cond_25

    .line 2418
    const v2, 0x104032f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2419
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 2420
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 2425
    :cond_25
    if-eqz v0, :cond_38

    .line 2427
    :try_start_27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2428
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0xc0000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27 .. :try_end_34} :catch_36

    .line 2433
    nop

    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    goto :goto_38

    .line 2431
    :catch_36
    move-exception v2

    .line 2432
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .line 2436
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_38
    :goto_38
    return-object v0
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 780
    const-string/jumbo v0, "wallpaper"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    return-object v0
.end method

.method private static greylist-max-o getMaxCropRect(IIIIFF)Landroid/graphics/RectF;
    .registers 10
    .param p0, "inWidth"    # I
    .param p1, "inHeight"    # I
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F

    .line 1053
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 1055
    .local v0, "cropRect":Landroid/graphics/RectF;
    int-to-float v1, p0

    int-to-float v2, p1

    div-float/2addr v1, v2

    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_25

    .line 1056
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 1057
    int-to-float v1, p1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1058
    int-to-float v1, p2

    int-to-float v2, p1

    int-to-float v3, p3

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 1059
    .local v1, "cropWidth":F
    int-to-float v2, p0

    sub-float/2addr v2, v1

    mul-float/2addr v2, p4

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1060
    iget v2, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 1061
    .end local v1    # "cropWidth":F
    goto :goto_39

    .line 1062
    :cond_25
    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1063
    int-to-float v1, p0

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1064
    int-to-float v1, p3

    int-to-float v2, p0

    int-to-float v3, p2

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    .line 1065
    .local v1, "cropHeight":F
    int-to-float v2, p1

    sub-float/2addr v2, v1

    mul-float/2addr v2, p5

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 1066
    iget v2, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 1068
    .end local v1    # "cropHeight":F
    :goto_39
    return-object v0
.end method

.method private static blacklist getWallpaperInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .param p0, "path"    # Ljava/lang/String;

    .line 2385
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 2386
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2387
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2389
    :try_start_11
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_17

    return-object v1

    .line 2390
    :catch_17
    move-exception v1

    .line 2395
    .end local v0    # "file":Ljava/io/File;
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method static greylist-max-o initGlobals(Landroid/app/IWallpaperManager;Landroid/os/Looper;)V
    .registers 4
    .param p0, "service"    # Landroid/app/IWallpaperManager;
    .param p1, "looper"    # Landroid/os/Looper;

    .line 750
    sget-object v0, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 751
    :try_start_3
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    if-nez v1, :cond_e

    .line 752
    new-instance v1, Landroid/app/WallpaperManager$Globals;

    invoke-direct {v1, p0, p1}, Landroid/app/WallpaperManager$Globals;-><init>(Landroid/app/IWallpaperManager;Landroid/os/Looper;)V

    sput-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    .line 754
    :cond_e
    monitor-exit v0

    .line 755
    return-void

    .line 754
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public static greylist-max-r openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "which"    # I

    .line 2356
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 2361
    return-object v0

    .line 2363
    :cond_5
    const-string/jumbo v1, "ro.config.wallpaper"

    .line 2364
    .local v1, "whichProp":Ljava/lang/String;
    const v2, 0x1080288

    .line 2366
    .local v2, "defaultResId":I
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2367
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Landroid/app/WallpaperManager;->getWallpaperInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 2368
    .local v4, "wallpaperInputStream":Ljava/io/InputStream;
    if-eqz v4, :cond_16

    .line 2369
    return-object v4

    .line 2371
    :cond_16
    invoke-static {}, Landroid/app/WallpaperManager;->getCmfWallpaperPath()Ljava/lang/String;

    move-result-object v5

    .line 2372
    .local v5, "cmfPath":Ljava/lang/String;
    invoke-static {v5}, Landroid/app/WallpaperManager;->getWallpaperInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 2373
    .local v6, "cmfWallpaperInputStream":Ljava/io/InputStream;
    if-eqz v6, :cond_21

    .line 2374
    return-object v6

    .line 2377
    :cond_21
    :try_start_21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_29
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_21 .. :try_end_29} :catch_2a

    return-object v0

    .line 2378
    :catch_2a
    move-exception v7

    .line 2381
    return-object v0
.end method

.method private final greylist-max-o validateRect(Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 1709
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_12

    .line 1710
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "visibleCrop rectangle must be valid and non-empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1712
    :cond_12
    :goto_12
    return-void
.end method


# virtual methods
.method public blacklist addOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;Ljava/util/List;)V
    .registers 12
    .param p1, "callback"    # Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1310
    .local p2, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 1311
    .local v1, "region":Landroid/graphics/RectF;
    sget-object v2, Landroid/app/WallpaperManager;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1315
    .end local v1    # "region":Landroid/graphics/RectF;
    goto :goto_4

    .line 1312
    .restart local v1    # "region":Landroid/graphics/RectF;
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Regions must be within bounds "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1316
    .end local v1    # "region":Landroid/graphics/RectF;
    :cond_32
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    const/4 v6, 0x1

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1317
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v7

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v8

    .line 1316
    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Landroid/app/WallpaperManager$Globals;->addOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;Ljava/util/List;III)V

    .line 1318
    return-void
.end method

.method public whitelist addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1230
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;I)V

    .line 1231
    return-void
.end method

.method public greylist addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;I)V
    .registers 6
    .param p1, "listener"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userId"    # I

    .line 1244
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/app/WallpaperManager$Globals;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;II)V

    .line 1245
    return-void
.end method

.method public whitelist clear()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2319
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;Z)I

    .line 2320
    invoke-static {}, Landroid/app/WallpaperManagerStub;->getInstance()Landroid/app/WallpaperManagerStub;

    move-result-object v3

    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2321
    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v7

    .line 2320
    const/4 v5, 0x1

    const/4 v8, 0x1

    invoke-interface/range {v3 .. v8}, Landroid/app/WallpaperManagerStub;->notifyWallpaperChanged(Landroid/content/Context;ILjava/lang/String;IZ)V

    .line 2322
    return-void
.end method

.method public whitelist clear(I)V
    .registers 4
    .param p1, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2336
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_7

    .line 2337
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->clear()V

    .line 2339
    :cond_7
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_15

    .line 2340
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/app/WallpaperManager;->clearWallpaper(II)V

    .line 2342
    :cond_15
    return-void
.end method

.method public whitelist clearWallpaper()V
    .registers 9

    .line 2038
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/app/WallpaperManager;->clearWallpaper(II)V

    .line 2039
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/WallpaperManager;->clearWallpaper(II)V

    .line 2042
    invoke-static {}, Landroid/app/WallpaperManagerStub;->getInstance()Landroid/app/WallpaperManagerStub;

    move-result-object v2

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2043
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 2042
    const/4 v4, 0x3

    const/4 v7, 0x1

    invoke-interface/range {v2 .. v7}, Landroid/app/WallpaperManagerStub;->notifyWallpaperChanged(Landroid/content/Context;ILjava/lang/String;IZ)V

    .line 2045
    return-void
.end method

.method public whitelist clearWallpaper(II)V
    .registers 11
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2057
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 2062
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_2e

    .line 2065
    nop

    .line 2067
    invoke-static {}, Landroid/app/WallpaperManagerStub;->getInstance()Landroid/app/WallpaperManagerStub;

    move-result-object v2

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2068
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    const/4 v7, 0x1

    .line 2067
    move v4, p1

    invoke-interface/range {v2 .. v7}, Landroid/app/WallpaperManagerStub;->notifyWallpaperChanged(Landroid/content/Context;ILjava/lang/String;IZ)V

    .line 2069
    return-void

    .line 2063
    :catch_2e
    move-exception v0

    .line 2064
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2058
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_34
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist clearWallpaperOffsets(Landroid/os/IBinder;)V
    .registers 8
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 2299
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_12

    .line 2303
    nop

    .line 2304
    return-void

    .line 2301
    :catch_12
    move-exception v0

    .line 2302
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist forgetLoadedWallpaper()V
    .registers 2

    .line 1378
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 1379
    return-void
.end method

.method public greylist getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 1163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public greylist getBitmap(Z)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "hardware"    # Z

    .line 1175
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getBitmapAsUser(IZ)Landroid/graphics/Bitmap;
    .registers 11
    .param p1, "userId"    # I
    .param p2, "hardware"    # Z

    .line 1184
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v7

    .line 1185
    .local v7, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x1

    move v4, p1

    move v5, p2

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBuiltInDrawable()Landroid/graphics/drawable/Drawable;
    .registers 8

    .line 863
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBuiltInDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p1, "which"    # I

    .line 875
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;
    .registers 13
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "scaleToFit"    # Z
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F

    .line 894
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;
    .registers 26
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "scaleToFit"    # Z
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F
    .param p6, "which"    # I

    .line 916
    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p6

    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    if-eqz v4, :cond_1ea

    .line 921
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1f

    const/4 v5, 0x2

    if-ne v3, v5, :cond_17

    goto :goto_1f

    .line 922
    :cond_17
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Must request exactly one kind of wallpaper"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 925
    :cond_1f
    :goto_1f
    iget-object v5, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 926
    .local v5, "resources":Landroid/content/res/Resources;
    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v7, p4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 927
    .end local p4    # "horizontalAlignment":F
    .local v7, "horizontalAlignment":F
    move/from16 v8, p5

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v9, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 929
    .end local p5    # "verticalAlignment":F
    .local v6, "verticalAlignment":F
    iget-object v8, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v3}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v8

    .line 930
    .local v8, "wpStream":Ljava/io/InputStream;
    const/4 v15, 0x0

    if-nez v8, :cond_46

    .line 934
    return-object v15

    .line 936
    :cond_46
    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-direct {v10, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 937
    .local v10, "is":Ljava/io/InputStream;
    if-lez v0, :cond_1db

    if-gtz v2, :cond_56

    move/from16 p4, v6

    move/from16 v16, v7

    move-object v1, v15

    goto/16 :goto_1e0

    .line 945
    :cond_56
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 946
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v11, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 947
    invoke-static {v10, v15, v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 948
    iget v12, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v12, :cond_1ce

    iget v12, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v12, :cond_1ce

    .line 949
    iget v14, v11, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 950
    .local v14, "inWidth":I
    iget v13, v11, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 959
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .local v13, "inHeight":I
    new-instance v11, Ljava/io/BufferedInputStream;

    iget-object v12, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v12, v3}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v12, v11

    .line 963
    .end local v10    # "is":Ljava/io/InputStream;
    .local v12, "is":Ljava/io/InputStream;
    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 964
    .end local p1    # "outWidth":I
    .local v11, "outWidth":I
    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 965
    .end local p2    # "outHeight":I
    .local v2, "outHeight":I
    if-eqz p3, :cond_98

    .line 966
    move v10, v14

    move/from16 p1, v11

    .end local v11    # "outWidth":I
    .restart local p1    # "outWidth":I
    move v11, v13

    move-object v9, v12

    .end local v12    # "is":Ljava/io/InputStream;
    .local v9, "is":Ljava/io/InputStream;
    move/from16 v12, p1

    move/from16 v17, v13

    .end local v13    # "inHeight":I
    .local v17, "inHeight":I
    move v13, v2

    move/from16 v18, v14

    .end local v14    # "inWidth":I
    .local v18, "inWidth":I
    move v14, v7

    move v15, v6

    invoke-static/range {v10 .. v15}, Landroid/app/WallpaperManager;->getMaxCropRect(IIIIFF)Landroid/graphics/RectF;

    move-result-object v0

    move/from16 v10, p1

    move-object v14, v0

    .local v0, "cropRectF":Landroid/graphics/RectF;
    goto :goto_b2

    .line 969
    .end local v0    # "cropRectF":Landroid/graphics/RectF;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v17    # "inHeight":I
    .end local v18    # "inWidth":I
    .end local p1    # "outWidth":I
    .restart local v11    # "outWidth":I
    .restart local v12    # "is":Ljava/io/InputStream;
    .restart local v13    # "inHeight":I
    .restart local v14    # "inWidth":I
    :cond_98
    move/from16 p1, v11

    move-object v9, v12

    move/from16 v17, v13

    move/from16 v18, v14

    .end local v11    # "outWidth":I
    .end local v12    # "is":Ljava/io/InputStream;
    .end local v13    # "inHeight":I
    .end local v14    # "inWidth":I
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v17    # "inHeight":I
    .restart local v18    # "inWidth":I
    .restart local p1    # "outWidth":I
    move/from16 v10, p1

    .end local p1    # "outWidth":I
    .local v10, "outWidth":I
    sub-int v14, v18, v10

    int-to-float v0, v14

    mul-float/2addr v0, v7

    .line 970
    .local v0, "left":F
    int-to-float v11, v10

    add-float/2addr v11, v0

    .line 971
    .local v11, "right":F
    sub-int v13, v17, v2

    int-to-float v12, v13

    mul-float/2addr v12, v6

    .line 972
    .local v12, "top":F
    int-to-float v13, v2

    add-float/2addr v13, v12

    .line 973
    .local v13, "bottom":F
    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14, v0, v12, v11, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 975
    .end local v0    # "left":F
    .end local v11    # "right":F
    .end local v12    # "top":F
    .end local v13    # "bottom":F
    .local v14, "cropRectF":Landroid/graphics/RectF;
    :goto_b2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v11, v0

    .line 976
    .local v11, "roundedTrueCrop":Landroid/graphics/Rect;
    invoke-virtual {v14, v11}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 978
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1bf

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_cf

    move/from16 p1, v2

    move/from16 p4, v6

    move/from16 v16, v7

    goto/16 :goto_1c5

    .line 984
    :cond_cf
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, v10

    .line 985
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v12

    div-int/2addr v12, v2

    .line 984
    invoke-static {v0, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 988
    .local v12, "scaleDownSampleSize":I
    const/4 v13, 0x0

    .line 990
    .local v13, "decoder":Landroid/graphics/BitmapRegionDecoder;
    :try_start_de
    invoke-static {v9, v4}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e2} :catch_e4

    move-object v13, v0

    .line 993
    goto :goto_ee

    .line 991
    :catch_e4
    move-exception v0

    move-object v15, v0

    move-object v0, v15

    .line 992
    .local v0, "e":Ljava/io/IOException;
    sget-object v15, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v4, "cannot open region decoder for default wallpaper"

    invoke-static {v15, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    .end local v0    # "e":Ljava/io/IOException;
    :goto_ee
    const/4 v0, 0x0

    .line 996
    .local v0, "crop":Landroid/graphics/Bitmap;
    if-eqz v13, :cond_102

    .line 998
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 999
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v15, 0x1

    if-le v12, v15, :cond_fb

    .line 1000
    iput v12, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1002
    :cond_fb
    invoke-virtual {v13, v11, v4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1003
    invoke-virtual {v13}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 1006
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_102
    if-nez v0, :cond_13f

    .line 1009
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v15, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v15, v3}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v4, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1010
    .end local v9    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 1011
    .local v9, "fullSize":Landroid/graphics/Bitmap;
    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1012
    .local v15, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    if-le v12, v1, :cond_11a

    .line 1013
    iput v12, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1015
    :cond_11a
    const/4 v1, 0x0

    invoke-static {v4, v1, v15}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1016
    if-eqz v9, :cond_138

    .line 1017
    iget v1, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 p1, v0

    .end local v0    # "crop":Landroid/graphics/Bitmap;
    .local p1, "crop":Landroid/graphics/Bitmap;
    iget v0, v11, Landroid/graphics/Rect;->top:I

    .line 1018
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1019
    move-object/from16 p2, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .local p2, "is":Ljava/io/InputStream;
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 1017
    invoke-static {v9, v1, v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object/from16 v9, p2

    .end local p1    # "crop":Landroid/graphics/Bitmap;
    .restart local v0    # "crop":Landroid/graphics/Bitmap;
    goto :goto_141

    .line 1016
    .end local p2    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :cond_138
    move-object/from16 p1, v0

    move-object/from16 p2, v4

    .end local v0    # "crop":Landroid/graphics/Bitmap;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local p1    # "crop":Landroid/graphics/Bitmap;
    .restart local p2    # "is":Ljava/io/InputStream;
    move-object/from16 v9, p2

    goto :goto_141

    .line 1006
    .end local v15    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local p1    # "crop":Landroid/graphics/Bitmap;
    .end local p2    # "is":Ljava/io/InputStream;
    .restart local v0    # "crop":Landroid/graphics/Bitmap;
    .local v9, "is":Ljava/io/InputStream;
    :cond_13f
    move-object/from16 p1, v0

    .line 1023
    :goto_141
    if-nez v0, :cond_14c

    .line 1024
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "cannot decode default wallpaper"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const/4 v1, 0x0

    return-object v1

    .line 1029
    :cond_14c
    if-lez v10, :cond_1b3

    if-lez v2, :cond_1b3

    .line 1030
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, v10, :cond_164

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, v2, :cond_15d

    goto :goto_164

    :cond_15d
    move/from16 p1, v2

    move/from16 p4, v6

    move/from16 v16, v7

    goto :goto_1b9

    .line 1031
    :cond_164
    :goto_164
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1032
    .local v1, "m":Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-float v15, v15

    move/from16 p4, v6

    const/4 v6, 0x0

    .end local v6    # "verticalAlignment":F
    .local p4, "verticalAlignment":F
    invoke-direct {v3, v6, v6, v4, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1033
    .local v3, "cropRect":Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v15, v10

    move/from16 v16, v7

    .end local v7    # "horizontalAlignment":F
    .local v16, "horizontalAlignment":F
    int-to-float v7, v2

    invoke-direct {v4, v6, v6, v15, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1034
    .local v4, "returnRect":Landroid/graphics/RectF;
    sget-object v6, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v1, v3, v4, v6}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1035
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    .line 1036
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1035
    invoke-static {v6, v7, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1037
    .local v6, "tmp":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_1b0

    .line 1038
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1039
    .local v7, "c":Landroid/graphics/Canvas;
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 1040
    .local v15, "p":Landroid/graphics/Paint;
    move/from16 p1, v2

    const/4 v2, 0x1

    .end local v2    # "outHeight":I
    .local p1, "outHeight":I
    invoke-virtual {v15, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1041
    invoke-virtual {v7, v0, v1, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1042
    move-object v0, v6

    goto :goto_1b9

    .line 1037
    .end local v7    # "c":Landroid/graphics/Canvas;
    .end local v15    # "p":Landroid/graphics/Paint;
    .end local p1    # "outHeight":I
    .restart local v2    # "outHeight":I
    :cond_1b0
    move/from16 p1, v2

    .end local v2    # "outHeight":I
    .restart local p1    # "outHeight":I
    goto :goto_1b9

    .line 1029
    .end local v1    # "m":Landroid/graphics/Matrix;
    .end local v3    # "cropRect":Landroid/graphics/RectF;
    .end local v4    # "returnRect":Landroid/graphics/RectF;
    .end local v16    # "horizontalAlignment":F
    .end local p1    # "outHeight":I
    .end local p4    # "verticalAlignment":F
    .restart local v2    # "outHeight":I
    .local v6, "verticalAlignment":F
    .local v7, "horizontalAlignment":F
    :cond_1b3
    move/from16 p1, v2

    move/from16 p4, v6

    move/from16 v16, v7

    .line 1046
    .end local v2    # "outHeight":I
    .end local v6    # "verticalAlignment":F
    .end local v7    # "horizontalAlignment":F
    .restart local v16    # "horizontalAlignment":F
    .restart local p1    # "outHeight":I
    .restart local p4    # "verticalAlignment":F
    :goto_1b9
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1

    .line 978
    .end local v0    # "crop":Landroid/graphics/Bitmap;
    .end local v12    # "scaleDownSampleSize":I
    .end local v13    # "decoder":Landroid/graphics/BitmapRegionDecoder;
    .end local v16    # "horizontalAlignment":F
    .end local p1    # "outHeight":I
    .end local p4    # "verticalAlignment":F
    .restart local v2    # "outHeight":I
    .restart local v6    # "verticalAlignment":F
    .restart local v7    # "horizontalAlignment":F
    :cond_1bf
    move/from16 p1, v2

    move/from16 p4, v6

    move/from16 v16, v7

    .line 979
    .end local v2    # "outHeight":I
    .end local v6    # "verticalAlignment":F
    .end local v7    # "horizontalAlignment":F
    .restart local v16    # "horizontalAlignment":F
    .restart local p1    # "outHeight":I
    .restart local p4    # "verticalAlignment":F
    :goto_1c5
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "crop has bad values for full size image"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const/4 v1, 0x0

    return-object v1

    .line 948
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v14    # "cropRectF":Landroid/graphics/RectF;
    .end local v16    # "horizontalAlignment":F
    .end local v17    # "inHeight":I
    .end local v18    # "inWidth":I
    .end local p4    # "verticalAlignment":F
    .restart local v6    # "verticalAlignment":F
    .restart local v7    # "horizontalAlignment":F
    .local v10, "is":Ljava/io/InputStream;
    .local v11, "options":Landroid/graphics/BitmapFactory$Options;
    .local p1, "outWidth":I
    .local p2, "outHeight":I
    :cond_1ce
    move/from16 p4, v6

    move/from16 v16, v7

    move-object v1, v15

    .line 952
    .end local v6    # "verticalAlignment":F
    .end local v7    # "horizontalAlignment":F
    .restart local v16    # "horizontalAlignment":F
    .restart local p4    # "verticalAlignment":F
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v4, "default wallpaper dimensions are 0"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return-object v1

    .line 937
    .end local v11    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v16    # "horizontalAlignment":F
    .end local p4    # "verticalAlignment":F
    .restart local v6    # "verticalAlignment":F
    .restart local v7    # "horizontalAlignment":F
    :cond_1db
    move/from16 p4, v6

    move/from16 v16, v7

    move-object v1, v15

    .line 938
    .end local v6    # "verticalAlignment":F
    .end local v7    # "horizontalAlignment":F
    .restart local v16    # "horizontalAlignment":F
    .restart local p4    # "verticalAlignment":F
    :goto_1e0
    invoke-static {v10, v1, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 939
    .local v1, "fullSize":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v3

    .line 917
    .end local v1    # "fullSize":Landroid/graphics/Bitmap;
    .end local v5    # "resources":Landroid/content/res/Resources;
    .end local v8    # "wpStream":Ljava/io/InputStream;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v16    # "horizontalAlignment":F
    .local p4, "horizontalAlignment":F
    .restart local p5    # "verticalAlignment":F
    :cond_1ea
    move/from16 v7, p4

    move/from16 v8, p5

    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Landroid/os/DeadSystemException;

    invoke-direct {v3}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;
    .registers 2

    .line 2484
    iget-object v0, p0, Landroid/app/WallpaperManager;->mCmProxy:Landroid/app/WallpaperManager$ColorManagementProxy;

    return-object v0
.end method

.method public whitelist getCropAndSetWallpaperIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .registers 10
    .param p1, "imageUri"    # Landroid/net/Uri;

    .line 1461
    if-eqz p1, :cond_6e

    .line 1465
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1470
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1471
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1473
    .local v1, "cropAndSetWallpaperIntent":Landroid/content/Intent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1476
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1477
    .local v2, "homeIntent":Landroid/content/Intent;
    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1479
    .local v3, "resolvedHome":Landroid/content/pm/ResolveInfo;
    const/4 v4, 0x0

    if-eqz v3, :cond_47

    .line 1480
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1482
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 1484
    .local v5, "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_47

    .line 1485
    return-object v1

    .line 1490
    .end local v5    # "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_47
    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const v6, 0x10402d3

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1492
    .local v5, "cropperPackage":Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1493
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 1495
    .local v4, "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5e

    .line 1496
    return-object v1

    .line 1500
    :cond_5e
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Cannot use passed URI to set wallpaper; check that the type returned by ContentProvider matches image/*"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1466
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v1    # "cropAndSetWallpaperIntent":Landroid/content/Intent;
    .end local v2    # "homeIntent":Landroid/content/Intent;
    .end local v3    # "resolvedHome":Landroid/content/pm/ResolveInfo;
    .end local v4    # "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "cropperPackage":Ljava/lang/String;
    :cond_66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image URI must be of the content scheme type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1462
    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Image URI must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getCurrentWallpaperAsBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .line 839
    const-wide/16 v0, 0x2

    const-string v2, "getCurrentWallpaperAsBitmap"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 840
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperSnapshot(III)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 841
    .local v2, "bm":Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 842
    return-object v2
.end method

.method public whitelist getDesiredMinimumHeight()I
    .registers 3

    .line 1906
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string v1, "getDesiredMinimumHeight"

    invoke-static {v0, v1}, Landroid/os/StrictMode;->assertUiContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 1907
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 1912
    :try_start_f
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->getHeightHint(I)I

    move-result v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1f} :catch_20

    return v0

    .line 1913
    :catch_20
    move-exception v0

    .line 1914
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1908
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_26
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist getDesiredMinimumWidth()I
    .registers 3

    .line 1876
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string v1, "getDesiredMinimumWidth"

    invoke-static {v0, v1}, Landroid/os/StrictMode;->assertUiContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 1877
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 1882
    :try_start_f
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->getWidthHint(I)I

    move-result v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1f} :catch_20

    return v0

    .line 1883
    :catch_20
    move-exception v0

    .line 1884
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1878
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_26
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 825
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v0

    .line 826
    .local v0, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZILandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 827
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1f

    .line 828
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 829
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 830
    return-object v2

    .line 832
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1f
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist getFastDrawable()Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 1106
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v0

    .line 1107
    .local v0, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZILandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1108
    .local v1, "bm":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    if-eqz v1, :cond_16

    .line 1109
    new-instance v3, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v3, v1, v2}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$FastBitmapDrawable-IA;)V

    return-object v3

    .line 1111
    :cond_16
    return-object v2
.end method

.method public greylist getIWallpaperManager()Landroid/app/IWallpaperManager;
    .registers 2

    .line 787
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLockWallpaperAsBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 848
    const-wide/16 v0, 0x2

    const-string v2, "getLockWallpaperAsBitmap"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 849
    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    .line 850
    .local v2, "isKeyguardLocked":Z
    const/4 v3, 0x0

    .line 851
    .local v3, "bm":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_25

    .line 852
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperSnapshot(III)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 854
    :cond_25
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 855
    return-object v3
.end method

.method public whitelist getWallpaperColors(I)Landroid/app/WallpaperColors;
    .registers 3
    .param p1, "which"    # I

    .line 1287
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getWallpaperColors(II)Landroid/app/WallpaperColors;

    move-result-object v0

    return-object v0
.end method

.method public greylist getWallpaperColors(II)Landroid/app/WallpaperColors;
    .registers 5
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 1301
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string v1, "getWallpaperColors"

    invoke-static {v0, v1}, Landroid/os/StrictMode;->assertUiContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 1302
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/WallpaperManager$Globals;->getWallpaperColors(III)Landroid/app/WallpaperColors;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWallpaperDimAmount()F
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2111
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2116
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->getWallpaperDimAmount()F

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 2117
    :catch_13
    move-exception v0

    .line 2118
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2112
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p1, "which"    # I

    .line 1219
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public greylist getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;
    .registers 11
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 1345
    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    goto :goto_f

    .line 1346
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must request exactly one kind of wallpaper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1349
    :cond_f
    :goto_f
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 1354
    :try_start_17
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1355
    .local v6, "outParams":Landroid/os/Bundle;
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1356
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1355
    move v5, p1

    move v7, p2

    invoke-interface/range {v1 .. v7}, Landroid/app/IWallpaperManager;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_35} :catch_4d
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_35} :catch_36

    return-object v0

    .line 1359
    .end local v6    # "outParams":Landroid/os/Bundle;
    :catch_36
    move-exception v0

    .line 1360
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1b

    if-ge v1, v2, :cond_4c

    .line 1361
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "No permission to access wallpaper, suppressing exception to avoid crashing legacy app."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    const/4 v1, 0x0

    return-object v1

    .line 1365
    :cond_4c
    throw v0

    .line 1357
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_4d
    move-exception v0

    .line 1358
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1350
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_53
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist getWallpaperId(I)I
    .registers 3
    .param p1, "which"    # I

    .line 1426
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getWallpaperIdForUser(II)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getWallpaperIdForUser(II)I
    .registers 5
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 1436
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1440
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->getWallpaperIdForUser(II)I

    move-result v0

    return v0

    .line 1437
    :cond_13
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "which":I
    .end local p2    # "userId":I
    throw v0
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_25

    .line 1442
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "which":I
    .restart local p2    # "userId":I
    :catch_25
    move-exception v0

    .line 1443
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getWallpaperInfo()Landroid/app/WallpaperInfo;
    .registers 2

    .line 1387
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWallpaperInfo(I)Landroid/app/WallpaperInfo;
    .registers 4
    .param p1, "userId"    # I

    .line 1400
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1404
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object v0

    return-object v0

    .line 1401
    :cond_13
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "userId":I
    throw v0
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_25

    .line 1406
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "userId":I
    :catch_25
    move-exception v0

    .line 1407
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist hasResourceWallpaper(I)Z
    .registers 5
    .param p1, "resid"    # I

    .line 1845
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 1850
    :try_start_8
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1851
    .local v0, "resources":Landroid/content/res/Resources;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "res:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1852
    .local v1, "name":Ljava/lang/String;
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/app/IWallpaperManager;->hasNamedWallpaper(Ljava/lang/String;)Z

    move-result v2
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_30} :catch_31

    return v2

    .line 1853
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v1    # "name":Ljava/lang/String;
    :catch_31
    move-exception v0

    .line 1854
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1846
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_37
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist isSetWallpaperAllowed()Z
    .registers 3

    .line 2275
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2280
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    return v0

    .line 2281
    :catch_19
    move-exception v0

    .line 2282
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2276
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public greylist-max-o isWallpaperBackupEligible(I)Z
    .registers 6
    .param p1, "which"    # I

    .line 2465
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 2470
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IWallpaperManager;->isWallpaperBackupEligible(II)Z

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    return v0

    .line 2471
    :catch_19
    move-exception v0

    .line 2472
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception querying wallpaper backup eligibility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0

    .line 2466
    :cond_38
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist isWallpaperSupported()Z
    .registers 3

    .line 2255
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2260
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    return v0

    .line 2261
    :catch_19
    move-exception v0

    .line 2262
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2256
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist lockScreenWallpaperExists()Z
    .registers 3

    .line 2128
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2133
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->lockScreenWallpaperExists()Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 2134
    :catch_13
    move-exception v0

    .line 2135
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2129
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist peekBitmapDimensions()Landroid/graphics/Rect;
    .registers 5

    .line 1195
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1196
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 1195
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/WallpaperManager$Globals;->peekWallpaperDimensions(Landroid/content/Context;ZI)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public whitelist peekDrawable()Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 1081
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v0

    .line 1082
    .local v0, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZILandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1083
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1f

    .line 1084
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1085
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 1086
    return-object v2

    .line 1088
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_1f
    const/4 v2, 0x0

    return-object v2
.end method

.method public whitelist peekFastDrawable()Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 1123
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v0

    .line 1124
    .local v0, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZILandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1125
    .local v1, "bm":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    if-eqz v1, :cond_17

    .line 1126
    new-instance v3, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v3, v1, v2}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$FastBitmapDrawable-IA;)V

    return-object v3

    .line 1128
    :cond_17
    return-object v2
.end method

.method public blacklist removeOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;)V
    .registers 6
    .param p1, "callback"    # Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;

    .line 1324
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1325
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    .line 1324
    const/4 v3, 0x1

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/app/WallpaperManager$Globals;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;III)V

    .line 1326
    return-void
.end method

.method public whitelist removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V
    .registers 3
    .param p1, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;

    .line 1252
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;I)V

    .line 1253
    return-void
.end method

.method public greylist-max-o removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;I)V
    .registers 5
    .param p1, "callback"    # Landroid/app/WallpaperManager$OnColorsChangedListener;
    .param p2, "userId"    # I

    .line 1263
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/WallpaperManager$Globals;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;II)V

    .line 1264
    return-void
.end method

.method public whitelist sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .registers 15
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;

    .line 2218
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v7}, Landroid/view/IWindowSession;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    .line 2223
    nop

    .line 2224
    return-void

    .line 2221
    :catch_10
    move-exception v0

    .line 2222
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)I
    .registers 5
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1634
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I

    move-result v0

    return v0
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I
    .registers 12
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1661
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1662
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 1661
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZII)I

    move-result v0

    return v0
.end method

.method public greylist-max-p setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZII)I
    .registers 25
    .param p1, "fullImage"    # Landroid/graphics/Bitmap;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1675
    move-object/from16 v1, p0

    move-object/from16 v11, p2

    invoke-direct {v1, v11}, Landroid/app/WallpaperManager;->validateRect(Landroid/graphics/Rect;)V

    .line 1676
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 1680
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v12, v0

    .line 1681
    .local v12, "result":Landroid/os/Bundle;
    new-instance v9, Landroid/app/WallpaperManager$WallpaperSetCompletion;

    invoke-direct {v9, v1}, Landroid/app/WallpaperManager$WallpaperSetCompletion;-><init>(Landroid/app/WallpaperManager;)V

    .line 1683
    .local v9, "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    :try_start_1a
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v0, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1684
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1683
    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object v7, v12

    move/from16 v8, p4

    move/from16 v10, p5

    invoke-interface/range {v2 .. v10}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_34} :catch_7f

    move-object v2, v0

    .line 1686
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_74

    .line 1687
    const/4 v3, 0x0

    .line 1689
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_38
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v3, v0

    .line 1690
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_6a

    const/16 v4, 0x5a

    move-object/from16 v5, p1

    :try_start_44
    invoke-virtual {v5, v0, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1691
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1692
    invoke-virtual {v9}, Landroid/app/WallpaperManager$WallpaperSetCompletion;->waitForCompletion()V

    .line 1695
    invoke-static {}, Landroid/app/WallpaperManagerStub;->getInstance()Landroid/app/WallpaperManagerStub;

    move-result-object v13

    iget-object v14, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1696
    invoke-virtual {v14}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v16

    iget-object v0, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v17

    const/16 v18, 0x0

    .line 1695
    move/from16 v15, p4

    invoke-interface/range {v13 .. v18}, Landroid/app/WallpaperManagerStub;->notifyWallpaperChanged(Landroid/content/Context;ILjava/lang/String;IZ)V
    :try_end_64
    .catchall {:try_start_44 .. :try_end_64} :catchall_68

    .line 1699
    :try_start_64
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1700
    goto :goto_76

    .line 1699
    :catchall_68
    move-exception v0

    goto :goto_6d

    :catchall_6a
    move-exception v0

    move-object/from16 v5, p1

    :goto_6d
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1700
    nop

    .end local v9    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .end local v12    # "result":Landroid/os/Bundle;
    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "fullImage":Landroid/graphics/Bitmap;
    .end local p2    # "visibleCropHint":Landroid/graphics/Rect;
    .end local p3    # "allowBackup":Z
    .end local p4    # "which":I
    .end local p5    # "userId":I
    throw v0
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_72} :catch_72

    .line 1702
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .restart local v12    # "result":Landroid/os/Bundle;
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "fullImage":Landroid/graphics/Bitmap;
    .restart local p2    # "visibleCropHint":Landroid/graphics/Rect;
    .restart local p3    # "allowBackup":Z
    .restart local p4    # "which":I
    .restart local p5    # "userId":I
    :catch_72
    move-exception v0

    goto :goto_82

    .line 1686
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_74
    move-object/from16 v5, p1

    .line 1704
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_76
    nop

    .line 1705
    const/4 v0, 0x0

    const-string v2, "android.service.wallpaper.extra.ID"

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 1702
    :catch_7f
    move-exception v0

    move-object/from16 v5, p1

    .line 1703
    .local v0, "e":Landroid/os/RemoteException;
    :goto_82
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1677
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v9    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .end local v12    # "result":Landroid/os/Bundle;
    :cond_87
    move-object/from16 v5, p1

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "WallpaperService not running"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1600
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)I

    .line 1601
    return-void
.end method

.method public whitelist setDisplayOffset(Landroid/os/IBinder;II)V
    .registers 6
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2022
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/view/IWindowSession;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 2027
    nop

    .line 2028
    return-void

    .line 2025
    :catch_9
    move-exception v0

    .line 2026
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist setDisplayPadding(Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "padding"    # Landroid/graphics/Rect;

    .line 1995
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "setDisplayPadding"

    invoke-static {v0, v1}, Landroid/os/StrictMode;->assertUiContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 1997
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 2001
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2002
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    .line 2001
    invoke-interface {v0, p1, v1, v2}, Landroid/app/IWallpaperManager;->setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;I)V

    .line 2006
    nop

    .line 2007
    return-void

    .line 1998
    :cond_27
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "padding":Landroid/graphics/Rect;
    throw v0
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_39} :catch_39

    .line 2004
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "padding":Landroid/graphics/Rect;
    :catch_39
    move-exception v0

    .line 2005
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist-max-o setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    .registers 4
    .param p1, "callback"    # Landroid/app/IWallpaperManagerCallback;

    .line 2446
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 2452
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 2453
    :catch_13
    move-exception v0

    .line 2454
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2447
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist setResource(II)I
    .registers 23
    .param p1, "resid"    # I
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1540
    move-object/from16 v1, p0

    move/from16 v2, p1

    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_99

    .line 1544
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v12, v0

    .line 1545
    .local v12, "result":Landroid/os/Bundle;
    new-instance v10, Landroid/app/WallpaperManager$WallpaperSetCompletion;

    invoke-direct {v10, v1}, Landroid/app/WallpaperManager$WallpaperSetCompletion;-><init>(Landroid/app/WallpaperManager;)V

    .line 1547
    .local v10, "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    :try_start_17
    iget-object v0, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move-object v13, v0

    .line 1549
    .local v13, "resources":Landroid/content/res/Resources;
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "res:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1550
    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1551
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1552
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v11

    .line 1549
    move-object v8, v12

    move/from16 v9, p2

    invoke-interface/range {v3 .. v11}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_51} :catch_93

    move-object v3, v0

    .line 1553
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v3, :cond_8a

    .line 1554
    const/4 v4, 0x0

    .line 1555
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 1557
    .local v5, "ok":Z
    :try_start_56
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v4, v0

    .line 1558
    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0, v4}, Landroid/app/WallpaperManager;->copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 1561
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1562
    invoke-virtual {v10}, Landroid/app/WallpaperManager$WallpaperSetCompletion;->waitForCompletion()V

    .line 1565
    invoke-static {}, Landroid/app/WallpaperManagerStub;->getInstance()Landroid/app/WallpaperManagerStub;

    move-result-object v14

    iget-object v15, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1566
    invoke-virtual {v15}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v17

    iget-object v0, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v18

    const/16 v19, 0x0

    .line 1565
    move/from16 v16, p2

    invoke-interface/range {v14 .. v19}, Landroid/app/WallpaperManagerStub;->notifyWallpaperChanged(Landroid/content/Context;ILjava/lang/String;IZ)V
    :try_end_80
    .catchall {:try_start_56 .. :try_end_80} :catchall_84

    .line 1571
    :try_start_80
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1572
    goto :goto_8a

    .line 1571
    :catchall_84
    move-exception v0

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1572
    nop

    .end local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .end local v12    # "result":Landroid/os/Bundle;
    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "resid":I
    .end local p2    # "which":I
    throw v0
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_8a} :catch_93

    .line 1576
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "ok":Z
    .end local v13    # "resources":Landroid/content/res/Resources;
    .restart local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .restart local v12    # "result":Landroid/os/Bundle;
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "resid":I
    .restart local p2    # "which":I
    :cond_8a
    :goto_8a
    nop

    .line 1577
    const/4 v0, 0x0

    const-string v3, "android.service.wallpaper.extra.ID"

    invoke-virtual {v12, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 1574
    :catch_93
    move-exception v0

    .line 1575
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1541
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v10    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .end local v12    # "result":Landroid/os/Bundle;
    :cond_99
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Landroid/os/DeadSystemException;

    invoke-direct {v3}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist setResource(I)V
    .registers 3
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1520
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->setResource(II)I

    .line 1521
    return-void
.end method

.method public whitelist setStream(Ljava/io/InputStream;Landroid/graphics/Rect;Z)I
    .registers 5
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1777
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I

    move-result v0

    return v0
.end method

.method public whitelist setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I
    .registers 24
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .param p2, "visibleCropHint"    # Landroid/graphics/Rect;
    .param p3, "allowBackup"    # Z
    .param p4, "which"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1805
    move-object/from16 v1, p0

    move-object/from16 v11, p2

    invoke-direct {v1, v11}, Landroid/app/WallpaperManager;->validateRect(Landroid/graphics/Rect;)V

    .line 1806
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 1810
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v12, v0

    .line 1811
    .local v12, "result":Landroid/os/Bundle;
    new-instance v9, Landroid/app/WallpaperManager$WallpaperSetCompletion;

    invoke-direct {v9, v1}, Landroid/app/WallpaperManager$WallpaperSetCompletion;-><init>(Landroid/app/WallpaperManager;)V

    .line 1813
    .local v9, "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    :try_start_1a
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v0, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1814
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1815
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v10

    .line 1813
    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object v7, v12

    move/from16 v8, p4

    invoke-interface/range {v2 .. v10}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_38} :catch_7f

    move-object v2, v0

    .line 1816
    .local v2, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_74

    .line 1817
    const/4 v3, 0x0

    .line 1819
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_3c
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v0, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_6a

    move-object v3, v0

    .line 1820
    move-object/from16 v4, p1

    :try_start_44
    invoke-direct {v1, v4, v3}, Landroid/app/WallpaperManager;->copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 1821
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 1822
    invoke-virtual {v9}, Landroid/app/WallpaperManager$WallpaperSetCompletion;->waitForCompletion()V

    .line 1825
    invoke-static {}, Landroid/app/WallpaperManagerStub;->getInstance()Landroid/app/WallpaperManagerStub;

    move-result-object v13

    iget-object v14, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1826
    invoke-virtual {v14}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v16

    iget-object v0, v1, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v17

    const/16 v18, 0x0

    .line 1825
    move/from16 v15, p4

    invoke-interface/range {v13 .. v18}, Landroid/app/WallpaperManagerStub;->notifyWallpaperChanged(Landroid/content/Context;ILjava/lang/String;IZ)V
    :try_end_64
    .catchall {:try_start_44 .. :try_end_64} :catchall_68

    .line 1829
    :try_start_64
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1830
    goto :goto_76

    .line 1829
    :catchall_68
    move-exception v0

    goto :goto_6d

    :catchall_6a
    move-exception v0

    move-object/from16 v4, p1

    :goto_6d
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1830
    nop

    .end local v9    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .end local v12    # "result":Landroid/os/Bundle;
    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "bitmapData":Ljava/io/InputStream;
    .end local p2    # "visibleCropHint":Landroid/graphics/Rect;
    .end local p3    # "allowBackup":Z
    .end local p4    # "which":I
    throw v0
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_64 .. :try_end_72} :catch_72

    .line 1832
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .restart local v12    # "result":Landroid/os/Bundle;
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "bitmapData":Ljava/io/InputStream;
    .restart local p2    # "visibleCropHint":Landroid/graphics/Rect;
    .restart local p3    # "allowBackup":Z
    .restart local p4    # "which":I
    :catch_72
    move-exception v0

    goto :goto_82

    .line 1816
    .restart local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :cond_74
    move-object/from16 v4, p1

    .line 1834
    .end local v2    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_76
    nop

    .line 1836
    const/4 v0, 0x0

    const-string v2, "android.service.wallpaper.extra.ID"

    invoke-virtual {v12, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 1832
    :catch_7f
    move-exception v0

    move-object/from16 v4, p1

    .line 1833
    .local v0, "e":Landroid/os/RemoteException;
    :goto_82
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1807
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v9    # "completion":Landroid/app/WallpaperManager$WallpaperSetCompletion;
    .end local v12    # "result":Landroid/os/Bundle;
    :cond_87
    move-object/from16 v4, p1

    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "WallpaperService not running"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist setStream(Ljava/io/InputStream;)V
    .registers 4
    .param p1, "bitmapData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1737
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;Z)I

    .line 1738
    return-void
.end method

.method public whitelist setWallpaperComponent(Landroid/content/ComponentName;)Z
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2079
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->setWallpaperComponent(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public greylist setWallpaperComponent(Landroid/content/ComponentName;I)Z
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 2151
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2156
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/IWallpaperManager;->setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_19

    .line 2158
    const/4 v0, 0x1

    return v0

    .line 2159
    :catch_19
    move-exception v0

    .line 2160
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2152
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1f
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist setWallpaperDimAmount(F)V
    .registers 4
    .param p1, "dimAmount"    # F
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2091
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2096
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-static {p1}, Landroid/util/MathUtils;->saturate(F)F

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->setWallpaperDimAmount(F)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_17

    .line 2099
    nop

    .line 2100
    return-void

    .line 2097
    :catch_17
    move-exception v0

    .line 2098
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2092
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist setWallpaperOffsetSteps(FF)V
    .registers 3
    .param p1, "xStep"    # F
    .param p2, "yStep"    # F

    .line 2197
    iput p1, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 2198
    iput p2, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 2199
    return-void
.end method

.method public whitelist setWallpaperOffsets(Landroid/os/IBinder;FF)V
    .registers 10
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "xOffset"    # F
    .param p3, "yOffset"    # F

    .line 2180
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iget v4, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    iget v5, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    .line 2185
    nop

    .line 2186
    return-void

    .line 2183
    :catch_10
    move-exception v0

    .line 2184
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setWallpaperZoomOut(Landroid/os/IBinder;F)V
    .registers 6
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "zoom"    # F

    .line 2236
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_25

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_25

    .line 2239
    if-eqz p1, :cond_1c

    .line 2243
    :try_start_d
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowSession;->setWallpaperZoomOut(Landroid/os/IBinder;F)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_16

    .line 2246
    nop

    .line 2247
    return-void

    .line 2244
    :catch_16
    move-exception v0

    .line 2245
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2240
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "windowToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2237
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "zoom must be between 0 and 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist shouldEnableWideColorGamut()Z
    .registers 2

    .line 805
    iget-boolean v0, p0, Landroid/app/WallpaperManager;->mWcgEnabled:Z

    return v0
.end method

.method public whitelist suggestDesiredDimensions(II)V
    .registers 9
    .param p1, "minimumWidth"    # I
    .param p2, "minimumHeight"    # I

    .line 1938
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "suggestDesiredDimensions"

    invoke-static {v0, v1}, Landroid/os/StrictMode;->assertUiContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 1950
    :try_start_8
    const-string/jumbo v0, "sys.max_texture_size"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_13
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_11

    .line 1953
    .local v0, "maximumTextureSize":I
    goto :goto_16

    .line 1976
    .end local v0    # "maximumTextureSize":I
    :catch_11
    move-exception v0

    goto :goto_61

    .line 1951
    :catch_13
    move-exception v0

    .line 1952
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    move v0, v1

    .line 1955
    .local v0, "maximumTextureSize":I
    :goto_16
    if-lez v0, :cond_30

    .line 1956
    if-gt p1, v0, :cond_1c

    if-le p2, v0, :cond_30

    .line 1958
    :cond_1c
    int-to-float v1, p2

    int-to-float v2, p1

    div-float/2addr v1, v2

    .line 1959
    .local v1, "aspect":F
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    if-le p1, p2, :cond_2a

    .line 1960
    move p1, v0

    .line 1961
    int-to-float v4, p1

    mul-float/2addr v4, v1

    float-to-double v4, v4

    add-double/2addr v4, v2

    double-to-int p2, v4

    goto :goto_30

    .line 1963
    :cond_2a
    move p2, v0

    .line 1964
    int-to-float v4, p2

    div-float/2addr v4, v1

    float-to-double v4, v4

    add-double/2addr v4, v2

    double-to-int p1, v4

    .line 1969
    .end local v1    # "aspect":F
    :cond_30
    :goto_30
    :try_start_30
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 1973
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1974
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplayId()I

    move-result v3

    .line 1973
    invoke-interface {v1, p1, p2, v2, v3}, Landroid/app/IWallpaperManager;->setDimensionHints(IILjava/lang/String;I)V

    .line 1978
    .end local v0    # "maximumTextureSize":I
    nop

    .line 1979
    return-void

    .line 1970
    .restart local v0    # "maximumTextureSize":I
    :cond_4f
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v2, "WallpaperService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Landroid/os/DeadSystemException;

    invoke-direct {v2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/app/WallpaperManager;
    .end local p1    # "minimumWidth":I
    .end local p2    # "minimumHeight":I
    throw v1
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_61} :catch_11

    .line 1977
    .local v0, "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/app/WallpaperManager;
    .restart local p1    # "minimumWidth":I
    .restart local p2    # "minimumHeight":I
    :goto_61
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist wallpaperSupportsWcg(I)Z
    .registers 7
    .param p1, "which"    # I

    .line 1144
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->shouldEnableWideColorGamut()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1145
    return v1

    .line 1147
    :cond_8
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v0

    .line 1148
    .local v0, "cmProxy":Landroid/app/WallpaperManager$ColorManagementProxy;
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, p1, v0}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZILandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1149
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_34

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 1150
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v3

    sget-object v4, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v4}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v4

    if-eq v3, v4, :cond_34

    .line 1151
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/WallpaperManager$ColorManagementProxy;->isSupportedColorSpace(Landroid/graphics/ColorSpace;)Z

    move-result v3

    if-eqz v3, :cond_34

    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    nop

    .line 1149
    :goto_35
    return v1
.end method
