.class public Landroid/app/WallpaperManager;
.super Ljava/lang/Object;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperManager$Globals;,
        Landroid/app/WallpaperManager$ColorManagementProxy;,
        Landroid/app/WallpaperManager$FastBitmapDrawable;,
        Landroid/app/WallpaperManager$OnColorsChangedListener;,
        Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;,
        Landroid/app/WallpaperManager$WallpaperSetCompletion;,
        Landroid/app/WallpaperManager$CachedWallpaper;,
        Landroid/app/WallpaperManager$SetWallpaperFlags;,
        Landroid/app/WallpaperManager$ScreenOrientation;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CHANGE_LIVE_WALLPAPER:Ljava/lang/String; = "android.service.wallpaper.CHANGE_LIVE_WALLPAPER"

.field public static final whitelist ACTION_CROP_AND_SET_WALLPAPER:Ljava/lang/String; = "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

.field public static final whitelist ACTION_LIVE_WALLPAPER_CHOOSER:Ljava/lang/String; = "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER"

.field public static final whitelist COMMAND_DROP:Ljava/lang/String; = "android.home.drop"

.field public static final blacklist COMMAND_FREEZE:Ljava/lang/String; = "android.wallpaper.freeze"

.field public static final blacklist COMMAND_GOING_TO_SLEEP:Ljava/lang/String; = "android.wallpaper.goingtosleep"

.field public static final blacklist COMMAND_KEYGUARD_APPEARING:Ljava/lang/String; = "android.wallpaper.keyguardappearing"

.field public static final blacklist COMMAND_KEYGUARD_GOING_AWAY:Ljava/lang/String; = "android.wallpaper.keyguardgoingaway"

.field public static final blacklist COMMAND_LOCKSCREEN_LAYOUT_CHANGED:Ljava/lang/String; = "android.wallpaper.lockscreen_layout_changed"

.field public static final blacklist COMMAND_LOCKSCREEN_TAP:Ljava/lang/String; = "android.wallpaper.lockscreen_tap"

.field public static final blacklist COMMAND_REAPPLY:Ljava/lang/String; = "android.wallpaper.reapply"

.field public static final whitelist COMMAND_SECONDARY_TAP:Ljava/lang/String; = "android.wallpaper.secondaryTap"

.field public static final whitelist COMMAND_TAP:Ljava/lang/String; = "android.wallpaper.tap"

.field public static final blacklist COMMAND_TRANSFORM_SURFACE_CONTROL:Ljava/lang/String; = "android.wallpaper.transform_surface_control"

.field public static final blacklist COMMAND_UNFREEZE:Ljava/lang/String; = "android.wallpaper.unfreeze"

.field public static final blacklist COMMAND_WAKING_UP:Ljava/lang/String; = "android.wallpaper.wakingup"

.field private static final greylist-max-o DEBUG:Z = false

.field public static final blacklist EXTRA_FROM_FOREGROUND_APP:Ljava/lang/String; = "android.service.wallpaper.extra.FROM_FOREGROUND_APP"

.field public static final whitelist EXTRA_LIVE_WALLPAPER_COMPONENT:Ljava/lang/String; = "android.service.wallpaper.extra.LIVE_WALLPAPER_COMPONENT"

.field public static final greylist-max-o EXTRA_NEW_WALLPAPER_ID:Ljava/lang/String; = "android.service.wallpaper.extra.ID"

.field public static final blacklist EXTRA_WHICH_WALLPAPER_CHANGED:Ljava/lang/String; = "android.service.wallpaper.extra.WHICH_WALLPAPER_CHANGED"

.field public static final whitelist FLAG_LOCK:I = 0x2

.field public static final whitelist FLAG_SYSTEM:I = 0x1

.field private static final blacklist LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

.field public static final blacklist ORIENTATION_LANDSCAPE:I = 0x1

.field public static final blacklist ORIENTATION_PORTRAIT:I = 0x0

.field public static final blacklist ORIENTATION_SQUARE_LANDSCAPE:I = 0x3

.field public static final blacklist ORIENTATION_SQUARE_PORTRAIT:I = 0x2

.field public static final blacklist ORIENTATION_UNKNOWN:I = -0x1

.field private static final greylist-max-o PROP_LOCK_WALLPAPER:Ljava/lang/String; = "ro.config.lock_wallpaper"

.field private static final greylist-max-o PROP_WALLPAPER:Ljava/lang/String; = "ro.config.wallpaper"

.field private static final greylist-max-o PROP_WALLPAPER_COMPONENT:Ljava/lang/String; = "ro.config.wallpaper_component"

.field static final blacklist RETURN_DEFAULT_ON_SECURITY_EXCEPTION:J = 0xe4ad173L

.field private static greylist-max-o TAG:Ljava/lang/String; = null

.field static final blacklist THROW_ON_SECURITY_EXCEPTION:J = 0xe2815daL

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

.method static bridge synthetic blacklist -$$Nest$smcheckExactlyOneWallpaperFlagSet(I)V
    .registers 1

    invoke-static {p0}, Landroid/app/WallpaperManager;->checkExactlyOneWallpaperFlagSet(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 137
    const-string v0, "WallpaperManager"

    sput-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    .line 158
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Landroid/app/WallpaperManager;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    .line 168
    nop

    .line 169
    const-string/jumbo v0, "ro.boot.hardware.color"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/WallpaperManager;->VALUE_CMF_COLOR:Ljava/lang/String;

    .line 457
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 157
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 984
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 985
    iput-object v0, p0, Landroid/app/WallpaperManager;->mCmProxy:Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 986
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/WallpaperManager;->mWcgEnabled:Z

    .line 987
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/app/IWallpaperManager;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/high16 p3, -0x40800000    # -1.0f

    iput p3, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 157
    iput p3, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 972
    iput-object p2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 973
    if-eqz p1, :cond_14

    .line 974
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/app/WallpaperManager;->initGlobals(Landroid/app/IWallpaperManager;Landroid/os/Looper;)V

    .line 977
    :cond_14
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 978
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x11101b0

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_31

    const/4 p1, 0x1

    goto :goto_32

    :cond_31
    const/4 p1, 0x0

    :goto_32
    iput-boolean p1, p0, Landroid/app/WallpaperManager;->mWcgEnabled:Z

    .line 979
    new-instance p1, Landroid/app/WallpaperManager$ColorManagementProxy;

    invoke-direct {p1, p2}, Landroid/app/WallpaperManager$ColorManagementProxy;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/app/WallpaperManager;->mCmProxy:Landroid/app/WallpaperManager$ColorManagementProxy;

    .line 980
    return-void
.end method

.method private static blacklist checkExactlyOneWallpaperFlagSet(I)V
    .registers 2

    .line 3585
    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    goto :goto_f

    .line 3588
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must specify exactly one kind of wallpaper"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3586
    :cond_f
    :goto_f
    return-void
.end method

.method private greylist-max-o copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2626
    invoke-static {p1, p2}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    .line 2627
    return-void
.end method

.method static blacklist generateHashCode(Landroid/graphics/Bitmap;)J
    .registers 12

    .line 2202
    nop

    .line 2204
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2205
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 2207
    const-wide/16 v2, 0x20f

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 2208
    const-wide/16 v4, 0x1f

    mul-long/2addr v2, v4

    int-to-long v6, v1

    add-long/2addr v2, v6

    .line 2211
    const/4 v6, 0x0

    move v7, v6

    :goto_14
    if-ge v7, v0, :cond_2a

    .line 2212
    move v8, v6

    :goto_17
    if-ge v8, v1, :cond_25

    .line 2213
    mul-long/2addr v2, v4

    invoke-virtual {p0, v7, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v2, v9

    .line 2212
    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    .line 2211
    :cond_25
    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    .line 2217
    :cond_2a
    return-wide v2
.end method

.method public static blacklist getCmfDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 9

    .line 3514
    nop

    .line 3515
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 3517
    const/4 v1, 0x0

    if-eqz v0, :cond_48

    array-length v2, v0

    if-lez v2, :cond_48

    .line 3518
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ge v4, v2, :cond_48

    aget-object v5, v0, v4

    .line 3520
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_45

    .line 3521
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3522
    if-eqz v5, :cond_45

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_45

    sget-object v6, Landroid/app/WallpaperManager;->VALUE_CMF_COLOR:Ljava/lang/String;

    aget-object v7, v5, v3

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    const/4 v6, 0x1

    aget-object v7, v5, v6

    .line 3523
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_45

    .line 3524
    aget-object v0, v5, v6

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 3525
    goto :goto_49

    .line 3518
    :cond_45
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 3531
    :cond_48
    move-object v0, v1

    :goto_49
    invoke-static {p0, v0}, Landroid/app/WallpaperManager;->isComponentExist(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 3532
    goto :goto_51

    .line 3531
    :cond_50
    move-object v1, v0

    .line 3535
    :goto_51
    if-nez v1, :cond_57

    invoke-static {p0}, Landroid/app/WallpaperManager;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    :cond_57
    return-object v1
.end method

.method private static blacklist getCmfWallpaperPath()Ljava/lang/String;
    .registers 2

    .line 3475
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

.method private static blacklist getDefaultSystemWallpaperFile()Landroid/os/ParcelFileDescriptor;
    .registers 3

    .line 3439
    invoke-static {}, Landroid/app/WallpaperManager;->getDefaultSystemWallpaperPaths()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3440
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3441
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 3443
    const/high16 v1, 0x10000000

    :try_start_21
    invoke-static {v2, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_25} :catch_26

    return-object v0

    .line 3444
    :catch_26
    move-exception v1

    .line 3448
    :cond_27
    goto :goto_8

    .line 3449
    :cond_28
    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist getDefaultSystemWallpaperPaths()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3471
    const-string/jumbo v0, "ro.config.wallpaper"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/WallpaperManager;->getCmfWallpaperPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 5

    .line 3486
    nop

    .line 3488
    const-string/jumbo v0, "ro.config.wallpaper_component"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3489
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 3490
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_15

    .line 3489
    :cond_14
    move-object v0, v2

    .line 3493
    :goto_15
    if-nez v0, :cond_28

    .line 3494
    const v1, 0x104037e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3495
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 3496
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 3500
    :cond_28
    invoke-static {p0, v0}, Landroid/app/WallpaperManager;->isComponentExist(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p0

    if-nez p0, :cond_2f

    .line 3501
    goto :goto_30

    .line 3500
    :cond_2f
    move-object v2, v0

    .line 3504
    :goto_30
    return-object v2
.end method

.method public static whitelist getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;
    .registers 2

    .line 993
    const-string/jumbo v0, "wallpaper"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/WallpaperManager;

    return-object p0
.end method

.method private static greylist-max-o getMaxCropRect(IIIIFF)Landroid/graphics/RectF;
    .registers 9

    .line 1298
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 1300
    int-to-float p0, p0

    int-to-float p1, p1

    div-float v1, p0, p1

    int-to-float p2, p2

    int-to-float p3, p3

    div-float v2, p2, p3

    cmpl-float v1, v1, v2

    const/4 v2, 0x0

    if-lez v1, :cond_22

    .line 1301
    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 1302
    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1303
    div-float/2addr p1, p3

    mul-float/2addr p2, p1

    .line 1304
    sub-float/2addr p0, p2

    mul-float/2addr p0, p4

    iput p0, v0, Landroid/graphics/RectF;->left:F

    .line 1305
    iget p0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr p0, p2

    iput p0, v0, Landroid/graphics/RectF;->right:F

    .line 1306
    goto :goto_31

    .line 1307
    :cond_22
    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 1308
    iput p0, v0, Landroid/graphics/RectF;->right:F

    .line 1309
    div-float/2addr p0, p2

    mul-float/2addr p3, p0

    .line 1310
    sub-float/2addr p1, p3

    mul-float/2addr p1, p5

    iput p1, v0, Landroid/graphics/RectF;->top:F

    .line 1311
    iget p0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr p0, p3

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    .line 1313
    :goto_31
    return-object v0
.end method

.method public static blacklist getOrientation(Landroid/graphics/Point;)I
    .registers 2

    .line 415
    iget v0, p0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    .line 417
    const p0, 0x3faaaaab

    cmpl-float p0, v0, p0

    if-ltz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_21

    .line 418
    :cond_10
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, v0, p0

    if-lez p0, :cond_18

    const/4 p0, 0x3

    goto :goto_21

    .line 419
    :cond_18
    const/high16 p0, 0x3f400000    # 0.75f

    cmpl-float p0, v0, p0

    if-lez p0, :cond_20

    const/4 p0, 0x2

    goto :goto_21

    .line 420
    :cond_20
    const/4 p0, 0x0

    .line 417
    :goto_21
    return p0
.end method

.method public static blacklist getRotatedOrientation(I)I
    .registers 1

    .line 428
    packed-switch p0, :pswitch_data_e

    .line 433
    const/4 p0, -0x1

    return p0

    .line 432
    :pswitch_5
    const/4 p0, 0x2

    return p0

    .line 431
    :pswitch_7
    const/4 p0, 0x3

    return p0

    .line 430
    :pswitch_9
    const/4 p0, 0x0

    return p0

    .line 429
    :pswitch_b
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist getWallpaperFile(IIZ)Landroid/os/ParcelFileDescriptor;
    .registers 13

    .line 1992
    invoke-static {p1}, Landroid/app/WallpaperManager;->checkExactlyOneWallpaperFlagSet(I)V

    .line 1994
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 1999
    :try_start_b
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2000
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2001
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 2000
    const/4 v4, 0x0

    move v5, p1

    move v7, p2

    move v8, p3

    invoke-interface/range {v1 .. v8}, Landroid/app/IWallpaperManager;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;IZ)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_2a} :catch_61
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_2a} :catch_2b

    return-object p1

    .line 2005
    :catch_2b
    move-exception v0

    move-object p1, v0

    .line 2006
    const-wide/32 p2, 0xe4ad173

    invoke-static {p2, p3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 2007
    const-wide/32 p2, 0xe2815da

    invoke-static {p2, p3}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result p2

    if-nez p2, :cond_4b

    .line 2008
    sget-object p1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string p2, "No permission to access wallpaper, returning default wallpaper file to avoid crashing legacy app."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    invoke-static {}, Landroid/app/WallpaperManager;->getDefaultSystemWallpaperFile()Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 2012
    :cond_4b
    iget-object p2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p3, 0x1b

    if-ge p2, p3, :cond_60

    .line 2013
    sget-object p1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string p2, "No permission to access wallpaper, suppressing exception to avoid crashing legacy app."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    const/4 p1, 0x0

    return-object p1

    .line 2017
    :cond_60
    throw p1

    .line 2003
    :catch_61
    move-exception v0

    move-object p1, v0

    .line 2004
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1995
    :cond_68
    sget-object p1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string p2, "WallpaperService not running"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Landroid/os/DeadSystemException;

    invoke-direct {p2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static blacklist getWallpaperInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 2

    .line 3453
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 3454
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3455
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_18

    .line 3457
    :try_start_11
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_17

    return-object p0

    .line 3458
    :catch_17
    move-exception p0

    .line 3463
    :cond_18
    const/4 p0, 0x0

    return-object p0
.end method

.method static greylist-max-o initGlobals(Landroid/app/IWallpaperManager;Landroid/os/Looper;)V
    .registers 4

    .line 963
    sget-object v0, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 964
    :try_start_3
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    if-nez v1, :cond_e

    .line 965
    new-instance v1, Landroid/app/WallpaperManager$Globals;

    invoke-direct {v1, p0, p1}, Landroid/app/WallpaperManager$Globals;-><init>(Landroid/app/IWallpaperManager;Landroid/os/Looper;)V

    sput-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    .line 967
    :cond_e
    monitor-exit v0

    .line 968
    return-void

    .line 967
    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method private static blacklist isComponentExist(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 4

    .line 3539
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 3540
    return v0

    .line 3543
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 3544
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/high16 v1, 0xc0000

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_11} :catch_14

    .line 3549
    nop

    .line 3550
    const/4 p0, 0x1

    return p0

    .line 3547
    :catch_14
    move-exception p0

    .line 3548
    return v0
.end method

.method static synthetic blacklist lambda$getBitmapCrops$0(Ljava/util/Map$Entry;)I
    .registers 1

    .line 1753
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;

    invoke-static {p0}, Landroid/app/WallpaperManager;->getOrientation(Landroid/graphics/Point;)I

    move-result p0

    return p0
.end method

.method static synthetic blacklist lambda$getWallpaperColors$1(Ljava/util/Map$Entry;)I
    .registers 1

    .line 1784
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Point;

    invoke-static {p0}, Landroid/app/WallpaperManager;->getOrientation(Landroid/graphics/Point;)I

    move-result p0

    return p0
.end method

.method public static greylist-max-r openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;
    .registers 2

    .line 3414
    nop

    .line 3415
    nop

    .line 3416
    const-string/jumbo p1, "ro.config.wallpaper"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3417
    invoke-static {p1}, Landroid/app/WallpaperManager;->getWallpaperInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 3418
    if-eqz p1, :cond_10

    .line 3419
    return-object p1

    .line 3421
    :cond_10
    invoke-static {}, Landroid/app/WallpaperManager;->getCmfWallpaperPath()Ljava/lang/String;

    move-result-object p1

    .line 3422
    invoke-static {p1}, Landroid/app/WallpaperManager;->getWallpaperInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 3423
    if-eqz p1, :cond_1b

    .line 3424
    return-object p1

    .line 3427
    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1080305

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_26
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1b .. :try_end_26} :catch_27

    return-object p0

    .line 3428
    :catch_27
    move-exception p0

    .line 3431
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist setBitmapWithDescription(Landroid/graphics/Bitmap;Landroid/app/wallpaper/WallpaperDescription;ZII)I
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2559
    if-eqz p1, :cond_8b

    .line 2562
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 2566
    const/4 v0, 0x0

    move v1, v0

    :goto_c
    invoke-virtual {p2}, Landroid/app/wallpaper/WallpaperDescription;->getCropHints()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 2567
    invoke-virtual {p2}, Landroid/app/wallpaper/WallpaperDescription;->getCropHints()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Landroid/app/WallpaperManager;->validateRect(Landroid/graphics/Rect;)V

    .line 2566
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 2569
    :cond_26
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2570
    new-instance v9, Landroid/app/WallpaperManager$WallpaperSetCompletion;

    invoke-direct {v9, p0}, Landroid/app/WallpaperManager$WallpaperSetCompletion;-><init>(Landroid/app/WallpaperManager;)V

    .line 2572
    :try_start_30
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2573
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2572
    const/4 v3, 0x0

    move-object v5, p2

    move v6, p3

    move v8, p4

    move/from16 v10, p5

    invoke-interface/range {v2 .. v10}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/app/wallpaper/WallpaperDescription;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p2
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_46} :catch_72

    .line 2575
    if-eqz p2, :cond_6a

    .line 2576
    nop

    .line 2578
    const/4 v1, 0x0

    :try_start_4a
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_64

    .line 2579
    :try_start_4f
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x5a

    invoke-virtual {p1, p2, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2580
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 2581
    invoke-virtual {v9}, Landroid/app/WallpaperManager$WallpaperSetCompletion;->waitForCompletion()V
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_60

    .line 2583
    :try_start_5c
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2584
    goto :goto_6a

    .line 2583
    :catchall_60
    move-exception v0

    move-object p1, v0

    move-object v1, v2

    goto :goto_66

    :catchall_64
    move-exception v0

    move-object p1, v0

    :goto_66
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2584
    throw p1
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_6a} :catch_72

    .line 2588
    :cond_6a
    :goto_6a
    nop

    .line 2589
    const-string p1, "android.service.wallpaper.extra.ID"

    invoke-virtual {v7, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 2586
    :catch_72
    move-exception v0

    move-object p1, v0

    .line 2587
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2563
    :cond_79
    sget-object p1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string p2, "WallpaperService not running"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Landroid/os/DeadSystemException;

    invoke-direct {p2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 2560
    :cond_8b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bitmap cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final greylist-max-o validateRect(Landroid/graphics/Rect;)V
    .registers 3

    .line 2593
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_12

    .line 2594
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "visibleCrop rectangle must be valid and non-empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2596
    :cond_12
    :goto_12
    return-void
.end method


# virtual methods
.method public blacklist addOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;Ljava/util/List;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1926
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 1927
    sget-object v2, Landroid/app/WallpaperManager;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1931
    goto :goto_4

    .line 1928
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Regions must be within bounds "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object p3, Landroid/app/WallpaperManager;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1932
    :cond_34
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1933
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v4

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v5

    .line 1932
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/WallpaperManager$Globals;->addOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;Ljava/util/List;III)V

    .line 1934
    return-void
.end method

.method public whitelist addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V
    .registers 4

    .line 1846
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;I)V

    .line 1847
    return-void
.end method

.method public greylist addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;I)V
    .registers 6

    .line 1860
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/app/WallpaperManager$Globals;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;II)V

    .line 1861
    return-void
.end method

.method public whitelist clear()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3370
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->clear(I)V

    .line 3371
    return-void
.end method

.method public whitelist clear(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3395
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->clearWallpaper(II)V

    .line 3396
    return-void
.end method

.method public whitelist clearWallpaper()V
    .registers 3

    .line 2984
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/app/WallpaperManager;->clearWallpaper(II)V

    .line 2985
    return-void
.end method

.method public whitelist clearWallpaper(II)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3011
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 3016
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IWallpaperManager;->clearWallpaper(Ljava/lang/String;II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_19

    .line 3019
    nop

    .line 3020
    return-void

    .line 3017
    :catch_19
    move-exception p1

    .line 3018
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 3012
    :cond_1f
    sget-object p1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string p2, "WallpaperService not running"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Landroid/os/DeadSystemException;

    invoke-direct {p2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public whitelist clearWallpaperOffsets(Landroid/os/IBinder;)V
    .registers 8

    .line 3350
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_12

    .line 3354
    nop

    .line 3355
    return-void

    .line 3352
    :catch_12
    move-exception v0

    move-object p1, v0

    .line 3353
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist forgetLoadedWallpaper()V
    .registers 2

    .line 2029
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 2030
    return-void
.end method

.method public greylist getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .line 1510
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public greylist getBitmap(Z)Landroid/graphics/Bitmap;
    .registers 3

    .line 1522
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getBitmap(ZI)Landroid/graphics/Bitmap;
    .registers 4

    .line 1535
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZI)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public greylist-max-o getBitmapAsUser(IZ)Landroid/graphics/Bitmap;
    .registers 10

    .line 1544
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v6

    .line 1545
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getBitmapAsUser(IZI)Landroid/graphics/Bitmap;
    .registers 5

    .line 1557
    const/4 v0, 0x2

    if-eq p3, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 1558
    :goto_6
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/WallpaperManager;->getBitmapAsUser(IZIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getBitmapAsUser(IZIZ)Landroid/graphics/Bitmap;
    .registers 12

    .line 1572
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v6

    .line 1573
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    move v4, p1

    move v5, p2

    move v3, p3

    move v2, p4

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZIIZLandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getBitmapCrops(I)Landroid/util/SparseArray;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 1717
    invoke-static {p1}, Landroid/app/WallpaperManager;->checkExactlyOneWallpaperFlagSet(I)V

    .line 1719
    :try_start_3
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IWallpaperManager;->getCurrentBitmapCrops(II)Landroid/os/Bundle;

    move-result-object p1

    .line 1720
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1721
    if-nez p1, :cond_1b

    return-object v0

    .line 1722
    :cond_1b
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1723
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1724
    const-class v4, Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1725
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3e} :catch_40

    .line 1726
    goto :goto_23

    .line 1727
    :cond_3f
    return-object v0

    .line 1728
    :catch_40
    move-exception p1

    .line 1729
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getBitmapCrops(Landroid/graphics/Point;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Point;",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;",
            "Ljava/util/Map<",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Rect;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 1750
    if-nez p3, :cond_6

    :try_start_2
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    move-result-object p3

    .line 1751
    :cond_6
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    .line 1752
    invoke-interface {p3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/app/WallpaperManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/WallpaperManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 1753
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 1754
    invoke-interface {p3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p3

    new-instance v1, Landroid/app/WallpaperManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/app/WallpaperManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p3, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p3

    .line 1755
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, v0, p3}, Landroid/app/IWallpaperManager;->getFutureBitmapCrops(Landroid/graphics/Point;Ljava/util/List;[ILjava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_36} :catch_37

    return-object p1

    .line 1757
    :catch_37
    move-exception p1

    .line 1758
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getBitmapCrops(Ljava/util/List;IZ)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;IZ)",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 1668
    invoke-static {p2}, Landroid/app/WallpaperManager;->checkExactlyOneWallpaperFlagSet(I)V

    .line 1670
    :try_start_3
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1671
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 1670
    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/IWallpaperManager;->getBitmapCrops(Ljava/util/List;IZI)Ljava/util/List;

    move-result-object p3

    .line 1672
    if-eqz p3, :cond_16

    return-object p3

    .line 1677
    :cond_16
    const/4 p3, 0x1

    invoke-virtual {p0, p2, p3}, Landroid/app/WallpaperManager;->peekBitmapDimensions(IZ)Landroid/graphics/Rect;

    move-result-object p2

    .line 1678
    if-nez p2, :cond_22

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1679
    :cond_22
    new-instance p3, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-direct {p3, v0, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 1680
    const/4 p2, 0x0

    invoke-virtual {p0, p3, p1, p2}, Landroid/app/WallpaperManager;->getBitmapCrops(Landroid/graphics/Point;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_34} :catch_35

    return-object p1

    .line 1682
    :catch_35
    move-exception p1

    .line 1683
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getBuiltInDrawable()Landroid/graphics/drawable/Drawable;
    .registers 8

    .line 1110
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBuiltInDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 9

    .line 1122
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;
    .registers 13

    .line 1141
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getBuiltInDrawable(IIZFFI)Landroid/graphics/drawable/Drawable;
    .registers 21

    .line 1163
    move/from16 v1, p2

    move/from16 v2, p6

    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    if-eqz v3, :cond_174

    .line 1168
    invoke-static {v2}, Landroid/app/WallpaperManager;->checkExactlyOneWallpaperFlagSet(I)V

    .line 1170
    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1171
    const/high16 v4, 0x3f800000    # 1.0f

    move/from16 v5, p4

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 1172
    move/from16 v5, p5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 1174
    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v4

    .line 1175
    const/4 v5, 0x0

    if-nez v4, :cond_36

    .line 1179
    return-object v5

    .line 1181
    :cond_36
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1182
    if-lez p1, :cond_16a

    if-gtz v1, :cond_41

    goto/16 :goto_16a

    .line 1190
    :cond_41
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1191
    const/4 v13, 0x1

    iput-boolean v13, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1192
    invoke-static {v7, v5, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1193
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v7, :cond_162

    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v7, :cond_162

    .line 1194
    iget v7, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1195
    iget v8, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1204
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v9, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v9, v2}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1208
    invoke-static {v7, p1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1209
    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1210
    if-eqz p3, :cond_72

    .line 1211
    invoke-static/range {v7 .. v12}, Landroid/app/WallpaperManager;->getMaxCropRect(IIIIFF)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_82

    .line 1214
    :cond_72
    sub-int/2addr v7, v9

    int-to-float v0, v7

    mul-float/2addr v0, v11

    .line 1215
    int-to-float v1, v9

    add-float/2addr v1, v0

    .line 1216
    sub-int/2addr v8, v10

    int-to-float v7, v8

    mul-float/2addr v7, v12

    .line 1217
    int-to-float v8, v10

    add-float/2addr v8, v7

    .line 1218
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11, v0, v7, v1, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v11

    .line 1220
    :goto_82
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1221
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 1223
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_15a

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_98

    goto/16 :goto_15a

    .line 1229
    :cond_98
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/2addr v0, v9

    .line 1230
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/2addr v7, v10

    .line 1229
    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1233
    nop

    .line 1235
    :try_start_a7
    invoke-static {v4, v13}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_ab} :catch_ac

    .line 1238
    goto :goto_b5

    .line 1236
    :catch_ac
    move-exception v0

    .line 1237
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v4, "cannot open region decoder for default wallpaper"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 1240
    :goto_b5
    nop

    .line 1241
    if-eqz v0, :cond_c9

    .line 1243
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1244
    if-le v7, v13, :cond_c1

    .line 1245
    iput v7, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1247
    :cond_c1
    invoke-virtual {v0, v1, v4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1248
    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    goto :goto_ca

    .line 1241
    :cond_c9
    move-object v4, v5

    .line 1251
    :goto_ca
    if-nez v4, :cond_f7

    .line 1254
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v8, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v2}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1255
    nop

    .line 1256
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1257
    if-le v7, v13, :cond_e1

    .line 1258
    iput v7, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1260
    :cond_e1
    invoke-static {v0, v5, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1261
    if-eqz v0, :cond_f7

    .line 1262
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 1263
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 1264
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 1262
    invoke-static {v0, v2, v4, v7, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1268
    :cond_f7
    if-nez v4, :cond_101

    .line 1269
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "cannot decode default wallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    return-object v5

    .line 1274
    :cond_101
    if-lez v9, :cond_154

    if-lez v10, :cond_154

    .line 1275
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v9, :cond_111

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v10, :cond_154

    .line 1276
    :cond_111
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1277
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v1, v6, v6, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1278
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v5, v9

    int-to-float v7, v10

    invoke-direct {v2, v6, v6, v5, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1279
    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1280
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    .line 1281
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    float-to-int v2, v2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1280
    invoke-static {v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1282
    if-eqz v1, :cond_154

    .line 1283
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1284
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1285
    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1286
    invoke-virtual {v2, v4, v0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1287
    move-object v4, v1

    .line 1291
    :cond_154
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    .line 1224
    :cond_15a
    :goto_15a
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "crop has bad values for full size image"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    return-object v5

    .line 1197
    :cond_162
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "default wallpaper dimensions are 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    return-object v5

    .line 1183
    :cond_16a
    :goto_16a
    invoke-static {v7, v5, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1184
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1

    .line 1164
    :cond_174
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;
    .registers 2

    .line 3581
    iget-object v0, p0, Landroid/app/WallpaperManager;->mCmProxy:Landroid/app/WallpaperManager$ColorManagementProxy;

    return-object v0
.end method

.method public whitelist getCropAndSetWallpaperIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .registers 6

    .line 2292
    if-eqz p1, :cond_6e

    .line 2296
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 2301
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2302
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2304
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2307
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 2308
    const/high16 v2, 0x10000

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    .line 2310
    const/4 v2, 0x0

    if-eqz p1, :cond_47

    .line 2311
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2313
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 2315
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_47

    .line 2316
    return-object v1

    .line 2321
    :cond_47
    iget-object p1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const v3, 0x1040315

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2323
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2324
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 2326
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5e

    .line 2327
    return-object v1

    .line 2331
    :cond_5e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot use passed URI to set wallpaper; check that the type returned by ContentProvider matches image/*"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2297
    :cond_66
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Image URI must be of the content scheme type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2293
    :cond_6e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Image URI must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getDesiredMinimumHeight()I
    .registers 3

    .line 2854
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string v1, "getDesiredMinimumHeight"

    invoke-static {v0, v1}, Landroid/os/StrictMode;->assertUiContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 2855
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 2860
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

    .line 2861
    :catch_20
    move-exception v0

    .line 2862
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2856
    :cond_26
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist getDesiredMinimumWidth()I
    .registers 3

    .line 2824
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string v1, "getDesiredMinimumWidth"

    invoke-static {v0, v1}, Landroid/os/StrictMode;->assertUiContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 2825
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 2830
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

    .line 2831
    :catch_20
    move-exception v0

    .line 2832
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2826
    :cond_26
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1059
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 1095
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v0

    .line 1096
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    move v1, v2

    .line 1097
    :goto_b
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v1, p1, v0}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZILandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1098
    if-eqz p1, :cond_24

    .line 1099
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1100
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 1101
    return-object v0

    .line 1103
    :cond_24
    const/4 p1, 0x0

    return-object p1
.end method

.method public whitelist getFastDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1396
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getFastDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getFastDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 1424
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v0

    .line 1425
    const/4 v1, 0x2

    if-eq p1, v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    .line 1426
    :goto_a
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, p1, v0}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZILandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1427
    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    .line 1428
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v1, p1, v0}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager-IA;)V

    return-object v1

    .line 1430
    :cond_1b
    return-object v0
.end method

.method public greylist getIWallpaperManager()Landroid/app/IWallpaperManager;
    .registers 2

    .line 1000
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWallpaperColors(I)Landroid/app/WallpaperColors;
    .registers 3

    .line 1903
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getWallpaperColors(II)Landroid/app/WallpaperColors;

    move-result-object p1

    return-object p1
.end method

.method public greylist getWallpaperColors(II)Landroid/app/WallpaperColors;
    .registers 5

    .line 1917
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string v1, "getWallpaperColors"

    invoke-static {v0, v1}, Landroid/os/StrictMode;->assertUiContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 1918
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/WallpaperManager$Globals;->getWallpaperColors(III)Landroid/app/WallpaperColors;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getWallpaperColors(Landroid/graphics/Bitmap;Ljava/util/Map;)Landroid/app/WallpaperColors;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map<",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/app/WallpaperColors;"
        }
    .end annotation

    .line 1776
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 1781
    if-nez p2, :cond_e

    :try_start_a
    invoke-static {}, Ljava/util/Map;->of()Ljava/util/Map;

    move-result-object p2

    .line 1782
    :cond_e
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 1783
    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/app/WallpaperManager$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/app/WallpaperManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 1784
    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 1785
    invoke-interface {p2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Landroid/app/WallpaperManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/app/WallpaperManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p2

    .line 1786
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 1787
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2, v1, v0, p2}, Landroid/app/IWallpaperManager;->getBitmapCrop(Landroid/graphics/Point;[ILjava/util/List;)Landroid/graphics/Rect;

    move-result-object p2

    .line 1788
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getWallpaperDimAmount()F

    move-result v0

    .line 1789
    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    .line 1790
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    .line 1789
    invoke-static {p1, v1, v2, v3, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1791
    invoke-static {p1, v0}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;F)Landroid/app/WallpaperColors;

    move-result-object p1
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_63} :catch_64

    .line 1792
    return-object p1

    .line 1793
    :catch_64
    move-exception p1

    .line 1794
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 1777
    :cond_6a
    sget-object p1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string p2, "WallpaperService not running"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Landroid/os/DeadSystemException;

    invoke-direct {p2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public whitelist getWallpaperDimAmount()F
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3065
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 3070
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->getWallpaperDimAmount()F

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 3071
    :catch_13
    move-exception v0

    .line 3072
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 3066
    :cond_19
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist getWallpaperFile(I)Landroid/os/ParcelFileDescriptor;
    .registers 3

    .line 1835
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public greylist getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;
    .registers 4

    .line 1963
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/app/WallpaperManager;->getWallpaperFile(IIZ)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getWallpaperFile(IZ)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1987
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Landroid/app/WallpaperManager;->getWallpaperFile(IIZ)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getWallpaperId(I)I
    .registers 3

    .line 2257
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getWallpaperIdForUser(II)I

    move-result p1

    return p1
.end method

.method public greylist-max-o getWallpaperIdForUser(II)I
    .registers 4

    .line 2267
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 2271
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->getWallpaperIdForUser(II)I

    move-result p1

    return p1

    .line 2268
    :cond_13
    sget-object p1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string p2, "WallpaperService not running"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Landroid/os/DeadSystemException;

    invoke-direct {p2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_25

    .line 2273
    :catch_25
    move-exception p1

    .line 2274
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist getWallpaperInfo()Landroid/app/WallpaperInfo;
    .registers 2

    .line 2051
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->getWallpaperInfoForUser(I)Landroid/app/WallpaperInfo;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getWallpaperInfo(I)Landroid/app/WallpaperInfo;
    .registers 3

    .line 2083
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getWallpaperInfo(II)Landroid/app/WallpaperInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getWallpaperInfo(II)Landroid/app/WallpaperInfo;
    .registers 4

    .line 2105
    invoke-static {p1}, Landroid/app/WallpaperManager;->checkExactlyOneWallpaperFlagSet(I)V

    .line 2107
    :try_start_3
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2111
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->getWallpaperInfoWithFlags(II)Landroid/app/WallpaperInfo;

    move-result-object p1

    return-object p1

    .line 2108
    :cond_16
    sget-object p1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string p2, "WallpaperService not running"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Landroid/os/DeadSystemException;

    invoke-direct {p2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_28} :catch_28

    .line 2113
    :catch_28
    move-exception p1

    .line 2114
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist getWallpaperInfoFile()Landroid/os/ParcelFileDescriptor;
    .registers 3

    .line 2230
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2235
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/IWallpaperManager;->getWallpaperInfoFile(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    return-object v0

    .line 2236
    :catch_19
    move-exception v0

    .line 2237
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2231
    :cond_1f
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist getWallpaperInfoForUser(I)Landroid/app/WallpaperInfo;
    .registers 3

    .line 2062
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/WallpaperManager;->getWallpaperInfo(II)Landroid/app/WallpaperInfo;

    move-result-object p1

    return-object p1
.end method

.method public whitelist getWallpaperInstance(I)Landroid/app/wallpaper/WallpaperInstance;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2132
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->getWallpaperInstance(IZ)Landroid/app/wallpaper/WallpaperInstance;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getWallpaperInstance(IZ)Landroid/app/wallpaper/WallpaperInstance;
    .registers 9

    .line 2150
    const-string v0, "Error closing file description when calculating hash"

    invoke-static {p1}, Landroid/app/WallpaperManager;->checkExactlyOneWallpaperFlagSet(I)V

    .line 2152
    :try_start_5
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-eqz v1, :cond_c5

    .line 2156
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2157
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 2156
    invoke-interface {v1, p1, v2}, Landroid/app/IWallpaperManager;->getWallpaperInstance(II)Landroid/app/wallpaper/WallpaperInstance;

    move-result-object v1

    .line 2158
    const/4 v2, 0x0

    if-eqz v1, :cond_34

    .line 2159
    invoke-virtual {v1}, Landroid/app/wallpaper/WallpaperInstance;->getInfo()Landroid/app/WallpaperInfo;

    move-result-object v3

    if-nez v3, :cond_34

    invoke-virtual {v1}, Landroid/app/wallpaper/WallpaperInstance;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "default_id"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    const/4 v3, 0x1

    goto :goto_35

    :cond_34
    move v3, v2

    .line 2161
    :goto_35
    if-eqz v3, :cond_c4

    if-eqz p2, :cond_c4

    .line 2162
    nop

    .line 2163
    invoke-virtual {p0, p1, v2}, Landroid/app/WallpaperManager;->getWallpaperFile(IZ)Landroid/os/ParcelFileDescriptor;

    move-result-object p2
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_3e} :catch_d7

    .line 2164
    const/4 v2, 0x0

    if-eqz p2, :cond_84

    .line 2165
    :try_start_41
    new-instance v3, Ljava/io/FileInputStream;

    .line 2166
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_4a} :catch_68
    .catchall {:try_start_41 .. :try_end_4a} :catchall_66

    .line 2167
    :try_start_4a
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_5c

    .line 2168
    :try_start_4e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_68
    .catchall {:try_start_4e .. :try_end_51} :catchall_66

    .line 2172
    :try_start_51
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_54} :catch_d7

    .line 2176
    :goto_54
    goto :goto_78

    .line 2173
    :catch_55
    move-exception p2

    .line 2174
    :try_start_56
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    :goto_58
    invoke-static {v3, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_5b} :catch_d7

    .line 2177
    goto :goto_78

    .line 2165
    :catchall_5c
    move-exception v4

    :try_start_5d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_61

    goto :goto_65

    :catchall_61
    move-exception v3

    :try_start_62
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_65
    throw v4
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_66} :catch_68
    .catchall {:try_start_62 .. :try_end_66} :catchall_66

    .line 2171
    :catchall_66
    move-exception p1

    goto :goto_79

    .line 2168
    :catch_68
    move-exception v3

    .line 2169
    :try_start_69
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "Error closing file stream when calculating hash"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_66

    .line 2172
    :try_start_70
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_73} :catch_d7

    goto :goto_54

    .line 2173
    :catch_74
    move-exception p2

    .line 2174
    :try_start_75
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_77} :catch_d7

    goto :goto_58

    .line 2177
    :goto_78
    goto :goto_98

    .line 2172
    :goto_79
    :try_start_79
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_7c} :catch_d7

    .line 2176
    goto :goto_83

    .line 2173
    :catch_7d
    move-exception p2

    .line 2174
    :try_start_7e
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2177
    :goto_83
    throw p1

    .line 2179
    :cond_84
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->peekDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 2180
    instance-of v0, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_98

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_98

    .line 2181
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2184
    :cond_98
    :goto_98
    if-eqz v2, :cond_c4

    .line 2185
    invoke-static {v2}, Landroid/app/WallpaperManager;->generateHashCode(Landroid/graphics/Bitmap;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    .line 2186
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2187
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 2186
    invoke-interface {v0, p2, p1, v1}, Landroid/app/IWallpaperManager;->setWallpaperDescriptionId(Ljava/lang/String;II)V

    .line 2188
    sget-object p2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {p2}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object p2

    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2189
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 2188
    invoke-interface {p2, p1, v0}, Landroid/app/IWallpaperManager;->getWallpaperInstance(II)Landroid/app/wallpaper/WallpaperInstance;

    move-result-object v1

    .line 2190
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 2193
    :cond_c4
    return-object v1

    .line 2153
    :cond_c5
    sget-object p1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string p2, "WallpaperService not running"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Landroid/os/DeadSystemException;

    invoke-direct {p2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_d7
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_d7} :catch_d7

    .line 2195
    :catch_d7
    move-exception p1

    .line 2196
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist hasResourceWallpaper(I)Z
    .registers 5

    .line 2793
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 2798
    :try_start_8
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "res:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2800
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->hasNamedWallpaper(Ljava/lang/String;)Z

    move-result p1
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_30} :catch_31

    return p1

    .line 2801
    :catch_31
    move-exception p1

    .line 2802
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2794
    :cond_37
    sget-object p1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v0, "WallpaperService not running"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2795
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Landroid/os/DeadSystemException;

    invoke-direct {v0}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public blacklist isLockscreenLiveWallpaperEnabled()Z
    .registers 2

    .line 1011
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isSetWallpaperAllowed()Z
    .registers 3

    .line 3326
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 3331
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

    .line 3332
    :catch_19
    move-exception v0

    .line 3333
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 3327
    :cond_1f
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public whitelist isWallpaperBackupEligible(I)Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3562
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 3567
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/app/IWallpaperManager;->isWallpaperBackupEligible(II)Z

    move-result p1
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_18} :catch_19

    return p1

    .line 3568
    :catch_19
    move-exception p1

    .line 3569
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception querying wallpaper backup eligibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3571
    const/4 p1, 0x0

    return p1

    .line 3563
    :cond_38
    sget-object p1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v0, "WallpaperService not running"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3564
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Landroid/os/DeadSystemException;

    invoke-direct {v0}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public whitelist isWallpaperSupported()Z
    .registers 3

    .line 3306
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 3311
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

    .line 3312
    :catch_19
    move-exception v0

    .line 3313
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 3307
    :cond_1f
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist lockScreenWallpaperExists()Z
    .registers 3

    .line 3082
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 3087
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IWallpaperManager;->lockScreenWallpaperExists()Z

    move-result v0
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return v0

    .line 3088
    :catch_13
    move-exception v0

    .line 3089
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 3083
    :cond_19
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3084
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Landroid/os/DeadSystemException;

    invoke-direct {v1}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public blacklist peekBitmapDimensions()Landroid/graphics/Rect;
    .registers 2

    .line 1587
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->peekBitmapDimensions(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public blacklist peekBitmapDimensions(I)Landroid/graphics/Rect;
    .registers 3

    .line 1614
    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 1615
    :goto_6
    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->peekBitmapDimensions(IZ)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public blacklist peekBitmapDimensions(IZ)Landroid/graphics/Rect;
    .registers 4

    .line 1630
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/WallpaperManager;->peekBitmapDimensionsAsUser(IZI)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public blacklist peekBitmapDimensionsAsUser(IZI)Landroid/graphics/Rect;
    .registers 6

    .line 1643
    invoke-static {p1}, Landroid/app/WallpaperManager;->checkExactlyOneWallpaperFlagSet(I)V

    .line 1644
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p1, p3}, Landroid/app/WallpaperManager$Globals;->peekWallpaperDimensions(Landroid/content/Context;ZII)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public whitelist peekDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1343
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->peekDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist peekDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1366
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public whitelist peekFastDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1451
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->peekFastDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public whitelist peekFastDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1472
    invoke-virtual {p0, p1}, Landroid/app/WallpaperManager;->getFastDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public blacklist removeOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;)V
    .registers 6

    .line 1940
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 1941
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    .line 1940
    const/4 v3, 0x1

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/app/WallpaperManager$Globals;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;III)V

    .line 1942
    return-void
.end method

.method public whitelist removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V
    .registers 3

    .line 1868
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;I)V

    .line 1869
    return-void
.end method

.method public greylist-max-o removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;I)V
    .registers 5

    .line 1879
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/WallpaperManager$Globals;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;II)V

    .line 1880
    return-void
.end method

.method public whitelist sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .registers 8

    .line 3267
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    move-object p0, v0

    invoke-interface/range {p0 .. p6}, Landroid/view/IWindowSession;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    .line 3272
    nop

    .line 3273
    return-void

    .line 3270
    :catch_a
    move-exception v0

    move-object p1, v0

    .line 3271
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2461
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I

    move-result p1

    return p1
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZI)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2489
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2490
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 2489
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZII)I

    move-result p1

    return p1
.end method

.method public greylist-max-p setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZII)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2504
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2505
    if-eqz p2, :cond_b

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2506
    :cond_b
    new-instance p2, Landroid/app/wallpaper/WallpaperDescription$Builder;

    invoke-direct {p2}, Landroid/app/wallpaper/WallpaperDescription$Builder;-><init>()V

    invoke-virtual {p2, v0}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setCropHints(Landroid/util/SparseArray;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object p2

    .line 2507
    invoke-virtual {p2}, Landroid/app/wallpaper/WallpaperDescription$Builder;->build()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v2

    .line 2508
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/app/WallpaperManager;->setBitmapWithDescription(Landroid/graphics/Bitmap;Landroid/app/wallpaper/WallpaperDescription;ZII)I

    move-result p1

    return p1
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2427
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Z)I

    .line 2428
    return-void
.end method

.method public blacklist setBitmapWithCrops(Landroid/graphics/Bitmap;Ljava/util/Map;ZI)I
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/Map<",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Rect;",
            ">;ZI)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2527
    new-instance v0, Landroid/app/wallpaper/WallpaperDescription$Builder;

    invoke-direct {v0}, Landroid/app/wallpaper/WallpaperDescription$Builder;-><init>()V

    invoke-virtual {v0, p2}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setCropHints(Ljava/util/Map;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object p2

    .line 2528
    invoke-virtual {p2}, Landroid/app/wallpaper/WallpaperDescription$Builder;->build()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v2

    .line 2529
    iget-object p2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2530
    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    move-result v5

    .line 2529
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/app/WallpaperManager;->setBitmapWithDescription(Landroid/graphics/Bitmap;Landroid/app/wallpaper/WallpaperDescription;ZII)I

    move-result p1

    return p1
.end method

.method public whitelist setBitmapWithDescription(Landroid/graphics/Bitmap;Landroid/app/wallpaper/WallpaperDescription;ZI)I
    .registers 12
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2552
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2553
    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 2552
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/app/WallpaperManager;->setBitmapWithDescription(Landroid/graphics/Bitmap;Landroid/app/wallpaper/WallpaperDescription;ZII)I

    move-result p1

    return p1
.end method

.method public whitelist setDisplayOffset(Landroid/os/IBinder;II)V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2970
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/view/IWindowSession;->setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 2975
    nop

    .line 2976
    return-void

    .line 2973
    :catch_9
    move-exception p1

    .line 2974
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setDisplayPadding(Landroid/graphics/Rect;)V
    .registers 5

    .line 2943
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "setDisplayPadding"

    invoke-static {v0, v1}, Landroid/os/StrictMode;->assertUiContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 2945
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 2949
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2950
    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    .line 2949
    invoke-interface {v0, p1, v1, v2}, Landroid/app/IWallpaperManager;->setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;I)V

    .line 2954
    nop

    .line 2955
    return-void

    .line 2946
    :cond_27
    sget-object p1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v0, "WallpaperService not running"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Landroid/os/DeadSystemException;

    invoke-direct {v0}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_39} :catch_39

    .line 2952
    :catch_39
    move-exception p1

    .line 2953
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public whitelist setResource(II)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2371
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_85

    .line 2375
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2376
    new-instance v8, Landroid/app/WallpaperManager$WallpaperSetCompletion;

    invoke-direct {v8, p0}, Landroid/app/WallpaperManager$WallpaperSetCompletion;-><init>(Landroid/app/WallpaperManager;)V

    .line 2378
    :try_start_12
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2379
    new-instance v1, Landroid/app/wallpaper/WallpaperDescription$Builder;

    invoke-direct {v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->build()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object v4

    .line 2382
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2383
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2384
    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v9

    .line 2382
    const/4 v5, 0x0

    move v7, p2

    invoke-interface/range {v1 .. v9}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/app/wallpaper/WallpaperDescription;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p2
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_51} :catch_7e

    .line 2385
    if-eqz p2, :cond_75

    .line 2386
    nop

    .line 2388
    const/4 v1, 0x0

    :try_start_55
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_5a
    .catchall {:try_start_55 .. :try_end_5a} :catchall_6f

    .line 2389
    :try_start_5a
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Landroid/app/WallpaperManager;->copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 2392
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 2393
    invoke-virtual {v8}, Landroid/app/WallpaperManager$WallpaperSetCompletion;->waitForCompletion()V
    :try_end_67
    .catchall {:try_start_5a .. :try_end_67} :catchall_6b

    .line 2397
    :try_start_67
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2398
    goto :goto_75

    .line 2397
    :catchall_6b
    move-exception v0

    move-object p1, v0

    move-object v1, v2

    goto :goto_71

    :catchall_6f
    move-exception v0

    move-object p1, v0

    :goto_71
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2398
    throw p1
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_75} :catch_7e

    .line 2402
    :cond_75
    :goto_75
    nop

    .line 2403
    const-string p1, "android.service.wallpaper.extra.ID"

    const/4 p2, 0x0

    invoke-virtual {v6, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 2400
    :catch_7e
    move-exception v0

    move-object p1, v0

    .line 2401
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2372
    :cond_85
    sget-object p1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string p2, "WallpaperService not running"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Landroid/os/DeadSystemException;

    invoke-direct {p2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public whitelist setResource(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2351
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->setResource(II)I

    .line 2352
    return-void
.end method

.method public whitelist setStream(Ljava/io/InputStream;Landroid/graphics/Rect;Z)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2661
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I

    move-result p1

    return p1
.end method

.method public whitelist setStream(Ljava/io/InputStream;Landroid/graphics/Rect;ZI)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2689
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2690
    if-eqz p2, :cond_b

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2691
    :cond_b
    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/app/WallpaperManager;->setStreamWithCrops(Ljava/io/InputStream;Landroid/util/SparseArray;ZI)I

    move-result p1

    return p1
.end method

.method public whitelist setStream(Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2621
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;Landroid/graphics/Rect;Z)I

    .line 2622
    return-void
.end method

.method public whitelist setStreamWithCrops(Ljava/io/InputStream;Landroid/util/SparseArray;ZI)I
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Rect;",
            ">;ZI)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2734
    new-instance v0, Landroid/app/wallpaper/WallpaperDescription$Builder;

    invoke-direct {v0}, Landroid/app/wallpaper/WallpaperDescription$Builder;-><init>()V

    invoke-virtual {v0, p2}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setCropHints(Landroid/util/SparseArray;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object p2

    .line 2735
    invoke-virtual {p2}, Landroid/app/wallpaper/WallpaperDescription$Builder;->build()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object p2

    .line 2736
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/WallpaperManager;->setStreamWithDescription(Ljava/io/InputStream;Landroid/app/wallpaper/WallpaperDescription;ZI)I

    move-result p1

    return p1
.end method

.method public blacklist setStreamWithCrops(Ljava/io/InputStream;Ljava/util/Map;ZI)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Rect;",
            ">;ZI)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2710
    new-instance v0, Landroid/app/wallpaper/WallpaperDescription$Builder;

    invoke-direct {v0}, Landroid/app/wallpaper/WallpaperDescription$Builder;-><init>()V

    invoke-virtual {v0, p2}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setCropHints(Ljava/util/Map;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object p2

    .line 2711
    invoke-virtual {p2}, Landroid/app/wallpaper/WallpaperDescription$Builder;->build()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object p2

    .line 2712
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/WallpaperManager;->setStreamWithDescription(Ljava/io/InputStream;Landroid/app/wallpaper/WallpaperDescription;ZI)I

    move-result p1

    return p1
.end method

.method public whitelist setStreamWithDescription(Ljava/io/InputStream;Landroid/app/wallpaper/WallpaperDescription;ZI)I
    .registers 16
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2757
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 2761
    const/4 v0, 0x0

    move v1, v0

    :goto_a
    invoke-virtual {p2}, Landroid/app/wallpaper/WallpaperDescription;->getCropHints()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 2762
    invoke-virtual {p2}, Landroid/app/wallpaper/WallpaperDescription;->getCropHints()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Landroid/app/WallpaperManager;->validateRect(Landroid/graphics/Rect;)V

    .line 2761
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 2764
    :cond_24
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2765
    new-instance v9, Landroid/app/WallpaperManager$WallpaperSetCompletion;

    invoke-direct {v9, p0}, Landroid/app/WallpaperManager$WallpaperSetCompletion;-><init>(Landroid/app/WallpaperManager;)V

    .line 2767
    :try_start_2e
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2768
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2769
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v10

    .line 2767
    const/4 v3, 0x0

    move-object v5, p2

    move v6, p3

    move v8, p4

    invoke-interface/range {v2 .. v10}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/app/wallpaper/WallpaperDescription;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p2
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_48} :catch_70

    .line 2770
    if-eqz p2, :cond_68

    .line 2771
    nop

    .line 2773
    const/4 p3, 0x0

    :try_start_4c
    new-instance p4, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {p4, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_51
    .catchall {:try_start_4c .. :try_end_51} :catchall_62

    .line 2774
    :try_start_51
    invoke-direct {p0, p1, p4}, Landroid/app/WallpaperManager;->copyStreamToWallpaperFile(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V

    .line 2775
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->close()V

    .line 2776
    invoke-virtual {v9}, Landroid/app/WallpaperManager$WallpaperSetCompletion;->waitForCompletion()V
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_5e

    .line 2778
    :try_start_5a
    invoke-static {p4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2779
    goto :goto_68

    .line 2778
    :catchall_5e
    move-exception v0

    move-object p1, v0

    move-object p3, p4

    goto :goto_64

    :catchall_62
    move-exception v0

    move-object p1, v0

    :goto_64
    invoke-static {p3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 2779
    throw p1
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_68} :catch_70

    .line 2783
    :cond_68
    :goto_68
    nop

    .line 2784
    const-string p1, "android.service.wallpaper.extra.ID"

    invoke-virtual {v7, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 2781
    :catch_70
    move-exception v0

    move-object p1, v0

    .line 2782
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 2758
    :cond_77
    sget-object p1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string p2, "WallpaperService not running"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Landroid/os/DeadSystemException;

    invoke-direct {p2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public whitelist setWallpaperComponent(Landroid/content/ComponentName;)Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3033
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/WallpaperManager;->setWallpaperComponent(Landroid/content/ComponentName;I)Z

    move-result p1

    return p1
.end method

.method public greylist setWallpaperComponent(Landroid/content/ComponentName;I)Z
    .registers 4

    .line 3109
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/WallpaperManager;->setWallpaperComponentWithFlags(Landroid/content/ComponentName;II)Z

    move-result p1

    return p1
.end method

.method public whitelist setWallpaperComponentWithDescription(Landroid/app/wallpaper/WallpaperDescription;I)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3175
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/WallpaperManager;->setWallpaperComponentWithDescription(Landroid/app/wallpaper/WallpaperDescription;II)Z

    move-result p1

    return p1
.end method

.method public blacklist setWallpaperComponentWithDescription(Landroid/app/wallpaper/WallpaperDescription;II)Z
    .registers 6

    .line 3198
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 3203
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p2, p3}, Landroid/app/IWallpaperManager;->setWallpaperComponentChecked(Landroid/app/wallpaper/WallpaperDescription;Ljava/lang/String;II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_17} :catch_19

    .line 3205
    const/4 p1, 0x1

    return p1

    .line 3206
    :catch_19
    move-exception p1

    .line 3207
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 3199
    :cond_1f
    sget-object p1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string p2, "WallpaperManagerService not running"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3200
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Landroid/os/DeadSystemException;

    invoke-direct {p2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public whitelist setWallpaperComponentWithFlags(Landroid/content/ComponentName;I)Z
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3129
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/WallpaperManager;->setWallpaperComponentWithFlags(Landroid/content/ComponentName;II)Z

    move-result p1

    return p1
.end method

.method public blacklist setWallpaperComponentWithFlags(Landroid/content/ComponentName;II)Z
    .registers 5

    .line 3150
    new-instance v0, Landroid/app/wallpaper/WallpaperDescription$Builder;

    invoke-direct {v0}, Landroid/app/wallpaper/WallpaperDescription$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->setComponent(Landroid/content/ComponentName;)Landroid/app/wallpaper/WallpaperDescription$Builder;

    move-result-object p1

    .line 3151
    invoke-virtual {p1}, Landroid/app/wallpaper/WallpaperDescription$Builder;->build()Landroid/app/wallpaper/WallpaperDescription;

    move-result-object p1

    .line 3152
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/WallpaperManager;->setWallpaperComponentWithDescription(Landroid/app/wallpaper/WallpaperDescription;II)Z

    move-result p1

    return p1
.end method

.method public whitelist setWallpaperDimAmount(F)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3045
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 3050
    :try_start_8
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-static {p1}, Landroid/util/MathUtils;->saturate(F)F

    move-result p1

    invoke-interface {v0, p1}, Landroid/app/IWallpaperManager;->setWallpaperDimAmount(F)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_15} :catch_17

    .line 3053
    nop

    .line 3054
    return-void

    .line 3051
    :catch_17
    move-exception p1

    .line 3052
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 3046
    :cond_1d
    sget-object p1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v0, "WallpaperService not running"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3047
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Landroid/os/DeadSystemException;

    invoke-direct {v0}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public whitelist setWallpaperOffsetSteps(FF)V
    .registers 3

    .line 3244
    iput p1, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 3245
    iput p2, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 3246
    return-void
.end method

.method public whitelist setWallpaperOffsets(Landroid/os/IBinder;FF)V
    .registers 10

    .line 3227
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

    .line 3232
    nop

    .line 3233
    return-void

    .line 3230
    :catch_10
    move-exception v0

    move-object p1, v0

    .line 3231
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist setWallpaperZoomOut(Landroid/os/IBinder;F)V
    .registers 5

    .line 3287
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_25

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_25

    .line 3290
    if-eqz p1, :cond_1c

    .line 3294
    :try_start_d
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowSession;->setWallpaperZoomOut(Landroid/os/IBinder;F)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_16

    .line 3297
    nop

    .line 3298
    return-void

    .line 3295
    :catch_16
    move-exception p1

    .line 3296
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 3291
    :cond_1c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "windowToken must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3288
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "zoom must be between 0 and 1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public blacklist shouldEnableWideColorGamut()Z
    .registers 2

    .line 1029
    iget-boolean v0, p0, Landroid/app/WallpaperManager;->mWcgEnabled:Z

    return v0
.end method

.method public whitelist suggestDesiredDimensions(II)V
    .registers 7

    .line 2886
    iget-object v0, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "suggestDesiredDimensions"

    invoke-static {v0, v1}, Landroid/os/StrictMode;->assertUiContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 2898
    const/4 v0, 0x0

    :try_start_9
    const-string/jumbo v1, "sys.max_texture_size"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_10} :catch_11
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_60

    .line 2901
    goto :goto_13

    .line 2899
    :catch_11
    move-exception v1

    .line 2900
    nop

    .line 2903
    :goto_13
    if-lez v0, :cond_2f

    .line 2904
    if-gt p1, v0, :cond_19

    if-le p2, v0, :cond_2f

    .line 2906
    :cond_19
    int-to-float v1, p2

    int-to-float v2, p1

    div-float/2addr v1, v2

    .line 2907
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    if-le p1, p2, :cond_28

    .line 2908
    nop

    .line 2909
    int-to-float p1, v0

    mul-float/2addr p1, v1

    float-to-double p1, p1

    add-double/2addr p1, v2

    double-to-int p2, p1

    move p1, v0

    goto :goto_2f

    .line 2911
    :cond_28
    nop

    .line 2912
    int-to-float p1, v0

    div-float/2addr p1, v1

    float-to-double p1, p1

    add-double/2addr p1, v2

    double-to-int p1, p1

    move p2, v0

    .line 2917
    :cond_2f
    :goto_2f
    :try_start_2f
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 2921
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->-$$Nest$fgetmService(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 2922
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    .line 2921
    invoke-interface {v0, p1, p2, v1, v2}, Landroid/app/IWallpaperManager;->setDimensionHints(IILjava/lang/String;I)V

    .line 2926
    nop

    .line 2927
    return-void

    .line 2918
    :cond_4e
    sget-object p1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string p2, "WallpaperService not running"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Landroid/os/DeadSystemException;

    invoke-direct {p2}, Landroid/os/DeadSystemException;-><init>()V

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_60} :catch_60

    .line 2924
    :catch_60
    move-exception p1

    .line 2925
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public blacklist wallpaperSupportsWcg(I)Z
    .registers 6

    .line 1491
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->shouldEnableWideColorGamut()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1492
    return v1

    .line 1494
    :cond_8
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getColorManagementProxy()Landroid/app/WallpaperManager$ColorManagementProxy;

    move-result-object v0

    .line 1495
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1, p1, v0}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;ZILandroid/app/WallpaperManager$ColorManagementProxy;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1496
    if-eqz p1, :cond_34

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    if-eqz v2, :cond_34

    .line 1497
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    sget-object v3, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v3}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v3

    if-eq v2, v3, :cond_34

    .line 1498
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager$ColorManagementProxy;->isSupportedColorSpace(Landroid/graphics/ColorSpace;)Z

    move-result p1

    if-eqz p1, :cond_34

    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    nop

    .line 1496
    :goto_35
    return v1
.end method
