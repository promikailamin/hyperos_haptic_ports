.class public Lcom/android/server/wallpaper/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"

# interfaces
.implements Lcom/android/server/wallpaper/IWallpaperManagerService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;,
        Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;,
        Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;,
        Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_CROP:Z = true

.field private static final DEBUG_LIVE:Z = true

.field private static final LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

.field private static final MAX_WALLPAPER_COMPONENT_LOG_LENGTH:I = 0x80

.field private static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field private static final RECORD_FILE:Ljava/lang/String; = "decode_record"

.field private static final RECORD_LOCK_FILE:Ljava/lang/String; = "decode_lock_record"

.field private static final TAG:Ljava/lang/String; = "WallpaperManagerService"

.field static final WALLPAPER:Ljava/lang/String; = "wallpaper_orig"

.field static final WALLPAPER_CROP:Ljava/lang/String; = "wallpaper"

.field static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"

.field static final WALLPAPER_LOCK_CROP:Ljava/lang/String; = "wallpaper_lock"

.field static final WALLPAPER_LOCK_ORIG:Ljava/lang/String; = "wallpaper_lock_orig"

.field private static final sPerUserFiles:[Ljava/lang/String;

.field private static final sWallpaperType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

.field private final mColorsChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDefaultWallpaperComponent:Landroid/content/ComponentName;

.field private mDisplayDatas:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field protected mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field private final mImageWallpaper:Landroid/content/ComponentName;

.field private mInAmbientMode:Z

.field private mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

.field protected mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field private mLocalColorRepo:Lcom/android/server/wallpaper/LocalColorRepository;

.field private final mLock:Ljava/lang/Object;

.field private final mLockWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field private final mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

.field private mShuttingDown:Z

.field private final mUserRestorecon:Landroid/util/SparseBooleanArray;

.field private mWaitingForUnlock:Z

.field private mWallpaperId:I

.field private mWallpaperManagerServiceStub:Lcom/android/server/wallpaper/WallpaperManagerServiceStub;

.field private final mWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static bridge synthetic -$$Nest$fgetmColorsChangedListeners(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/android/server/wallpaper/WallpaperManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultWallpaperComponent(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayManager(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/hardware/display/DisplayManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImageWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInAmbientMode(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInAmbientMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLocalColorRepo(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/LocalColorRepository;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLocalColorRepo:Lcom/android/server/wallpaper/LocalColorRepository;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShuttingDown(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWallpaperManagerServiceStub(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerServiceStub;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperManagerServiceStub:Lcom/android/server/wallpaper/WallpaperManagerServiceStub;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWallpaperMap(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWindowManagerInternal(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmShuttingDown(Lcom/android/server/wallpaper/WallpaperManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mattachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangingToSame(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mclearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$merrorCheck(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->errorCheck(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetBlurWallpaperInternal(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/IWallpaperManagerCallback;)Landroid/os/ParcelFileDescriptor;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getBlurWallpaperInternal(Landroid/app/IWallpaperManagerCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetDisplayDataOrCreate(Lcom/android/server/wallpaper/WallpaperManagerService;I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mloadSettingsLocked(Lcom/android/server/wallpaper/WallpaperManagerService;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyLockWallpaperChanged(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyWallpaperChanged(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDisplayReadyInternal(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->onDisplayReadyInternal(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveDisplayData(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->removeDisplayData(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msupportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 159
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    .line 217
    const-string/jumbo v0, "wallpaper_orig"

    const-string/jumbo v1, "wallpaper"

    const-string/jumbo v2, "wallpaper_lock_orig"

    const-string/jumbo v3, "wallpaper_lock"

    const-string/jumbo v4, "wallpaper_info.xml"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    .line 1964
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$5;

    invoke-direct {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$5;-><init>()V

    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->sWallpaperType:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 1782
    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    .line 200
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 868
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 942
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 943
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    .line 945
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    .line 949
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    .line 950
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 952
    new-instance v1, Lcom/android/server/wallpaper/LocalColorRepository;

    invoke-direct {v1}, Lcom/android/server/wallpaper/LocalColorRepository;-><init>()V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLocalColorRepo:Lcom/android/server/wallpaper/LocalColorRepository;

    .line 1784
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 1785
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    .line 1786
    nop

    .line 1787
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104048e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1786
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 1788
    invoke-static {p1}, Landroid/app/WallpaperManager;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    .line 1789
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 1790
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 1791
    const-string v1, "appops"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1792
    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 1793
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1794
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 1795
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    .line 1796
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    .line 1798
    const-class v0, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$LocalService-IA;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1801
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerServiceStub;->getInstance()Lcom/android/server/wallpaper/WallpaperManagerServiceStub;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperManagerServiceStub:Lcom/android/server/wallpaper/WallpaperManagerServiceStub;

    .line 1802
    invoke-interface {v0}, Lcom/android/server/wallpaper/WallpaperManagerServiceStub;->initBlurWallpaperThread()V

    .line 1803
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperManagerServiceStub:Lcom/android/server/wallpaper/WallpaperManagerServiceStub;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerServiceStub;->setWallpaperManagerService(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/content/Context;)V

    .line 1807
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperManagerServiceStub:Lcom/android/server/wallpaper/WallpaperManagerServiceStub;

    invoke-interface {v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerServiceStub;->checkAndConfigFrameworkVersionToWallpaper(Landroid/content/Context;)V

    .line 1808
    return-void
.end method

.method private attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 4
    .param p1, "conn"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3324
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    invoke-virtual {p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 3325
    return-void
.end method

.method private changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .registers 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3109
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_15

    .line 3110
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 3111
    if-nez p1, :cond_15

    .line 3114
    return v1

    .line 3116
    :cond_c
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3119
    return v1

    .line 3122
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method private checkPermission(Ljava/lang/String;)V
    .registers 5
    .param p1, "permission"    # Ljava/lang/String;

    .line 3346
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3350
    return-void

    .line 3347
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 3
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3319
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 3320
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3321
    return-void
.end method

.method private clearWallpaperData(II)V
    .registers 7
    .param p1, "userID"    # I
    .param p2, "wallpaperType"    # I

    .line 1984
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    .line 1985
    const/4 v2, 0x2

    if-ne p2, v2, :cond_d

    const-string/jumbo v3, "wallpaper_lock_orig"

    goto :goto_10

    :cond_d
    const-string/jumbo v3, "wallpaper_orig"

    .line 1986
    :goto_10
    if-ne p2, v2, :cond_16

    const-string/jumbo v2, "wallpaper_lock"

    goto :goto_19

    :cond_16
    const-string/jumbo v2, "wallpaper"

    :goto_19
    invoke-direct {v0, p1, v1, v3, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->sourceExists()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1988
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1990
    :cond_27
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1991
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1994
    :cond_32
    return-void
.end method

.method private detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 6
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3285
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_7f

    .line 3286
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 3288
    :try_start_b
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_13

    .line 3290
    goto :goto_14

    .line 3289
    :catch_13
    move-exception v0

    .line 3291
    :goto_14
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 3295
    :cond_18
    :try_start_18
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v0, :cond_25

    .line 3296
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperService;->detach()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_25} :catch_26

    .line 3300
    :cond_25
    goto :goto_2e

    .line 3298
    :catch_26
    move-exception v0

    .line 3299
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WallpaperManagerService"

    const-string v3, "Failed detaching wallpaper service "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3301
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2e
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3302
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 3304
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 3305
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3307
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmResetRunnable(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3308
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisconnectRunnable(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3310
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmTryToRebindRunnable(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3313
    iput-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 3314
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-ne p1, v0, :cond_7f

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3316
    :cond_7f
    return-void
.end method

.method private static emptyCallbackList(Landroid/os/RemoteCallbackList;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Landroid/os/RemoteCallbackList<",
            "TT;>;)Z"
        }
    .end annotation

    .line 480
    .local p0, "list":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<TT;>;"
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private enforcePackageBelongsToUid(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 3365
    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->packageBelongsToUid(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3370
    return-void

    .line 3366
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid package or package does not belong to uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 4
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3775
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ltz v0, :cond_10

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 3776
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gez v0, :cond_16

    .line 3777
    :cond_10
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 3779
    :cond_16
    return-void
.end method

.method private ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;I)V
    .registers 5
    .param p1, "wpdData"    # Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .param p2, "displayId"    # I

    .line 1095
    invoke-direct {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getMaximumSizeDimension(I)I

    move-result v0

    .line 1096
    .local v0, "baseSize":I
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    if-ge v1, v0, :cond_a

    .line 1097
    iput v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    .line 1099
    :cond_a
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    if-ge v1, v0, :cond_10

    .line 1100
    iput v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    .line 1102
    :cond_10
    return-void
.end method

.method private errorCheck(I)V
    .registers 4
    .param p1, "userID"    # I

    .line 1972
    sget-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->sWallpaperType:Ljava/util/HashMap;

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1981
    return-void
.end method

.method private extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 10
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 538
    const/4 v0, 0x0

    .line 539
    .local v0, "cropFile":Ljava/lang/String;
    const/4 v1, 0x0

    .line 543
    .local v1, "defaultImageWallpaper":Z
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 544
    const/4 v3, 0x0

    :try_start_6
    iput-boolean v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mIsColorExtractedFromDim:Z

    .line 545
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_b0

    .line 547
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 548
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 549
    :try_start_14
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz v3, :cond_1c

    monitor-exit v2

    return-void

    .line 550
    :cond_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_2d

    .line 551
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractDefaultImageWallpaperColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/app/WallpaperColors;

    move-result-object v3

    .line 552
    .local v3, "colors":Landroid/app/WallpaperColors;
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 553
    :try_start_24
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iput-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 554
    monitor-exit v4

    .line 555
    return-void

    .line 554
    :catchall_2a
    move-exception v2

    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2a

    throw v2

    .line 550
    .end local v3    # "colors":Landroid/app/WallpaperColors;
    :catchall_2d
    move-exception v3

    :try_start_2e
    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v3

    .line 558
    :cond_30
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 560
    :try_start_33
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v2, :cond_42

    :cond_41
    const/4 v3, 0x1

    :cond_42
    move v2, v3

    .line 562
    .local v2, "imageWallpaper":Z
    if-eqz v2, :cond_59

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    if-eqz v3, :cond_59

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 563
    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_68

    .line 564
    :cond_59
    if-eqz v2, :cond_68

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v3

    if-nez v3, :cond_68

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->sourceExists()Z

    move-result v3

    if-nez v3, :cond_68

    .line 565
    const/4 v1, 0x1

    .line 567
    :cond_68
    :goto_68
    iget v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 568
    .local v3, "wallpaperId":I
    iget v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperDimAmount:F

    move v2, v5

    .line 569
    .local v2, "dimAmount":F
    monitor-exit v4
    :try_end_6e
    .catchall {:try_start_33 .. :try_end_6e} :catchall_ad

    .line 571
    const/4 v4, 0x0

    .line 572
    .local v4, "colors":Landroid/app/WallpaperColors;
    if-eqz v0, :cond_7f

    .line 573
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 574
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_87

    .line 575
    invoke-static {v5, v2}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;F)Landroid/app/WallpaperColors;

    move-result-object v4

    .line 576
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_87

    .line 578
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :cond_7f
    if-eqz v1, :cond_87

    .line 580
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractDefaultImageWallpaperColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/app/WallpaperColors;

    move-result-object v4

    move-object v5, v4

    goto :goto_88

    .line 578
    :cond_87
    :goto_87
    move-object v5, v4

    .line 583
    .end local v4    # "colors":Landroid/app/WallpaperColors;
    .local v5, "colors":Landroid/app/WallpaperColors;
    :goto_88
    if-nez v5, :cond_92

    .line 584
    const-string v4, "WallpaperManagerService"

    const-string v6, "Cannot extract colors because wallpaper could not be read."

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    return-void

    .line 588
    :cond_92
    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 589
    :try_start_95
    iget v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    if-ne v4, v3, :cond_a1

    .line 590
    iput-object v5, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 593
    iget v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    goto :goto_a8

    .line 595
    :cond_a1
    const-string v4, "WallpaperManagerService"

    const-string v7, "Not setting primary colors since wallpaper changed"

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :goto_a8
    monitor-exit v6

    .line 598
    return-void

    .line 597
    :catchall_aa
    move-exception v4

    monitor-exit v6
    :try_end_ac
    .catchall {:try_start_95 .. :try_end_ac} :catchall_aa

    throw v4

    .line 569
    .end local v2    # "dimAmount":F
    .end local v3    # "wallpaperId":I
    .end local v5    # "colors":Landroid/app/WallpaperColors;
    :catchall_ad
    move-exception v2

    :try_start_ae
    monitor-exit v4
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw v2

    .line 545
    :catchall_b0
    move-exception v3

    :try_start_b1
    monitor-exit v2
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    throw v3
.end method

.method private extractDefaultImageWallpaperColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/app/WallpaperColors;
    .registers 8
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 604
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 605
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

    if-eqz v1, :cond_9

    monitor-exit v0

    return-object v1

    .line 606
    :cond_9
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperDimAmount:F

    .line 607
    .local v1, "dimAmount":F
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_71

    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, "colors":Landroid/app/WallpaperColors;
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v2
    :try_end_14
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_14} :catch_54
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_14} :catch_4a

    .line 611
    .local v2, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    if-nez v2, :cond_25

    .line 612
    :try_start_17
    const-string v4, "WallpaperManagerService"

    const-string v5, "Can\'t open default wallpaper stream"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_3e

    .line 613
    nop

    .line 622
    if-eqz v2, :cond_24

    :try_start_21
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/lang/OutOfMemoryError; {:try_start_21 .. :try_end_24} :catch_54
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_4a

    .line 613
    :cond_24
    return-object v3

    .line 616
    :cond_25
    :try_start_25
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 617
    .local v4, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static {v2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 618
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_38

    .line 619
    invoke-static {v3, v1}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;F)Landroid/app/WallpaperColors;

    move-result-object v5

    move-object v0, v5

    .line 620
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_3e

    .line 622
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_38
    if-eqz v2, :cond_5c

    :try_start_3a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3a .. :try_end_3d} :catch_54
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_4a

    goto :goto_5c

    .line 610
    :catchall_3e
    move-exception v3

    if-eqz v2, :cond_49

    :try_start_41
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception v4

    :try_start_46
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "colors":Landroid/app/WallpaperColors;
    .end local v1    # "dimAmount":F
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_49
    :goto_49
    throw v3
    :try_end_4a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_46 .. :try_end_4a} :catch_54
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4a} :catch_4a

    .line 624
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v0    # "colors":Landroid/app/WallpaperColors;
    .restart local v1    # "dimAmount":F
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catch_4a
    move-exception v2

    .line 625
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "WallpaperManagerService"

    const-string v4, "Can\'t close default wallpaper stream"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v0

    goto :goto_5d

    .line 622
    .end local v2    # "e":Ljava/io/IOException;
    :catch_54
    move-exception v2

    .line 623
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    const-string v3, "WallpaperManagerService"

    const-string v4, "Can\'t decode default wallpaper stream"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :cond_5c
    :goto_5c
    move-object v2, v0

    .line 628
    .end local v0    # "colors":Landroid/app/WallpaperColors;
    .local v2, "colors":Landroid/app/WallpaperColors;
    :goto_5d
    if-nez v2, :cond_67

    .line 629
    const-string v0, "WallpaperManagerService"

    const-string v3, "Extract default image wallpaper colors failed"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6d

    .line 631
    :cond_67
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 632
    :try_start_6a
    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

    .line 633
    monitor-exit v3

    .line 636
    :goto_6d
    return-object v2

    .line 633
    :catchall_6e
    move-exception v0

    monitor-exit v3
    :try_end_70
    .catchall {:try_start_6a .. :try_end_70} :catchall_6e

    throw v0

    .line 607
    .end local v1    # "dimAmount":F
    .end local v2    # "colors":Landroid/app/WallpaperColors;
    :catchall_71
    move-exception v1

    :try_start_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v1
.end method

.method private findWallpaperAtDisplay(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "displayId"    # I

    .line 2879
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2880
    invoke-virtual {v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2881
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-object v0

    .line 2883
    :cond_15
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-object v0
.end method

.method private getAttributeFloat(Landroid/util/TypedXmlPullParser;Ljava/lang/String;F)F
    .registers 5
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defValue"    # F

    .line 3601
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2, p3}, Landroid/util/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method private getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I
    .registers 5
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .line 3597
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2, p3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getBlurWallpaperInternal(Landroid/app/IWallpaperManagerCallback;)Landroid/os/ParcelFileDescriptor;
    .registers 3
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;

    .line 399
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperManagerServiceStub:Lcom/android/server/wallpaper/WallpaperManagerServiceStub;

    invoke-interface {v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerServiceStub;->getBlurWallpaper(Landroid/app/IWallpaperManagerCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .registers 4
    .param p1, "displayId"    # I

    .line 1084
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    .line 1085
    .local v0, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    if-nez v0, :cond_18

    .line 1086
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    invoke-direct {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;-><init>(I)V

    move-object v0, v1

    .line 1087
    invoke-direct {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;I)V

    .line 1088
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1090
    :cond_18
    return-object v0
.end method

.method private getEngine(III)Landroid/service/wallpaper/IWallpaperEngine;
    .registers 12
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .param p3, "displayId"    # I

    .line 2653
    invoke-direct {p0, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->findWallpaperAtDisplay(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    .line 2654
    .local v0, "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 2655
    :cond_8
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2656
    .local v2, "connection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    if-nez v2, :cond_d

    return-object v1

    .line 2657
    :cond_d
    const/4 v1, 0x0

    .line 2658
    .local v1, "engine":Landroid/service/wallpaper/IWallpaperEngine;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2659
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    :try_start_12
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_48

    .line 2660
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    iget v5, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    .line 2661
    .local v5, "id":I
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    iget v6, v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    .line 2662
    .local v6, "currentWhich":I
    if-eq v5, p3, :cond_3b

    if-eq v6, p1, :cond_3b

    .line 2659
    .end local v5    # "id":I
    .end local v6    # "currentWhich":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 2663
    .restart local v5    # "id":I
    .restart local v6    # "currentWhich":I
    :cond_3b
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    iget-object v7, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    move-object v1, v7

    .line 2666
    .end local v4    # "i":I
    .end local v5    # "id":I
    .end local v6    # "currentWhich":I
    :cond_48
    monitor-exit v3

    .line 2667
    return-object v1

    .line 2666
    :catchall_4a
    move-exception v4

    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_12 .. :try_end_4c} :catchall_4a

    throw v4
.end method

.method private getHighestDimAmountFromMap(Landroid/util/ArrayMap;)F
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 2807
    .local p1, "uidToDimAmountMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Float;>;"
    const/4 v0, 0x0

    .line 2808
    .local v0, "maxDimAmount":F
    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2809
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Float;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_2d

    .line 2810
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 2812
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Float;>;"
    :cond_2d
    goto :goto_9

    .line 2813
    :cond_2e
    return v0
.end method

.method private getMaximumSizeDimension(I)I
    .registers 5
    .param p1, "displayId"    # I

    .line 1105
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1106
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_36

    .line 1107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WallpaperManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1110
    :cond_36
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v1

    return v1
.end method

.method private getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation

    .line 442
    const/4 v0, 0x0

    .line 443
    .local v0, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    .line 444
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 445
    .local v1, "displayListeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    if-eqz v1, :cond_12

    .line 446
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/os/RemoteCallbackList;

    .line 448
    :cond_12
    return-object v0
.end method

.method private hasCrossUserPermission()Z
    .registers 3

    .line 2235
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 2236
    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    .line 2237
    .local v0, "interactPermission":I
    if-nez v0, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 2486
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private initializeFallbackWallpaper()V
    .registers 10

    .line 3762
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v0, :cond_2c

    .line 3764
    const/4 v0, 0x0

    .line 3765
    .local v0, "systemUserId":I
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "wallpaper_orig"

    const-string/jumbo v5, "wallpaper"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3767
    iput-boolean v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 3768
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v2

    iput v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3769
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 3771
    .end local v0    # "systemUserId":I
    :cond_2c
    return-void
.end method

.method private isValidDisplay(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 2282
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static synthetic lambda$attachServiceLocked$13(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 3
    .param p0, "conn"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "connector"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 3324
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic lambda$dump$14(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;)V
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "wpSize"    # Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    .line 4008
    const-string v0, "  displayId="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4009
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mDisplayId:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4010
    const-string v0, "  mWidth="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4011
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4012
    const-string v0, "  mHeight="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4013
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4014
    const-string v0, "  mPadding="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4015
    return-void
.end method

.method static synthetic lambda$dump$15(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "connector"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 4037
    const-string v0, "     mDisplayId="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4038
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4039
    const-string v0, "     mToken="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4040
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mToken:Landroid/os/Binder;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4041
    const-string v0, "     mEngine="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4042
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4043
    return-void
.end method

.method static synthetic lambda$dump$16(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "connector"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 4076
    const-string v0, "     mDisplayId="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4077
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4078
    const-string v0, "     mToken="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4079
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mToken:Landroid/os/Binder;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4080
    const-string v0, "     mEngine="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4081
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4082
    return-void
.end method

.method static synthetic lambda$generateCrop$1(ILandroid/graphics/Rect;Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .registers 5
    .param p0, "sampleSize"    # I
    .param p1, "estimateCrop"    # Landroid/graphics/Rect;
    .param p2, "decoder"    # Landroid/graphics/ImageDecoder;
    .param p3, "info"    # Landroid/graphics/ImageDecoder$ImageInfo;
    .param p4, "src"    # Landroid/graphics/ImageDecoder$Source;

    .line 810
    invoke-virtual {p2, p0}, Landroid/graphics/ImageDecoder;->setTargetSampleSize(I)V

    .line 811
    invoke-virtual {p2, p1}, Landroid/graphics/ImageDecoder;->setCrop(Landroid/graphics/Rect;)V

    .line 812
    return-void
.end method

.method static synthetic lambda$notifyGoingToSleep$9(IILandroid/os/Bundle;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 11
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "displayConnector"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 2629
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_14

    .line 2631
    :try_start_4
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const-string v2, "android.wallpaper.goingtosleep"

    const/4 v5, -0x1

    move v3, p0

    move v4, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    .line 2636
    goto :goto_14

    .line 2634
    :catch_10
    move-exception v0

    .line 2635
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2638
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method

.method static synthetic lambda$notifyWakingUp$8(IILandroid/os/Bundle;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 11
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "displayConnector"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 2607
    iget-object v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_14

    .line 2609
    :try_start_4
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const-string v2, "android.wallpaper.wakingup"

    const/4 v5, -0x1

    move v3, p0

    move v4, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_10

    .line 2613
    goto :goto_14

    .line 2611
    :catch_10
    move-exception v0

    .line 2612
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 2615
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_14
    :goto_14
    return-void
.end method

.method static synthetic lambda$setWallpaperComponent$12(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 8
    .param p0, "displayConnector"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 3083
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_f

    .line 3084
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    const-string v2, "android.wallpaper.reapply"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/service/wallpaper/IWallpaperEngine;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    .line 3089
    :cond_f
    goto :goto_18

    .line 3087
    :catch_10
    move-exception v0

    .line 3088
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WallpaperManagerService"

    const-string v2, "Error sending apply message to wallpaper"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3090
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_18
    return-void
.end method

.method static synthetic lambda$setWallpaperDimAmountForUid$10(FLcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 5
    .param p0, "maxDimAmount"    # F
    .param p1, "connector"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 2766
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_12

    .line 2768
    :try_start_4
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {v0, p0}, Landroid/service/wallpaper/IWallpaperEngine;->applyDimming(F)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 2772
    goto :goto_12

    .line 2769
    :catch_a
    move-exception v0

    .line 2770
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WallpaperManagerService"

    const-string v2, "Can\'t apply dimming on wallpaper display connector"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2774
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method static synthetic lambda$updateFallbackConnection$2(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 2
    .param p0, "connector"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 1146
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_7

    .line 1147
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->disconnectLocked()V

    .line 1149
    :cond_7
    return-void
.end method

.method static synthetic lambda$updateFallbackConnection$3(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/view/Display;)Z
    .registers 3
    .param p0, "fallbackConnection"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p1, "display"    # Landroid/view/Display;

    .line 1154
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->isUsableDisplay(Landroid/view/Display;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1155
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_18

    .line 1156
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 1154
    :goto_19
    return v0
.end method

.method private loadSettingsLocked(IZ)V
    .registers 22
    .param p1, "userId"    # I
    .param p2, "keepDimensionHints"    # Z

    .line 3652
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, " "

    const-string v4, "failed parsing "

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v5

    .line 3653
    .local v5, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v6, 0x0

    .line 3654
    .local v6, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v7

    .line 3656
    .local v7, "file":Ljava/io/File;
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3657
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v8, 0x1

    const-string v9, "WallpaperManagerService"

    if-nez v0, :cond_52

    .line 3659
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateFromOld()V

    .line 3661
    new-instance v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v11

    const-string/jumbo v12, "wallpaper_orig"

    const-string/jumbo v13, "wallpaper"

    invoke-direct {v10, v2, v11, v12, v13}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    .line 3663
    iput-boolean v8, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 3664
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3665
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v10

    if-nez v10, :cond_4d

    .line 3666
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->sourceExists()Z

    move-result v10

    if-eqz v10, :cond_48

    .line 3667
    invoke-virtual {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_4d

    .line 3669
    :cond_48
    const-string v10, "No static wallpaper imagery; defaults will be shown"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3672
    :cond_4d
    :goto_4d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initializeFallbackWallpaper()V

    move-object v10, v0

    goto :goto_53

    .line 3657
    :cond_52
    move-object v10, v0

    .line 3674
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .local v10, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_53
    const/4 v11, 0x0

    .line 3675
    .local v11, "success":Z
    const/4 v12, 0x0

    invoke-direct {v1, v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v13

    .line 3677
    .local v13, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :try_start_59
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5e
    .catch Ljava/io/FileNotFoundException; {:try_start_59 .. :try_end_5e} :catch_20d
    .catch Ljava/lang/NullPointerException; {:try_start_59 .. :try_end_5e} :catch_1ed
    .catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_5e} :catch_1cd
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_59 .. :try_end_5e} :catch_1ad
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5e} :catch_18d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_59 .. :try_end_5e} :catch_16c

    move-object v6, v0

    .line 3678
    :try_start_5f
    invoke-static {v6}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 3682
    .local v0, "parser":Landroid/util/TypedXmlPullParser;
    :goto_63
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v14

    .line 3683
    .local v14, "type":I
    const/4 v15, 0x2

    if-ne v14, v15, :cond_131

    .line 3684
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 3685
    .local v15, "tag":Ljava/lang/String;
    const-string/jumbo v8, "wp"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_db

    .line 3687
    move/from16 v8, p2

    invoke-virtual {v1, v0, v10, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperAttributes(Landroid/util/TypedXmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V

    .line 3690
    const-string v12, "component"
    :try_end_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_5f .. :try_end_7e} :catch_165
    .catch Ljava/lang/NullPointerException; {:try_start_5f .. :try_end_7e} :catch_15e
    .catch Ljava/lang/NumberFormatException; {:try_start_5f .. :try_end_7e} :catch_157
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5f .. :try_end_7e} :catch_151
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_7e} :catch_14b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5f .. :try_end_7e} :catch_145

    move-object/from16 v16, v5

    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .local v16, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v5, 0x0

    :try_start_81
    invoke-interface {v0, v5, v12}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_85
    .catch Ljava/io/FileNotFoundException; {:try_start_81 .. :try_end_85} :catch_d6
    .catch Ljava/lang/NullPointerException; {:try_start_81 .. :try_end_85} :catch_d1
    .catch Ljava/lang/NumberFormatException; {:try_start_81 .. :try_end_85} :catch_cc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_81 .. :try_end_85} :catch_c7
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_85} :catch_c2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_81 .. :try_end_85} :catch_bd

    .line 3691
    .local v12, "comp":Ljava/lang/String;
    if-eqz v12, :cond_9e

    .line 3692
    :try_start_87
    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5
    :try_end_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_87 .. :try_end_8b} :catch_9b
    .catch Ljava/lang/NullPointerException; {:try_start_87 .. :try_end_8b} :catch_98
    .catch Ljava/lang/NumberFormatException; {:try_start_87 .. :try_end_8b} :catch_95
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_87 .. :try_end_8b} :catch_92
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8b} :catch_8f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_87 .. :try_end_8b} :catch_8c

    goto :goto_9f

    .line 3732
    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v12    # "comp":Ljava/lang/String;
    .end local v14    # "type":I
    .end local v15    # "tag":Ljava/lang/String;
    :catch_8c
    move-exception v0

    goto/16 :goto_16f

    .line 3730
    :catch_8f
    move-exception v0

    goto/16 :goto_190

    .line 3728
    :catch_92
    move-exception v0

    goto/16 :goto_1b0

    .line 3726
    :catch_95
    move-exception v0

    goto/16 :goto_1d0

    .line 3724
    :catch_98
    move-exception v0

    goto/16 :goto_1f0

    .line 3722
    :catch_9b
    move-exception v0

    goto/16 :goto_210

    .line 3693
    .restart local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v12    # "comp":Ljava/lang/String;
    .restart local v14    # "type":I
    .restart local v15    # "tag":Ljava/lang/String;
    :cond_9e
    nop

    :goto_9f
    :try_start_9f
    iput-object v5, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 3694
    iget-object v5, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_b6

    const-string v5, "android"
    :try_end_a7
    .catch Ljava/io/FileNotFoundException; {:try_start_9f .. :try_end_a7} :catch_d6
    .catch Ljava/lang/NullPointerException; {:try_start_9f .. :try_end_a7} :catch_d1
    .catch Ljava/lang/NumberFormatException; {:try_start_9f .. :try_end_a7} :catch_cc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9f .. :try_end_a7} :catch_c7
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a7} :catch_c2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9f .. :try_end_a7} :catch_bd

    move-object/from16 v17, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .local v17, "stream":Ljava/io/FileInputStream;
    :try_start_a9
    iget-object v6, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 3696
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 3695
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_112

    goto :goto_b8

    .line 3694
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :cond_b6
    move-object/from16 v17, v6

    .line 3697
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    :goto_b8
    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iput-object v5, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    goto :goto_112

    .line 3732
    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v12    # "comp":Ljava/lang/String;
    .end local v14    # "type":I
    .end local v15    # "tag":Ljava/lang/String;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_bd
    move-exception v0

    move-object/from16 v17, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_16f

    .line 3730
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_c2
    move-exception v0

    move-object/from16 v17, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_190

    .line 3728
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_c7
    move-exception v0

    move-object/from16 v17, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1b0

    .line 3726
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_cc
    move-exception v0

    move-object/from16 v17, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1d0

    .line 3724
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_d1
    move-exception v0

    move-object/from16 v17, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1f0

    .line 3722
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_d6
    move-exception v0

    move-object/from16 v17, v6

    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_210

    .line 3709
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "type":I
    .restart local v15    # "tag":Ljava/lang/String;
    :cond_db
    move/from16 v8, p2

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    const-string v5, "kwp"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_112

    .line 3711
    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3712
    .local v5, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v5, :cond_10b

    .line 3713
    new-instance v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v12

    move-object/from16 v18, v5

    .end local v5    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .local v18, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string/jumbo v5, "wallpaper_lock_orig"

    const-string/jumbo v8, "wallpaper_lock"

    invoke-direct {v6, v2, v12, v5, v8}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 3715
    .end local v18    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v5    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_10d

    .line 3712
    :cond_10b
    move-object/from16 v18, v5

    .line 3717
    :goto_10d
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v5, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperAttributes(Landroid/util/TypedXmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    :try_end_111
    .catch Ljava/io/FileNotFoundException; {:try_start_a9 .. :try_end_111} :catch_12c
    .catch Ljava/lang/NullPointerException; {:try_start_a9 .. :try_end_111} :catch_127
    .catch Ljava/lang/NumberFormatException; {:try_start_a9 .. :try_end_111} :catch_122
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a9 .. :try_end_111} :catch_11d
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_111} :catch_118
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a9 .. :try_end_111} :catch_113

    goto :goto_135

    .line 3709
    .end local v5    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_112
    :goto_112
    goto :goto_135

    .line 3732
    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v14    # "type":I
    .end local v15    # "tag":Ljava/lang/String;
    :catch_113
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_16f

    .line 3730
    :catch_118
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_190

    .line 3728
    :catch_11d
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_1b0

    .line 3726
    :catch_122
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_1d0

    .line 3724
    :catch_127
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_1f0

    .line 3722
    :catch_12c
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_210

    .line 3683
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .local v5, "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v14    # "type":I
    :cond_131
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .line 3720
    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    :goto_135
    const/4 v5, 0x1

    if-ne v14, v5, :cond_13d

    .line 3721
    const/4 v11, 0x1

    .line 3734
    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v14    # "type":I
    move-object/from16 v6, v17

    goto/16 :goto_217

    .line 3720
    .restart local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v14    # "type":I
    :cond_13d
    move v8, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    const/4 v12, 0x0

    goto/16 :goto_63

    .line 3732
    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v14    # "type":I
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_145
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto :goto_16f

    .line 3730
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_14b
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto :goto_190

    .line 3728
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_151
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto :goto_1b0

    .line 3726
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_157
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1d0

    .line 3724
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_15e
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1f0

    .line 3722
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_165
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v17    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_210

    .line 3732
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .end local v17    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_16c
    move-exception v0

    move-object/from16 v16, v5

    .line 3733
    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    :goto_16f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_217

    .line 3730
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    :catch_18d
    move-exception v0

    move-object/from16 v16, v5

    .line 3731
    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    :goto_190
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_216

    .line 3728
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    :catch_1ad
    move-exception v0

    move-object/from16 v16, v5

    .line 3729
    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    :goto_1b0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_216

    .line 3726
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    :catch_1cd
    move-exception v0

    move-object/from16 v16, v5

    .line 3727
    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    :goto_1d0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_216

    .line 3724
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    :catch_1ed
    move-exception v0

    move-object/from16 v16, v5

    .line 3725
    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .local v0, "e":Ljava/lang/NullPointerException;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    :goto_1f0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto :goto_216

    .line 3722
    .end local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    .restart local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    :catch_20d
    move-exception v0

    move-object/from16 v16, v5

    .line 3723
    .end local v5    # "journal":Lcom/android/internal/util/JournaledFile;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v16    # "journal":Lcom/android/internal/util/JournaledFile;
    :goto_210
    const-string/jumbo v3, "no current wallpaper -- first boot?"

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3734
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_216
    nop

    .line 3735
    :goto_217
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3737
    if-nez v11, :cond_231

    .line 3738
    iget-object v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3739
    iget-object v0, v13, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3740
    const-string v0, ""

    iput-object v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 3742
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_23b

    .line 3744
    :cond_231
    iget v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    if-gtz v0, :cond_23b

    .line 3745
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v0

    iput v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3753
    :cond_23b
    :goto_23b
    const/4 v3, 0x0

    invoke-direct {v1, v13, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;I)V

    .line 3754
    invoke-direct {v1, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3755
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3756
    .local v0, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_24f

    .line 3757
    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3759
    :cond_24f
    return-void
.end method

.method private makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .registers 8
    .param p1, "userId"    # I

    .line 3445
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wallpaper_info.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 3446
    .local v0, "base":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private migrateFromOld()V
    .registers 8

    .line 3565
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3567
    .local v0, "preNWallpaper":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3568
    .local v2, "originalWallpaper":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper_orig"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3571
    .local v3, "newWallpaper":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 3572
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_59

    .line 3578
    invoke-static {v0, v3}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_59

    .line 3580
    :cond_30
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 3585
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/wallpaper_info.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3586
    .local v4, "oldInfo":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_53

    .line 3587
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v6, "wallpaper_info.xml"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v5

    .line 3588
    .local v1, "newInfo":Ljava/io/File;
    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 3591
    .end local v1    # "newInfo":Ljava/io/File;
    :cond_53
    invoke-static {v2, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 3592
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 3594
    .end local v4    # "oldInfo":Ljava/io/File;
    :cond_59
    :goto_59
    return-void
.end method

.method private migrateSystemToLockWallpaperLocked(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 2954
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2955
    .local v0, "sysWP":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v0, :cond_b

    .line 2959
    return-void

    .line 2963
    :cond_b
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper_lock_orig"

    const-string/jumbo v4, "wallpaper_lock"

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 2965
    .local v1, "lockWP":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    iput v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 2966
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2967
    iget-boolean v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    iput-boolean v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 2968
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iput-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 2969
    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperDimAmount:F

    iput v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperDimAmount:F

    .line 2973
    :try_start_31
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    .line 2974
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Landroid/system/ErrnoException; {:try_start_31 .. :try_end_4f} :catch_56

    .line 2980
    nop

    .line 2982
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2983
    return-void

    .line 2975
    :catch_56
    move-exception v2

    .line 2976
    .local v2, "e":Landroid/system/ErrnoException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t migrate system wallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WallpaperManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2978
    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2979
    return-void
.end method

.method private notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 7
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3328
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-$$Nest$fgetcallbacks(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 3329
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1d

    .line 3331
    :try_start_b
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-$$Nest$fgetcallbacks(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v2}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    .line 3336
    goto :goto_1a

    .line 3332
    :catch_19
    move-exception v2

    .line 3329
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 3338
    .end local v1    # "i":I
    :cond_1d
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-$$Nest$fgetcallbacks(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3340
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3341
    .local v1, "intent":Landroid/content/Intent;
    iget-boolean v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->fromForegroundApp:Z

    const-string v3, "android.service.wallpaper.extra.FROM_FOREGROUND_APP"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3342
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3343
    return-void
.end method

.method private notifyColorListeners(Landroid/app/WallpaperColors;III)V
    .registers 13
    .param p1, "wallpaperColors"    # Landroid/app/WallpaperColors;
    .param p2, "which"    # I
    .param p3, "userId"    # I
    .param p4, "displayId"    # I

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v0, "colorListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IWallpaperManagerCallback;>;"
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 488
    nop

    .line 489
    :try_start_9
    invoke-direct {p0, p3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v2

    .line 490
    .local v2, "currentUserColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    const/4 v3, -0x1

    .line 491
    invoke-direct {p0, v3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v3

    .line 492
    .local v3, "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

    .line 494
    .local v4, "keyguardListener":Landroid/app/IWallpaperManagerCallback;
    if-eqz v2, :cond_2c

    .line 495
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 496
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1b
    if-ge v6, v5, :cond_29

    .line 497
    invoke-virtual {v2, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/app/IWallpaperManagerCallback;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 499
    .end local v6    # "i":I
    :cond_29
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 502
    .end local v5    # "count":I
    :cond_2c
    if-eqz v3, :cond_44

    .line 503
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    .line 504
    .restart local v5    # "count":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_33
    if-ge v6, v5, :cond_41

    .line 505
    invoke-virtual {v3, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/app/IWallpaperManagerCallback;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    .line 507
    .end local v6    # "i":I
    :cond_41
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 509
    .end local v2    # "currentUserColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    .end local v3    # "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    .end local v5    # "count":I
    :cond_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_9 .. :try_end_45} :catchall_64

    .line 511
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 512
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4a
    if-ge v2, v1, :cond_5a

    .line 514
    :try_start_4c
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v3, p1, p2, p3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_55} :catch_56

    .line 518
    goto :goto_57

    .line 515
    :catch_56
    move-exception v3

    .line 512
    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 522
    .end local v2    # "i":I
    :cond_5a
    if-eqz v4, :cond_63

    if-nez p4, :cond_63

    .line 524
    :try_start_5e
    invoke-interface {v4, p1, p2, p3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_61} :catch_62

    .line 527
    goto :goto_63

    .line 525
    :catch_62
    move-exception v2

    .line 529
    :cond_63
    :goto_63
    return-void

    .line 509
    .end local v1    # "count":I
    .end local v4    # "keyguardListener":Landroid/app/IWallpaperManagerCallback;
    :catchall_64
    move-exception v2

    :try_start_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v2
.end method

.method private notifyLockWallpaperChanged()V
    .registers 3

    .line 420
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

    .line 421
    .local v0, "cb":Landroid/app/IWallpaperManagerCallback;
    if-eqz v0, :cond_9

    .line 423
    :try_start_4
    invoke-interface {v0}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 426
    goto :goto_9

    .line 424
    :catch_8
    move-exception v1

    .line 428
    :cond_9
    :goto_9
    return-void
.end method

.method private notifyWallpaperChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 3
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 409
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    if-eqz v0, :cond_b

    .line 411
    :try_start_4
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v0}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 415
    goto :goto_b

    .line 412
    :catch_a
    move-exception v0

    .line 417
    :cond_b
    :goto_b
    return-void
.end method

.method private notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V
    .registers 8
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "which"    # I
    .param p3, "displayId"    # I

    .line 454
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_3
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 456
    invoke-direct {p0, v1, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v1

    .line 457
    .local v1, "currentUserColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    const/4 v2, -0x1

    .line 458
    invoke-direct {p0, v2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v2

    .line 460
    .local v2, "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->emptyCallbackList(Landroid/os/RemoteCallbackList;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 461
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->emptyCallbackList(Landroid/os/RemoteCallbackList;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 462
    monitor-exit v0

    return-void

    .line 469
    :cond_1c
    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz v3, :cond_27

    iget-boolean v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mIsColorExtractedFromDim:Z

    if-eqz v3, :cond_25

    goto :goto_27

    :cond_25
    const/4 v3, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v3, 0x1

    :goto_28
    move v1, v3

    .line 470
    .end local v2    # "userAllColorListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    .local v1, "needsExtraction":Z
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_39

    .line 472
    if-eqz v1, :cond_2f

    .line 473
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 475
    :cond_2f
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAdjustedWallpaperColorsOnDimming(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/app/WallpaperColors;

    move-result-object v0

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, v0, p2, v2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyColorListeners(Landroid/app/WallpaperColors;III)V

    .line 477
    return-void

    .line 470
    .end local v1    # "needsExtraction":Z
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1
.end method

.method private onDisplayReadyInternal(I)V
    .registers 6
    .param p1, "displayId"    # I

    .line 3420
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3421
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v1, :cond_9

    .line 3422
    monitor-exit v0

    return-void

    .line 3424
    :cond_9
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 3425
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 3426
    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v1

    .line 3427
    .local v1, "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    if-nez v1, :cond_1d

    monitor-exit v0

    return-void

    .line 3428
    :cond_1d
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3429
    monitor-exit v0

    return-void

    .line 3433
    .end local v1    # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    :cond_28
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v1, :cond_40

    .line 3434
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 3435
    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v1

    .line 3436
    .restart local v1    # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    if-nez v1, :cond_36

    monitor-exit v0

    return-void

    .line 3437
    :cond_36
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3438
    .end local v1    # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    goto :goto_47

    .line 3439
    :cond_40
    const-string v1, "WallpaperManagerService"

    const-string v2, "No wallpaper can be added to the new display"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3441
    :goto_47
    monitor-exit v0

    .line 3442
    return-void

    .line 3441
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw v1
.end method

.method private packageBelongsToUid(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 3353
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3356
    .local v0, "userId":I
    const/4 v1, 0x0

    :try_start_5
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_f} :catch_14

    .line 3360
    .local v2, "packageUid":I
    nop

    .line 3361
    if-ne v2, p2, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1

    .line 3358
    .end local v2    # "packageUid":I
    :catch_14
    move-exception v2

    .line 3359
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v1
.end method

.method private removeDisplayData(I)V
    .registers 3
    .param p1, "displayId"    # I

    .line 1080
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1081
    return-void
.end method

.method private restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .registers 20
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3910
    move-object/from16 v1, p1

    const-string v2, "WallpaperManagerService"

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-le v0, v3, :cond_1a8

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "res:"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a8

    .line 3911
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 3913
    .local v5, "resName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3914
    .local v0, "pkg":Ljava/lang/String;
    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 3915
    .local v6, "colon":I
    if-lez v6, :cond_32

    .line 3916
    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_33

    .line 3915
    :cond_32
    move-object v7, v0

    .line 3919
    .end local v0    # "pkg":Ljava/lang/String;
    .local v7, "pkg":Ljava/lang/String;
    :goto_33
    const/4 v0, 0x0

    .line 3920
    .local v0, "ident":Ljava/lang/String;
    const/16 v8, 0x2f

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 3921
    .local v8, "slash":I
    if-lez v8, :cond_44

    .line 3922
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_45

    .line 3921
    :cond_44
    move-object v9, v0

    .line 3925
    .end local v0    # "ident":Ljava/lang/String;
    .local v9, "ident":Ljava/lang/String;
    :goto_45
    const/4 v0, 0x0

    .line 3926
    .local v0, "type":Ljava/lang/String;
    const/4 v10, 0x1

    if-lez v6, :cond_57

    if-lez v8, :cond_57

    sub-int v11, v8, v6

    if-le v11, v10, :cond_57

    .line 3927
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v5, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_58

    .line 3930
    :cond_57
    move-object v11, v0

    .end local v0    # "type":Ljava/lang/String;
    .local v11, "type":Ljava/lang/String;
    :goto_58
    if-eqz v7, :cond_1a5

    if-eqz v9, :cond_1a5

    if-eqz v11, :cond_1a5

    .line 3931
    const/4 v12, -0x1

    .line 3932
    .local v12, "resId":I
    const/4 v13, 0x0

    .line 3933
    .local v13, "res":Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 3934
    .local v14, "fos":Ljava/io/FileOutputStream;
    const/4 v15, 0x0

    .line 3936
    .local v15, "cos":Ljava/io/FileOutputStream;
    move-object/from16 v10, p0

    :try_start_64
    iget-object v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 3937
    .local v0, "c":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3938
    .local v3, "r":Landroid/content/res/Resources;
    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v12, v4

    .line 3939
    if-nez v12, :cond_b8

    .line 3940
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "c":Landroid/content/Context;
    .local v16, "c":Landroid/content/Context;
    const-string v0, "couldn\'t resolve identifier pkg="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " type="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " ident="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_64 .. :try_end_a2} :catch_168
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_64 .. :try_end_a2} :catch_145
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_a2} :catch_12a
    .catchall {:try_start_64 .. :try_end_a2} :catchall_128

    .line 3942
    nop

    .line 3970
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3971
    if-eqz v14, :cond_ab

    .line 3972
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3974
    :cond_ab
    if-eqz v15, :cond_b0

    .line 3975
    invoke-static {v15}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3977
    :cond_b0
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3978
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3942
    const/4 v2, 0x0

    return v2

    .line 3945
    .end local v16    # "c":Landroid/content/Context;
    .restart local v0    # "c":Landroid/content/Context;
    :cond_b8
    move-object/from16 v16, v0

    .end local v0    # "c":Landroid/content/Context;
    .restart local v16    # "c":Landroid/content/Context;
    :try_start_ba
    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    move-object v13, v0

    .line 3946
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 3947
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3948
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 3950
    :cond_d1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v14, v0

    .line 3951
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v15, v0

    .line 3953
    const v0, 0x8000

    new-array v0, v0, [B

    .line 3955
    .local v0, "buffer":[B
    :goto_e6
    invoke-virtual {v13, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move/from16 v17, v4

    .local v17, "amt":I
    if-lez v4, :cond_fa

    .line 3956
    move/from16 v4, v17

    const/4 v1, 0x0

    .end local v17    # "amt":I
    .local v4, "amt":I
    invoke-virtual {v14, v0, v1, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 3957
    invoke-virtual {v15, v0, v1, v4}, Ljava/io/FileOutputStream;->write([BII)V

    move-object/from16 v1, p1

    goto :goto_e6

    .line 3961
    .end local v4    # "amt":I
    .restart local v17    # "amt":I
    :cond_fa
    move/from16 v4, v17

    .end local v17    # "amt":I
    .restart local v4    # "amt":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    .end local v0    # "buffer":[B
    .local v17, "buffer":[B
    const-string v0, "Restored wallpaper: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_114
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_ba .. :try_end_114} :catch_168
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_ba .. :try_end_114} :catch_145
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_114} :catch_12a
    .catchall {:try_start_ba .. :try_end_114} :catchall_128

    .line 3962
    nop

    .line 3970
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3971
    nop

    .line 3972
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3974
    nop

    .line 3975
    invoke-static {v15}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3977
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3978
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3962
    const/4 v0, 0x1

    return v0

    .line 3970
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "amt":I
    .end local v16    # "c":Landroid/content/Context;
    .end local v17    # "buffer":[B
    :catchall_128
    move-exception v0

    goto :goto_191

    .line 3967
    :catch_12a
    move-exception v0

    .line 3968
    .local v0, "e":Ljava/io/IOException;
    :try_start_12b
    const-string v1, "IOException while restoring wallpaper "

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_130
    .catchall {:try_start_12b .. :try_end_130} :catchall_128

    .line 3970
    nop

    .end local v0    # "e":Ljava/io/IOException;
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3971
    if-eqz v14, :cond_139

    .line 3972
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3974
    :cond_139
    if-eqz v15, :cond_13e

    .line 3975
    :goto_13b
    invoke-static {v15}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3977
    :cond_13e
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3978
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3979
    goto :goto_1aa

    .line 3965
    :catch_145
    move-exception v0

    .line 3966
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource not found: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15c
    .catchall {:try_start_146 .. :try_end_15c} :catchall_128

    .line 3970
    nop

    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3971
    if-eqz v14, :cond_165

    .line 3972
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3974
    :cond_165
    if-eqz v15, :cond_13e

    .line 3975
    goto :goto_13b

    .line 3963
    :catch_168
    move-exception v0

    .line 3964
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package name "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " not found"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_185
    .catchall {:try_start_169 .. :try_end_185} :catchall_128

    .line 3970
    nop

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3971
    if-eqz v14, :cond_18e

    .line 3972
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3974
    :cond_18e
    if-eqz v15, :cond_13e

    .line 3975
    goto :goto_13b

    .line 3970
    :goto_191
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3971
    if-eqz v14, :cond_199

    .line 3972
    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3974
    :cond_199
    if-eqz v15, :cond_19e

    .line 3975
    invoke-static {v15}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3977
    :cond_19e
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3978
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3979
    throw v0

    .line 3930
    .end local v12    # "resId":I
    .end local v13    # "res":Ljava/io/InputStream;
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v15    # "cos":Ljava/io/FileOutputStream;
    :cond_1a5
    move-object/from16 v10, p0

    goto :goto_1aa

    .line 3910
    .end local v5    # "resName":Ljava/lang/String;
    .end local v6    # "colon":I
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v8    # "slash":I
    .end local v9    # "ident":Ljava/lang/String;
    .end local v11    # "type":Ljava/lang/String;
    :cond_1a8
    move-object/from16 v10, p0

    .line 3982
    :goto_1aa
    const/4 v1, 0x0

    return v1
.end method

.method private setWallpaperComponent(Landroid/content/ComponentName;I)V
    .registers 16
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .line 3036
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingUid()I

    move-result v1

    const-string v5, "changing live wallpaper"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 3038
    const-string v0, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 3040
    const/4 v0, 0x1

    .line 3041
    .local v0, "which":I
    const/4 v1, 0x0

    .line 3044
    .local v1, "shouldNotifyColors":Z
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3045
    :try_start_1c
    const-string v3, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWallpaperComponent name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3047
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v3, :cond_b8

    .line 3050
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    move-wide v10, v4

    .line 3056
    .local v10, "ident":J
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 3057
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_60

    .line 3060
    const-string v4, "WallpaperManagerService"

    const-string v5, "Migrating current wallpaper to be lock-only beforeupdating system wallpaper"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3062
    invoke-direct {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateSystemToLockWallpaperLocked(I)V

    .line 3067
    :cond_60
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4
    :try_end_66
    .catchall {:try_start_1c .. :try_end_66} :catchall_d1

    if-nez v4, :cond_6a

    .line 3068
    or-int/lit8 v0, v0, 0x2

    .line 3072
    :cond_6a
    const/4 v4, 0x0

    :try_start_6b
    iput-boolean v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 3073
    invoke-direct {p0, p1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v4

    move v12, v4

    .line 3074
    .local v12, "same":Z
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v8, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 3075
    if-nez v12, :cond_89

    .line 3076
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 3078
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperManagerServiceStub:Lcom/android/server/wallpaper/WallpaperManagerServiceStub;

    invoke-interface {v4, v3}, Lcom/android/server/wallpaper/WallpaperManagerServiceStub;->handleWallpaperObserverEvent(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_97

    .line 3080
    :cond_89
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v4, :cond_97

    .line 3081
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v5}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda16;-><init>()V

    invoke-virtual {v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 3093
    :cond_97
    :goto_97
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v4

    iput v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3094
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_a0
    .catchall {:try_start_6b .. :try_end_a0} :catchall_b2

    .line 3095
    const/4 v1, 0x1

    .line 3098
    .end local v12    # "same":Z
    :cond_a1
    :try_start_a1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3099
    nop

    .line 3100
    .end local v10    # "ident":J
    monitor-exit v2
    :try_end_a6
    .catchall {:try_start_a1 .. :try_end_a6} :catchall_d1

    .line 3102
    if-eqz v1, :cond_b1

    .line 3103
    invoke-virtual {p0, v3, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 3104
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 3106
    :cond_b1
    return-void

    .line 3098
    .restart local v10    # "ident":J
    :catchall_b2
    move-exception v4

    :try_start_b3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3099
    nop

    .end local v0    # "which":I
    .end local v1    # "shouldNotifyColors":Z
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "name":Landroid/content/ComponentName;
    .end local p2    # "userId":I
    throw v4

    .line 3048
    .end local v10    # "ident":J
    .restart local v0    # "which":I
    .restart local v1    # "shouldNotifyColors":Z
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "name":Landroid/content/ComponentName;
    .restart local p2    # "userId":I
    :cond_b8
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wallpaper not yet initialized for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "which":I
    .end local v1    # "shouldNotifyColors":Z
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "name":Landroid/content/ComponentName;
    .end local p2    # "userId":I
    throw v4

    .line 3100
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v0    # "which":I
    .restart local v1    # "shouldNotifyColors":Z
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "name":Landroid/content/ComponentName;
    .restart local p2    # "userId":I
    :catchall_d1
    move-exception v3

    monitor-exit v2
    :try_end_d3
    .catchall {:try_start_b3 .. :try_end_d3} :catchall_d1

    throw v3
.end method

.method private supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z
    .registers 4
    .param p1, "connection"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1128
    const/4 v0, 0x0

    if-eqz p1, :cond_11

    .line 1129
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v1, :cond_f

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 1130
    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->supportsMultipleDisplays()Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    const/4 v0, 0x1

    .line 1129
    :cond_10
    return v0

    .line 1132
    :cond_11
    return v0
.end method

.method private updateFallbackConnection()V
    .registers 5

    .line 1136
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_4a

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v1, :cond_9

    goto :goto_4a

    .line 1137
    :cond_9
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1138
    .local v0, "systemConnection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 1139
    .local v1, "fallbackConnection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    if-nez v1, :cond_19

    .line 1140
    const-string v2, "WallpaperManagerService"

    const-string v3, "Fallback wallpaper connection has not been created yet!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    return-void

    .line 1143
    :cond_19
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1144
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_49

    .line 1145
    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 1150
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$fgetmDisplayConnector(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    goto :goto_49

    .line 1153
    :cond_39
    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    invoke-static {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->-$$Nest$mappendConnectorWithCondition(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Ljava/util/function/Predicate;)V

    .line 1157
    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 1163
    :cond_49
    :goto_49
    return-void

    .line 1136
    .end local v0    # "systemConnection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .end local v1    # "fallbackConnection":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_4a
    :goto_4a
    return-void
.end method


# virtual methods
.method public addOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V
    .registers 9
    .param p1, "callback"    # Landroid/app/ILocalWallpaperColorConsumer;
    .param p3, "which"    # I
    .param p4, "userId"    # I
    .param p5, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ILocalWallpaperColorConsumer;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2674
    .local p2, "regions":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    const/4 v0, 0x2

    if-eq p3, v0, :cond_10

    const/4 v0, 0x1

    if-ne p3, v0, :cond_7

    goto :goto_10

    .line 2675
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "which should be either FLAG_LOCK or FLAG_SYSTEM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2677
    :cond_10
    :goto_10
    invoke-direct {p0, p3, p4, p5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getEngine(III)Landroid/service/wallpaper/IWallpaperEngine;

    move-result-object v0

    .line 2678
    .local v0, "engine":Landroid/service/wallpaper/IWallpaperEngine;
    if-nez v0, :cond_17

    return-void

    .line 2679
    :cond_17
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2680
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLocalColorRepo:Lcom/android/server/wallpaper/LocalColorRepository;

    invoke-virtual {v2, p1, p2, p5}, Lcom/android/server/wallpaper/LocalColorRepository;->addAreas(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;I)V

    .line 2681
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_24

    .line 2682
    invoke-interface {v0, p2}, Landroid/service/wallpaper/IWallpaperEngine;->addLocalColorsAreas(Ljava/util/List;)V

    .line 2683
    return-void

    .line 2681
    :catchall_24
    move-exception v2

    :try_start_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v2
.end method

.method bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .registers 28
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "force"    # Z
    .param p3, "fromUser"    # Z
    .param p4, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p5, "reply"    # Landroid/os/IRemoteCallback;

    .line 3128
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindWallpaperComponentLocked: componentName="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "WallpaperManagerService"

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3131
    const/4 v0, 0x1

    if-nez p2, :cond_28

    invoke-direct {v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 3132
    return v0

    .line 3136
    :cond_28
    const/4 v5, 0x0

    if-nez v2, :cond_3e

    .line 3137
    :try_start_2b
    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2d} :catch_39

    move-object v2, v6

    .line 3138
    .end local p1    # "componentName":Landroid/content/ComponentName;
    .local v2, "componentName":Landroid/content/ComponentName;
    if-nez v2, :cond_3e

    .line 3140
    :try_start_30
    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object v2, v6

    .line 3143
    const-string v6, "No default component; using image wallpaper"

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 3273
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .restart local p1    # "componentName":Landroid/content/ComponentName;
    :catch_39
    move-exception v0

    move-object/from16 v9, p5

    goto/16 :goto_257

    .line 3146
    .end local p1    # "componentName":Landroid/content/ComponentName;
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    :cond_3e
    :goto_3e
    iget v6, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 3147
    .local v6, "serviceUserId":I
    iget-object v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/16 v8, 0x1080

    invoke-interface {v7, v2, v8, v9, v6}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    move-object v13, v7

    .line 3149
    .local v13, "si":Landroid/content/pm/ServiceInfo;
    if-nez v13, :cond_68

    .line 3151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempted wallpaper "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " is unavailable"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    return v5

    .line 3154
    :cond_68
    const-string v7, "android.permission.BIND_WALLPAPER"

    iget-object v8, v13, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_91

    .line 3155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Selected service does not have android.permission.BIND_WALLPAPER: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3158
    .local v0, "msg":Ljava/lang/String;
    if-nez p3, :cond_8b

    .line 3161
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    return v5

    .line 3159
    :cond_8b
    new-instance v7, Ljava/lang/SecurityException;

    invoke-direct {v7, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p2    # "force":Z
    .end local p3    # "fromUser":Z
    .end local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local p5    # "reply":Landroid/os/IRemoteCallback;
    throw v7

    .line 3165
    .end local v0    # "msg":Ljava/lang/String;
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2    # "force":Z
    .restart local p3    # "fromUser":Z
    .restart local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p5    # "reply":Landroid/os/IRemoteCallback;
    :cond_91
    const/4 v14, 0x0

    .line 3167
    .local v14, "wi":Landroid/app/WallpaperInfo;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.service.wallpaper.WallpaperService"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v15, v7

    .line 3168
    .local v15, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_12c

    iget-object v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v2, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12c

    .line 3170
    iget-object v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 3172
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, 0x80

    .line 3171
    move-object v8, v15

    move v12, v6

    invoke-interface/range {v7 .. v12}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v7

    .line 3173
    invoke-virtual {v7}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v7

    .line 3174
    .local v7, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_bd
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_10b

    .line 3175
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 3176
    .local v9, "rsi":Landroid/content/pm/ServiceInfo;
    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v11, v13, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_108

    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v11, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 3177
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_dd
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_dd} :catch_254

    if-eqz v10, :cond_108

    .line 3179
    :try_start_df
    new-instance v10, Landroid/app/WallpaperInfo;

    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    invoke-direct {v10, v11, v12}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_ec
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_df .. :try_end_ec} :catch_fb
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_ec} :catch_ee
    .catch Landroid/os/RemoteException; {:try_start_df .. :try_end_ec} :catch_254

    .line 3192
    .end local v14    # "wi":Landroid/app/WallpaperInfo;
    .local v10, "wi":Landroid/app/WallpaperInfo;
    move-object v14, v10

    goto :goto_10b

    .line 3186
    .end local v10    # "wi":Landroid/app/WallpaperInfo;
    .restart local v14    # "wi":Landroid/app/WallpaperInfo;
    :catch_ee
    move-exception v0

    .line 3187
    .local v0, "e":Ljava/io/IOException;
    if-nez p3, :cond_f5

    .line 3190
    :try_start_f1
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3191
    return v5

    .line 3188
    :cond_f5
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p2    # "force":Z
    .end local p3    # "fromUser":Z
    .end local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local p5    # "reply":Landroid/os/IRemoteCallback;
    throw v10

    .line 3180
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2    # "force":Z
    .restart local p3    # "fromUser":Z
    .restart local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p5    # "reply":Landroid/os/IRemoteCallback;
    :catch_fb
    move-exception v0

    .line 3181
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-nez p3, :cond_102

    .line 3184
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3185
    return v5

    .line 3182
    :cond_102
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p2    # "force":Z
    .end local p3    # "fromUser":Z
    .end local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local p5    # "reply":Landroid/os/IRemoteCallback;
    throw v10

    .line 3174
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v9    # "rsi":Landroid/content/pm/ServiceInfo;
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2    # "force":Z
    .restart local p3    # "fromUser":Z
    .restart local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p5    # "reply":Landroid/os/IRemoteCallback;
    :cond_108
    add-int/lit8 v8, v8, 0x1

    goto :goto_bd

    .line 3196
    .end local v8    # "i":I
    :cond_10b
    :goto_10b
    if-nez v14, :cond_12c

    .line 3197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Selected service is not a wallpaper: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3199
    .local v0, "msg":Ljava/lang/String;
    if-nez p3, :cond_126

    .line 3202
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3203
    return v5

    .line 3200
    :cond_126
    new-instance v8, Ljava/lang/SecurityException;

    invoke-direct {v8, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p2    # "force":Z
    .end local p3    # "fromUser":Z
    .end local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local p5    # "reply":Landroid/os/IRemoteCallback;
    throw v8

    .line 3207
    .end local v0    # "msg":Ljava/lang/String;
    .end local v7    # "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2    # "force":Z
    .restart local p3    # "fromUser":Z
    .restart local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p5    # "reply":Landroid/os/IRemoteCallback;
    :cond_12c
    if-eqz v14, :cond_161

    invoke-virtual {v14}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result v7

    if-eqz v7, :cond_161

    .line 3208
    iget-object v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v8, "android.permission.AMBIENT_WALLPAPER"

    .line 3209
    invoke-virtual {v14}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 3208
    invoke-interface {v7, v8, v9, v6}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 3211
    .local v7, "hasPrivilege":I
    if-eqz v7, :cond_161

    .line 3212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Selected service does not have android.permission.AMBIENT_WALLPAPER: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3215
    .restart local v0    # "msg":Ljava/lang/String;
    if-nez p3, :cond_15b

    .line 3218
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3219
    return v5

    .line 3216
    :cond_15b
    new-instance v8, Ljava/lang/SecurityException;

    invoke-direct {v8, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p2    # "force":Z
    .end local p3    # "fromUser":Z
    .end local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local p5    # "reply":Landroid/os/IRemoteCallback;
    throw v8

    .line 3225
    .end local v0    # "msg":Ljava/lang/String;
    .end local v7    # "hasPrivilege":I
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2    # "force":Z
    .restart local p3    # "fromUser":Z
    .restart local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p5    # "reply":Landroid/os/IRemoteCallback;
    :cond_161
    iget-object v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-wide/32 v9, 0x10000000

    iget v11, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v7

    .line 3227
    .local v7, "componentUid":I
    new-instance v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-direct {v8, v1, v14, v3, v7}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 3228
    .local v8, "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    invoke-virtual {v15, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3229
    const-string v9, "android.intent.extra.client_label"

    const v10, 0x10409ac

    invoke-virtual {v15, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3231
    const-string v9, "android.intent.extra.client_intent"

    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v0, 0x1040212

    .line 3234
    invoke-virtual {v12, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3233
    invoke-static {v11, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v18

    const/high16 v19, 0x4000000

    const/16 v20, 0x0

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 3231
    move-object/from16 v16, v10

    move-object/from16 v21, v0

    invoke-static/range {v16 .. v21}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v15, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3236
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v9, 0x22005001

    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v15, v8, v9, v10}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_1dd

    .line 3242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to bind service: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3244
    .restart local v0    # "msg":Ljava/lang/String;
    if-nez p3, :cond_1d7

    .line 3247
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3248
    return v5

    .line 3245
    :cond_1d7
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p2    # "force":Z
    .end local p3    # "fromUser":Z
    .end local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local p5    # "reply":Landroid/os/IRemoteCallback;
    throw v9

    .line 3250
    .end local v0    # "msg":Ljava/lang/String;
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p2    # "force":Z
    .restart local p3    # "fromUser":Z
    .restart local p4    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p5    # "reply":Landroid/os/IRemoteCallback;
    :cond_1dd
    iget v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v0, v9, :cond_209

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_209

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3251
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_209

    .line 3253
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3254
    .local v0, "wallpaperPkg":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v10, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget v10, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mClientUid:I

    invoke-interface {v9, v5, v10, v0}, Lcom/android/server/am/SmartPowerServiceStub;->onWallpaperChanged(ZILjava/lang/String;)V

    .line 3257
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-direct {v1, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3259
    .end local v0    # "wallpaperPkg":Ljava/lang/String;
    :cond_209
    iput-object v2, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 3260
    iput-object v8, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :try_end_20d
    .catch Landroid/os/RemoteException; {:try_start_f1 .. :try_end_20d} :catch_254

    .line 3261
    move-object/from16 v9, p5

    :try_start_20f
    iput-object v9, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 3263
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    if-eqz v14, :cond_21d

    invoke-virtual {v14}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result v10

    if-eqz v10, :cond_21d

    const/4 v10, 0x1

    goto :goto_21e

    :cond_21d
    move v10, v5

    :goto_21e
    invoke-virtual {v0, v10}, Lcom/android/server/wm/WindowManagerInternal;->setSupportsAmbientMode(Z)V

    .line 3264
    iget v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v0, v10, :cond_24c

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24c

    .line 3266
    invoke-static {}, Lcom/android/server/am/ActiveServiceManagementStub;->getInstance()Lcom/android/server/am/ActiveServiceManagementStub;

    move-result-object v0

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v0, v10}, Lcom/android/server/am/ActiveServiceManagementStub;->updateWallPaperPackageName(Ljava/lang/String;)V

    .line 3267
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    iget-object v10, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget v10, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mClientUid:I

    .line 3268
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 3267
    const/4 v12, 0x1

    invoke-interface {v0, v12, v10, v11}, Lcom/android/server/am/SmartPowerServiceStub;->onWallpaperChanged(ZILjava/lang/String;)V

    .line 3270
    iput-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3272
    :cond_24c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateFallbackConnection()V
    :try_end_24f
    .catch Landroid/os/RemoteException; {:try_start_20f .. :try_end_24f} :catch_252

    .line 3280
    .end local v6    # "serviceUserId":I
    .end local v7    # "componentUid":I
    .end local v8    # "newConn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .end local v13    # "si":Landroid/content/pm/ServiceInfo;
    .end local v14    # "wi":Landroid/app/WallpaperInfo;
    .end local v15    # "intent":Landroid/content/Intent;
    nop

    .line 3281
    const/4 v0, 0x1

    return v0

    .line 3273
    :catch_252
    move-exception v0

    goto :goto_257

    :catch_254
    move-exception v0

    move-object/from16 v9, p5

    .line 3274
    .local v0, "e":Landroid/os/RemoteException;
    :goto_257
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3275
    .local v6, "msg":Ljava/lang/String;
    if-nez p3, :cond_27a

    .line 3278
    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3279
    return v5

    .line 3276
    :cond_27a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public clearWallpaper(Ljava/lang/String;II)V
    .registers 12
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "which"    # I
    .param p3, "userId"    # I

    .line 2127
    const-string v0, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2128
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_56

    .line 2131
    :cond_12
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2132
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "clearWallpaper"

    const/4 v7, 0x0

    .line 2131
    move v3, p3

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2134
    .end local p3    # "userId":I
    .local v0, "userId":I
    const/4 p3, 0x0

    .line 2135
    .local p3, "data":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2136
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_2a
    invoke-virtual {p0, v2, p2, v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    .line 2138
    const/4 v2, 0x2

    if-ne p2, v2, :cond_39

    .line 2139
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object p3, v2

    .line 2141
    :cond_39
    const/4 v2, 0x1

    if-eq p2, v2, :cond_3e

    if-nez p3, :cond_47

    .line 2142
    :cond_3e
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object p3, v3

    .line 2144
    :cond_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_2a .. :try_end_48} :catchall_53

    .line 2147
    if-eqz p3, :cond_52

    .line 2148
    invoke-virtual {p0, p3, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 2149
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 2151
    :cond_52
    return-void

    .line 2144
    :catchall_53
    move-exception v2

    :try_start_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v2

    .line 2129
    .end local v0    # "userId":I
    .local p3, "userId":I
    :cond_56
    :goto_56
    return-void
.end method

.method clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V
    .registers 21
    .param p1, "defaultFailed"    # Z
    .param p2, "which"    # I
    .param p3, "userId"    # I
    .param p4, "reply"    # Landroid/os/IRemoteCallback;

    .line 2154
    move-object/from16 v7, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq v8, v1, :cond_17

    if-ne v8, v0, :cond_f

    goto :goto_17

    .line 2155
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify exactly one kind of wallpaper to clear"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2158
    :cond_17
    :goto_17
    const/4 v1, 0x0

    .line 2159
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v2, 0x0

    if-ne v8, v0, :cond_29

    .line 2160
    iget-object v3, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2161
    if-nez v1, :cond_27

    .line 2166
    return-void

    .line 2161
    :cond_27
    move-object v11, v1

    goto :goto_43

    .line 2169
    :cond_29
    iget-object v3, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2170
    if-nez v1, :cond_42

    .line 2172
    invoke-direct {v7, v9, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 2173
    iget-object v3, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v11, v1

    goto :goto_43

    .line 2170
    :cond_42
    move-object v11, v1

    .line 2176
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .local v11, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_43
    if-nez v11, :cond_46

    .line 2177
    return-void

    .line 2180
    :cond_46
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 2182
    .local v12, "ident":J
    :try_start_4a
    iget-object v1, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 2183
    iget-object v1, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2184
    iget-object v1, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 2185
    if-ne v8, v0, :cond_74

    .line 2186
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->remove(I)V

    .line 2187
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;
    :try_end_65
    .catchall {:try_start_4a .. :try_end_65} :catchall_b3

    move-object v1, v0

    .line 2188
    .local v1, "cb":Landroid/app/IWallpaperManagerCallback;
    if-eqz v1, :cond_6d

    .line 2193
    :try_start_68
    invoke-interface {v1}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_6b} :catch_6c
    .catchall {:try_start_68 .. :try_end_6b} :catchall_b3

    .line 2196
    goto :goto_6d

    .line 2194
    :catch_6c
    move-exception v0

    .line 2198
    :cond_6d
    :goto_6d
    :try_start_6d
    invoke-virtual {v7, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_b3

    .line 2230
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2199
    return-void

    .line 2203
    .end local v1    # "cb":Landroid/app/IWallpaperManagerCallback;
    :cond_74
    const/4 v14, 0x0

    .line 2205
    .local v14, "e":Ljava/lang/RuntimeException;
    const/4 v15, 0x0

    :try_start_76
    iput-object v15, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 2206
    iput-boolean v2, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 2207
    iget v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_7c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_76 .. :try_end_7c} :catch_9b
    .catchall {:try_start_76 .. :try_end_7c} :catchall_b3

    if-eq v9, v0, :cond_82

    .line 2230
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2207
    return-void

    .line 2208
    :cond_82
    if-eqz p1, :cond_88

    .line 2209
    :try_start_84
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object v2, v0

    goto :goto_89

    .line 2210
    :cond_88
    move-object v2, v15

    :goto_89
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2208
    move-object/from16 v1, p0

    move-object v5, v11

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v0
    :try_end_94
    .catch Ljava/lang/IllegalArgumentException; {:try_start_84 .. :try_end_94} :catch_9b
    .catchall {:try_start_84 .. :try_end_94} :catchall_b3

    if-eqz v0, :cond_9a

    .line 2230
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2211
    return-void

    .line 2215
    :cond_9a
    goto :goto_9d

    .line 2213
    :catch_9b
    move-exception v0

    .line 2214
    .local v0, "e1":Ljava/lang/IllegalArgumentException;
    move-object v14, v0

    .line 2221
    .end local v0    # "e1":Ljava/lang/IllegalArgumentException;
    :goto_9d
    :try_start_9d
    const-string v0, "WallpaperManagerService"

    const-string v1, "Default wallpaper component not found!"

    invoke-static {v0, v1, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2222
    invoke-direct {v7, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_a7
    .catchall {:try_start_9d .. :try_end_a7} :catchall_b3

    .line 2223
    if-eqz v10, :cond_ae

    .line 2225
    :try_start_a9
    invoke-interface {v10, v15}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_ac
    .catch Landroid/os/RemoteException; {:try_start_a9 .. :try_end_ac} :catch_ad
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_b3

    .line 2227
    goto :goto_ae

    .line 2226
    :catch_ad
    move-exception v0

    .line 2230
    .end local v14    # "e":Ljava/lang/RuntimeException;
    :cond_ae
    :goto_ae
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2231
    nop

    .line 2232
    return-void

    .line 2230
    :catchall_b3
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2231
    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3995
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v1, "WallpaperManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 3997
    :cond_b
    const-string v0, "mDefaultWallpaperComponent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3998
    const-string v0, "mImageWallpaper="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4000
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4001
    :try_start_22
    const-string v1, "System wallpaper state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4002
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_28
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_113

    .line 4003
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 4004
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string v3, " User "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 4005
    const-string v3, ": id="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 4006
    const-string v3, " Display state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4007
    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v3, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->forEachDisplayData(Ljava/util/function/Consumer;)V

    .line 4016
    const-string v3, "  mCropHint="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4017
    const-string v3, "  mName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4018
    const-string v3, "  mAllowBackup="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 4019
    const-string v3, "  mWallpaperComponent="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4020
    const-string v3, "  mWallpaperDimAmount="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperDimAmount:F

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 4021
    const-string v3, "  isColorExtracted="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mIsColorExtractedFromDim:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 4022
    const-string v3, "  mUidToDimAmount:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4023
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mUidToDimAmount:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 4024
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Float;>;"
    const-string v5, "    UID="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4025
    const-string v5, " dimAmount="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4026
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Float;>;"
    goto :goto_a4

    .line 4027
    :cond_c9
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_10f

    .line 4028
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 4029
    .local v3, "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    const-string v4, "  Wallpaper connection "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4030
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4031
    const-string v4, ":"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4032
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v4, :cond_ee

    .line 4033
    const-string v4, "    mInfo.component="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4034
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v4}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4036
    :cond_ee
    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v4, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda2;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 4044
    const-string v4, "    mService="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4045
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4046
    const-string v4, "    mLastDiedTime="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4047
    iget-wide v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {p2, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 4002
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v3    # "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_10f
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_28

    .line 4050
    .end local v1    # "i":I
    :cond_113
    const-string v1, "Lock wallpaper state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4051
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_119
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_168

    .line 4052
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 4053
    .restart local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const-string v3, " User "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 4054
    const-string v3, ": id="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 4055
    const-string v3, "  mCropHint="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4056
    const-string v3, "  mName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4057
    const-string v3, "  mAllowBackup="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 4058
    const-string v3, "  mWallpaperDimAmount="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperDimAmount:F

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(F)V

    .line 4051
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_119

    .line 4060
    .end local v1    # "i":I
    :cond_168
    const-string v1, "Fallback wallpaper state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4061
    const-string v1, " User "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 4062
    const-string v1, ": id="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 4063
    const-string v1, "  mCropHint="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4064
    const-string v1, "  mName="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4065
    const-string v1, "  mAllowBackup="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-boolean v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 4066
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_1f5

    .line 4067
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 4068
    .local v1, "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    const-string v2, "  Fallback Wallpaper connection "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4069
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4070
    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4071
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v2, :cond_1d2

    .line 4072
    const-string v2, "    mInfo.component="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4073
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4075
    :cond_1d2
    new-instance v2, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v2, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda3;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 4083
    const-string v2, "    mService="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4084
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4085
    const-string v2, "    mLastDiedTime="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4086
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-wide v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 4088
    .end local v1    # "conn":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :cond_1f5
    monitor-exit v0

    .line 4089
    return-void

    .line 4088
    :catchall_1f7
    move-exception v1

    monitor-exit v0
    :try_end_1f9
    .catchall {:try_start_22 .. :try_end_1f9} :catchall_1f7

    throw v1
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1838
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1839
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 1840
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1841
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 1839
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1843
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method

.method forEachDisplayData(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;",
            ">;)V"
        }
    .end annotation

    .line 1114
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;>;"
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1115
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    .line 1116
    .local v1, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1114
    .end local v1    # "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1118
    .end local v0    # "i":I
    :cond_18
    return-void
.end method

.method generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 30
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 644
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v0, "x"

    const/4 v3, 0x0

    .line 647
    .local v3, "success":Z
    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v5

    .line 648
    .local v5, "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 649
    .local v6, "cropHint":Landroid/graphics/Rect;
    new-instance v7, Landroid/view/DisplayInfo;

    invoke-direct {v7}, Landroid/view/DisplayInfo;-><init>()V

    .line 650
    .local v7, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v8, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 661
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 662
    .local v8, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v9, 0x1

    iput-boolean v9, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 663
    iget-object v10, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 664
    iget v10, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const-string v11, "WallpaperManagerService"

    if-lez v10, :cond_470

    iget v10, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v10, :cond_45

    move/from16 v17, v3

    move-object/from16 v23, v5

    move-object/from16 v19, v7

    goto/16 :goto_476

    .line 668
    :cond_45
    const/4 v10, 0x0

    .line 669
    .local v10, "needCrop":Z
    const/4 v12, 0x0

    .line 672
    .local v12, "needScale":Z
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_5a

    .line 673
    iput v4, v6, Landroid/graphics/Rect;->top:I

    iput v4, v6, Landroid/graphics/Rect;->left:I

    .line 674
    iget v13, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v13, v6, Landroid/graphics/Rect;->right:I

    .line 675
    iget v13, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v13, v6, Landroid/graphics/Rect;->bottom:I

    goto :goto_99

    .line 678
    :cond_5a
    nop

    .line 679
    iget v13, v6, Landroid/graphics/Rect;->right:I

    iget v14, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v13, v14, :cond_67

    iget v13, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v14, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    goto :goto_68

    :cond_67
    move v13, v4

    .line 680
    :goto_68
    iget v14, v6, Landroid/graphics/Rect;->bottom:I

    iget v15, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v14, v15, :cond_74

    iget v14, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v15, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    goto :goto_75

    :cond_74
    move v14, v4

    .line 678
    :goto_75
    invoke-virtual {v6, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 683
    iget v13, v6, Landroid/graphics/Rect;->left:I

    if-gez v13, :cond_7e

    .line 684
    iput v4, v6, Landroid/graphics/Rect;->left:I

    .line 686
    :cond_7e
    iget v13, v6, Landroid/graphics/Rect;->top:I

    if-gez v13, :cond_84

    .line 687
    iput v4, v6, Landroid/graphics/Rect;->top:I

    .line 691
    :cond_84
    iget v13, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-gt v13, v14, :cond_97

    iget v13, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 692
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v14

    if-le v13, v14, :cond_95

    goto :goto_97

    :cond_95
    move v13, v4

    goto :goto_98

    :cond_97
    :goto_97
    move v13, v9

    :goto_98
    move v10, v13

    .line 696
    :goto_99
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v13

    iget v14, v5, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    if-gt v13, v14, :cond_b8

    .line 697
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v14

    if-gt v13, v14, :cond_b8

    .line 698
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v14

    if-le v13, v14, :cond_b6

    goto :goto_b8

    :cond_b6
    move v13, v4

    goto :goto_b9

    :cond_b8
    :goto_b8
    move v13, v9

    :goto_b9
    move v12, v13

    .line 701
    if-eqz v12, :cond_e1

    .line 702
    iget v13, v5, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    int-to-float v13, v13

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    .line 703
    .local v13, "scaleByHeight":F
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v13

    float-to-int v14, v14

    .line 704
    .local v14, "newWidth":I
    iget v15, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ge v14, v15, :cond_e1

    .line 705
    iget v15, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v15, v15

    iget v9, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v9, v9

    div-float/2addr v15, v9

    .line 707
    .local v15, "screenAspectRatio":F
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v15

    float-to-int v9, v9

    iput v9, v6, Landroid/graphics/Rect;->bottom:I

    .line 708
    const/4 v10, 0x1

    .line 713
    .end local v13    # "scaleByHeight":F
    .end local v14    # "newWidth":I
    .end local v15    # "screenAspectRatio":F
    :cond_e1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "crop: w="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " h="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "dims: w="

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v14, v5, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v14, v5, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "meas: w="

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v14, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v13, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "crop?="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v13, " scale?="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    if-nez v10, :cond_187

    if-nez v12, :cond_187

    .line 727
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-static {v0, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    .line 729
    if-nez v3, :cond_181

    .line 730
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 847
    .end local v10    # "needCrop":Z
    .end local v12    # "needScale":Z
    :cond_181
    move-object/from16 v23, v5

    move-object/from16 v19, v7

    goto/16 :goto_47c

    .line 741
    .restart local v10    # "needCrop":Z
    .restart local v12    # "needScale":Z
    :cond_187
    const/4 v9, 0x0

    .line 742
    .local v9, "f":Ljava/io/FileOutputStream;
    const/4 v13, 0x0

    .line 749
    .local v13, "bos":Ljava/io/BufferedOutputStream;
    :try_start_189
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v14

    iget v15, v5, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    div-int/2addr v14, v15

    .line 750
    .local v14, "actualScale":I
    const/4 v15, 0x1

    .line 751
    .local v15, "scale":I
    :goto_191
    mul-int/lit8 v4, v15, 0x2

    if-gt v4, v14, :cond_199

    .line 752
    mul-int/lit8 v15, v15, 0x2

    const/4 v4, 0x0

    goto :goto_191

    .line 754
    :cond_199
    iput v15, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 755
    const/4 v4, 0x0

    iput-boolean v4, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 757
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_1a3} :catch_458
    .catchall {:try_start_189 .. :try_end_1a3} :catchall_442

    .line 758
    .local v4, "estimateCrop":Landroid/graphics/Rect;
    move/from16 v17, v3

    .end local v3    # "success":Z
    .local v17, "success":Z
    :try_start_1a5
    iget v3, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v3, v3

    const/high16 v18, 0x3f800000    # 1.0f

    div-float v3, v18, v3

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->scale(F)V

    .line 759
    iget v3, v5, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I
    :try_end_1b1
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_1b1} :catch_434
    .catchall {:try_start_1a5 .. :try_end_1b1} :catchall_426

    int-to-float v3, v3

    move-object/from16 v19, v7

    .end local v7    # "displayInfo":Landroid/view/DisplayInfo;
    .local v19, "displayInfo":Landroid/view/DisplayInfo;
    :try_start_1b4
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v3, v7

    .line 760
    .local v3, "hRatio":F
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v7
    :try_end_1be
    .catch Ljava/lang/Exception; {:try_start_1b4 .. :try_end_1be} :catch_41a
    .catchall {:try_start_1b4 .. :try_end_1be} :catchall_40e

    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    .line 761
    .local v7, "destHeight":I
    move-object/from16 v20, v9

    .end local v9    # "f":Ljava/io/FileOutputStream;
    .local v20, "f":Ljava/io/FileOutputStream;
    :try_start_1c3
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v9
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_1c3 .. :try_end_1c7} :catch_401
    .catchall {:try_start_1c3 .. :try_end_1c7} :catchall_3f5

    int-to-float v9, v9

    mul-float/2addr v9, v3

    float-to-int v9, v9

    .line 764
    .local v9, "destWidth":I
    move/from16 v21, v10

    .end local v10    # "needCrop":Z
    .local v21, "needCrop":Z
    :try_start_1cc
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v10
    :try_end_1d0
    .catch Ljava/lang/Exception; {:try_start_1cc .. :try_end_1d0} :catch_3ea
    .catchall {:try_start_1cc .. :try_end_1d0} :catchall_3df

    if-le v9, v10, :cond_23f

    .line 765
    :try_start_1d2
    iget v10, v5, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I
    :try_end_1d4
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_1d4} :catch_236
    .catchall {:try_start_1d2 .. :try_end_1d4} :catchall_22d

    int-to-float v10, v10

    div-float/2addr v10, v3

    float-to-int v10, v10

    .line 766
    .local v10, "newHeight":I
    move/from16 v22, v12

    .end local v12    # "needScale":Z
    .local v22, "needScale":Z
    :try_start_1d9
    iget v12, v5, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    int-to-float v12, v12

    div-float/2addr v12, v3

    float-to-int v12, v12

    .line 772
    .local v12, "newWidth":I
    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1e1
    .catch Ljava/lang/Exception; {:try_start_1d9 .. :try_end_1e1} :catch_226
    .catchall {:try_start_1d9 .. :try_end_1e1} :catchall_21f

    .line 773
    move-object/from16 v23, v5

    .end local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .local v23, "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :try_start_1e3
    iget v5, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v24

    sub-int v24, v24, v12

    div-int/lit8 v24, v24, 0x2

    add-int v5, v5, v24

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 774
    iget v5, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v24

    sub-int v24, v24, v10

    div-int/lit8 v24, v24, 0x2

    add-int v5, v5, v24

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 775
    iget v5, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v12

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 776
    iget v5, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v10

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 777
    invoke-virtual {v6, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 778
    iget v5, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v5, v5

    div-float v5, v18, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->scale(F)V
    :try_end_214
    .catch Ljava/lang/Exception; {:try_start_1e3 .. :try_end_214} :catch_21a
    .catchall {:try_start_1e3 .. :try_end_214} :catchall_215

    goto :goto_243

    .line 841
    .end local v3    # "hRatio":F
    .end local v4    # "estimateCrop":Landroid/graphics/Rect;
    .end local v7    # "destHeight":I
    .end local v9    # "destWidth":I
    .end local v10    # "newHeight":I
    .end local v12    # "newWidth":I
    .end local v14    # "actualScale":I
    .end local v15    # "scale":I
    :catchall_215
    move-exception v0

    move-object/from16 v9, v20

    goto/16 :goto_451

    .line 836
    :catch_21a
    move-exception v0

    move-object/from16 v9, v20

    goto/16 :goto_467

    .line 841
    .end local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :catchall_21f
    move-exception v0

    move-object/from16 v23, v5

    move-object/from16 v9, v20

    .end local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    goto/16 :goto_451

    .line 836
    .end local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :catch_226
    move-exception v0

    move-object/from16 v23, v5

    move-object/from16 v9, v20

    .end local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    goto/16 :goto_467

    .line 841
    .end local v22    # "needScale":Z
    .end local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .local v12, "needScale":Z
    :catchall_22d
    move-exception v0

    move-object/from16 v23, v5

    move/from16 v22, v12

    move-object/from16 v9, v20

    .end local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v12    # "needScale":Z
    .restart local v22    # "needScale":Z
    .restart local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    goto/16 :goto_451

    .line 836
    .end local v22    # "needScale":Z
    .end local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v12    # "needScale":Z
    :catch_236
    move-exception v0

    move-object/from16 v23, v5

    move/from16 v22, v12

    move-object/from16 v9, v20

    .end local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v12    # "needScale":Z
    .restart local v22    # "needScale":Z
    .restart local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    goto/16 :goto_467

    .line 764
    .end local v22    # "needScale":Z
    .end local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v3    # "hRatio":F
    .restart local v4    # "estimateCrop":Landroid/graphics/Rect;
    .restart local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v7    # "destHeight":I
    .restart local v9    # "destWidth":I
    .restart local v12    # "needScale":Z
    .restart local v14    # "actualScale":I
    .restart local v15    # "scale":I
    :cond_23f
    move-object/from16 v23, v5

    move/from16 v22, v12

    .line 784
    .end local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v12    # "needScale":Z
    .restart local v22    # "needScale":Z
    .restart local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :goto_243
    :try_start_243
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    .line 785
    .local v5, "safeHeight":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v3

    float-to-int v10, v10

    .line 788
    .local v10, "safeWidth":I
    const-string v12, "Decode parameters:"

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_25b
    .catch Ljava/lang/Exception; {:try_start_243 .. :try_end_25b} :catch_3d8
    .catchall {:try_start_243 .. :try_end_25b} :catchall_3d1

    move-object/from16 v18, v13

    .end local v13    # "bos":Ljava/io/BufferedOutputStream;
    .local v18, "bos":Ljava/io/BufferedOutputStream;
    :try_start_25d
    const-string v13, "  cropHint="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", estimateCrop="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  down sampling="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", hRatio="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  dest="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  safe="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  maxTextureSize="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v12, "wallpaper_orig"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 800
    const-string v0, "decode_record"

    goto :goto_304

    :cond_302
    const-string v0, "decode_lock_record"

    .line 801
    .local v0, "recordName":Ljava/lang/String;
    :goto_304
    new-instance v12, Ljava/io/File;

    iget v13, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v1, v13}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v13

    invoke-direct {v12, v13, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 802
    .local v12, "record":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    .line 803
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v0

    .end local v0    # "recordName":Ljava/lang/String;
    .local v24, "recordName":Ljava/lang/String;
    const-string/jumbo v0, "record path ="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, ", record name ="

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 804
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 803
    invoke-static {v11, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 807
    invoke-static {v0}, Landroid/graphics/ImageDecoder;->createSource(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    .line 808
    .local v0, "srcData":Landroid/graphics/ImageDecoder$Source;
    move v13, v15

    .line 809
    .local v13, "sampleSize":I
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v1, v13, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda8;-><init>(ILandroid/graphics/Rect;)V

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 814
    .local v1, "cropped":Landroid/graphics/Bitmap;
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 816
    if-nez v1, :cond_360

    .line 817
    move-object/from16 v25, v0

    .end local v0    # "srcData":Landroid/graphics/ImageDecoder$Source;
    .local v25, "srcData":Landroid/graphics/ImageDecoder$Source;
    const-string v0, "Could not decode new wallpaper"

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v3, v17

    move-object/from16 v13, v18

    move-object/from16 v9, v20

    goto :goto_38d

    .line 820
    .end local v25    # "srcData":Landroid/graphics/ImageDecoder$Source;
    .restart local v0    # "srcData":Landroid/graphics/ImageDecoder$Source;
    :cond_360
    move-object/from16 v25, v0

    .end local v0    # "srcData":Landroid/graphics/ImageDecoder$Source;
    .restart local v25    # "srcData":Landroid/graphics/ImageDecoder$Source;
    const/4 v0, 0x1

    invoke-static {v1, v10, v5, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 830
    .local v0, "finalCrop":Landroid/graphics/Bitmap;
    move-object/from16 v16, v1

    .end local v1    # "cropped":Landroid/graphics/Bitmap;
    .local v16, "cropped":Landroid/graphics/Bitmap;
    new-instance v1, Ljava/io/FileOutputStream;

    move/from16 v26, v3

    .end local v3    # "hRatio":F
    .local v26, "hRatio":F
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_372
    .catch Ljava/lang/Exception; {:try_start_25d .. :try_end_372} :catch_3ca
    .catchall {:try_start_25d .. :try_end_372} :catchall_3c3

    .line 831
    .end local v20    # "f":Ljava/io/FileOutputStream;
    .local v1, "f":Ljava/io/FileOutputStream;
    :try_start_372
    new-instance v3, Ljava/io/BufferedOutputStream;

    move-object/from16 v27, v4

    .end local v4    # "estimateCrop":Landroid/graphics/Rect;
    .local v27, "estimateCrop":Landroid/graphics/Rect;
    const v4, 0x8000

    invoke-direct {v3, v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_37c
    .catch Ljava/lang/Exception; {:try_start_372 .. :try_end_37c} :catch_3ba
    .catchall {:try_start_372 .. :try_end_37c} :catchall_3b1

    .line 832
    .end local v18    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    :try_start_37c
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
    :try_end_37e
    .catch Ljava/lang/Exception; {:try_start_37c .. :try_end_37e} :catch_3a9
    .catchall {:try_start_37c .. :try_end_37e} :catchall_3a1

    move-object/from16 v20, v1

    .end local v1    # "f":Ljava/io/FileOutputStream;
    .restart local v20    # "f":Ljava/io/FileOutputStream;
    const/16 v1, 0x64

    :try_start_382
    invoke-virtual {v0, v4, v1, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 833
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_388
    .catch Ljava/lang/Exception; {:try_start_382 .. :try_end_388} :catch_39b
    .catchall {:try_start_382 .. :try_end_388} :catchall_395

    .line 834
    const/4 v1, 0x1

    move-object v13, v3

    move-object/from16 v9, v20

    move v3, v1

    .line 841
    .end local v0    # "finalCrop":Landroid/graphics/Bitmap;
    .end local v5    # "safeHeight":I
    .end local v7    # "destHeight":I
    .end local v10    # "safeWidth":I
    .end local v12    # "record":Ljava/io/File;
    .end local v14    # "actualScale":I
    .end local v15    # "scale":I
    .end local v16    # "cropped":Landroid/graphics/Bitmap;
    .end local v17    # "success":Z
    .end local v20    # "f":Ljava/io/FileOutputStream;
    .end local v24    # "recordName":Ljava/lang/String;
    .end local v25    # "srcData":Landroid/graphics/ImageDecoder$Source;
    .end local v26    # "hRatio":F
    .end local v27    # "estimateCrop":Landroid/graphics/Rect;
    .local v3, "success":Z
    .local v9, "f":Ljava/io/FileOutputStream;
    .local v13, "bos":Ljava/io/BufferedOutputStream;
    :goto_38d
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 842
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 843
    goto/16 :goto_47c

    .line 841
    .end local v9    # "f":Ljava/io/FileOutputStream;
    .end local v13    # "bos":Ljava/io/BufferedOutputStream;
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    .restart local v17    # "success":Z
    .restart local v20    # "f":Ljava/io/FileOutputStream;
    :catchall_395
    move-exception v0

    move-object v13, v3

    move-object/from16 v9, v20

    goto/16 :goto_451

    .line 836
    :catch_39b
    move-exception v0

    move-object v13, v3

    move-object/from16 v9, v20

    goto/16 :goto_467

    .line 841
    .end local v20    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "f":Ljava/io/FileOutputStream;
    :catchall_3a1
    move-exception v0

    move-object/from16 v20, v1

    move-object v13, v3

    move-object/from16 v9, v20

    .end local v1    # "f":Ljava/io/FileOutputStream;
    .restart local v20    # "f":Ljava/io/FileOutputStream;
    goto/16 :goto_451

    .line 836
    .end local v20    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "f":Ljava/io/FileOutputStream;
    :catch_3a9
    move-exception v0

    move-object/from16 v20, v1

    move-object v13, v3

    move-object/from16 v9, v20

    .end local v1    # "f":Ljava/io/FileOutputStream;
    .restart local v20    # "f":Ljava/io/FileOutputStream;
    goto/16 :goto_467

    .line 841
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v20    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "f":Ljava/io/FileOutputStream;
    .restart local v18    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_3b1
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v13, v18

    move-object/from16 v9, v20

    .end local v1    # "f":Ljava/io/FileOutputStream;
    .restart local v20    # "f":Ljava/io/FileOutputStream;
    goto/16 :goto_451

    .line 836
    .end local v20    # "f":Ljava/io/FileOutputStream;
    .restart local v1    # "f":Ljava/io/FileOutputStream;
    :catch_3ba
    move-exception v0

    move-object/from16 v20, v1

    move-object/from16 v13, v18

    move-object/from16 v9, v20

    .end local v1    # "f":Ljava/io/FileOutputStream;
    .restart local v20    # "f":Ljava/io/FileOutputStream;
    goto/16 :goto_467

    .line 841
    :catchall_3c3
    move-exception v0

    move-object/from16 v13, v18

    move-object/from16 v9, v20

    goto/16 :goto_451

    .line 836
    :catch_3ca
    move-exception v0

    move-object/from16 v13, v18

    move-object/from16 v9, v20

    goto/16 :goto_467

    .line 841
    .end local v18    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v13    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_3d1
    move-exception v0

    move-object/from16 v18, v13

    move-object/from16 v9, v20

    .end local v13    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v18    # "bos":Ljava/io/BufferedOutputStream;
    goto/16 :goto_451

    .line 836
    .end local v18    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v13    # "bos":Ljava/io/BufferedOutputStream;
    :catch_3d8
    move-exception v0

    move-object/from16 v18, v13

    move-object/from16 v9, v20

    .end local v13    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v18    # "bos":Ljava/io/BufferedOutputStream;
    goto/16 :goto_467

    .line 841
    .end local v18    # "bos":Ljava/io/BufferedOutputStream;
    .end local v22    # "needScale":Z
    .end local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .local v5, "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .local v12, "needScale":Z
    .restart local v13    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_3df
    move-exception v0

    move-object/from16 v23, v5

    move/from16 v22, v12

    move-object/from16 v18, v13

    move-object/from16 v9, v20

    .end local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v12    # "needScale":Z
    .end local v13    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v18    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v22    # "needScale":Z
    .restart local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    goto/16 :goto_451

    .line 836
    .end local v18    # "bos":Ljava/io/BufferedOutputStream;
    .end local v22    # "needScale":Z
    .end local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v12    # "needScale":Z
    .restart local v13    # "bos":Ljava/io/BufferedOutputStream;
    :catch_3ea
    move-exception v0

    move-object/from16 v23, v5

    move/from16 v22, v12

    move-object/from16 v18, v13

    move-object/from16 v9, v20

    .end local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v12    # "needScale":Z
    .end local v13    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v18    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v22    # "needScale":Z
    .restart local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    goto/16 :goto_467

    .line 841
    .end local v18    # "bos":Ljava/io/BufferedOutputStream;
    .end local v21    # "needCrop":Z
    .end local v22    # "needScale":Z
    .end local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .local v10, "needCrop":Z
    .restart local v12    # "needScale":Z
    .restart local v13    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_3f5
    move-exception v0

    move-object/from16 v23, v5

    move/from16 v21, v10

    move/from16 v22, v12

    move-object/from16 v18, v13

    move-object/from16 v9, v20

    .end local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v10    # "needCrop":Z
    .end local v12    # "needScale":Z
    .end local v13    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v18    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v21    # "needCrop":Z
    .restart local v22    # "needScale":Z
    .restart local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    goto :goto_451

    .line 836
    .end local v18    # "bos":Ljava/io/BufferedOutputStream;
    .end local v21    # "needCrop":Z
    .end local v22    # "needScale":Z
    .end local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v10    # "needCrop":Z
    .restart local v12    # "needScale":Z
    .restart local v13    # "bos":Ljava/io/BufferedOutputStream;
    :catch_401
    move-exception v0

    move-object/from16 v23, v5

    move/from16 v21, v10

    move/from16 v22, v12

    move-object/from16 v18, v13

    move-object/from16 v9, v20

    .end local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v10    # "needCrop":Z
    .end local v12    # "needScale":Z
    .end local v13    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v18    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v21    # "needCrop":Z
    .restart local v22    # "needScale":Z
    .restart local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    goto/16 :goto_467

    .line 841
    .end local v18    # "bos":Ljava/io/BufferedOutputStream;
    .end local v20    # "f":Ljava/io/FileOutputStream;
    .end local v21    # "needCrop":Z
    .end local v22    # "needScale":Z
    .end local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v9    # "f":Ljava/io/FileOutputStream;
    .restart local v10    # "needCrop":Z
    .restart local v12    # "needScale":Z
    .restart local v13    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_40e
    move-exception v0

    move-object/from16 v23, v5

    move-object/from16 v20, v9

    move/from16 v21, v10

    move/from16 v22, v12

    move-object/from16 v18, v13

    .end local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v9    # "f":Ljava/io/FileOutputStream;
    .end local v10    # "needCrop":Z
    .end local v12    # "needScale":Z
    .end local v13    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v18    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v20    # "f":Ljava/io/FileOutputStream;
    .restart local v21    # "needCrop":Z
    .restart local v22    # "needScale":Z
    .restart local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    goto :goto_451

    .line 836
    .end local v18    # "bos":Ljava/io/BufferedOutputStream;
    .end local v20    # "f":Ljava/io/FileOutputStream;
    .end local v21    # "needCrop":Z
    .end local v22    # "needScale":Z
    .end local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v9    # "f":Ljava/io/FileOutputStream;
    .restart local v10    # "needCrop":Z
    .restart local v12    # "needScale":Z
    .restart local v13    # "bos":Ljava/io/BufferedOutputStream;
    :catch_41a
    move-exception v0

    move-object/from16 v23, v5

    move-object/from16 v20, v9

    move/from16 v21, v10

    move/from16 v22, v12

    move-object/from16 v18, v13

    .end local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v9    # "f":Ljava/io/FileOutputStream;
    .end local v10    # "needCrop":Z
    .end local v12    # "needScale":Z
    .end local v13    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v18    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v20    # "f":Ljava/io/FileOutputStream;
    .restart local v21    # "needCrop":Z
    .restart local v22    # "needScale":Z
    .restart local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    goto :goto_467

    .line 841
    .end local v18    # "bos":Ljava/io/BufferedOutputStream;
    .end local v19    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v20    # "f":Ljava/io/FileOutputStream;
    .end local v21    # "needCrop":Z
    .end local v22    # "needScale":Z
    .end local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .local v7, "displayInfo":Landroid/view/DisplayInfo;
    .restart local v9    # "f":Ljava/io/FileOutputStream;
    .restart local v10    # "needCrop":Z
    .restart local v12    # "needScale":Z
    .restart local v13    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_426
    move-exception v0

    move-object/from16 v23, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    move/from16 v21, v10

    move/from16 v22, v12

    move-object/from16 v18, v13

    .end local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v7    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v9    # "f":Ljava/io/FileOutputStream;
    .end local v10    # "needCrop":Z
    .end local v12    # "needScale":Z
    .end local v13    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v18    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v19    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v20    # "f":Ljava/io/FileOutputStream;
    .restart local v21    # "needCrop":Z
    .restart local v22    # "needScale":Z
    .restart local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    goto :goto_451

    .line 836
    .end local v18    # "bos":Ljava/io/BufferedOutputStream;
    .end local v19    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v20    # "f":Ljava/io/FileOutputStream;
    .end local v21    # "needCrop":Z
    .end local v22    # "needScale":Z
    .end local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v7    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v9    # "f":Ljava/io/FileOutputStream;
    .restart local v10    # "needCrop":Z
    .restart local v12    # "needScale":Z
    .restart local v13    # "bos":Ljava/io/BufferedOutputStream;
    :catch_434
    move-exception v0

    move-object/from16 v23, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    move/from16 v21, v10

    move/from16 v22, v12

    move-object/from16 v18, v13

    .end local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v7    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v9    # "f":Ljava/io/FileOutputStream;
    .end local v10    # "needCrop":Z
    .end local v12    # "needScale":Z
    .end local v13    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v18    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v19    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v20    # "f":Ljava/io/FileOutputStream;
    .restart local v21    # "needCrop":Z
    .restart local v22    # "needScale":Z
    .restart local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    goto :goto_467

    .line 841
    .end local v17    # "success":Z
    .end local v18    # "bos":Ljava/io/BufferedOutputStream;
    .end local v19    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v20    # "f":Ljava/io/FileOutputStream;
    .end local v21    # "needCrop":Z
    .end local v22    # "needScale":Z
    .end local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .local v3, "success":Z
    .restart local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v7    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v9    # "f":Ljava/io/FileOutputStream;
    .restart local v10    # "needCrop":Z
    .restart local v12    # "needScale":Z
    .restart local v13    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_442
    move-exception v0

    move/from16 v17, v3

    move-object/from16 v23, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    move/from16 v21, v10

    move/from16 v22, v12

    move-object/from16 v18, v13

    .end local v3    # "success":Z
    .end local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v7    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v10    # "needCrop":Z
    .end local v12    # "needScale":Z
    .restart local v17    # "success":Z
    .restart local v19    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v21    # "needCrop":Z
    .restart local v22    # "needScale":Z
    .restart local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :goto_451
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 842
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 843
    throw v0

    .line 836
    .end local v17    # "success":Z
    .end local v19    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v21    # "needCrop":Z
    .end local v22    # "needScale":Z
    .end local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v3    # "success":Z
    .restart local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v7    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v10    # "needCrop":Z
    .restart local v12    # "needScale":Z
    :catch_458
    move-exception v0

    move/from16 v17, v3

    move-object/from16 v23, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    move/from16 v21, v10

    move/from16 v22, v12

    move-object/from16 v18, v13

    .line 841
    .end local v3    # "success":Z
    .end local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v7    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v10    # "needCrop":Z
    .end local v12    # "needScale":Z
    .restart local v17    # "success":Z
    .restart local v19    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v21    # "needCrop":Z
    .restart local v22    # "needScale":Z
    .restart local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :goto_467
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 842
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 843
    move/from16 v3, v17

    goto :goto_47c

    .line 664
    .end local v9    # "f":Ljava/io/FileOutputStream;
    .end local v13    # "bos":Ljava/io/BufferedOutputStream;
    .end local v17    # "success":Z
    .end local v19    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v21    # "needCrop":Z
    .end local v22    # "needScale":Z
    .end local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v3    # "success":Z
    .restart local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .restart local v7    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_470
    move/from16 v17, v3

    move-object/from16 v23, v5

    move-object/from16 v19, v7

    .line 665
    .end local v3    # "success":Z
    .end local v5    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v7    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v17    # "success":Z
    .restart local v19    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v23    # "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :goto_476
    const-string v0, "Invalid wallpaper data"

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const/4 v3, 0x0

    .line 847
    .end local v17    # "success":Z
    .restart local v3    # "success":Z
    :goto_47c
    if-nez v3, :cond_488

    .line 848
    const-string v0, "Unable to apply new wallpaper"

    invoke-static {v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 852
    :cond_488
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_499

    .line 853
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 858
    :cond_499
    return-void
.end method

.method getAdjustedWallpaperColorsOnDimming(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/app/WallpaperColors;
    .registers 9
    .param p1, "wallpaperData"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2861
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2862
    :try_start_3
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 2864
    .local v1, "wallpaperColors":Landroid/app/WallpaperColors;
    if-eqz v1, :cond_31

    .line 2865
    invoke-virtual {v1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_31

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperDimAmount:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_31

    .line 2867
    invoke-virtual {v1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v2

    and-int/lit8 v2, v2, -0x2

    and-int/lit8 v2, v2, -0x3

    .line 2870
    .local v2, "adjustedColorHints":I
    new-instance v3, Landroid/app/WallpaperColors;

    .line 2871
    invoke-virtual {v1}, Landroid/app/WallpaperColors;->getPrimaryColor()Landroid/graphics/Color;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/WallpaperColors;->getSecondaryColor()Landroid/graphics/Color;

    move-result-object v5

    .line 2872
    invoke-virtual {v1}, Landroid/app/WallpaperColors;->getTertiaryColor()Landroid/graphics/Color;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v2}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V

    monitor-exit v0

    .line 2870
    return-object v3

    .line 2874
    .end local v2    # "adjustedColorHints":I
    :cond_31
    monitor-exit v0

    return-object v1

    .line 2875
    .end local v1    # "wallpaperColors":Landroid/app/WallpaperColors;
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method public getCurrentUserId()I
    .registers 2

    .line 391
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    return v0
.end method

.method getCurrentWallpaperData(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 6
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 1775
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1777
    const/4 v1, 0x1

    if-ne p1, v1, :cond_9

    :try_start_6
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    goto :goto_b

    :cond_9
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    .line 1778
    .local v1, "wallpaperDataMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :goto_b
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    monitor-exit v0

    return-object v2

    .line 1779
    .end local v1    # "wallpaperDataMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getHeightHint(I)I
    .registers 6
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2360
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2361
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2364
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2365
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_1f

    .line 2366
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v2

    .line 2367
    .local v2, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    monitor-exit v0

    return v3

    .line 2369
    .end local v2    # "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :cond_1f
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 2362
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find display with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "displayId":I
    throw v1

    .line 2371
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "displayId":I
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public getLock()Ljava/lang/Object;
    .registers 2

    .line 403
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .line 1918
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1b

    .line 1921
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1922
    :try_start_b
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    .line 1923
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_18

    throw v1

    .line 1919
    :cond_1b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getName() can only be called from the system process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWallpaper(Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    .registers 13
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p3, "which"    # I
    .param p4, "outParams"    # Landroid/os/Bundle;
    .param p5, "wallpaperUserId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2434
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperColors(III)Landroid/app/WallpaperColors;
    .registers 13
    .param p1, "which"    # I
    .param p2, "userId"    # I
    .param p3, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2819
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_10

    if-ne p1, v0, :cond_7

    goto :goto_10

    .line 2820
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "which should be either FLAG_LOCK or FLAG_SYSTEM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2822
    :cond_10
    :goto_10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "getWallpaperColors"

    const/4 v8, 0x0

    move v4, p2

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2825
    const/4 v2, 0x0

    .line 2828
    .local v2, "wallpaperData":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2829
    if-ne p1, v1, :cond_34

    .line 2830
    :try_start_28
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v2, v1

    goto :goto_34

    .line 2844
    :catchall_32
    move-exception v0

    goto :goto_55

    .line 2835
    :cond_34
    :goto_34
    if-nez v2, :cond_3b

    .line 2836
    invoke-direct {p0, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->findWallpaperAtDisplay(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    move-object v2, v1

    .line 2839
    :cond_3b
    if-nez v2, :cond_40

    .line 2840
    const/4 v0, 0x0

    monitor-exit v3

    return-object v0

    .line 2842
    :cond_40
    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz v1, :cond_4a

    iget-boolean v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mIsColorExtractedFromDim:Z

    if-eqz v1, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v0, 0x0

    .line 2844
    .local v0, "shouldExtract":Z
    :cond_4a
    :goto_4a
    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_28 .. :try_end_4b} :catchall_32

    .line 2846
    if-eqz v0, :cond_50

    .line 2847
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2850
    :cond_50
    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAdjustedWallpaperColorsOnDimming(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/app/WallpaperColors;

    move-result-object v1

    return-object v1

    .line 2844
    .end local v0    # "shouldExtract":Z
    :goto_55
    :try_start_55
    monitor-exit v3
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_32

    throw v0
.end method

.method public getWallpaperDimAmount()F
    .registers 4

    .line 2793
    const-string v0, "android.permission.SET_WALLPAPER_DIM_AMOUNT"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2794
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2795
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2796
    .local v1, "data":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperDimAmount:F

    monitor-exit v0

    return v2

    .line 2797
    .end local v1    # "data":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw v1
.end method

.method getWallpaperDir(I)Ljava/io/File;
    .registers 3
    .param p1, "userId"    # I

    .line 1833
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperIdForUser(II)I
    .registers 10
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 2509
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2510
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v5, "getWallpaperIdForUser"

    .line 2509
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2512
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_21

    if-ne p1, v0, :cond_19

    goto :goto_21

    .line 2513
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify exactly one kind of wallpaper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2517
    :cond_21
    :goto_21
    if-ne p1, v0, :cond_26

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_28

    :cond_26
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 2518
    .local v0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :goto_28
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2519
    :try_start_2b
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2520
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v2, :cond_37

    .line 2521
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    monitor-exit v1

    return v3

    .line 2523
    .end local v2    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_37
    monitor-exit v1

    .line 2524
    const/4 v1, -0x1

    return v1

    .line 2523
    :catchall_3a
    move-exception v2

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_3a

    throw v2
.end method

.method public getWallpaperInfo(I)Landroid/app/WallpaperInfo;
    .registers 10
    .param p1, "userId"    # I

    .line 2491
    const-string v0, "android.permission.READ_WALLPAPER_INTERNAL"

    .line 2492
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "android.permission.QUERY_ALL_PACKAGES"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 2493
    .local v0, "allow":Z
    :goto_14
    if-eqz v0, :cond_45

    .line 2494
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2495
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "getWallpaperInfo"

    const/4 v7, 0x0

    .line 2494
    move v3, p1

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2496
    .end local p1    # "userId":I
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2497
    :try_start_2b
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2498
    .local p1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz p1, :cond_3f

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v3, :cond_3f

    .line 2499
    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    monitor-exit v2

    return-object v3

    .line 2501
    .end local p1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_3f
    monitor-exit v2

    move p1, v1

    goto :goto_45

    :catchall_42
    move-exception p1

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_2b .. :try_end_44} :catchall_42

    throw p1

    .line 2504
    .end local v1    # "userId":I
    .local p1, "userId":I
    :cond_45
    :goto_45
    const/4 v1, 0x0

    return-object v1
.end method

.method public getWallpaperMap()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 9
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .line 3621
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_8

    :cond_6
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    .line 3622
    .local v1, "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    :goto_8
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3623
    .local v2, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v2, :cond_57

    .line 3626
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 3627
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3631
    if-nez v2, :cond_57

    .line 3632
    if-ne p2, v0, :cond_38

    .line 3633
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "wallpaper_lock_orig"

    const-string/jumbo v5, "wallpaper_lock"

    invoke-direct {v0, p1, v3, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .line 3635
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3636
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_57

    .line 3640
    :cond_38
    const-string v0, "WallpaperManagerService"

    const-string v3, "Didn\'t find wallpaper in non-lock case!"

    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3641
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "wallpaper_orig"

    const-string/jumbo v5, "wallpaper"

    invoke-direct {v0, p1, v3, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    .line 3643
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3644
    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3648
    :cond_57
    :goto_57
    return-object v2
.end method

.method public getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    .registers 24
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p4, "which"    # I
    .param p5, "outParams"    # Landroid/os/Bundle;
    .param p6, "wallpaperUserId"    # I

    .line 2440
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    const-string v0, "android.permission.READ_WALLPAPER_INTERNAL"

    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->hasPermission(Ljava/lang/String;)Z

    move-result v5

    .line 2441
    .local v5, "hasPrivilege":Z
    if-nez v5, :cond_2b

    .line 2442
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v6, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/storage/StorageManager;

    const/4 v7, 0x1

    .line 2443
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 2442
    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-virtual/range {v6 .. v11}, Landroid/os/storage/StorageManager;->checkPermissionReadImages(ZIILjava/lang/String;Ljava/lang/String;)Z

    .line 2446
    :cond_2b
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 2447
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const/4 v13, 0x0

    const/4 v14, 0x1

    const-string v15, "getWallpaper"

    const/16 v16, 0x0

    .line 2446
    move/from16 v12, p6

    invoke-static/range {v10 .. v16}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2449
    .end local p6    # "wallpaperUserId":I
    .local v6, "wallpaperUserId":I
    const/4 v0, 0x1

    const/4 v7, 0x2

    if-eq v3, v0, :cond_4e

    if-ne v3, v7, :cond_46

    goto :goto_4e

    .line 2450
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v7, "Must specify exactly one kind of wallpaper to read"

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2453
    :cond_4e
    :goto_4e
    iget-object v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2455
    if-ne v3, v7, :cond_56

    :try_start_53
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_58

    :cond_56
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    :goto_58
    move-object v7, v0

    .line 2456
    .local v7, "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v9, v0

    .line 2457
    .local v9, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v10, 0x0

    if-nez v9, :cond_65

    .line 2461
    monitor-exit v8

    return-object v10

    .line 2464
    :cond_65
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v0
    :try_end_6a
    .catchall {:try_start_53 .. :try_end_6a} :catchall_a6

    move-object v11, v0

    .line 2466
    .local v11, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    if-eqz v4, :cond_7f

    .line 2467
    :try_start_6d
    const-string/jumbo v0, "width"

    iget v12, v11, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    invoke-virtual {v4, v0, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2468
    const-string v0, "height"

    iget v12, v11, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-virtual {v4, v0, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_7f

    .line 2477
    :catch_7d
    move-exception v0

    goto :goto_9c

    .line 2470
    :cond_7f
    :goto_7f
    if-eqz v2, :cond_88

    .line 2471
    invoke-static {v9}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->-$$Nest$fgetcallbacks(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2473
    :cond_88
    iget-object v0, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_8e
    .catch Ljava/io/FileNotFoundException; {:try_start_6d .. :try_end_8e} :catch_7d
    .catchall {:try_start_6d .. :try_end_8e} :catchall_a6

    if-nez v0, :cond_92

    .line 2474
    :try_start_90
    monitor-exit v8
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_a6

    return-object v10

    .line 2476
    :cond_92
    :try_start_92
    iget-object v0, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    const/high16 v12, 0x10000000

    invoke-static {v0, v12}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_9a
    .catch Ljava/io/FileNotFoundException; {:try_start_92 .. :try_end_9a} :catch_7d
    .catchall {:try_start_92 .. :try_end_9a} :catchall_a6

    :try_start_9a
    monitor-exit v8

    return-object v0

    .line 2479
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_9c
    const-string v12, "WallpaperManagerService"

    const-string v13, "Error getting wallpaper"

    invoke-static {v12, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2481
    nop

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    monitor-exit v8

    return-object v10

    .line 2482
    .end local v7    # "whichSet":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;>;"
    .end local v9    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v11    # "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :catchall_a6
    move-exception v0

    monitor-exit v8
    :try_end_a8
    .catchall {:try_start_9a .. :try_end_a8} :catchall_a6

    throw v0
.end method

.method public getWidthHint(I)I
    .registers 6
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2342
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2343
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2346
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2347
    .local v1, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_1f

    .line 2348
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v2

    .line 2349
    .local v2, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    monitor-exit v0

    return v3

    .line 2351
    .end local v2    # "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    :cond_1f
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 2344
    .end local v1    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find display with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "displayId":I
    throw v1

    .line 2353
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "displayId":I
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public hasNamedWallpaper(Ljava/lang/String;)Z
    .registers 13
    .param p1, "name"    # Ljava/lang/String;

    .line 2242
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2243
    .local v0, "callingUser":I
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->hasCrossUserPermission()Z

    move-result v1

    .line 2249
    .local v1, "allowCrossUser":Z
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2251
    :try_start_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_73

    .line 2253
    .local v3, "ident":J
    :try_start_f
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_6d

    .line 2255
    .local v5, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_1e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2256
    nop

    .line 2257
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_6b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .line 2258
    .local v7, "user":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_3a

    iget v9, v7, Landroid/content/pm/UserInfo;->id:I

    if-eq v0, v9, :cond_3a

    .line 2260
    goto :goto_26

    .line 2264
    :cond_3a
    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v9

    if-eqz v9, :cond_41

    .line 2265
    goto :goto_26

    .line 2267
    :cond_41
    iget-object v9, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2268
    .local v9, "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v9, :cond_5d

    .line 2270
    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v10, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 2271
    iget-object v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v10, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v9, v8

    .line 2273
    :cond_5d
    if-eqz v9, :cond_6a

    iget-object v8, v9, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6a

    .line 2274
    const/4 v6, 0x1

    monitor-exit v2

    return v6

    .line 2276
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    .end local v9    # "wd":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_6a
    goto :goto_26

    .line 2277
    .end local v3    # "ident":J
    .end local v5    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_6b
    monitor-exit v2

    .line 2278
    return v8

    .line 2255
    .restart local v3    # "ident":J
    :catchall_6d
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2256
    nop

    .end local v0    # "callingUser":I
    .end local v1    # "allowCrossUser":Z
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "name":Ljava/lang/String;
    throw v5

    .line 2277
    .end local v3    # "ident":J
    .restart local v0    # "callingUser":I
    .restart local v1    # "allowCrossUser":Z
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    :catchall_73
    move-exception v3

    monitor-exit v2
    :try_end_75
    .catchall {:try_start_1e .. :try_end_75} :catchall_73

    throw v3
.end method

.method initialize()V
    .registers 6

    .line 1822
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 1823
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1828
    invoke-direct {p0, v0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 1829
    invoke-virtual {p0, v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1830
    return-void
.end method

.method public isSetWallpaperAllowed(Ljava/lang/String;)Z
    .registers 12
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 3386
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3387
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 3388
    .local v1, "uidPackages":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 3389
    .local v2, "uidMatchPackage":Z
    if-nez v2, :cond_1a

    .line 3390
    const/4 v3, 0x0

    return v3

    .line 3392
    :cond_1a
    const-class v3, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3393
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3394
    .local v3, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    const/4 v4, 0x1

    if-eqz v3, :cond_2c

    invoke-virtual {v3, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->isDeviceOrProfileOwnerInCallingUser(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 3395
    return v4

    .line 3397
    :cond_2c
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    .line 3398
    .local v5, "callingUserId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3400
    .local v6, "ident":J
    :try_start_34
    const-class v8, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/UserManagerInternal;

    .line 3401
    .local v8, "umi":Lcom/android/server/pm/UserManagerInternal;
    const-string/jumbo v9, "no_set_wallpaper"

    invoke-virtual {v8, v9, v5}, Lcom/android/server/pm/UserManagerInternal;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v9
    :try_end_43
    .catchall {:try_start_34 .. :try_end_43} :catchall_48

    .line 3403
    xor-int/2addr v4, v9

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3401
    return v4

    .line 3403
    .end local v8    # "umi":Lcom/android/server/pm/UserManagerInternal;
    :catchall_48
    move-exception v4

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3404
    throw v4
.end method

.method public isWallpaperBackupEligible(II)Z
    .registers 5
    .param p1, "which"    # I
    .param p2, "userId"    # I

    .line 3409
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_24

    .line 3413
    const/4 v0, 0x2

    if-ne p1, v0, :cond_14

    .line 3414
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    goto :goto_1c

    .line 3415
    :cond_14
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    :goto_1c
    nop

    .line 3416
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_22

    iget-boolean v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    return v1

    .line 3410
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_24
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the system may call isWallpaperBackupEligible"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isWallpaperSupported(Ljava/lang/String;)Z
    .registers 5
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 3377
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3378
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->enforcePackageBelongsToUid(Ljava/lang/String;I)V

    .line 3380
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method synthetic lambda$errorCheck$5$com-android-server-wallpaper-WallpaperManagerService(ILjava/lang/Integer;Ljava/lang/String;)V
    .registers 7
    .param p1, "userID"    # I
    .param p2, "type"    # Ljava/lang/Integer;
    .param p3, "filename"    # Ljava/lang/String;

    .line 1973
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1974
    .local v0, "record":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wallpaper tyep = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wallpaper fail detect!! reset to default wallpaper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WallpaperManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperData(II)V

    .line 1978
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1980
    :cond_41
    return-void
.end method

.method synthetic lambda$notifyWallpaperColorsChanged$0$com-android-server-wallpaper-WallpaperManagerService(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 5
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "which"    # I
    .param p3, "connector"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 433
    iget v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V

    .line 434
    return-void
.end method

.method synthetic lambda$onUnlockUser$6$com-android-server-wallpaper-WallpaperManagerService(I)V
    .registers 10
    .param p1, "userId"    # I

    .line 2015
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "WallpaperManagerService"

    invoke-direct {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 2016
    .local v0, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper_selinux_restorecon-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2018
    :try_start_1d
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    .line 2019
    .local v1, "wallpaperDir":Ljava/io/File;
    sget-object v2, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_25
    if-ge v4, v3, :cond_3a

    aget-object v5, v2, v4

    .line 2020
    .local v5, "filename":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2021
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_37

    .line 2022
    invoke-static {v6}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z
    :try_end_37
    .catchall {:try_start_1d .. :try_end_37} :catchall_3f

    .line 2019
    .end local v5    # "filename":Ljava/lang/String;
    .end local v6    # "f":Ljava/io/File;
    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 2026
    .end local v1    # "wallpaperDir":Ljava/io/File;
    :cond_3a
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2027
    nop

    .line 2028
    return-void

    .line 2026
    :catchall_3f
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2027
    throw v1
.end method

.method synthetic lambda$setWallpaper$11$com-android-server-wallpaper-WallpaperManagerService(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2917
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$switchUser$7$com-android-server-wallpaper-WallpaperManagerService(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 5
    .param p1, "systemWallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "lockWallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2080
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 2081
    const/4 v1, 0x2

    invoke-virtual {p0, p2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 2082
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 2083
    return-void
.end method

.method synthetic lambda$updateFallbackConnection$4$com-android-server-wallpaper-WallpaperManagerService(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 4
    .param p1, "fallbackConnection"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    .param p2, "connector"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 1158
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-nez v0, :cond_9

    .line 1159
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1161
    :cond_9
    return-void
.end method

.method public lockScreenWallpaperExists()Z
    .registers 4

    .line 2717
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2718
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    .line 2719
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method makeWallpaperIdLocked()I
    .registers 2

    .line 1122
    :goto_0
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    .line 1123
    if-eqz v0, :cond_9

    .line 1124
    return v0

    .line 1123
    :cond_9
    goto :goto_0
.end method

.method public notifyGoingToSleep(IILandroid/os/Bundle;)V
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2624
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2625
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2626
    .local v1, "data":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_1d

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_1d

    .line 2627
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v3, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda10;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 2640
    .end local v1    # "data":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1d
    monitor-exit v0

    .line 2641
    return-void

    .line 2640
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public notifyWakingUp(IILandroid/os/Bundle;)V
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2602
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2603
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2604
    .local v1, "data":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_1d

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_1d

    .line 2605
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v3, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda12;-><init>(IILandroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 2617
    .end local v1    # "data":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_1d
    monitor-exit v0

    .line 2618
    return-void

    .line 2617
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .registers 5
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "which"    # I

    .line 431
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_f

    .line 432
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    goto :goto_13

    .line 436
    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V

    .line 438
    :goto_13
    return-void
.end method

.method public onBootPhase(I)V
    .registers 4
    .param p1, "phase"    # I

    .line 1950
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->errorCheck(I)V

    .line 1952
    const/16 v1, 0x226

    if-ne p1, v1, :cond_c

    .line 1953
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->systemReady()V

    goto :goto_1e

    .line 1954
    :cond_c
    const/16 v1, 0x258

    if-ne p1, v1, :cond_15

    .line 1955
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchUser(ILandroid/os/IRemoteCallback;)V

    goto :goto_1e

    .line 1958
    :cond_15
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1e

    .line 1959
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperManagerServiceStub:Lcom/android/server/wallpaper/WallpaperManagerServiceStub;

    invoke-interface {v0}, Lcom/android/server/wallpaper/WallpaperManagerServiceStub;->wallpaperManagerServiceReady()V

    .line 1962
    :cond_1e
    :goto_1e
    return-void
.end method

.method onRemoveUser(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 2036
    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    return-void

    .line 2038
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    .line 2039
    .local v0, "wallpaperDir":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2040
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserversLocked(I)V

    .line 2041
    sget-object v2, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_12
    if-ge v4, v3, :cond_22

    aget-object v5, v2, v4

    .line 2042
    .local v5, "filename":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 2041
    nop

    .end local v5    # "filename":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 2044
    :cond_22
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2045
    monitor-exit v1

    .line 2046
    return-void

    .line 2045
    :catchall_29
    move-exception v2

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 3989
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 3991
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 1998
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1999
    :try_start_3
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_31

    .line 2000
    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_18

    .line 2002
    nop

    .line 2003
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    .line 2004
    .local v1, "systemWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 2005
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2012
    .end local v1    # "systemWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_18
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_31

    .line 2013
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2014
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 2029
    .local v1, "relabeler":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2032
    .end local v1    # "relabeler":Ljava/lang/Runnable;
    :cond_31
    monitor-exit v0

    .line 2033
    return-void

    .line 2032
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw v1
.end method

.method parseWallpaperAttributes(Landroid/util/TypedXmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    .registers 20
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p3, "keepDimensionHints"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3784
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const-string v4, "id"

    const/4 v5, -0x1

    invoke-interface {v1, v3, v4, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 3785
    .local v4, "id":I
    if-eq v4, v5, :cond_19

    .line 3786
    iput v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3787
    iget v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    if-le v4, v5, :cond_1f

    .line 3788
    iput v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    goto :goto_1f

    .line 3791
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v5

    iput v5, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3794
    :cond_1f
    :goto_1f
    const/4 v5, 0x0

    invoke-direct {v0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v6

    .line 3796
    .local v6, "wpData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    if-nez p3, :cond_37

    .line 3797
    const-string/jumbo v7, "width"

    invoke-interface {v1, v3, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    .line 3798
    const-string v7, "height"

    invoke-interface {v1, v3, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    .line 3800
    :cond_37
    iget-object v7, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v8, "cropLeft"

    invoke-direct {v0, v1, v8, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 3801
    iget-object v7, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v8, "cropTop"

    invoke-direct {v0, v1, v8, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 3802
    iget-object v7, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v8, "cropRight"

    invoke-direct {v0, v1, v8, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 3803
    iget-object v7, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v8, "cropBottom"

    invoke-direct {v0, v1, v8, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 3804
    iget-object v7, v6, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v8, "paddingLeft"

    invoke-direct {v0, v1, v8, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 3805
    iget-object v7, v6, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v8, "paddingTop"

    invoke-direct {v0, v1, v8, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 3806
    iget-object v7, v6, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v8, "paddingRight"

    invoke-direct {v0, v1, v8, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 3807
    iget-object v7, v6, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v8, "paddingBottom"

    invoke-direct {v0, v1, v8, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 3808
    const-string v7, "dimAmount"

    const/4 v8, 0x0

    invoke-direct {v0, v1, v7, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeFloat(Landroid/util/TypedXmlPullParser;Ljava/lang/String;F)F

    move-result v7

    iput v7, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperDimAmount:F

    .line 3809
    const-string v7, "dimAmountsCount"

    invoke-direct {v0, v1, v7, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 3810
    .local v7, "dimAmountsCount":I
    if-lez v7, :cond_e2

    .line 3811
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9, v7}, Landroid/util/ArrayMap;-><init>(I)V

    .line 3812
    .local v9, "allDimAmounts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Float;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_a2
    if-ge v10, v7, :cond_e0

    .line 3813
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dimUID"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v1, v11, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v11

    .line 3814
    .local v11, "uid":I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dimValue"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v1, v12, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeFloat(Landroid/util/TypedXmlPullParser;Ljava/lang/String;F)F

    move-result v12

    .line 3815
    .local v12, "dimValue":F
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3812
    .end local v11    # "uid":I
    .end local v12    # "dimValue":F
    add-int/lit8 v10, v10, 0x1

    goto :goto_a2

    .line 3817
    .end local v10    # "i":I
    :cond_e0
    iput-object v9, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mUidToDimAmount:Landroid/util/ArrayMap;

    .line 3819
    .end local v9    # "allDimAmounts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Float;>;"
    :cond_e2
    const-string v8, "colorsCount"

    invoke-direct {v0, v1, v8, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v8

    .line 3820
    .local v8, "colorsCount":I
    const-string v9, "allColorsCount"

    invoke-direct {v0, v1, v9, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 3821
    .local v9, "allColorsCount":I
    const-string v10, "colorHints"

    if-lez v9, :cond_143

    .line 3822
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 3823
    .local v11, "allColors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_f8
    if-ge v12, v9, :cond_137

    .line 3824
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "allColorsValue"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v1, v13, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v13

    .line 3825
    .local v13, "colorInt":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "allColorsPopulation"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v1, v14, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v14

    .line 3826
    .local v14, "population":I
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v11, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3823
    .end local v13    # "colorInt":I
    .end local v14    # "population":I
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    goto :goto_f8

    .line 3828
    .end local v12    # "i":I
    :cond_137
    invoke-direct {v0, v1, v10, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .line 3829
    .local v3, "colorHints":I
    new-instance v10, Landroid/app/WallpaperColors;

    invoke-direct {v10, v11, v3}, Landroid/app/WallpaperColors;-><init>(Ljava/util/Map;I)V

    iput-object v10, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .end local v3    # "colorHints":I
    .end local v11    # "allColors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_182

    .line 3830
    :cond_143
    if-lez v8, :cond_182

    .line 3831
    const/4 v3, 0x0

    .local v3, "primary":Landroid/graphics/Color;
    const/4 v11, 0x0

    .local v11, "secondary":Landroid/graphics/Color;
    const/4 v12, 0x0

    .line 3832
    .local v12, "tertiary":Landroid/graphics/Color;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_149
    if-ge v13, v8, :cond_176

    .line 3833
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "colorValue"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v1, v14, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v14

    invoke-static {v14}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v14

    .line 3834
    .local v14, "color":Landroid/graphics/Color;
    if-nez v13, :cond_16a

    .line 3835
    move-object v3, v14

    goto :goto_173

    .line 3836
    :cond_16a
    const/4 v15, 0x1

    if-ne v13, v15, :cond_16f

    .line 3837
    move-object v11, v14

    goto :goto_173

    .line 3838
    :cond_16f
    const/4 v15, 0x2

    if-ne v13, v15, :cond_176

    .line 3839
    move-object v12, v14

    .line 3832
    .end local v14    # "color":Landroid/graphics/Color;
    :goto_173
    add-int/lit8 v13, v13, 0x1

    goto :goto_149

    .line 3844
    .end local v13    # "i":I
    :cond_176
    invoke-direct {v0, v1, v10, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Landroid/util/TypedXmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 3845
    .local v10, "colorHints":I
    new-instance v13, Landroid/app/WallpaperColors;

    invoke-direct {v13, v3, v11, v12, v10}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V

    iput-object v13, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    goto :goto_183

    .line 3830
    .end local v3    # "primary":Landroid/graphics/Color;
    .end local v10    # "colorHints":I
    .end local v11    # "secondary":Landroid/graphics/Color;
    .end local v12    # "tertiary":Landroid/graphics/Color;
    :cond_182
    :goto_182
    nop

    .line 3847
    :goto_183
    const-string/jumbo v3, "name"

    const/4 v10, 0x0

    invoke-interface {v1, v10, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 3848
    const-string v3, "backup"

    invoke-interface {v1, v10, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 3849
    return-void
.end method

.method public registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    .registers 11
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "userId"    # I
    .param p3, "displayId"    # I

    .line 2530
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v5, "registerWallpaperColorsCallback"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2532
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2534
    :try_start_16
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2535
    .local v1, "userDisplayColorsChangedListeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    if-nez v1, :cond_2b

    .line 2536
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    .line 2537
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2539
    :cond_2b
    nop

    .line 2540
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 2541
    .local v2, "displayChangedListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    if-nez v2, :cond_3d

    .line 2542
    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v2, v3

    .line 2543
    invoke-virtual {v1, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2545
    :cond_3d
    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2546
    nop

    .end local v1    # "userDisplayColorsChangedListeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    .end local v2    # "displayChangedListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    monitor-exit v0

    .line 2547
    return-void

    .line 2546
    :catchall_43
    move-exception v1

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_16 .. :try_end_45} :catchall_43

    throw v1
.end method

.method public removeOnLocalColorsChangedListener(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;III)V
    .registers 12
    .param p1, "callback"    # Landroid/app/ILocalWallpaperColorConsumer;
    .param p3, "which"    # I
    .param p4, "userId"    # I
    .param p5, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ILocalWallpaperColorConsumer;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2689
    .local p2, "removeAreas":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    const/4 v0, 0x2

    if-eq p3, v0, :cond_10

    const/4 v0, 0x1

    if-ne p3, v0, :cond_7

    goto :goto_10

    .line 2690
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "which should be either FLAG_LOCK or FLAG_SYSTEM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2692
    :cond_10
    :goto_10
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 2693
    .local v0, "callingUser":Landroid/os/UserHandle;
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne v1, p4, :cond_4c

    .line 2696
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2697
    .local v1, "identity":J
    const/4 v3, 0x0

    .line 2699
    .local v3, "purgeAreas":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_33
    .catchall {:try_start_1f .. :try_end_22} :catchall_2e

    .line 2700
    :try_start_22
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLocalColorRepo:Lcom/android/server/wallpaper/LocalColorRepository;

    invoke-virtual {v5, p1, p2, p5}, Lcom/android/server/wallpaper/LocalColorRepository;->removeAreas(Landroid/app/ILocalWallpaperColorConsumer;Ljava/util/List;I)Ljava/util/List;

    move-result-object v5

    move-object v3, v5

    .line 2701
    monitor-exit v4

    goto :goto_34

    :catchall_2b
    move-exception v5

    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2b

    .end local v0    # "callingUser":Landroid/os/UserHandle;
    .end local v1    # "identity":J
    .end local v3    # "purgeAreas":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "callback":Landroid/app/ILocalWallpaperColorConsumer;
    .end local p2    # "removeAreas":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local p3    # "which":I
    .end local p4    # "userId":I
    .end local p5    # "displayId":I
    :try_start_2d
    throw v5
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2e} :catch_33
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2e

    .line 2705
    .restart local v0    # "callingUser":Landroid/os/UserHandle;
    .restart local v1    # "identity":J
    .restart local v3    # "purgeAreas":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "callback":Landroid/app/ILocalWallpaperColorConsumer;
    .restart local p2    # "removeAreas":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .restart local p3    # "which":I
    .restart local p4    # "userId":I
    .restart local p5    # "displayId":I
    :catchall_2e
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2706
    throw v4

    .line 2702
    :catch_33
    move-exception v4

    .line 2705
    :goto_34
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2706
    nop

    .line 2707
    invoke-direct {p0, p3, p4, p5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getEngine(III)Landroid/service/wallpaper/IWallpaperEngine;

    move-result-object v4

    .line 2708
    .local v4, "engine":Landroid/service/wallpaper/IWallpaperEngine;
    if-eqz v4, :cond_4b

    if-nez v3, :cond_41

    goto :goto_4b

    .line 2709
    :cond_41
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4a

    invoke-interface {v4, v3}, Landroid/service/wallpaper/IWallpaperEngine;->removeLocalColorsAreas(Ljava/util/List;)V

    .line 2710
    :cond_4a
    return-void

    .line 2708
    :cond_4b
    :goto_4b
    return-void

    .line 2694
    .end local v1    # "identity":J
    .end local v3    # "purgeAreas":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/RectF;>;"
    .end local v4    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :cond_4c
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "calling user id does not match"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method saveSettingsLocked(I)V
    .registers 7
    .param p1, "userId"    # I

    .line 3450
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    .line 3451
    .local v0, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v1, 0x0

    .line 3453
    .local v1, "fstream":Ljava/io/FileOutputStream;
    :try_start_5
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v1, v2

    .line 3454
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v2

    .line 3455
    .local v2, "out":Landroid/util/TypedXmlSerializer;
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3459
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 3460
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v3, :cond_2d

    .line 3461
    const-string/jumbo v4, "wp"

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeWallpaperAttributes(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3463
    :cond_2d
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v3, v4

    .line 3464
    if-eqz v3, :cond_3d

    .line 3465
    const-string v4, "kwp"

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeWallpaperAttributes(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3468
    :cond_3d
    invoke-interface {v2}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 3470
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 3471
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3472
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 3473
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_4c} :catch_4d

    .line 3477
    .end local v2    # "out":Landroid/util/TypedXmlSerializer;
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    goto :goto_54

    .line 3474
    :catch_4d
    move-exception v2

    .line 3475
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3476
    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 3478
    .end local v2    # "e":Ljava/io/IOException;
    :goto_54
    return-void
.end method

.method public setDimensionHints(IILjava/lang/String;I)V
    .registers 13
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2291
    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2292
    invoke-virtual {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2293
    return-void

    .line 2297
    :cond_c
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 2298
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2300
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2301
    :try_start_1f
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2302
    .local v1, "userId":I
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    .line 2303
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-lez p1, :cond_8d

    if-lez p2, :cond_8d

    .line 2307
    invoke-direct {p0, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 2311
    invoke-direct {p0, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v4

    .line 2312
    .local v4, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    iget v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    if-ne p1, v5, :cond_3e

    iget v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    if-eq p2, v5, :cond_72

    .line 2313
    :cond_3e
    iput p1, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    .line 2314
    iput p2, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    .line 2315
    if-nez p4, :cond_47

    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 2316
    :cond_47
    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v5, v1, :cond_4d

    monitor-exit v0

    return-void

    .line 2317
    :cond_4d
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v5, :cond_72

    .line 2318
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2319
    invoke-virtual {v5, p4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v5

    .line 2320
    .local v5, "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    if-eqz v5, :cond_5c

    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_5b
    .catchall {:try_start_1f .. :try_end_5b} :catchall_96

    goto :goto_5d

    :cond_5c
    const/4 v6, 0x0

    .line 2321
    .local v6, "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :goto_5d
    if-eqz v6, :cond_68

    .line 2323
    :try_start_5f
    invoke-interface {v6, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_62} :catch_63
    .catchall {:try_start_5f .. :try_end_62} :catchall_96

    .line 2325
    goto :goto_64

    .line 2324
    :catch_63
    move-exception v2

    .line 2326
    :goto_64
    :try_start_64
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_72

    .line 2327
    :cond_68
    iget-object v7, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v7, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v7, :cond_72

    if-eqz v5, :cond_72

    .line 2331
    iput-boolean v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDimensionsChanged:Z

    .line 2335
    .end local v1    # "userId":I
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v4    # "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v5    # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    .end local v6    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :cond_72
    :goto_72
    monitor-exit v0

    .line 2336
    return-void

    .line 2308
    .restart local v1    # "userId":I
    .restart local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_74
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find display with id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "width":I
    .end local p2    # "height":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    .end local p4    # "displayId":I
    throw v2

    .line 2304
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "width":I
    .restart local p2    # "height":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    .restart local p4    # "displayId":I
    :cond_8d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "width and height must be > 0"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "width":I
    .end local p2    # "height":I
    .end local p3    # "callingPackage":Ljava/lang/String;
    .end local p4    # "displayId":I
    throw v2

    .line 2335
    .end local v1    # "userId":I
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "width":I
    .restart local p2    # "height":I
    .restart local p3    # "callingPackage":Ljava/lang/String;
    .restart local p4    # "displayId":I
    :catchall_96
    move-exception v1

    monitor-exit v0
    :try_end_98
    .catchall {:try_start_64 .. :try_end_98} :catchall_96

    throw v1
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;I)V
    .registers 15
    .param p1, "padding"    # Landroid/graphics/Rect;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "displayId"    # I

    .line 2378
    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2379
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2380
    return-void

    .line 2382
    :cond_c
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2383
    :try_start_f
    invoke-direct {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_e5

    .line 2386
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2387
    .local v1, "userId":I
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    .line 2388
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget v4, p1, Landroid/graphics/Rect;->left:I

    if-ltz v4, :cond_cb

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_cb

    iget v4, p1, Landroid/graphics/Rect;->right:I

    if-ltz v4, :cond_cb

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ltz v4, :cond_cb

    .line 2392
    invoke-direct {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getMaximumSizeDimension(I)I

    move-result v4

    .line 2394
    .local v4, "maxSize":I
    iget v5, p1, Landroid/graphics/Rect;->left:I

    iget v6, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    .line 2395
    .local v5, "paddingWidth":I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    .line 2396
    .local v6, "paddingHeight":I
    if-gt v5, v4, :cond_a7

    .line 2400
    if-gt v6, v4, :cond_83

    .line 2405
    invoke-direct {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v7

    .line 2406
    .local v7, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    iget-object v8, v7, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_81

    .line 2407
    iget-object v8, v7, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v8, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2408
    if-nez p3, :cond_56

    invoke-virtual {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 2409
    :cond_56
    iget v8, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v8, v1, :cond_5c

    monitor-exit v0

    return-void

    .line 2410
    :cond_5c
    iget-object v8, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v8, :cond_81

    .line 2411
    iget-object v8, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 2412
    invoke-virtual {v8, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v8

    .line 2413
    .local v8, "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    if-eqz v8, :cond_6b

    iget-object v9, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_6a
    .catchall {:try_start_f .. :try_end_6a} :catchall_fe

    goto :goto_6c

    :cond_6b
    const/4 v9, 0x0

    .line 2414
    .local v9, "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :goto_6c
    if-eqz v9, :cond_77

    .line 2416
    :try_start_6e
    invoke-interface {v9, p1}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_71
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_71} :catch_72
    .catchall {:try_start_6e .. :try_end_71} :catchall_fe

    .line 2418
    goto :goto_73

    .line 2417
    :catch_72
    move-exception v2

    .line 2419
    :goto_73
    :try_start_73
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_81

    .line 2420
    :cond_77
    iget-object v10, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v10, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v10, :cond_81

    if-eqz v8, :cond_81

    .line 2424
    iput-boolean v2, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mPaddingChanged:Z

    .line 2428
    .end local v1    # "userId":I
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v4    # "maxSize":I
    .end local v5    # "paddingWidth":I
    .end local v6    # "paddingHeight":I
    .end local v7    # "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .end local v8    # "connector":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    .end local v9    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :cond_81
    :goto_81
    monitor-exit v0

    .line 2429
    return-void

    .line 2401
    .restart local v1    # "userId":I
    .restart local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v4    # "maxSize":I
    .restart local v5    # "paddingWidth":I
    .restart local v6    # "paddingHeight":I
    :cond_83
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "padding height "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exceeds max height "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "padding":Landroid/graphics/Rect;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "displayId":I
    throw v2

    .line 2397
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "padding":Landroid/graphics/Rect;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "displayId":I
    :cond_a7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "padding width "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " exceeds max width "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "padding":Landroid/graphics/Rect;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "displayId":I
    throw v2

    .line 2389
    .end local v4    # "maxSize":I
    .end local v5    # "paddingWidth":I
    .end local v6    # "paddingHeight":I
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "padding":Landroid/graphics/Rect;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "displayId":I
    :cond_cb
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "padding must be positive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "padding":Landroid/graphics/Rect;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "displayId":I
    throw v2

    .line 2384
    .end local v1    # "userId":I
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "padding":Landroid/graphics/Rect;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "displayId":I
    :cond_e5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find display with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "padding":Landroid/graphics/Rect;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p3    # "displayId":I
    throw v1

    .line 2428
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "padding":Landroid/graphics/Rect;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p3    # "displayId":I
    :catchall_fe
    move-exception v1

    monitor-exit v0
    :try_end_100
    .catchall {:try_start_73 .. :try_end_100} :catchall_fe

    throw v1
.end method

.method public setInAmbientMode(ZJ)V
    .registers 8
    .param p1, "inAmbientMode"    # Z
    .param p2, "animationDuration"    # J

    .line 2576
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2577
    :try_start_3
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInAmbientMode:Z

    .line 2578
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2580
    .local v1, "data":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-eqz v1, :cond_2f

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_2f

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v2, :cond_25

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 2581
    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 2583
    :cond_25
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .local v2, "engine":Landroid/service/wallpaper/IWallpaperEngine;
    goto :goto_30

    .line 2585
    .end local v2    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :cond_2f
    const/4 v2, 0x0

    .line 2587
    .end local v1    # "data":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v2    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_39

    .line 2589
    if-eqz v2, :cond_38

    .line 2591
    :try_start_33
    invoke-interface {v2, p1, p2, p3}, Landroid/service/wallpaper/IWallpaperEngine;->setInAmbientMode(ZJ)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_36} :catch_37

    .line 2594
    goto :goto_38

    .line 2592
    :catch_37
    move-exception v0

    .line 2596
    :cond_38
    :goto_38
    return-void

    .line 2587
    .end local v2    # "engine":Landroid/service/wallpaper/IWallpaperEngine;
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    .registers 4
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;

    .line 2645
    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2646
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2647
    :try_start_8
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

    .line 2648
    monitor-exit v0

    .line 2649
    const/4 v0, 0x1

    return v0

    .line 2648
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;
    .registers 16
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "cropHint"    # Landroid/graphics/Rect;
    .param p4, "allowBackup"    # Z
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "which"    # I
    .param p7, "completion"    # Landroid/app/IWallpaperManagerCallback;
    .param p8, "userId"    # I

    .line 2891
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingUid()I

    move-result v1

    const-string v5, "changing wallpaper"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p8

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p8

    .line 2893
    const-string v0, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2895
    and-int/lit8 v0, p6, 0x3

    if-eqz v0, :cond_bc

    .line 2901
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ba

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_ba

    .line 2906
    :cond_29
    if-nez p3, :cond_33

    .line 2907
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p3, v0

    goto :goto_48

    .line 2909
    :cond_33
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ltz v0, :cond_a1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ltz v0, :cond_a1

    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_a1

    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_a1

    move-object v0, p3

    .line 2916
    .end local p3    # "cropHint":Landroid/graphics/Rect;
    .local v0, "cropHint":Landroid/graphics/Rect;
    :goto_48
    new-instance p3, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda11;

    invoke-direct {p3, p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/lang/String;)V

    invoke-static {p3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2919
    .local v1, "fromForegroundApp":Z
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2927
    const/4 p3, 0x1

    if-ne p6, p3, :cond_6f

    :try_start_5d
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6f

    .line 2928
    const-string v3, "WallpaperManagerService"

    const-string v4, "Migrating current wallpaper to be lock-only beforeupdating system wallpaper"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    invoke-direct {p0, p8}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateSystemToLockWallpaperLocked(I)V

    .line 2933
    :cond_6f
    invoke-virtual {p0, p8, p6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    .line 2934
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_77
    .catchall {:try_start_5d .. :try_end_77} :catchall_9e

    .line 2936
    .local v4, "ident":J
    :try_start_77
    invoke-virtual {p0, p1, v3, p5}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 2937
    .local v6, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v6, :cond_92

    .line 2938
    iput-boolean p3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 2939
    iput p6, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    .line 2940
    iput-object p7, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    .line 2941
    iput-boolean v1, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->fromForegroundApp:Z

    .line 2942
    iget-object p3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2943
    iput-boolean p4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 2944
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDimAmount()F

    move-result p3

    iput p3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperDimAmount:F
    :try_end_92
    .catchall {:try_start_77 .. :try_end_92} :catchall_98

    .line 2946
    :cond_92
    nop

    .line 2948
    :try_start_93
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2

    .line 2946
    return-object v6

    .line 2948
    .end local v6    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_98
    move-exception p3

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2949
    nop

    .end local v0    # "cropHint":Landroid/graphics/Rect;
    .end local v1    # "fromForegroundApp":Z
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "callingPackage":Ljava/lang/String;
    .end local p4    # "allowBackup":Z
    .end local p5    # "extras":Landroid/os/Bundle;
    .end local p6    # "which":I
    .end local p7    # "completion":Landroid/app/IWallpaperManagerCallback;
    .end local p8    # "userId":I
    throw p3

    .line 2950
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v4    # "ident":J
    .restart local v0    # "cropHint":Landroid/graphics/Rect;
    .restart local v1    # "fromForegroundApp":Z
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "callingPackage":Ljava/lang/String;
    .restart local p4    # "allowBackup":Z
    .restart local p5    # "extras":Landroid/os/Bundle;
    .restart local p6    # "which":I
    .restart local p7    # "completion":Landroid/app/IWallpaperManagerCallback;
    .restart local p8    # "userId":I
    :catchall_9e
    move-exception p3

    monitor-exit v2
    :try_end_a0
    .catchall {:try_start_93 .. :try_end_a0} :catchall_9e

    throw p3

    .line 2912
    .end local v0    # "cropHint":Landroid/graphics/Rect;
    .end local v1    # "fromForegroundApp":Z
    .restart local p3    # "cropHint":Landroid/graphics/Rect;
    :cond_a1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid crop rect supplied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2902
    :cond_ba
    :goto_ba
    const/4 v0, 0x0

    return-object v0

    .line 2896
    :cond_bc
    const-string v0, "Must specify a valid wallpaper category to set"

    .line 2897
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "WallpaperManagerService"

    const-string v2, "Must specify a valid wallpaper category to set"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must specify a valid wallpaper category to set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 3032
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;I)V

    .line 3033
    return-void
.end method

.method public setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 3024
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3025
    invoke-direct {p0, p1, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;I)V

    .line 3027
    :cond_f
    return-void
.end method

.method public setWallpaperDimAmount(F)V
    .registers 3
    .param p1, "dimAmount"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2730
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperDimAmountForUid(IF)V

    .line 2731
    return-void
.end method

.method public setWallpaperDimAmountForUid(IF)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "dimAmount"    # F

    .line 2743
    const-string v0, "android.permission.SET_WALLPAPER_DIM_AMOUNT"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    .line 2744
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2746
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_72

    .line 2747
    :try_start_c
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2748
    .local v3, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2750
    .local v4, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v5, 0x0

    cmpl-float v5, p2, v5

    if-nez v5, :cond_2f

    .line 2751
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mUidToDimAmount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    .line 2753
    :cond_2f
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mUidToDimAmount:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2756
    :goto_3c
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mUidToDimAmount:Landroid/util/ArrayMap;

    invoke-direct {p0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->getHighestDimAmountFromMap(Landroid/util/ArrayMap;)F

    move-result v5

    .line 2757
    .local v5, "maxDimAmount":F
    iput v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperDimAmount:F

    .line 2760
    if-eqz v4, :cond_48

    .line 2761
    iput v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperDimAmount:F

    .line 2764
    :cond_48
    iget-object v6, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v6, :cond_69

    .line 2765
    iget-object v6, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    new-instance v7, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v7, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda7;-><init>(F)V

    invoke-virtual {v6, v7}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 2777
    const/4 v6, 0x1

    iput-boolean v6, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mIsColorExtractedFromDim:Z

    .line 2778
    invoke-virtual {p0, v3, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 2779
    if-eqz v4, :cond_64

    .line 2780
    iput-boolean v6, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mIsColorExtractedFromDim:Z

    .line 2781
    const/4 v6, 0x2

    invoke-virtual {p0, v4, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 2783
    :cond_64
    iget v6, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p0, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 2785
    .end local v3    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v4    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v5    # "maxDimAmount":F
    :cond_69
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_c .. :try_end_6a} :catchall_6f

    .line 2787
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2788
    nop

    .line 2789
    return-void

    .line 2785
    :catchall_6f
    move-exception v3

    :try_start_70
    monitor-exit v2
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "uid":I
    .end local p2    # "dimAmount":F
    :try_start_71
    throw v3
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_72

    .line 2787
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "uid":I
    .restart local p2    # "dimAmount":F
    :catchall_72
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2788
    throw v2
.end method

.method public settingsRestored()V
    .registers 12

    .line 3854
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a5

    .line 3860
    const/4 v0, 0x0

    .line 3861
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v1, 0x0

    .line 3862
    .local v1, "success":Z
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3863
    const/4 v3, 0x0

    :try_start_e
    invoke-direct {p0, v3, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    .line 3864
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v0, v4

    .line 3865
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v4

    iput v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3866
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    .line 3867
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_49

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 3868
    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_49

    .line 3869
    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v9, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 3874
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v9, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 3876
    :cond_47
    const/4 v1, 0x1

    goto :goto_69

    .line 3880
    :cond_49
    const-string v4, ""

    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 3882
    const/4 v1, 0x1

    goto :goto_5a

    .line 3885
    :cond_55
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v4

    move v1, v4

    .line 3889
    :goto_5a
    if-eqz v1, :cond_69

    .line 3890
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 3891
    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v9, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 3895
    :cond_69
    :goto_69
    monitor-exit v2
    :try_end_6a
    .catchall {:try_start_e .. :try_end_6a} :catchall_a2

    .line 3897
    if-nez v1, :cond_97

    .line 3898
    const-string v2, "WallpaperManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to restore wallpaper: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3899
    const-string v2, ""

    iput-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 3900
    invoke-virtual {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3903
    :cond_97
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 3904
    :try_start_9a
    invoke-virtual {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    .line 3905
    monitor-exit v4

    .line 3906
    return-void

    .line 3905
    :catchall_9f
    move-exception v2

    monitor-exit v4
    :try_end_a1
    .catchall {:try_start_9a .. :try_end_a1} :catchall_9f

    throw v2

    .line 3895
    :catchall_a2
    move-exception v3

    :try_start_a3
    monitor-exit v2
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw v3

    .line 3855
    .end local v0    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v1    # "success":Z
    :cond_a5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "settingsRestored() can only be called from the system process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 3
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1927
    if-eqz p1, :cond_e

    .line 1928
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-eqz v0, :cond_e

    .line 1929
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    .line 1930
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 1933
    :cond_e
    return-void
.end method

.method stopObserversLocked(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 1936
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1937
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1938
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1939
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1940
    return-void
.end method

.method switchUser(ILandroid/os/IRemoteCallback;)V
    .registers 9
    .param p1, "userId"    # I
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .line 2049
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "WallpaperManagerService"

    invoke-direct {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;)V

    .line 2050
    .local v0, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wallpaper_switch-user-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2054
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_6f

    .line 2055
    :try_start_20
    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v2, p1, :cond_29

    .line 2056
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_6c

    .line 2085
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2056
    return-void

    .line 2058
    :cond_29
    :try_start_29
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 2061
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v2, :cond_34

    .line 2062
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperManagerServiceStub:Lcom/android/server/wallpaper/WallpaperManagerServiceStub;

    invoke-interface {v3, v2}, Lcom/android/server/wallpaper/WallpaperManagerServiceStub;->handleWallpaperObserverEvent(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2066
    :cond_34
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    .line 2067
    .local v2, "systemWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 2068
    .local v3, "tmpLockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    if-nez v3, :cond_45

    move-object v4, v2

    goto :goto_46

    :cond_45
    move-object v4, v3

    .line 2070
    .local v4, "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_46
    iget-object v5, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-nez v5, :cond_56

    .line 2071
    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v5, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v5, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 2072
    iget-object v5, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    .line 2074
    :cond_56
    invoke-virtual {p0, v2, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 2075
    .end local v3    # "tmpLockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_29 .. :try_end_5a} :catchall_6c

    .line 2079
    :try_start_5a
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_66
    .catchall {:try_start_5a .. :try_end_66} :catchall_6f

    .line 2085
    nop

    .end local v2    # "systemWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .end local v4    # "lockWallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2086
    nop

    .line 2087
    return-void

    .line 2075
    :catchall_6c
    move-exception v2

    :try_start_6d
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    .end local v0    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local p1    # "userId":I
    .end local p2    # "reply":Landroid/os/IRemoteCallback;
    :try_start_6e
    throw v2
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6f

    .line 2085
    .restart local v0    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p0    # "this":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local p1    # "userId":I
    .restart local p2    # "reply":Landroid/os/IRemoteCallback;
    :catchall_6f
    move-exception v1

    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2086
    throw v1
.end method

.method switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    .registers 17
    .param p1, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p2, "reply"    # Landroid/os/IRemoteCallback;

    .line 2090
    move-object v7, p0

    move-object v8, p1

    iget-object v9, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2091
    const/4 v10, 0x0

    :try_start_6
    iput-boolean v10, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    .line 2092
    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_f

    .line 2093
    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    goto :goto_11

    :cond_f
    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    :goto_11
    move-object v11, v0

    .line 2094
    .local v11, "cname":Landroid/content/ComponentName;
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, v11

    move-object v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v0
    :try_end_1d
    .catchall {:try_start_6 .. :try_end_1d} :catchall_78

    if-nez v0, :cond_74

    .line 2097
    const/4 v1, 0x0

    .line 2099
    .local v1, "si":Landroid/content/pm/ServiceInfo;
    :try_start_20
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/32 v2, 0x40000

    iget v4, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-interface {v0, v11, v2, v3, v4}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2b} :catch_2e
    .catchall {:try_start_20 .. :try_end_2b} :catchall_78

    move-object v1, v0

    .line 2102
    move-object v0, v1

    goto :goto_30

    .line 2101
    :catch_2e
    move-exception v0

    move-object v0, v1

    .line 2104
    .end local v1    # "si":Landroid/content/pm/ServiceInfo;
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    :goto_30
    const/4 v12, 0x1

    if-nez v0, :cond_42

    .line 2105
    :try_start_33
    const-string v1, "WallpaperManagerService"

    const-string v2, "Failure starting previous wallpaper; clearing"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    iget v1, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_78

    move-object/from16 v13, p2

    :try_start_3e
    invoke-virtual {p0, v10, v12, v1, v13}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    goto :goto_76

    .line 2108
    :cond_42
    move-object/from16 v13, p2

    const-string v1, "WallpaperManagerService"

    const-string v2, "Wallpaper isn\'t direct boot aware; using fallback until unlocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    iget-object v1, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iput-object v1, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 2113
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v2, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget v3, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    .line 2114
    invoke-virtual {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "wallpaper_lock_orig"

    const-string/jumbo v5, "wallpaper_lock"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v1

    .line 2116
    .local v10, "fallback":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    invoke-direct {p0, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 2117
    iget-object v2, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, v10

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 2118
    iput-boolean v12, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    goto :goto_76

    .line 2094
    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    .end local v10    # "fallback":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_74
    move-object/from16 v13, p2

    .line 2121
    .end local v11    # "cname":Landroid/content/ComponentName;
    :goto_76
    monitor-exit v9

    .line 2122
    return-void

    .line 2121
    :catchall_78
    move-exception v0

    move-object/from16 v13, p2

    :goto_7b
    monitor-exit v9
    :try_end_7c
    .catchall {:try_start_3e .. :try_end_7c} :catchall_7d

    throw v0

    :catchall_7d
    move-exception v0

    goto :goto_7b
.end method

.method systemReady()V
    .registers 7

    .line 1847
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initialize()V

    .line 1849
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1852
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1854
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 1858
    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1861
    :cond_1f
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1865
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    .line 1873
    :cond_2a
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1874
    .local v1, "userFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1875
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$2;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1886
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1887
    .local v2, "shutdownFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$3;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1902
    :try_start_4f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$4;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$4;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    const-string v5, "WallpaperManagerService"

    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_5d} :catch_5e

    .line 1912
    goto :goto_62

    .line 1910
    :catch_5e
    move-exception v3

    .line 1911
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1913
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_62
    return-void
.end method

.method public unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    .registers 11
    .param p1, "cb"    # Landroid/app/IWallpaperManagerCallback;
    .param p2, "userId"    # I
    .param p3, "displayId"    # I

    .line 2552
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string/jumbo v5, "unregisterWallpaperColorsCallback"

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 2554
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2556
    :try_start_16
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2557
    .local v1, "userDisplayColorsChangedListeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    if-eqz v1, :cond_2c

    .line 2558
    nop

    .line 2559
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    .line 2560
    .local v2, "displayChangedListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    if-eqz v2, :cond_2c

    .line 2561
    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2564
    .end local v1    # "userDisplayColorsChangedListeners":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;>;"
    .end local v2    # "displayChangedListeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/app/IWallpaperManagerCallback;>;"
    :cond_2c
    monitor-exit v0

    .line 2565
    return-void

    .line 2564
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_16 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2987
    const-string v0, "WallpaperManagerService"

    if-nez p1, :cond_6

    const-string p1, ""

    .line 2989
    :cond_6
    const/4 v1, 0x0

    :try_start_7
    iget v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    .line 2990
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_21

    .line 2991
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2992
    nop

    .line 2993
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f9

    .line 2992
    const/4 v5, -0x1

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 2997
    :cond_21
    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    const/high16 v4, 0x3c000000    # 0.0078125f

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 2999
    .local v3, "fd":Landroid/os/ParcelFileDescriptor;
    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-static {v4}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 3000
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restorecon failed for wallpaper file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 3001
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3000
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    return-object v1

    .line 3004
    :cond_4f
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    .line 3005
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v4

    iput v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    .line 3006
    if-eqz p3, :cond_60

    .line 3007
    const-string v4, "android.service.wallpaper.extra.ID"

    iget v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3010
    :cond_60
    iput-object v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 3011
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateWallpaperBitmapLocked() : id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " file="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    .line 3012
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3011
    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_95} :catch_96

    .line 3013
    return-object v3

    .line 3014
    .end local v2    # "dir":Ljava/io/File;
    .end local v3    # "fd":Landroid/os/ParcelFileDescriptor;
    :catch_96
    move-exception v2

    .line 3015
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v3, "Error setting wallpaper"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3017
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    return-object v1
.end method

.method writeWallpaperAttributes(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 14
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "wallpaper"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3488
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v0

    .line 3489
    .local v0, "wpdData":Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    const/4 v1, 0x0

    invoke-interface {p1, v1, p2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3490
    iget v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    const-string v3, "id"

    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3491
    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    const-string/jumbo v3, "width"

    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3492
    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    const-string v3, "height"

    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3494
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    const-string v3, "cropLeft"

    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3495
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const-string v3, "cropTop"

    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3496
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    const-string v3, "cropRight"

    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3497
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    const-string v3, "cropBottom"

    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3499
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v2, :cond_53

    .line 3500
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    const-string/jumbo v3, "paddingLeft"

    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3502
    :cond_53
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_63

    .line 3503
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const-string/jumbo v3, "paddingTop"

    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3505
    :cond_63
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-eqz v2, :cond_73

    .line 3506
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    const-string/jumbo v3, "paddingRight"

    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3508
    :cond_73
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_83

    .line 3509
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    const-string/jumbo v3, "paddingBottom"

    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3512
    :cond_83
    iget v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mWallpaperDimAmount:F

    const-string v3, "dimAmount"

    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 3513
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mUidToDimAmount:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 3514
    .local v2, "dimAmountsCount":I
    const-string v3, "dimAmountsCount"

    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3515
    if-lez v2, :cond_f2

    .line 3516
    const/4 v3, 0x0

    .line 3517
    .local v3, "index":I
    iget-object v4, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->mUidToDimAmount:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 3518
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Float;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dimUID"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p1, v1, v6, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3519
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dimValue"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-interface {p1, v1, v6, v7}, Landroid/util/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 3520
    nop

    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Float;>;"
    add-int/lit8 v3, v3, 0x1

    .line 3521
    goto :goto_a2

    .line 3524
    .end local v3    # "index":I
    :cond_f2
    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz v3, :cond_1ae

    .line 3525
    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v3}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 3526
    .local v3, "colorsCount":I
    const-string v4, "colorsCount"

    invoke-interface {p1, v1, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3527
    if-lez v3, :cond_133

    .line 3528
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_108
    if-ge v4, v3, :cond_133

    .line 3529
    iget-object v5, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v5}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Color;

    .line 3530
    .local v5, "wc":Landroid/graphics/Color;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "colorValue"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/graphics/Color;->toArgb()I

    move-result v7

    invoke-interface {p1, v1, v6, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3528
    .end local v5    # "wc":Landroid/graphics/Color;
    add-int/lit8 v4, v4, 0x1

    goto :goto_108

    .line 3534
    .end local v4    # "i":I
    :cond_133
    iget-object v4, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v4}, Landroid/app/WallpaperColors;->getAllColors()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    .line 3535
    .local v4, "allColorsCount":I
    const-string v5, "allColorsCount"

    invoke-interface {p1, v1, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3536
    if-lez v4, :cond_1a3

    .line 3537
    const/4 v5, 0x0

    .line 3538
    .local v5, "index":I
    iget-object v6, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v6}, Landroid/app/WallpaperColors;->getAllColors()Ljava/util/Map;

    move-result-object v6

    .line 3539
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 3538
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_153
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1a3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 3540
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "allColorsValue"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {p1, v1, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3541
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "allColorsPopulation"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {p1, v1, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3542
    nop

    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    add-int/lit8 v5, v5, 0x1

    .line 3543
    goto :goto_153

    .line 3546
    .end local v5    # "index":I
    :cond_1a3
    iget-object v5, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v5}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v5

    const-string v6, "colorHints"

    invoke-interface {p1, v1, v6, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3549
    .end local v3    # "colorsCount":I
    .end local v4    # "allColorsCount":I
    :cond_1ae
    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    const-string/jumbo v4, "name"

    invoke-interface {p1, v1, v4, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3550
    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_1cf

    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 3551
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1cf

    .line 3552
    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 3553
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    .line 3552
    const-string v4, "component"

    invoke-interface {p1, v1, v4, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3556
    :cond_1cf
    iget-boolean v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    if-eqz v3, :cond_1d9

    .line 3557
    const-string v3, "backup"

    const/4 v4, 0x1

    invoke-interface {p1, v1, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3560
    :cond_1d9
    invoke-interface {p1, v1, p2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3561
    return-void
.end method
