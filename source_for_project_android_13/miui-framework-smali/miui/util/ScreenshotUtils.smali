.class public Lmiui/util/ScreenshotUtils;
.super Ljava/lang/Object;
.source "ScreenshotUtils.java"


# static fields
.field private static final blacklist ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

.field private static final blacklist ACTIVITY_SCREENSHOT_FOLDER_PATH:Ljava/lang/String; = "/data/system/app_screenshot"

.field public static final blacklist BLUR_SCALE_RATIO:F = 0.33333334f

.field public static final blacklist DEFAULT_SCREENSHOT_COLOR:I = -0x55000001

.field public static final blacklist DEFAULT_SCREEN_BLUR_RADIUS:I

.field public static final blacklist REAL_BLUR_BLACK:F

.field public static final blacklist REAL_BLUR_MINIFY:I

.field public static final blacklist REAL_BLUR_RADIUS:I

.field private static final blacklist TAG:Ljava/lang/String; = "ScreenshotUtils"

.field private static blacklist sCacheBitmap:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sCacheBitmapWithNavigationBarHide:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sCacheBitmapWithNavigationBarShow:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sDisplay:Landroid/view/Display;

.field private static blacklist sHandler:Landroid/os/Handler;

.field private static blacklist sHandlerThread:Landroid/os/HandlerThread;

.field private static blacklist sKeyguardManager:Landroid/app/KeyguardManager;

.field private static blacklist sPaint:Landroid/graphics/Paint;

.field private static blacklist sScreenHeight:I

.field private static blacklist sScreenWidth:I

.field private static blacklist sSizeBuf:Landroid/graphics/Point;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smscreenShotAndSave(Ljava/lang/String;IZZ)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lmiui/util/ScreenshotUtils;->screenShotAndSave(Ljava/lang/String;IZZ)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    .line 46
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11070126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lmiui/util/ScreenshotUtils;->DEFAULT_SCREEN_BLUR_RADIUS:I

    .line 49
    const-string v0, "persist.sys.real_blur_black"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sput v0, Lmiui/util/ScreenshotUtils;->REAL_BLUR_BLACK:F

    .line 50
    const-string v0, "persist.sys.real_blur_minify"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmiui/util/ScreenshotUtils;->REAL_BLUR_MINIFY:I

    .line 51
    const-string v0, "persist.sys.real_blur_radius"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lmiui/util/ScreenshotUtils;->REAL_BLUR_RADIUS:I

    .line 80
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/app_screenshot"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist captureActivityScreenshot(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortComponentName"    # Ljava/lang/String;

    .line 105
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lmiui/util/ScreenshotUtils;->captureActivityScreenshot(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 106
    return-void
.end method

.method public static blacklist captureActivityScreenshot(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shortComponentName"    # Ljava/lang/String;
    .param p2, "isAsync"    # Ljava/lang/Boolean;

    .line 109
    invoke-static {p0}, Lmiui/util/ScreenshotUtils;->initializeIfNeed(Landroid/content/Context;)V

    .line 111
    sget-object v0, Lmiui/util/ScreenshotUtils;->sKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 113
    :cond_c
    invoke-static {p0}, Lmiui/util/ScreenshotUtils;->disallowTaskManagerScreenshotMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1c

    const-string v0, "persist.sys.screenshot_mode"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_32

    .line 114
    :cond_1c
    invoke-static {p1, v1}, Lmiui/util/ScreenshotUtils;->getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_27

    return-void

    .line 115
    :cond_27
    invoke-static {p1, v2}, Lmiui/util/ScreenshotUtils;->getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_32

    return-void

    .line 118
    :cond_32
    sget-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 119
    .local v0, "rotation":I
    if-eqz v0, :cond_3f

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3e

    goto :goto_3f

    :cond_3e
    move v1, v2

    .line 121
    .local v1, "isPort":Z
    :cond_3f
    :goto_3f
    sget-object v2, Lmiui/util/ScreenshotUtils;->sHandler:Landroid/os/Handler;

    if-nez v2, :cond_68

    .line 122
    const-class v2, Lmiui/util/ScreenshotUtils;

    monitor-enter v2

    .line 123
    :try_start_46
    sget-object v3, Lmiui/util/ScreenshotUtils;->sHandler:Landroid/os/Handler;

    if-nez v3, :cond_63

    .line 124
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "ScreenshotUtils"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v3, Lmiui/util/ScreenshotUtils;->sHandlerThread:Landroid/os/HandlerThread;

    .line 125
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 126
    new-instance v3, Landroid/os/Handler;

    sget-object v4, Lmiui/util/ScreenshotUtils;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v3, Lmiui/util/ScreenshotUtils;->sHandler:Landroid/os/Handler;

    .line 128
    :cond_63
    monitor-exit v2

    goto :goto_68

    :catchall_65
    move-exception v3

    monitor-exit v2
    :try_end_67
    .catchall {:try_start_46 .. :try_end_67} :catchall_65

    throw v3

    .line 131
    :cond_68
    :goto_68
    const/4 v2, 0x0

    .line 137
    .local v2, "hasNavigationBar":Z
    :try_start_69
    sget-object v3, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-static {v3}, Lmiui/util/CompatibilityHelper;->hasNavigationBar(I)Z

    move-result v3
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_69 .. :try_end_73} :catch_75

    move v2, v3

    .line 140
    goto :goto_79

    .line 138
    :catch_75
    move-exception v3

    .line 139
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 141
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_79
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 142
    move v3, v2

    .line 143
    .local v3, "finalHasNavigationBar":Z
    sget-object v4, Lmiui/util/ScreenshotUtils;->sHandler:Landroid/os/Handler;

    new-instance v5, Lmiui/util/ScreenshotUtils$1;

    invoke-direct {v5, p1, v0, v1, v3}, Lmiui/util/ScreenshotUtils$1;-><init>(Ljava/lang/String;IZZ)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 148
    .end local v3    # "finalHasNavigationBar":Z
    goto :goto_8e

    .line 149
    :cond_8b
    invoke-static {p1, v0, v1, v2}, Lmiui/util/ScreenshotUtils;->screenShotAndSave(Ljava/lang/String;IZZ)V

    .line 151
    :goto_8e
    return-void
.end method

.method public static blacklist disallowTaskManagerScreenshotMode(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 93
    invoke-static {}, Lmiui/util/MiuiFeatureUtils;->isLiteMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 94
    return v1

    .line 96
    :cond_8
    const-string v0, "enable_miui_lite"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static blacklist getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;
    .registers 7
    .param p0, "shortComponentName"    # Ljava/lang/String;
    .param p1, "isPort"    # Z

    .line 230
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 231
    const/16 v3, 0x2f

    const/16 v4, 0x2d

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    if-eqz p1, :cond_17

    const-string v3, "p"

    goto :goto_19

    :cond_17
    const-string v3, "l"

    :goto_19
    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "%s--%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 230
    return-object v0
.end method

.method public static blacklist getActivityScreenshotSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "size"    # Landroid/graphics/Point;

    .line 84
    invoke-static {p0}, Lmiui/util/ScreenshotUtils;->initializeIfNeed(Landroid/content/Context;)V

    .line 86
    sget-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 87
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11070049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 88
    .local v0, "scale":F
    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 89
    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 90
    return-void
.end method

.method private static blacklist getCacheBitmap(Z)Ljava/lang/ref/SoftReference;
    .registers 6
    .param p0, "hasNavigationBar"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 316
    if-nez p0, :cond_5

    .line 317
    sget-object v0, Lmiui/util/ScreenshotUtils;->sCacheBitmap:Ljava/lang/ref/SoftReference;

    return-object v0

    .line 319
    :cond_5
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 320
    .local v0, "displaySize":Landroid/graphics/Point;
    sget-object v1, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 321
    sget-object v1, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 322
    .local v1, "rotation":I
    if-eqz v1, :cond_1d

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v2, 0x1

    .line 323
    .local v2, "isPort":Z
    :goto_1e
    if-eqz v2, :cond_23

    iget v3, v0, Landroid/graphics/Point;->y:I

    goto :goto_25

    :cond_23
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 324
    .local v3, "displayHeight":I
    :goto_25
    sget v4, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    if-ne v3, v4, :cond_2c

    sget-object v4, Lmiui/util/ScreenshotUtils;->sCacheBitmapWithNavigationBarHide:Ljava/lang/ref/SoftReference;

    goto :goto_2e

    :cond_2c
    sget-object v4, Lmiui/util/ScreenshotUtils;->sCacheBitmapWithNavigationBarShow:Ljava/lang/ref/SoftReference;

    :goto_2e
    return-object v4
.end method

.method public static blacklist getScreenshot(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 235
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v1, v2}, Lmiui/util/ScreenshotUtils;->getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;
    .registers 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scale"    # F
    .param p2, "minLayer"    # I
    .param p3, "maxLayer"    # I
    .param p4, "includeNavigationBar"    # Z

    .line 239
    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {p0}, Lmiui/util/ScreenshotUtils;->initializeIfNeed(Landroid/content/Context;)V

    .line 240
    sget v0, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v0, v3

    float-to-int v4, v0

    .line 241
    .local v4, "screenshotWidth":I
    sget v0, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v3

    float-to-int v5, v0

    .line 244
    .local v5, "screenshotHeight":I
    if-nez v1, :cond_1f

    if-nez v2, :cond_1f

    .line 245
    invoke-static {v4, v5}, Lmiui/util/CompatibilityHelper;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v6, v0

    .local v0, "screenshot":Landroid/graphics/Bitmap;
    goto :goto_24

    .line 248
    .end local v0    # "screenshot":Landroid/graphics/Bitmap;
    :cond_1f
    invoke-static {v4, v5, v1, v2}, Lmiui/util/CompatibilityHelper;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v6, v0

    .line 251
    .local v6, "screenshot":Landroid/graphics/Bitmap;
    :goto_24
    if-eqz v6, :cond_f5

    .line 252
    sget-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v7

    .line 253
    .local v7, "degree":I
    if-eqz v7, :cond_34

    const/4 v0, 0x2

    if-ne v7, v0, :cond_32

    goto :goto_34

    :cond_32
    const/4 v0, 0x0

    goto :goto_35

    :cond_34
    :goto_34
    const/4 v0, 0x1

    :goto_35
    move v8, v0

    .line 255
    .local v8, "isPortrait":Z
    if-eqz p4, :cond_40

    .line 256
    sget-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    sget-object v9, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    invoke-virtual {v0, v9}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_9e

    .line 258
    :cond_40
    const/4 v9, 0x0

    .line 259
    .local v9, "hasNavigationBar":Z
    const/4 v10, 0x0

    .line 261
    .local v10, "navigationBarHeight":I
    :try_start_42
    sget-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-static {v0}, Lmiui/util/CompatibilityHelper;->hasNavigationBar(I)Z

    move-result v0

    move v9, v0

    .line 267
    if-eqz v9, :cond_5d

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v11, "force_fsg_nav_bar"

    invoke-static {v0, v11}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 269
    const/4 v0, 0x0

    move v9, v0

    .line 271
    :cond_5d
    if-eqz v9, :cond_78

    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v11, "navigation_bar_size"

    const-string v12, "dimen"

    const-string v13, "android"

    invoke-virtual {v0, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 273
    .local v0, "resourceId":I
    if-lez v0, :cond_78

    .line 274
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_77} :catch_79

    move v10, v11

    .line 279
    .end local v0    # "resourceId":I
    :cond_78
    goto :goto_7a

    .line 277
    :catch_79
    move-exception v0

    .line 280
    :goto_7a
    sget-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    sget-object v11, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    invoke-virtual {v0, v11}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 281
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_8d

    .line 282
    sget-object v0, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v11, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v11, v10

    iput v11, v0, Landroid/graphics/Point;->y:I

    goto :goto_9e

    .line 284
    :cond_8d
    if-eqz v8, :cond_97

    .line 285
    sget-object v0, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v11, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v11, v10

    iput v11, v0, Landroid/graphics/Point;->y:I

    goto :goto_9e

    .line 287
    :cond_97
    sget-object v0, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v11, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v11, v10

    iput v11, v0, Landroid/graphics/Point;->x:I

    .line 291
    .end local v9    # "hasNavigationBar":Z
    .end local v10    # "navigationBarHeight":I
    :goto_9e
    sget-object v0, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 292
    .local v0, "targetWidth":I
    sget-object v9, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    mul-float/2addr v9, p1

    add-float/2addr v9, v3

    float-to-int v3, v9

    .line 294
    .local v3, "targetHeight":I
    if-ne v4, v0, :cond_b4

    if-ne v5, v3, :cond_b4

    if-eqz v7, :cond_f5

    .line 295
    :cond_b4
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 296
    .local v9, "matrix":Landroid/graphics/Matrix;
    if-eqz v7, :cond_de

    .line 297
    neg-int v10, v4

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    neg-int v12, v5

    int-to-float v12, v12

    div-float/2addr v12, v11

    invoke-virtual {v9, v10, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 298
    mul-int/lit8 v10, v7, 0x5a

    rsub-int v10, v10, 0x168

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 299
    nop

    .line 300
    if-eqz v8, :cond_d3

    int-to-float v10, v4

    goto :goto_d4

    :cond_d3
    int-to-float v10, v5

    :goto_d4
    div-float/2addr v10, v11

    .line 301
    if-eqz v8, :cond_d9

    int-to-float v12, v5

    goto :goto_da

    :cond_d9
    int-to-float v12, v4

    :goto_da
    div-float/2addr v12, v11

    .line 299
    invoke-virtual {v9, v10, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 304
    :cond_de
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 305
    .local v10, "temp":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 306
    .local v11, "canvas":Landroid/graphics/Canvas;
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v11, v6, v9, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 307
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 308
    move-object v6, v10

    .line 312
    .end local v0    # "targetWidth":I
    .end local v3    # "targetHeight":I
    .end local v7    # "degree":I
    .end local v8    # "isPortrait":Z
    .end local v9    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "temp":Landroid/graphics/Bitmap;
    .end local v11    # "canvas":Landroid/graphics/Canvas;
    :cond_f5
    return-object v6
.end method

.method private static blacklist initializeIfNeed(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 54
    sget-object v0, Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_FOLDER:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_18

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 61
    :cond_18
    sget-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    if-nez v0, :cond_2a

    .line 62
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 63
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    sput-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    .line 66
    :cond_2a
    sget-object v0, Lmiui/util/ScreenshotUtils;->sKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_38

    .line 67
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    sput-object v0, Lmiui/util/ScreenshotUtils;->sKeyguardManager:Landroid/app/KeyguardManager;

    .line 70
    :cond_38
    sget-object v0, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    if-eqz v0, :cond_66

    .line 71
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 72
    .local v0, "degree":I
    if-eqz v0, :cond_48

    const/4 v1, 0x2

    if-ne v0, v1, :cond_46

    goto :goto_48

    :cond_46
    const/4 v1, 0x0

    goto :goto_49

    :cond_48
    :goto_48
    const/4 v1, 0x1

    .line 73
    .local v1, "isPortrait":Z
    :goto_49
    sget-object v2, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    sget-object v3, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    invoke-static {v2, v3}, Lmiui/util/CustomizeUtil;->getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 74
    sget-object v2, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    if-eqz v1, :cond_57

    iget v2, v2, Landroid/graphics/Point;->x:I

    goto :goto_59

    :cond_57
    iget v2, v2, Landroid/graphics/Point;->y:I

    :goto_59
    sput v2, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    .line 75
    sget-object v2, Lmiui/util/ScreenshotUtils;->sSizeBuf:Landroid/graphics/Point;

    if-eqz v1, :cond_62

    iget v2, v2, Landroid/graphics/Point;->y:I

    goto :goto_64

    :cond_62
    iget v2, v2, Landroid/graphics/Point;->x:I

    :goto_64
    sput v2, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    .line 77
    .end local v0    # "degree":I
    .end local v1    # "isPortrait":Z
    :cond_66
    return-void
.end method

.method private static blacklist screenShotAndSave(Ljava/lang/String;IZZ)V
    .registers 23
    .param p0, "shortComponentName"    # Ljava/lang/String;
    .param p1, "rotation"    # I
    .param p2, "isPort"    # Z
    .param p3, "hasNavigationBar"    # Z

    .line 159
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const-string v5, "ScreenshotUtils"

    const/16 v0, 0x7530

    .line 160
    .local v0, "maxLayer":I
    :try_start_c
    sget v6, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    sget v7, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    const/4 v8, 0x0

    invoke-static {v6, v7, v8, v0}, Lmiui/util/CompatibilityHelper;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 164
    .local v6, "screenshot":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 165
    .local v7, "displaySize":Landroid/graphics/Point;
    sget-object v9, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v9, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 166
    if-eqz v3, :cond_24

    iget v9, v7, Landroid/graphics/Point;->x:I

    goto :goto_26

    :cond_24
    iget v9, v7, Landroid/graphics/Point;->y:I

    .line 167
    .local v9, "displayWidth":I
    :goto_26
    if-eqz v3, :cond_2b

    iget v10, v7, Landroid/graphics/Point;->y:I

    goto :goto_2d

    :cond_2b
    iget v10, v7, Landroid/graphics/Point;->x:I

    .line 168
    .local v10, "displayHeight":I
    :goto_2d
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x11070049

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v11

    .line 170
    .local v11, "scale":F
    const/4 v12, 0x2

    const/4 v13, 0x3

    if-eqz v4, :cond_51

    .line 172
    if-eq v2, v13, :cond_47

    if-ne v2, v12, :cond_41

    goto :goto_47

    .line 175
    :cond_41
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v8, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v14, "src":Landroid/graphics/Rect;
    goto :goto_5b

    .line 173
    .end local v14    # "src":Landroid/graphics/Rect;
    :cond_47
    :goto_47
    new-instance v14, Landroid/graphics/Rect;

    sget v15, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    sub-int v12, v15, v10

    invoke-direct {v14, v8, v12, v9, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v14    # "src":Landroid/graphics/Rect;
    goto :goto_5b

    .line 178
    .end local v14    # "src":Landroid/graphics/Rect;
    :cond_51
    new-instance v12, Landroid/graphics/Rect;

    sget v14, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    sget v15, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    invoke-direct {v12, v8, v8, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v14, v12

    .line 182
    .restart local v14    # "src":Landroid/graphics/Rect;
    :goto_5b
    invoke-static/range {p3 .. p3}, Lmiui/util/ScreenshotUtils;->getCacheBitmap(Z)Ljava/lang/ref/SoftReference;

    move-result-object v12

    if-nez v12, :cond_63

    const/4 v12, 0x0

    goto :goto_6d

    :cond_63
    invoke-static/range {p3 .. p3}, Lmiui/util/ScreenshotUtils;->getCacheBitmap(Z)Ljava/lang/ref/SoftReference;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    .line 183
    .local v12, "saveBitmap":Landroid/graphics/Bitmap;
    :goto_6d
    if-nez v12, :cond_98

    .line 185
    if-eqz v4, :cond_73

    move v15, v9

    goto :goto_75

    :cond_73
    sget v15, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    :goto_75
    int-to-float v15, v15

    mul-float/2addr v15, v11

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v15, v15, v17

    float-to-int v15, v15

    .line 186
    if-eqz v4, :cond_80

    move v8, v10

    goto :goto_84

    :cond_80
    sget v18, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    move/from16 v8, v18

    :goto_84
    int-to-float v8, v8

    mul-float/2addr v8, v11

    add-float v8, v8, v17

    float-to-int v8, v8

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 184
    invoke-static {v15, v8, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v12, v8

    .line 188
    new-instance v8, Ljava/lang/ref/SoftReference;

    invoke-direct {v8, v12}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v8, v4}, Lmiui/util/ScreenshotUtils;->setCacheBitmap(Ljava/lang/ref/SoftReference;Z)V

    .line 191
    :cond_98
    sget-object v8, Lmiui/util/ScreenshotUtils;->sPaint:Landroid/graphics/Paint;

    if-nez v8, :cond_a4

    .line 192
    new-instance v8, Landroid/graphics/Paint;

    const/4 v13, 0x3

    invoke-direct {v8, v13}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v8, Lmiui/util/ScreenshotUtils;->sPaint:Landroid/graphics/Paint;

    .line 194
    :cond_a4
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 197
    .local v8, "canvas":Landroid/graphics/Canvas;
    const/4 v13, 0x1

    if-eq v2, v13, :cond_b3

    const/4 v15, 0x2

    if-ne v2, v15, :cond_b0

    goto :goto_b3

    :cond_b0
    move/from16 v17, v0

    goto :goto_ca

    .line 198
    :cond_b3
    :goto_b3
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    int-to-float v13, v13

    const/high16 v17, 0x40000000    # 2.0f

    div-float v13, v13, v17

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float v15, v15, v17

    move/from16 v17, v0

    const/high16 v0, 0x43340000    # 180.0f

    .end local v0    # "maxLayer":I
    .local v17, "maxLayer":I
    invoke-virtual {v8, v0, v13, v15}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 202
    :goto_ca
    invoke-virtual {v8, v11, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 203
    if-eqz v6, :cond_ea

    .line 204
    new-instance v0, Landroid/graphics/Rect;

    .line 205
    if-eqz v4, :cond_d5

    move v13, v9

    goto :goto_d7

    :cond_d5
    sget v13, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    :goto_d7
    if-eqz v4, :cond_db

    move v15, v10

    goto :goto_dd

    :cond_db
    sget v15, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    :goto_dd
    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v13, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v13, Lmiui/util/ScreenshotUtils;->sPaint:Landroid/graphics/Paint;

    .line 204
    invoke-virtual {v8, v6, v14, v0, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 206
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_f3

    .line 208
    :cond_ea
    const/4 v2, 0x0

    const v0, -0x55000001

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v0, v13}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 212
    :goto_f3
    new-instance v0, Ljava/io/FileOutputStream;

    .line 213
    invoke-static {v1, v3}, Lmiui/util/ScreenshotUtils;->getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 214
    .local v0, "outStream":Ljava/io/FileOutputStream;
    sget-object v13, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x5a

    invoke-virtual {v12, v13, v15, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 215
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 218
    if-nez v3, :cond_109

    const/4 v2, 0x1

    :cond_109
    invoke-static {v1, v2}, Lmiui/util/ScreenshotUtils;->getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    .line 219
    .local v2, "anotherFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_139

    .line 220
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v13

    .line 221
    .local v13, "delete":Z
    if-eqz v13, :cond_136

    .line 222
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "outStream":Ljava/io/FileOutputStream;
    .local v16, "outStream":Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "delete failed"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_135} :catch_13c

    goto :goto_13b

    .line 221
    .end local v16    # "outStream":Ljava/io/FileOutputStream;
    .restart local v0    # "outStream":Ljava/io/FileOutputStream;
    :cond_136
    move-object/from16 v16, v0

    .end local v0    # "outStream":Ljava/io/FileOutputStream;
    .restart local v16    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_13b

    .line 219
    .end local v13    # "delete":Z
    .end local v16    # "outStream":Ljava/io/FileOutputStream;
    .restart local v0    # "outStream":Ljava/io/FileOutputStream;
    :cond_139
    move-object/from16 v16, v0

    .line 226
    .end local v0    # "outStream":Ljava/io/FileOutputStream;
    .end local v2    # "anotherFile":Ljava/io/File;
    .end local v6    # "screenshot":Landroid/graphics/Bitmap;
    .end local v7    # "displaySize":Landroid/graphics/Point;
    .end local v8    # "canvas":Landroid/graphics/Canvas;
    .end local v9    # "displayWidth":I
    .end local v10    # "displayHeight":I
    .end local v11    # "scale":F
    .end local v12    # "saveBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "src":Landroid/graphics/Rect;
    .end local v17    # "maxLayer":I
    :goto_13b
    goto :goto_142

    .line 224
    :catch_13c
    move-exception v0

    .line 225
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "screenShotAndSave"

    invoke-static {v5, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_142
    return-void
.end method

.method private static blacklist setCacheBitmap(Ljava/lang/ref/SoftReference;Z)V
    .registers 7
    .param p1, "hasNavigationBar"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;Z)V"
        }
    .end annotation

    .line 328
    .local p0, "cacheBitmap":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-nez p1, :cond_5

    .line 329
    sput-object p0, Lmiui/util/ScreenshotUtils;->sCacheBitmap:Ljava/lang/ref/SoftReference;

    .line 330
    return-void

    .line 332
    :cond_5
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 333
    .local v0, "displaySize":Landroid/graphics/Point;
    sget-object v1, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 334
    sget-object v1, Lmiui/util/ScreenshotUtils;->sDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 335
    .local v1, "rotation":I
    if-eqz v1, :cond_1d

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v2, 0x1

    .line 336
    .local v2, "isPort":Z
    :goto_1e
    if-eqz v2, :cond_23

    iget v3, v0, Landroid/graphics/Point;->y:I

    goto :goto_25

    :cond_23
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 337
    .local v3, "displayHeight":I
    :goto_25
    sget v4, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    if-ne v3, v4, :cond_2c

    .line 338
    sput-object p0, Lmiui/util/ScreenshotUtils;->sCacheBitmapWithNavigationBarHide:Ljava/lang/ref/SoftReference;

    goto :goto_2e

    .line 340
    :cond_2c
    sput-object p0, Lmiui/util/ScreenshotUtils;->sCacheBitmapWithNavigationBarShow:Ljava/lang/ref/SoftReference;

    .line 342
    :goto_2e
    return-void
.end method
