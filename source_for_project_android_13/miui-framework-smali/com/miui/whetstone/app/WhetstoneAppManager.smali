.class public Lcom/miui/whetstone/app/WhetstoneAppManager;
.super Ljava/lang/Object;
.source "WhetstoneAppManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "WhetstoneAppManager"

.field private static final blacklist UNINIT:I = -0x2

.field private static blacklist _sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

.field private static final blacklist sMutex:Ljava/lang/Object;

.field private static blacklist sPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/whetstone/strategy/WhetstonePackageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mApplicationThread:Landroid/os/IBinder;

.field private blacklist mContex:Landroid/content/Context;

.field public blacklist mEnable:Z

.field public blacklist mHasInit:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->sPackages:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/whetstone/app/WhetstoneAppManager;->sMutex:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/miui/whetstone/app/WhetstoneApplicationThread;

    invoke-direct {v0}, Lcom/miui/whetstone/app/WhetstoneApplicationThread;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mApplicationThread:Landroid/os/IBinder;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/whetstone/app/WhetstoneAppManager;->mHasInit:Z

    .line 36
    invoke-direct {p0}, Lcom/miui/whetstone/app/WhetstoneAppManager;->checkInit()V

    .line 37
    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/miui/whetstone/app/WhetstoneAppManager;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Lcom/miui/whetstone/app/WhetstoneAppManager;->attach(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public static blacklist addBitmap(Landroid/graphics/Bitmap;)V
    .registers 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 87
    return-void
.end method

.method public static blacklist addBitmapDrawable(Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 1
    .param p0, "dr"    # Landroid/graphics/drawable/BitmapDrawable;

    .line 80
    return-void
.end method

.method public static blacklist addDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 1
    .param p0, "dr"    # Landroid/graphics/drawable/Drawable;

    .line 84
    return-void
.end method

.method private blacklist checkInit()V
    .registers 1

    .line 43
    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Lcom/miui/whetstone/app/WhetstoneAppManager;
    .registers 2

    const-class v0, Lcom/miui/whetstone/app/WhetstoneAppManager;

    monitor-enter v0

    .line 61
    :try_start_3
    sget-object v1, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-nez v1, :cond_e

    .line 62
    new-instance v1, Lcom/miui/whetstone/app/WhetstoneAppManager;

    invoke-direct {v1}, Lcom/miui/whetstone/app/WhetstoneAppManager;-><init>()V

    sput-object v1, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    .line 64
    :cond_e
    sget-object v1, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 60
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized blacklist getInstance(Landroid/content/Context;)Lcom/miui/whetstone/app/WhetstoneAppManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/miui/whetstone/app/WhetstoneAppManager;

    monitor-enter v0

    .line 68
    :try_start_3
    sget-object v1, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    if-nez v1, :cond_e

    .line 69
    new-instance v1, Lcom/miui/whetstone/app/WhetstoneAppManager;

    invoke-direct {v1, p0}, Lcom/miui/whetstone/app/WhetstoneAppManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;

    .line 71
    :cond_e
    sget-object v1, Lcom/miui/whetstone/app/WhetstoneAppManager;->_sInstance:Lcom/miui/whetstone/app/WhetstoneAppManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 67
    .end local p0    # "context":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static blacklist getLeakCanaryWorksProperty()Z
    .registers 2

    .line 57
    const-string v0, "persist.sys.mem_leak_debug"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist handleTrimMemory(I)Z
    .registers 2
    .param p0, "level"    # I

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isEnable()Z
    .registers 1

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist restoreDirectBitmap(Landroid/graphics/Bitmap;)V
    .registers 1
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 90
    return-void
.end method

.method public static blacklist setHardwareRendererIfNeeded()V
    .registers 0

    .line 101
    return-void
.end method

.method public static blacklist setWhetstonePackageRecordInfo(Ljava/util/List;Z)V
    .registers 2
    .param p1, "isAppend"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/whetstone/strategy/WhetstonePackageInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 107
    .local p0, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/miui/whetstone/strategy/WhetstonePackageInfo;>;"
    return-void
.end method

.method public static blacklist trimHeapSizeIfNeeded(Landroid/content/pm/ApplicationInfo;)V
    .registers 1
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 104
    return-void
.end method


# virtual methods
.method public blacklist attach(Landroid/content/Context;)V
    .registers 2
    .param p1, "appContext"    # Landroid/content/Context;

    .line 51
    return-void
.end method

.method public blacklist onCreate(Landroid/app/Application;)V
    .registers 2
    .param p1, "application"    # Landroid/app/Application;

    .line 54
    return-void
.end method

.method public blacklist onResume(Landroid/app/Activity;)V
    .registers 2
    .param p1, "activity"    # Landroid/app/Activity;

    .line 76
    return-void
.end method
