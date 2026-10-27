.class public Landroid/app/ActivityTaskManager;
.super Ljava/lang/Object;
.source "ActivityTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityTaskManager$RootTaskInfo;
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT_MINIMAL_SPLIT_SCREEN_DISPLAY_SIZE_DP:I = 0x1b8

.field public static final blacklist EXTRA_IGNORE_TARGET_SECURITY:Ljava/lang/String; = "android.app.extra.EXTRA_IGNORE_TARGET_SECURITY"

.field public static final blacklist EXTRA_OPTIONS:Ljava/lang/String; = "android.app.extra.OPTIONS"

.field private static final greylist IActivityTaskManagerSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/app/IActivityTaskManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INVALID_STACK_ID:I = -0x1

.field public static final blacklist INVALID_TASK_ID:I = -0x1

.field public static final blacklist RESIZE_MODE_FORCED:I = 0x2

.field public static final blacklist RESIZE_MODE_PRESERVE_WINDOW:I = 0x1

.field public static final blacklist RESIZE_MODE_SYSTEM:I = 0x0

.field public static final blacklist RESIZE_MODE_SYSTEM_SCREEN_ROTATION:I = 0x1

.field public static final blacklist RESIZE_MODE_USER:I = 0x1

.field public static final blacklist RESIZE_MODE_USER_FORCED:I = 0x3

.field private static final blacklist limitMaximumNumber:Z

.field private static final blacklist sInstance:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Landroid/app/ActivityTaskManager;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sMaxRecentTasks:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 134
    const/4 v0, -0x1

    sput v0, Landroid/app/ActivityTaskManager;->sMaxRecentTasks:I

    .line 136
    const-string/jumbo v0, "persist.recenttasks.limit_maximum_number"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityTaskManager;->limitMaximumNumber:Z

    .line 138
    new-instance v0, Landroid/app/ActivityTaskManager$1;

    invoke-direct {v0}, Landroid/app/ActivityTaskManager$1;-><init>()V

    sput-object v0, Landroid/app/ActivityTaskManager;->sInstance:Landroid/util/Singleton;

    .line 160
    new-instance v0, Landroid/app/ActivityTaskManager$2;

    invoke-direct {v0}, Landroid/app/ActivityTaskManager$2;-><init>()V

    sput-object v0, Landroid/app/ActivityTaskManager;->IActivityTaskManagerSingleton:Landroid/util/Singleton;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/ActivityTaskManager-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/app/ActivityTaskManager;-><init>()V

    return-void
.end method

.method public static blacklist currentUiModeSupportsErrorDialogs(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 397
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 398
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-static {v0}, Landroid/app/ActivityTaskManager;->currentUiModeSupportsErrorDialogs(Landroid/content/res/Configuration;)Z

    move-result v1

    return v1
.end method

.method public static blacklist currentUiModeSupportsErrorDialogs(Landroid/content/res/Configuration;)Z
    .registers 3
    .param p0, "config"    # Landroid/content/res/Configuration;

    .line 388
    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0xf

    .line 389
    .local v0, "modeType":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    const/4 v1, 0x6

    if-ne v0, v1, :cond_e

    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    if-nez v1, :cond_16

    :cond_e
    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    const/4 v1, 0x7

    if-eq v0, v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method public static blacklist getDefaultAppRecentsLimitStatic()I
    .registers 2

    .line 264
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    .line 265
    .local v0, "defaultAppRecentsLimit":I
    const/4 v1, 0x5

    if-ge v0, v1, :cond_12

    sget-boolean v1, Landroid/app/ActivityTaskManager;->limitMaximumNumber:Z

    if-eqz v1, :cond_12

    .line 266
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxAppRecentsLimitStatic()I

    move-result v1

    return v1

    .line 268
    :cond_12
    return v0
.end method

.method public static blacklist getInstance()Landroid/app/ActivityTaskManager;
    .registers 1

    .line 151
    sget-object v0, Landroid/app/ActivityTaskManager;->sInstance:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityTaskManager;

    return-object v0
.end method

.method public static blacklist getMaxAppRecentsLimitStatic()I
    .registers 1

    .line 277
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxRecentTasksStatic()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static blacklist getMaxNumPictureInPictureActions(Landroid/content/Context;)I
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 403
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static blacklist getMaxRecentTasksStatic()I
    .registers 7

    .line 210
    sget v0, Landroid/app/ActivityTaskManager;->sMaxRecentTasks:I

    if-gez v0, :cond_3f

    .line 213
    sget-boolean v0, Landroid/app/ActivityTaskManager;->limitMaximumNumber:Z

    const/16 v1, 0x24

    const/16 v2, 0x30

    if-eqz v0, :cond_35

    .line 217
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v3

    const-wide/32 v5, 0x40000000

    div-long/2addr v3, v5

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    long-to-int v0, v3

    .line 218
    .local v0, "totalRam":I
    packed-switch v0, :pswitch_data_42

    .line 230
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_32

    .line 227
    :pswitch_22
    const/16 v1, 0x15

    sput v1, Landroid/app/ActivityTaskManager;->sMaxRecentTasks:I

    .line 228
    goto :goto_34

    .line 224
    :pswitch_27
    const/16 v1, 0xf

    sput v1, Landroid/app/ActivityTaskManager;->sMaxRecentTasks:I

    .line 225
    goto :goto_34

    .line 221
    :pswitch_2c
    const/16 v1, 0xb

    sput v1, Landroid/app/ActivityTaskManager;->sMaxRecentTasks:I

    .line 222
    goto :goto_34

    .line 230
    :cond_31
    move v1, v2

    :goto_32
    sput v1, Landroid/app/ActivityTaskManager;->sMaxRecentTasks:I

    .line 232
    .end local v0    # "totalRam":I
    :goto_34
    goto :goto_3f

    .line 233
    :cond_35
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_3d

    :cond_3c
    move v1, v2

    :goto_3d
    sput v1, Landroid/app/ActivityTaskManager;->sMaxRecentTasks:I

    .line 237
    :cond_3f
    :goto_3f
    sget v0, Landroid/app/ActivityTaskManager;->sMaxRecentTasks:I

    return v0

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2c
        :pswitch_27
        :pswitch_22
    .end packed-switch
.end method

.method public static blacklist getService()Landroid/app/IActivityTaskManager;
    .registers 1

    .line 156
    sget-object v0, Landroid/app/ActivityTaskManager;->IActivityTaskManagerSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityTaskManager;

    return-object v0
.end method

.method public static blacklist supportMultipleTask(Landroid/content/ComponentName;)Z
    .registers 3
    .param p0, "componentName"    # Landroid/content/ComponentName;

    .line 546
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityTaskManager;->supportMultipleTask(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 547
    :catch_9
    move-exception v0

    .line 548
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist supportsMultiWindow(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 289
    .local v0, "isWatch":Z
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    if-eqz v1, :cond_12

    if-eqz v0, :cond_21

    .line 290
    :cond_12
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    .line 289
    :goto_22
    return v1
.end method

.method public static blacklist supportsSplitScreenMultiWindow(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 302
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 303
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 305
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 306
    .local v1, "widthDp":I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 307
    .local v2, "heightDp":I
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x1b8

    if-ge v3, v5, :cond_24

    .line 308
    return v4

    .line 311
    :cond_24
    invoke-static {p0}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 312
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x11101d1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_39

    const/4 v4, 0x1

    goto :goto_3a

    :cond_39
    nop

    .line 311
    :goto_3a
    return v4
.end method


# virtual methods
.method public blacklist clearLaunchParamsForPackages(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 377
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->clearLaunchParamsForPackages(Ljava/util/List;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 380
    goto :goto_c

    .line 378
    :catch_8
    move-exception v0

    .line 379
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 381
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist detachNavigationBarFromApp(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "transition"    # Landroid/os/IBinder;

    .line 560
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->detachNavigationBarFromApp(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 563
    nop

    .line 564
    return-void

    .line 561
    :catch_9
    move-exception v0

    .line 562
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getRecentTasks(III)Ljava/util/List;
    .registers 6
    .param p1, "maxNum"    # I
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 445
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityTaskManager;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 446
    :catch_d
    move-exception v0

    .line 447
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTaskBounds(I)Landroid/graphics/Rect;
    .registers 4
    .param p1, "taskId"    # I

    .line 472
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 473
    :catch_9
    move-exception v0

    .line 474
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTasks(I)Ljava/util/List;
    .registers 3
    .param p1, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 412
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityTaskManager;->getTasks(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTasks(IZ)Ljava/util/List;
    .registers 4
    .param p1, "maxNum"    # I
    .param p2, "filterOnlyVisibleRecents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 421
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ActivityTaskManager;->getTasks(IZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTasks(IZZ)Ljava/util/List;
    .registers 6
    .param p1, "maxNum"    # I
    .param p2, "filterOnlyVisibleRecents"    # Z
    .param p3, "keepIntentExtra"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 432
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityTaskManager;->getTasks(IZZ)Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 433
    :catch_9
    move-exception v0

    .line 434
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getTopSplitPackageNames()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 570
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getTopSplitPackageNames()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 571
    :catch_9
    move-exception v0

    .line 572
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist isInLockTaskMode()Z
    .registers 3

    .line 494
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->isInLockTaskMode()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 495
    :catch_9
    move-exception v0

    .line 496
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist moveTaskToRootTask(IIZ)V
    .registers 6
    .param p1, "taskId"    # I
    .param p2, "rootTaskId"    # I
    .param p3, "toTop"    # Z

    .line 350
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/app/IActivityTaskManager;->moveTaskToRootTask(IIZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 353
    nop

    .line 354
    return-void

    .line 351
    :catch_9
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist onSplashScreenViewCopyFinished(ILandroid/window/SplashScreenView$SplashScreenViewParcelable;)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "parcelable"    # Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    .line 250
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityTaskManager;->onSplashScreenViewCopyFinished(ILandroid/window/SplashScreenView$SplashScreenViewParcelable;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 253
    nop

    .line 254
    return-void

    .line 251
    :catch_9
    move-exception v0

    .line 252
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "definition"    # Landroid/view/RemoteAnimationDefinition;

    .line 485
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IActivityTaskManager;->registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 488
    nop

    .line 489
    return-void

    .line 486
    :catch_9
    move-exception v0

    .line 487
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerSecureChangedListener(Landroid/app/IWindowSecureChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/IWindowSecureChangeListener;

    .line 514
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->registerSecureChangedListener(Landroid/app/IWindowSecureChangeListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 517
    nop

    .line 518
    return-void

    .line 515
    :catch_9
    move-exception v0

    .line 516
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist registerTaskStackListener(Landroid/app/TaskStackListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/TaskStackListener;

    .line 454
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 457
    nop

    .line 458
    return-void

    .line 455
    :catch_9
    move-exception v0

    .line 456
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeAllVisibleRecentTasks()V
    .registers 3

    .line 199
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->removeAllVisibleRecentTasks()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 202
    nop

    .line 203
    return-void

    .line 200
    :catch_9
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeRootTasksInWindowingModes([I)V
    .registers 4
    .param p1, "windowingModes"    # [I

    .line 176
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->removeRootTasksInWindowingModes([I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 179
    nop

    .line 180
    return-void

    .line 177
    :catch_9
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeRootTasksWithActivityTypes([I)V
    .registers 4
    .param p1, "activityTypes"    # [I

    .line 186
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->removeRootTasksWithActivityTypes([I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 189
    nop

    .line 190
    return-void

    .line 187
    :catch_9
    move-exception v0

    .line 188
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeTask(I)Z
    .registers 4
    .param p1, "taskId"    # I

    .line 504
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->removeTask(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 505
    :catch_9
    move-exception v0

    .line 506
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist resizeTask(ILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "taskId"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 364
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/app/IActivityTaskManager;->resizeTask(ILandroid/graphics/Rect;I)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_a

    .line 367
    nop

    .line 368
    return-void

    .line 365
    :catch_a
    move-exception v0

    .line 366
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist startSystemLockTaskMode(I)V
    .registers 4
    .param p1, "taskId"    # I

    .line 323
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->startSystemLockTaskMode(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 326
    nop

    .line 327
    return-void

    .line 324
    :catch_9
    move-exception v0

    .line 325
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist stopSystemLockTaskMode()V
    .registers 3

    .line 335
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 338
    nop

    .line 339
    return-void

    .line 336
    :catch_9
    move-exception v0

    .line 337
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist supportsSplitScreen(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 534
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->supportsSplitScreen(Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 535
    :catch_9
    move-exception v0

    .line 536
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist unRegisterSecureChangedListener(Landroid/app/IWindowSecureChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/IWindowSecureChangeListener;

    .line 523
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->unRegisterSecureChangedListener(Landroid/app/IWindowSecureChangeListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 526
    nop

    .line 527
    return-void

    .line 524
    :catch_9
    move-exception v0

    .line 525
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist unregisterTaskStackListener(Landroid/app/TaskStackListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/app/TaskStackListener;

    .line 463
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    .line 466
    nop

    .line 467
    return-void

    .line 464
    :catch_9
    move-exception v0

    .line 465
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
